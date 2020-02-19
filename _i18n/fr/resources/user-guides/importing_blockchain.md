{% assign version = '1.1.0' | split: '.' %}
{% include disclaimer.html translated="true" version=page.version %}
### Étape 1

Téléchargez l'amorce actuelle depuis https://downloads.getbyterub.org/blockchain.raw ; vous pouvez sauter cette étape si vous importez la chaîne de blocs depuis une autre source.

### Étape 2

Trouvez le répertoire de votre portefeuille ByteRub (le dossier où vous avez extrait votre portefeuille). Par exemple, le mien est :

`D:\byterub-gui-0.10.3.1`

Votre répertoire peut être différent en fonction de l'endroit ou vous avez décidé de télécharger votre portefeuille et de la version de portefeuille ByteRub que vous utilisez.

### Étape 3

Trouvez ke répertoire dans lequel vous avez téléchargé la chaîne de blocs, par exemple le mien était :

`C:\Users\KeeJef\Downloads\blockchain.raw`

Le votre pourrait être différent selon l'endroit ou vous avez téléchargé la chaîne de blocs.

### Étape 4

Ouvrez une invite de commande. Vous pouvez le faire en tapant les touches Windows + R, puis en tapant `CMD` dans la fenêtre qui s'affiche.

### Étape 5

Vous devez maintenant vous déplacer dans le répertoire de votre portefeuille ByteRub depuis l'invite de commande (la fenêtre CMD). Pour cela tapez :

`cd C:\LE\REPERTOIRE\DE\VOTRE\PORTEFEUILLE\MONERO`

Cela devrait ressembler à :

`cd D:\byterub-gui-0.10.3.1`

Si votre portefeuille ByteRub est sur un autre disque vous devez utiliser `LettreDeLecteur:` par exemple, si votre portefeuille ByteRub est sur votre disque D, vous devez taper `D:` avant d'utiliser la commande cd.

### Étape 6

Maintenant, dans l'invite de commande, tapez :

`byterub-blockchain-import --verify 1 --input-file C:\LE\REPERTOIRE\DE\LA\CHAINE\DE\BLOCS`

Par exemple, je taperais :

`byterub-blockchain-import --verify 1 --input-file C:\Users\KeeJef\Downloads\blockchain.raw`

Si vous avez téléchargé la chaîne de blocs depuis une source fiable et réputée, vous pouvez positionner `verify 0` cela réduira le temps nécessaire à la synchronisation de la chaîne de blocs.

### Étape 7

Après la fin de la synchronisation de la chaîne de blocs vous pouvez ouvrir votre portefeuille ByteRub normalement. Le fichier blockchain.raw de la chaîne de blocs que vous avez téléchargé peut être supprimé.


Auteur : Kee Jefferys
