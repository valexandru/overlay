# Calculate append=skip

Событие ac_desktop_merge:
- установка пакета (не chroot*)
- удаление пакета (не chroot)
- настройка системы
- первая загрузка

*Событие не будет использоваться во время сборки системы или установке пакета
в builder-режиме.

Действие: настройка пакета
env: desktop