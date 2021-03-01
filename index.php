<?php
/**
 * 1. Le dossier SQL contient l'export de ma table user.
 * 2. Trouvez comment importer cette table dans une des bases de données que vous avez créées, si vous le souhaitez vous pouvez en créer une nouvelle pour cet exercice.
 * 3. Assurez vous que les données soient bien présentes dans la table.
 * 4. Créez votre objet de connexion à la base de données comme nous l'avons vu
 * 5. Insérez un nouvel utilisateur dans la base de données user
 * 6. Modifiez cet utilisateur directement après avoir envoyé les données ( on imagine que vous vous êtes trompé )
 */

// TODO Votre code ici.
try {
    $pdo = new PDO('mysql:host=localhost;dbname=exo192', "root", "");
    $pdo->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
    $req = $pdo->prepare("INSERT INTO user (nom, prenom, rue, numero, code_postal, ville, pays, mail) VALUES ('tyb','yann','mairie',18,59740,'felleries','france','mail12')");
    $req->execute();
    $req = $pdo->prepare("UPDATE user SET nom = 'test' WHERE  id <= 2");
    $req->execute();

}
catch(PDOException $e){
    echo $e->getMessage();
}



/**
 * Théorie
 * --------
 * Pour obtenir l'ID du dernier élément inséré en base de données, vous pouvez utiliser la méthode: $bdd->lastInsertId()
 *
 * $result = $bdd->execute();
 * if($result) {
 *     $id = $bdd->lastInsertId();
 * }
 */