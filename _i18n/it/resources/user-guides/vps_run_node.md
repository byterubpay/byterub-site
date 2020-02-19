{% assign version = '1.1.0' | split: '.' %}
{% include disclaimer.html translated="false" version=page.version %}
# byterubd

`byterubd` is the daemon software that ships with the ByteRub tree. It is a console program, and manages the blockchain. While a bitcoin wallet manages both an account and the blockchain, ByteRub separates these: `byterubd` handles the blockchain, and `byterub-wallet-cli` handles the account.

This guide assumes you have already set up your VPS account and are using SSH to tunnel into the server console.

## Linux, 64-bit (Ubuntu 16.04 LTS)

### Make sure that port 18080 is open
`byterubd` uses this port to communicate with other nodes on the ByteRub network.

Example if using `ufw`: `sudo ufw allow 18080`
Example if using `iptables`: `sudo iptables -A INPUT -p tcp --dport 18080 -j ACCEPT`

### Download the current ByteRub Core binaries

    wget https://downloads.getbyterub.org/linux64

### Make a directory and extract the files.

    mkdir byterub
    tar -xjvf linux64 -C byterub

### Launch the daemon

    cd byterub
    ./byterubd

### Options:

Show list of all options and settings:

    ./byterubd --help

Launch the daemon as a background process:

    ./byterubd --detach

Monitor the output of `byterubd` if running as daemon:

    tail -f ~/.bitbyterub/bitbyterub.log

Keep the VPS secure with autoupdate:

https://help.ubuntu.com/community/AutomaticSecurityUpdates


