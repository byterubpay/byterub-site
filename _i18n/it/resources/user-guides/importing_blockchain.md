{% assign version = '1.1.0' | split: '.' %}
{% include disclaimer.html translated="true" version=page.version %}
### Passo 1

Scarica il file della Blockchain attuale da https://downloads.getbyterub.org/blockchain.raw; puoi saltare questo passo se vuoi importare la Blockchain da un'altra fonte.

### Passo 2

Trova il percorso del tuo portafoglio ByteRub (la cartella nella quale hai estratto il tuo portafoglio). Per esempio il mio è :

`D:\byterub-gui-0.10.3.1`

Il tuo percorso potrebbe essere diverso in base a dove hai deciso di scaricare il tuo portafoglio e alla versione del portafoglio ByteRub che stai utilizzando.

### Passo 3

Trova il percorso della Blockchain che hai scaricato, per esempio il mio è :

`C:\Users\KeeJef\Downloads\blockchain.raw`

Il tuo potrebbe essere diverso in base a dove hai deciso di salvare la Blockchain.

### Passo 4

Apri la finestra del Prompt dei comandi. Per farlo premi il tasto Windows + R, poi nella finestra scrivi `CMD` e premi Ok

### Passo 5

Adesso dovrai navigare nella schermata di Prompt dei comandi fino al percorso dove si trova il tuo portafoglio ByteRub. Puoi farlo digitando :

`cd C:\IL\TUO\PERCORSO\DEL\PORTAFOGLIO\BYTERUB\QUI` 

Nel mio caso :

`cd D:\byterub-gui-0.10.3.1`

Se il tuo portafoglio ByteRub è in un'altra partizione, puoi cambiarla digitando il comando `LetteraPartizione:`, per esempio se il tuo portafoglio è nella partizione C dovrai digitare `C:`

### Passo 6

Adesso digita nella finestra del Prompt dei comandi:

`byterub-blockchain-import --verify 1 --input-file C:\IL\TUO\PERCORSO\DEL\PORTAFOGLIO\BYTERUB\QUI`

Nel mio caso :

`byterub-blockchain-import --verify 1 --input-file C:\Users\KeeJef\Downloads\blockchain.raw`

Se hai scaricato la Blockchain da una fonte sicura e affidabile potresti impostare `verify 0` per ridurre il tempo necessario a sincronizzare la Blockchain.

### Passo 7

Dopo che la Blockchain sarà sincronizzata potrai aprire il tuo portafoglio ByteRub normalmente. Il file blockchain.raw può essere eliminato.

Autore: Kee Jefferys
