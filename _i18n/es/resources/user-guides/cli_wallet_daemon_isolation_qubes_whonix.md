{% assign version = '1.1.0' | split: '.' %}
{% include disclaimer.html translated="true" version=page.version %}
# Aislamiento de Monedero CLI/Daemon con Qubes + Whonix

Con [Qubes](https://qubes-os.org) más [Whonix](https://whonix.org) puedes tener un monedero de ByteRub sin conexión a la red y en ejecución en un sistema virtualmente aislado del daemon de ByteRub que tiene todo su tráfico sobre [Tor](https://torproject.org).

Qubes brinda la flexibilidad de crear VMs separadas fácilmente para diferentes propósitos. Primero crearás una estación de trabajo Whonix para el monedero sin conexión a la red. Después, otra estación de trabajo Whonix para el daemon que usará la puerta Whonix como su NetVM. Para comunicación entre el monedero y el daemon puedes usar Qubes [qrexec](https://www.qubes-os.org/doc/qrexec3/).

Esto es más seguro que otros enfoques que trazan el rpc del monedero a un servicio de Tor oculto, o que utilizan aislamiento físico pero aun así tienen conexión a la red para conectarse al daemon. En este enfoque no necesitas ninguna conexión al monedero, conservas los recursos de la red de Tor y se tiene menos latencia.


## 1. [Crear AppVMs Whonix](https://www.whonix.org/wiki/Qubes/Install):

+ Utilizando una estación de trabajo Whonix, crea dos estaciones de trabajo como sigue:

  - La primera estación de trabajo se usará para tu monedero, se referirá a ella como  `byterub-wallet-ws`. Tendrás `NetVM` ajustado como `none`.

  - La segunda estación de trabajo será para el daemon `byterubd`, se referirá a ella como `byterubd-ws`. Tendrás `NetVM` ajustado como la puerta Whonix `sys-whonix`.

## 2. En la AppVM `byterubd-ws`:

+ Descarga, verifica e instala el software de ByteRub.

```
user@host:~$ curl -O "https://downloads.getbyterub.org/cli/byterub-linux-x64-v0.11.1.0.tar.bz2" -O "{{ site.baseurl }}/downloads/hashes.txt"
user@host:~$ gpg --recv-keys BDA6BD7042B721C467A9759D7455C5E3C0CDCEB9
user@host:~$ gpg --verify hashes.txt
gpg: Signature made Wed 01 Nov 2017 10:01:41 AM UTC
gpg:                using RSA key 0x55432DF31CCD4FCD
gpg: Good signature from "Riccardo Spagni <ric@spagni.net>" [unknown]
gpg: WARNING: This key is not certified with a trusted signature!
gpg:          There is no indication that the signature belongs to the owner.
Primary key fingerprint: BDA6 BD70 42B7 21C4 67A9  759D 7455 C5E3 C0CD CEB9
     Subkey fingerprint: 94B7 38DD 3501 32F5 ACBE  EA1D 5543 2DF3 1CCD 4FCD
user@host:~$ echo '6581506f8a030d8d50b38744ba7144f2765c9028d18d990beb316e13655ab248  byterub-linux-x64-v0.11.1.0.tar.bz2' | shasum -c
byterub-linux-x64-v0.11.1.0.tar.bz2: OK
user@host:~$ tar xf byterub-linux-x64-v0.11.1.0.tar.bz2
user@host:~$ sudo cp byterub-v0.11.1.0/byterubd /usr/local/bin/
```
+ Crea un archivo `systemd`.

```
user@host:~$ sudo gedit /home/user/byterubd.service
```

Pega el siguiente contenido:

```
[Unit]
Description=ByteRub Full Node
After=network.target

[Service]
User=user
Group=user

Type=forking
PIDFile=/home/user/.bitbyterub/byterubd.pid

ExecStart=/usr/local/bin/byterubd --detach --data-dir=/home/user/.bitbyterub \
    --no-igd --pidfile=/home/user/.bitbyterub/byterubd.pid \
    --log-file=/home/user/.bitbyterub/bitbyterub.log --p2p-bind-ip=127.0.0.1

Restart=always
PrivateTmp=true

[Install]
WantedBy=multi-user.target
```

+ Copia el ejecutable `byterub-wallet-cli` al VM `byterub-wallet-ws`.

```
user@host:~$ qvm-copy-to-vm byterub-wallet-ws byterub-v0.11.1.0/byterub-wallet-cli
```

+ Hacer ejecutable a `byterubd` en arranque editando el archivo `/rw/config/rc.local`.

```
user@host:~$ sudo gedit /rw/config/rc.local
```

Agrega estas líneas al final:

```
cp /home/user/byterubd.service /lib/systemd/system/
systemctl start byterubd.service
```

Hacer ejecutable el archivo.

```
user@host:~$ sudo chmod +x /rw/config/rc.local
```

+ Crear archivo de acción rpc.

```
user@host:~$ sudo mkdir /rw/usrlocal/etc/qubes-rpc
user@host:~$ sudo gedit /rw/usrlocal/etc/qubes-rpc/user.byterubd
```

Agrega esta línea:

```
socat STDIO TCP:localhost:18081
```

+ Apaga `byterubd-ws`.

## 3. En la AppVM `byterub-wallet-ws`:

+ Mueve el ejecutable `byterub-wallet-cli`.

```
user@host:~$ sudo mv QubesIncoming/byterubd-ws/byterub-wallet-cli /usr/local/bin/
```

+ Edita el archivo `/rw/config/rc.local`.

```
user@host:~$ sudo gedit /rw/config/rc.local
```

Agrega la siguiente línea al final:

```
socat TCP-LISTEN:18081,fork,bind=127.0.0.1 EXEC:"qrexec-client-vm byterubd-ws user.byterubd"
```

Hacer ejecutable el archivo.

```
user@host:~$ sudo chmod +x /rw/config/rc.local
```

+ Apaga `byterub-wallet-ws`.

## 4. En `dom0`:

+ Crea el archivo `/etc/qubes-rpc/policy/user.byterubd`:

```
[user@dom0 ~]$ sudo nano /etc/qubes-rpc/policy/user.byterubd
```

Agrega la siguiente línea:

```
byterub-wallet-ws byterubd-ws allow
```
