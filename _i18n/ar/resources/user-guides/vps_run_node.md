{% assign version = '1.1.0' | split: '.' %}
{% include disclaimer.html translated="true" version=page.version %}
# byterubd

`byterubd` هو برنامج خادم مونيرو. وهو برنامج وحده تحكم في سلسله الكتل. بينما تُدير محفظه البيتكوين كلاً من الحساب وسلسله الكتل, يقوم مونيرو بفصلهم, فالخادم `byterubd` يتحكم في سلسله الكتل وواجهه سطر الأوامر `byterub-wallet-cli` تتحكم في الحساب.

يفترض هذا الدليل أنك قمت بإنشاء الخادم الإفتراضي (VPS) الخاص بك بالفعل وتستخدم (SSH) للإتصال بوحده تحكم الخادم.

## Linux, 64-bit (Ubuntu 16.04 LTS)

### تأكد من أن المنفذ 18080 مفتوح.
يستخدم هذا لمنفذ للتواصل مع الخوادم الأخري بشبكه مونيرو.

Example if using `ufw`: `sudo ufw allow 18080`
Example if using `iptables`: `sudo iptables -A INPUT -p tcp --dport 18080 -j ACCEPT`

### قم بتحميل ملفات تسطيب مونيرو.

    wget https://downloads.getbyterub.org/linux64

### قم بإنشاء مجلد جديد وفك ضغط الملف.

    mkdir byterub
    tar -xjvf linux64 -C byterub

### شَغِل الخادم.

    cd byterub
    ./byterubd

### الخيارات:

أعرض قائمه بكل الخيارات والإعدادات:

    ./byterubd --help

شَغِل الخادم بالخلفيه:

    ./byterubd --detach

تابع مُخرجات الخادم `byterubd`:

    tail -f ~/.bitbyterub/bitbyterub.log

حافظ علي أمان الخادم بتشغيل التحديثات التلقائيه:

https://help.ubuntu.com/community/AutomaticSecurityUpdates


