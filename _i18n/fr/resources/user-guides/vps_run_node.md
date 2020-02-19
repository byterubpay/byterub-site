{% assign version = '1.1.0' | split: '.' %}
{% include disclaimer.html translated="true" version=page.version %}
# byterubd

`byterubd` est le démon est une application incluse dans la suite ByteRub. C'est un programme en ligne de commande qui gère la chaîne de blocs. Tandis que le portefeuille Bitcoin gère à la fois un compte et la chaîne de blocs, ByteRub sépare ces composants : `byterubd` gère la chaîne de blocs, et `byterub-wallet-cli` gère le compte.

Ce guide suppose que vous avez déjà créé un compte VPS et que vous utilisez SSH pour accéder à la console du serveur.

## Linux, 64-bit (Ubuntu 16.04 LTS)

### Assurez-vous que le port 18080 soit ouvert
`byterubd` utilise ce port pour communiquer avec d'autres nœuds sur le réseau ByteRub.

Exemple en utilisant `ufw`: `sudo ufw allow 18080`
Exemple en utilisant `iptables`: `sudo iptables -A INPUT -p tcp --dport 18080 -j ACCEPT`

### Téléchargez les binaires ByteRub actuels

    wget https://downloads.getbyterub.org/linux64

### Créez un répertoire et décompressez les fichiers

    mkdir byterub
    tar -xjvf linux64 -C byterub

### Lancez le démon

    cd byterub
    ./byterubd

### Options

Affichez une liste de toutes les options et paramètres :

    ./byterubd --help

Lancez le démon en tâche de fond :

    ./byterubd --detach

Surveillez la sortie de `byterubd` lancé en tâche de fond :

    tail -f ~/.bitbyterub/bitbyterub.log

Gardez le VPS à jour avec autoupdate :

https://help.ubuntu.com/community/AutomaticSecurityUpdates


