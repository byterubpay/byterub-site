{% assign version = '1.1.0' | split: '.' %}
{% include disclaimer.html translated="true" version=page.version %}
# byterubd

`byterubd` jest oprogramowaniem daemona, które współpracuje z ByteRub. To program konsoli zarządzający łańcuchem bloków. Podczas gdy portfel Bitcoina zarządza zarówno kontem, jak i łańcuchem bloków, ByteRub rozdzielił je, aby `byterubd` operował łańcuchem, a `byterub-wallet-cli` kontem.

Ten przewodnik zakłada, że już założyłeś swoje konto VPS i używasz SSH do tunelowania do konsoli serwerowej.

## Linux, 64-bit (Ubuntu 16.04 LTS)

### Upewnij się, że port 18080 jest otwarty
`byterubd` korzysta z tego portu do komunikacji z innymi węzłami w sieci ByteRub.

Przykład przy użyciu `ufw`: `sudo ufw allow 18080`
Przykład przy użyciu `iptables`: `sudo iptables -A INPUT -p tcp --dport 18080 -j ACCEPT`

### Ściągnij aktualne pliki binarne Centrum ByteRub

    wget https://downloads.getbyterub.org/linux64

### Załóż folder i wypakuj pliki

    mkdir byterub
    tar -xjvf linux64 -C byterub

### Uruchom daemona

    cd byterub
    ./byterubd

### Opcje:

Pokaż całą listę opcji i ustawień:

    ./byterubd --help

Uruchom daemona w tle:

    ./byterubd --detach

Monitoruj rezultaty `byterubd`, jeśli daemon jest uruchomiony:

    tail -f ~/.bitbyterub/bitbyterub.log

Utrzymuj VPS w bezpieczeństwie, korzystając z autoaktualizacji:

https://help.ubuntu.com/community/AutomaticSecurityUpdates


