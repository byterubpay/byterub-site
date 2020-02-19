{% assign version = '1.2.0' | split: '.' %}
{% include disclaimer.html translated="true" version=page.version %}
## Trouver un nœud
Commencez par le commencement, vous devez trouver un nœud auquel vous connecter ! [byterubworld.com](https://byterubworld.com/#nodes) propose quelques bonnes ressources pour trouver
des nœuds. L'une des méthodes les plus simple serait d'utiliser un nœud appartenant à byterubworld, mais ils propose également un outil pour trouver des nœuds aléatoires.

## Connecter le portefeuille GUI au nœud
Après avoir saisit votre mot de passe dans votre portefeuille, vous verrez une notification que vous donnera la possibilité de configurer des "Paramètres personnalisés". Cliquez dessus. Vous serez alors envoyé à la page "Réglages > Nœud" de la GUI. A ce moment là vous devriez voir quatre champs texte libellés "Address", "Port", "Daemon username" et "Daemon password". Saisissez l'adresse du nœud auquel vous voulez vous connecter. Cette adresse pourrait ressembler à `node.byterubworld.com` où à une bonne vielle adresse IP. Puis saisissez le port du nœud. Le port par défaut est `18081` mais si vous utilisez un nœud aléatoire, le port qu'il utilise peut varier. node.byterubworld.com utilise le port 18089. Au besoin, saisissez le nom d'utilisateur et le mot de passe si votre nœud distant le nécessite.
### Votre écran devrait ressembler un peu à cela
![Node](png/remote_node/remote-node-screenshot.png){:width="600px"}
