{% assign version = '1.1.0' | split: '.' %}
{% include disclaimer.html translated="true" version=page.version %}
# عزل واجهه سطر الأوامر/الخادم في نظام Qubes + Whonix

مع نظام [Qubes](https://qubes-os.org) + [Whonix](https://whonix.org) يُمكنك إنشاء محفظه مونيرو بدون إتصال بالإنترنت تعمل علي نظام إفتراضي معزول عن خادم مونيرو الذي يَمر كل بياناته من خلال شبكه التور  [Tor](https://torproject.org).

يُوفر نظام كيوبس السلاسه اللازمه لسهوله إنشاء أنظمه إفتراضيه لأهداف مختلفه. في البدايه ستقوم بإنشاء مكنه إفتراضيه علي وونكس للمحفظه بدون إتصال. بعد ذلك مكنه ووُنكس أُخري لخادم مونيرو . للتواصل بين المحفظه والخادم يُمكنك إستخدام كيوبس  [qrexec](https://www.qubes-os.org/doc/qrexec3/).

هذه الطريقه أكثر أماناً من الطرق الاخري التي توجّه بروتوكول (RPC) المحفظه خلال خدمه تور(TOR) مخفيه, أو التي تستخدم العزل المادي لكنها ماتزال تستخدم الإنترنت للإتصال بالخادم. بهذه الطريقه لا تحتاج أي إتصال شبكي بالمحفظه, فإنك تُحافظ علي موارد شبكة تور(Tor) ، ووقت الإستجابة أقل.


## 1. [إنشاء مكنه إفتراضي للتطبيقات علي وونكس (Whonix AppVMs)](https://www.whonix.org/wiki/Qubes/Install):

+ بإستخدام قالب مكن وونكس الإفتراضي , إنشيء مكنتين كما التالي :

  -أول مكنه سيتم إستخدامها للمحفظه, سيُشار إليها بـ`byterub-wallet-ws`. قم بإختيار`none` في `NetVM`.

  - المكنه الأخري سوف تُستخدم للخادم, سيُشار إليها بـ`byterubd-ws`. سيتم إختيار `sys-whonix` ل `NetVM`.

## 2. في مكنه تطبيق `byterubd-ws`:

+ تنزيل وتطبيق وتسطيب برنامج مونيرو.

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
+ إنشاء ملف `systemd`.

```
user@host:~$ sudo gedit /home/user/byterubd.service
```

إنسخ المُحتوي التالي :

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

+ إنسخ `byterub-wallet-cli` إلي `byterub-wallet-ws` VM.

```
user@host:~$ qvm-copy-to-vm byterub-wallet-ws byterub-v0.11.1.0/byterub-wallet-cli
```

+ إجعل `byterubd` الخادم يبدأ فور التشغيل تلقائياً بتعديل ملف `/rw/config/rc.local`.

```
user@host:~$ sudo gedit /rw/config/rc.local
```

ضِف هذه السطور بآخر الملف:

```
cp /home/user/byterubd.service /lib/systemd/system/
systemctl start byterubd.service
```

إجعل الملف قابل للتشغيل.

```
user@host:~$ sudo chmod +x /rw/config/rc.local
```

+ إنشاء ملف (RPC).

```
user@host:~$ sudo mkdir /rw/usrlocal/etc/qubes-rpc
user@host:~$ sudo gedit /rw/usrlocal/etc/qubes-rpc/user.byterubd
```

أضف هذا السطر:

```
socat STDIO TCP:localhost:18081
```

+ إِغلِق `byterubd-ws`.

## 3. في مكنه تطبيق `byterub-wallet-ws`:

+ حَرِك ملف `byterub-wallet-cli` قابل للتشغيل .

```
user@host:~$ sudo mv QubesIncoming/byterubd-ws/byterub-wallet-cli /usr/local/bin/
```

+ عَدِل ملف `/rw/config/rc.local`.

```
user@host:~$ sudo gedit /rw/config/rc.local
```

أضف هذا السطر بالآخر:

```
socat TCP-LISTEN:18081,fork,bind=127.0.0.1 EXEC:"qrexec-client-vm byterubd-ws user.byterubd"
```

إجعل الملف قابل للتشغيل.

```
user@host:~$ sudo chmod +x /rw/config/rc.local
```

+ إِغلِق `byterub-wallet-ws`.

## 4. في `dom0`:

+ إنشيء ملف `/etc/qubes-rpc/policy/user.byterubd`:

```
[user@dom0 ~]$ sudo nano /etc/qubes-rpc/policy/user.byterubd
```

قم بإضافه هذا السطر:

```
byterub-wallet-ws byterubd-ws allow
```
