{% assign version = '1.1.0' | split: '.' %}
{% include disclaimer.html translated="true" version=page.version %}
# byterubd

`byterubd` является демон-программой в составе дерева ByteRub. Это консольная программа, используемая для управления блокчейном. Если кошелек Bitcoin позволяет управлять как аккаунтом, так и блокчейном, то в ByteRub эти функции разделены: `byterubd` работает с блокчейном, а `byterub-wallet-cli` управляет аккаунтом.

Настоящее руководство подразумевает, что у вас уже создан VPS аккаунт, и вы используете SSH для получения доступа к серверной консоли.

## Linux, 64-bit (Ubuntu 16.04 LTS)

### Убедитесь в том, что порт 18080 открыт
`byterubd` использует этот порт для связи с другими узлами сети ByteRub.

Пример использования `ufw`: `sudo ufw allow 18080`
Пример использования `iptables`: `sudo iptables -A INPUT -p tcp --dport 18080 -j ACCEPT`

### Загрузить актуальные двоичные файлы ByteRub Core

    wget https://downloads.getbyterub.org/linux64

### Создать директорию и извлечь файлы.

    mkdir byterub
    tar -xjvf linux64 -C byterub

### Запустить демон-программу

    cd byterub
    ./byterubd

### Опции:

Открыть список всех опций и настроек:

    ./byterubd --help

Запустить демон-программу фоновым процессом:

    ./byterubd --detach

Следить за выходом `byterubd` при запуске в качестве демон-программы:

    tail -f ~/.bitbyterub/bitbyterub.log

Обезопасить VPS посредством автоматического обновления:

https://help.ubuntu.com/community/AutomaticSecurityUpdates
