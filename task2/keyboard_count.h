#pragma once

#include <linux/irq.h>

static irqreturn_t ps2_keyboard_event(int irq, void* dev_id);
