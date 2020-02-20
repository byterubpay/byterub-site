{% assign version = '1.1.0' | split: '.' %}
{% include disclaimer.html translated="false" version=page.version %}
### Step 1

Download the Current bootstrap from https://downloads.getbyterub.org/blockchain.raw; you can skip this step if you are importing the Blockchain from another source.

### Step 2

Find the path of your ByteRub wallet (the folder where you extracted your wallet). For example mine is:

`D:\byterub-gui-0.10.3.1`

Your path may be different depending on where you decided to download your wallet and what version of the ByteRub wallet you have.

### Step 3

Find the path of your downloaded Blockchain for example mine was:

`C:\Users\KeeJef\Downloads\blockchain.raw`

Yours might be different depending on where you downloaded the Blockchain to.

### Step 4

Open a Command Prompt window. You can do this by pressing the Windows key + R, and then typing in the popup box `CMD`

### Step 5

Now you need to navigate using the CMD window to the path of your ByteRub wallet. You can do this by typing:

`cd C:\YOUR\BYTERUB\WALLET\FILE\PATH\HERE`

It should look something like:

`cd D:\byterub-gui-0.10.3.1`

If your ByteRub wallet is on another drive you can use `DriveLetter:` for example if your ByteRub wallet was on your D drive then before using the cd command you would do `D:`

### Step 6

Now type in your command prompt window:

`byterub-blockchain-import --input-file C:\YOUR\BLOCKCHAIN\FILE\PATH\HERE`

For example I would type :

`byterub-blockchain-import --input-file C:\Users\KeeJef\Downloads\blockchain.raw`

If you downloaded the Blockchain from a trusted, reputable source you may set `verify 0` this will reduce the amount of time to sync the Blockchain.  

### Step 7

After the the Blockchain has finished syncing up you can open your ByteRub wallet normally. Your downloaded blockchain.raw can be deleted.


Author: Kee Jefferys
