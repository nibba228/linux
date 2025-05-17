запускаем ядро с ```qemu-system-x86_64 -kernel ./boot/vmlinuz-6.13.2 -initrd initramfs -nographic -append "console=ttyS0" -monitor unix:qemu-monitor-socket,server,nowait ```
в папке с папкой boot, где лежит собранное ядро. подключаем модуль в ядре как ```insmod /lib/modules/6.13.2/keyboard_count.ko``` и запускам модуль ```modprobe keyboard_count```

из другого терминала можно посылать нажатия кнопок, потому что в ядре это не работает с PS/2: ``` echo "sendkey 0" | socat - unix-connect:qemu-monitor-socket ```

через ```dmesg``` можно смотреть статистику с обновлениями через каждую минуту
