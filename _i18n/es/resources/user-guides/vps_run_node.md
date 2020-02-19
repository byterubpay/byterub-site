{% assign version = '1.1.0' | split: '.' %}
{% include disclaimer.html translated="true" version=page.version %}
# byterubd

`byterubd` es el software daemon que viene con el árbol de ByteRub. Es un programa de consola, y administra la blockchain. Mientras bitcoin administra tanto cuenta como blockchain, ByteRub lo separa en: `byterubd` se encarga de la blockchain, y `byterub-wallet-cli` de la cuenta.

Esta guía asume que ya has preparado una cuenta VPS y que estás utilizando SSH para dirigirte a la consola del servidor.

## Linux, 64-bit (Ubuntu 16.04 LTS)

### Asegúrate de que el puerto 18080 está abierto
`byterubd` usa este puerto para comunicarse con otros nodos en la red de ByteRub.

Ejemplo si se usa `ufw`: `sudo ufw allow 18080`
Ejemplo si se usa `iptables`: `sudo iptables -A INPUT -p tcp --dport 18080 -j ACCEPT`

### Descarga los binarios actuales ByteRub

    wget https://downloads.getbyterub.org/linux64

### Haz un directorio y extrae los archivos.

    mkdir byterub
    tar -xjvf linux64 -C byterub

### Abre el daemon

    cd byterub
    ./byterubd

### Opciones:

Muestra la lista de todas las opciones y ajustes:

    ./byterubd --help

Abre el daemon como un proceso de segundo plano:

    ./byterubd --detach

Monitorea la salida de `byterubd` si se ejecuta como daemon:

    tail -f ~/.bitbyterub/bitbyterub.log

Mantén el VPS seguro con autoactualizaciones:

https://help.ubuntu.com/community/AutomaticSecurityUpdates


