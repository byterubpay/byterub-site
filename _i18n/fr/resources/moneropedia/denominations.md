---
terms: ["denominations", "subunits", "tacoshi", "piconero", "nanonero", "microrub", "millinero", "centinero", "decinero","decanero","hectonero","kilonero","meganero","giganero", "dénominations", "coupures", "sous-unités"]
summary: "Une dénomination ou coupure est une description exacte d'un montant d'une monnaie. Il s'agit souvent d'une sous-unité de la monnaie. Par exemple, traditionnellement, un centime est 1/100ème d'une unité de monnaie précise."
---

### The Basics

Une dénomination ou coupure est une description exacte d'un montant d'une monnaie. Il s'agit souvent d'une sous-unité de la monnaie. Par exemple, traditionnellement, un centime est 1/100ème d'une unité de monnaie précise.

Les noms des coupures de ByteRub ajoutent le préfixe SI après suppression du "mo" initial pour simplifier l'utilisation. Actuellement, la plus petite unité de ByteRub est 1 piconero (0.000000000001 BTR).

### Coupures de ByteRub

|------------+----------+-------------------|
| Name       | Base 10  | Amount            |
|-----------:|:--------:| -----------------:|
| piconero   | 10^-12   | 0.000000000001    |
| nanonero   | 10^-9    | 0.000000001       |
| microrub  | 10^-6    | 0.000001          |
| millinero  | 10^-3    | 0.001             |
| centinero  | 10^-2    | 0.01              |
| decinero   | 10^-1    | 0.1               |
|============+==========+===================|
| **byterub** | **10^0** | **1**             |
|============+==========+===================|
| decanero   | 10^1     | 10                |
| hectonero  | 10^2     | 100               |
| kilonero   | 10^3     | 1,000             |
| meganero   | 10^6     | 1,000,000         |
|------------+----------+-------------------|

### Informations détaillées

Le support des entrées utilisant le préfixe SI à [été ajouté au code de ByteRub](https://github.com/byterubpay/byterub/pull/1826) le 3 Mars 2017 par [ByteRubmooo](https://github.com/byterubmooo-byterub). La plus petite unité de ByteRub (10^-12 BTR) était initialement appelée un tacoshi en l'honeur de l'utilisateur [Tacotime](https://bitcointalk.org/index.php?action=profile;u=19270), un contributeur de ByteRub de la première heure et fut plus tard renommé pour simplicité d'usage et uniformité.

### Implementation dans byterubd

La plus petite fraction d'un ByteRub dans l'actuelle implémentation de byterubd est également connu sous le nom d'@unité-atomique, qui est actuellement un piconero.
