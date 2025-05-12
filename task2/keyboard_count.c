#include "keyboard_count.h"

#include <linux/init.h>
#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/interrupt.h>
#include <linux/input.h>
#include <linux/timer.h>

MODULE_AUTHOR("raikov_d");
MODULE_DESCRIPTION("Key counter");
MODULE_VERSION("1.0.0");
MODULE_LICENSE("GPL");

#define PS2_KEYBOARD_IRQ      1
#define KB_DATA_REG           0x60
#define KEY_PRESSED_MASK      0x80
#define TIMER_INTERVAL_MS     (60 * 1000) // 1 minute

static atomic64_t key_counter;
static struct timer_list report_timer;

static irqreturn_t ps2_keyboard_event(int irq, void* dev_id) {
    unsigned char scancode = inb(KB_DATA_REG);
    
    // check if this is a key press event
    if (!(scancode & KEY_PRESSED_MASK)) {
        atomic64_inc(&key_counter);
    }
    
    return IRQ_HANDLED;
}

static void report_key_count(struct timer_list *timer) {
    int count = atomic64_xchg(&key_counter, 0);
    
    printk(KERN_INFO "Total chars typed in the past minute: %d\n", count);
    mod_timer(&report_timer, jiffies + msecs_to_jiffies(TIMER_INTERVAL_MS));
}

static int __init key_counter_init(void) {
    int err;
    
    atomic64_set(&key_counter, 0);
    
    err = request_irq(PS2_KEYBOARD_IRQ, ps2_keyboard_event, IRQF_SHARED, 
                     "ps2_keyboard", (void*)ps2_keyboard_event);
    if (err) {
        printk(KERN_ERR "Failed to register keyboard IRQ handler\n");
        return err;
    }
    
    timer_setup(&report_timer, report_key_count, 0);
    mod_timer(&report_timer, jiffies + msecs_to_jiffies(TIMER_INTERVAL_MS));
    
    printk(KERN_INFO "Keyboard counter started\n");
    return 0;
}

static void __exit key_counter_exit(void) {
    free_irq(PS2_KEYBOARD_IRQ, (void*)ps2_keyboard_event);
    
    del_timer_sync(&report_timer);
    
    printk(KERN_INFO "Keyboard counter finished\n");
}

module_init(key_counter_init);
module_exit(key_counter_exit);