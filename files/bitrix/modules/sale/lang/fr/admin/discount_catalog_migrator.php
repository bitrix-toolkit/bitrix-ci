<?
$MESS["DISCOUNT_CATALOG_MIGRATOR_CONVERT_COMPLETE"] = "La migration est terminée";
$MESS["DISCOUNT_CATALOG_MIGRATOR_CONVERT_FAILED"] = "Erreur lors de la migration des réductions";
$MESS["DISCOUNT_CATALOG_MIGRATOR_CONVERT_IN_PROGRESS"] = "La migration est toujours en cours";
$MESS["DISCOUNT_CATALOG_MIGRATOR_CONVERT_START_BUTTON"] = "Démarrer la migration";
$MESS["DISCOUNT_CATALOG_MIGRATOR_CONVERT_STOP_BUTTON"] = "Abandonner";
$MESS["DISCOUNT_CATALOG_MIGRATOR_CONVERT_TAB"] = "Transfert de données";
$MESS["DISCOUNT_CATALOG_MIGRATOR_CONVERT_TAB_TITLE"] = "Transfert de données";
$MESS["DISCOUNT_CATALOG_MIGRATOR_CONVERT_TITLE"] = "Migrer les réductions du catalogue commercial";
$MESS["DISCOUNT_CATALOG_MIGRATOR_ERROR_REPORT"] = "Impossible de traiter <a href\"#URL#\">#TITLE#</a> : #ERRORS#";
$MESS["DISCOUNT_CATALOG_MIGRATOR_HELLO_TEXT"] = "L'assistant va fusionner les réductions du catalogue commercial avec celles de l'e-Store pour qu'elles puissent être appliquées de façon séquentielle.<br><br>
Cela aidera à gérer les dépendances de réduction, à mettre les réductions en pause si nécessaire ou à indiquer des priorités de réduction.<br><br>
La fusion peut prendre du temps, en fonction du nombre de réductions contenues dans le projet. Il est conseillé de procéder quand la charge du serveur et le trafic du site sont bas.<br>";
$MESS["DISCOUNT_CATALOG_MIGRATOR_HELLO_TEXT_CUMULATIVE_PART"] = "Vous utilisez des réductions progressives !<br><br>
<b>Important !</b><br><br>
La logique de traitement des réductions a été améliorée. Deux nouvelles options peuvent être utilisées : \"Ne pas appliquer plus de règles\" et \"Définir les priorités de réduction\".
Les réductions progressives seront également migrées. Vous aurez alors à vérifier et à régler les priorités des réductions, mais aussi à configurer l'expiration si nécessaire.<br>
Par défaut, les priorités des réductions progressives sont réglées sur les valeurs les plus basses pour qu'elles s'appliquent à la fin. Notez que si des réductions dotées de priorités supérieures ont l'option \"Ne pas appliquer plus de règles\", aucune réduction progressive ne sera appliquée.<br><br><br>
";
$MESS["DISCOUNT_CATALOG_MIGRATOR_HELLO_TEXT_FINAL"] = "Une fois les réductions fusionnées, vous devez vérifier si l'option \"Ne pas appliquer plus de réductions\" est correctement sélectionné pour chaque réduction. Les réductions du catalogue commercial et celles du module e-Store sont maintenant dans la même file d'attente et peuvent donc s'affecter entre elles.<br><br>
Il est recommandé de enregistrer votre projet et la base de données avant de continuer.<br><br>
L'espace public de votre site sera désactivé avant fusion.
";
$MESS["DISCOUNT_CATALOG_MIGRATOR_HELLO_TEXT_NEW"] = "Cette mise à jour fusionnera les réductions du catalogue commercial avec celles du module e-Store pour obtenir une file de traitement unifié.<br><br>
Une fois fusionnées, les réductions seront plus simple à gérer. Cela vous aidera à contrôler leurs dépendances, à les suspendre à tout moment et à indiquer des priorités d'application.<br><br>
La fusion peut prendre du temps si votre projet contient de nombreuses réductions. Il est conseillé d'effectuer cette tâche quand la boutique de votre site a le moins de charge.<br><br>
#CUMULATIVE_PART#
<br>
";
$MESS["DISCOUNT_CATALOG_MIGRATOR_NON_SUPPORTED_FEATURE_DISC_CURRENCY_SALE_SITE"] = "Les devises de réduction et d'e-store sélectionnées pour ce site sont différentes.";
$MESS["DISCOUNT_CATALOG_MIGRATOR_NON_SUPPORTED_FEATURE_DISC_SAVE"] = "Réductions progressives";
$MESS["DISCOUNT_CATALOG_MIGRATOR_NON_SUPPORTED_FEATURE_RELATIVE_ACTIVE_PERIOD"] = "La durée de vie de la réduction progressive est réglée sur \"Période à partir de la date de début de la réduction\" ";
$MESS["DISCOUNT_CATALOG_MIGRATOR_NON_SUPPORTED_TEXT"] = "Certaines réductions ne peuvent être actuellement converties ou fusionnées. Veuillez faire attention à ce problème.<br>
Les réductions non prises en charge suivantes ont été trouvées : <br><br>
";
$MESS["DISCOUNT_CATALOG_MIGRATOR_PAGE_HELLO_TEXT"] = "<p>L'assistant de fusion de réduction vous aidera à migrer vers un meilleur moyen de gérer vos réductions.</p>
<p>Une fois l'assistant terminé, vous allez vous préparer à utiliser une panoplie d'outils de marketing. Vous pouvez commencer à utiliser des réductions sans avoir à apprendre toutes les options de configuration sophistiquées.</p>
<p>Proposez des réductions flexibles, commercialisez vos produits, améliorez vos ventes ! Le système fera le travail pour vous.</p>
";
$MESS["DISCOUNT_CATALOG_MIGRATOR_PROCESSED_SUMMARY"] = "Réductions migrées (cumulatif) : ";
$MESS["DISCOUNT_CATALOG_MIGRATOR_UNKNOWN_ERROR"] = "Erreur inconnue lors de la migration des réductions";
?>