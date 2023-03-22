<?php
$MESS["AUTO_EXEC_FROM_BITRIX"] = "via le service cloud &quot;Bitrix&quot;";
$MESS["AUTO_EXEC_FROM_CRON"] = "avec des agents dans cron";
$MESS["AUTO_EXEC_FROM_MAN"] = "par démarrage direct #SCRIPT#";
$MESS["AUTO_EXEC_METHOD"] = "Fréquence : ";
$MESS["AUTO_LOCK_EXISTS_ERR"] = "La sauvegarde automatique, démarrée le #DATETIME#, s'est terminée par une erreur. Consultez le journal du serveur pour en trouver la raison.";
$MESS["AUTO_URL"] = "Adresse du site";
$MESS["BCL_BACKUP_USAGE"] = "Espace utilisée: #USAGE# sur #QUOTA#.";
$MESS["CURRENT_POS"] = "Position actuelle : ";
$MESS["DISABLE_GZIP"] = "Désactiver la compression des archives (réduction de l'utilisation de la CPU)";
$MESS["DUMP_ADDITIONAL"] = "En supplément";
$MESS["DUMP_AUTO_INFO_OFF"] = "Sauvegarde régulière désactivée";
$MESS["DUMP_AUTO_INFO_ON"] = "La duplication de réserve régulière est activée";
$MESS["DUMP_AUTO_INFO_TEXT"] = "<b>Sauvegarde régulière</b>

Il est recommandé d'activer la sauvegarde régulière automatique pour à tout moment avoir les données à jour, si la restauration devient nécessaire.

Le monitoring cloud &quot;Bitrix&quot; ouvrira à l'heure indiquée un lien spécial sur votre site pour créer une copie de sauvegarde. Le lien contient un code secret qui permet de créer une copie de sauvegarde, mais ne donne pas d'accès aux données du site. L'accès à la partie administrative n'est pas nécessaire, il peut être interdit par IP.

La copie de sauvegarde est envoyée par défaut dans le Bitrix Cloud où elle sera stockée sous forme codée en plusieurs exemplaires. C'est un moyen sûr et fiable de stocker vos données.

Si les services cloud Bitrix Cloud ne sont pas disponible et les agents sont exécutés sur cron, la copie locale sera créée via cron.
";
$MESS["DUMP_AUTO_TAB"] = "Autochargement";
$MESS["DUMP_BTN_AUTO_DISABLE"] = "Désactiver la sauvegarde de réserve régulière";
$MESS["DUMP_BTN_AUTO_ENABLE"] = "Activer régulièrement la copie de sauvegarde";
$MESS["DUMP_BXCLOUD_NA"] = "Le stockage cloud &quot;Bitrix&quot; est inaccessible";
$MESS["DUMP_CHECK_BITRIXCLOUD"] = "Il est possible de vérifier le statut de l'objectif à la <a href='#LINK#'>page</a> du service-cloud &quot;Bitrix&quot;";
$MESS["DUMP_CLOUD_DELETE"] = "après le transfert réussi vers le cloud";
$MESS["DUMP_CUR_PATH"] = "Chemin courant : ";
$MESS["DUMP_DB_CREATE"] = "Création d'une décharge de base de données";
$MESS["DUMP_DELETE"] = "Supprimer les sauvegardes locales";
$MESS["DUMP_DELETE_ERROR"] = "Impossible de supprimer le fichier #FILE#";
$MESS["DUMP_ERR_BIG_BACKUP"] = "La taille de la copie de sauvegarde excède votre quota dans le cloud &quot;Bitrix&quot;. L'archive a été sauvegardée localement.";
$MESS["DUMP_ERR_NON_ASCII"] = "Pour éviter les problèmes avec la restauration d'une copie de sauvegarde, il ne faut pas inclure dans le mot de passe des symboles d'alphabets nationaux.";
$MESS["DUMP_LOCAL_TIME"] = "(heure du serveur local)";
$MESS["DUMP_MAIN_ACTIVE_FROM"] = "Actif(ve) du";
$MESS["DUMP_MAIN_ACTIVE_TO"] = "Actif(ve) jusqu'au";
$MESS["DUMP_MAIN_ARC_CONTENTS"] = "Contenu de la copie de réserve";
$MESS["DUMP_MAIN_ARC_DATABASE"] = "Archiver la base de données";
$MESS["DUMP_MAIN_ARC_MODE"] = "Mode de sauvegarde";
$MESS["DUMP_MAIN_AUTO_PARAMETERS"] = "Réglage script de démarrage périodique";
$MESS["DUMP_MAIN_BITRIX_CLOUD"] = "Bitrix Clouds";
$MESS["DUMP_MAIN_BITRIX_CLOUD_DESC"] = "Stockage cloud &quot;Bitrix&quot;";
$MESS["DUMP_MAIN_BXCLOUD_INFO"] = "Compagnie &quot;Bitrix&quot; fournit gratuitement un espace dans le cloud pour stocker trois copies de réserve pour chaque licence active. L'accès aux copies de réserve s'effectue par clé de licence et mot de passe. Sans connaître le mot de passe, personne, y compris les employés &quot;Bitrix&quot;, ne peut accéder à vos données.";
$MESS["DUMP_MAIN_CHANGE_SETTINGS"] = "Modification de paramètres d'experts peuvent entrainer la création de l'archive incomplet et l'incapacité de le récupérer. Vous devez bien comprendre ce que vous faites.";
$MESS["DUMP_MAIN_DB_EXCLUDE"] = "Exclure de la base de données : ";
$MESS["DUMP_MAIN_DOWNLOAD_CLOUDS"] = "Télécharger et archiver dans l'archive de stockage cloud : ";
$MESS["DUMP_MAIN_EDITION"] = "Edit.";
$MESS["DUMP_MAIN_ENABLE_EXPERT"] = "Activer des réglages d'expert pour la création de la copie de réserve";
$MESS["DUMP_MAIN_ENC_ARC"] = "Chiffrer l'archive";
$MESS["DUMP_MAIN_ERROR"] = "Erreur !";
$MESS["DUMP_MAIN_ERR_GET_INFO"] = "Impossible d'obtenir les informations sur le clé à partir du serveur de mise à jour.";
$MESS["DUMP_MAIN_ERR_PASS_CONFIRM"] = ".Les mots de passe saisis ne correspondent pas";
$MESS["DUMP_MAIN_EXPERT_SETTINGS"] = "Configurations avancées";
$MESS["DUMP_MAIN_IN_THE_BXCLOUD"] = "Dans le cloud Bitrix";
$MESS["DUMP_MAIN_IN_THE_CLOUD"] = "cloud : ";
$MESS["DUMP_MAIN_MAKE_ARC"] = "Sauvegarde";
$MESS["DUMP_MAIN_MULTISITE_INFO"] = "Si vous sélectionnez plusieurs sites d'archiver, le premier site sera sauvegardé dans la racine de l'archive, tandis que les fichiers publics des autres sites seront sauvegardés dans <b>/bitrix/backup/sites</b>. Vous aurez à les déplacer vers leurs emplacements appropriés et créer des liens symboliques manuellement lors de la restauration.";
$MESS["DUMP_MAIN_PARAMETERS"] = "Paramètres";
$MESS["DUMP_MAIN_PASSWORD_CONFIRM"] = "Répétez le mot de passe : ";
$MESS["DUMP_MAIN_REGISTERED"] = "Enregistré";
$MESS["DUMP_MAIN_SAVE"] = "Enregistrer";
$MESS["DUMP_MAIN_SESISON_ERROR"] = "Votre session a expiré. Veuillez recharger la page.";
$MESS["DUMP_MAIN_SITE"] = "Site : ";
$MESS["DUMP_NOT_DELETE"] = "il n'y avait pas";
$MESS["DUMP_NO_PERMS"] = "Il n'y a pas de droits sur le serveur pour la création de la copie de sauvegrade.";
$MESS["DUMP_NO_PERMS_READ"] = "Erreur d'ouverture de l'archive pour la lecture.";
$MESS["DUMP_RETRY"] = "Réessayer";
$MESS["DUMP_RM_BY_CNT"] = "si le nombre total de copies est supérieur à #CNT#";
$MESS["DUMP_RM_BY_SIZE"] = "si la taille totale des copies de sauvegarde est supérieure à #SIZE# Go";
$MESS["DUMP_RM_BY_TIME"] = "si #TIME# jours sont passés depuis la création";
$MESS["DUMP_SAVED_DISABLED"] = "Le démarrage automatique de la sauvegarde de réserve est désactivé.<br>La copie de réserve sera créée seulement après un lancement direct du script /bitrix/modules/main/tools/backup.php.";
$MESS["DUMP_TABLE_BROKEN"] = "La table #TABLE# a été détruite par une erreur MySQL interne. Utilisez <a href=\"/bitrix/admin/site_checker.php?tabControl_active_tab=edit1\" target=_blank>Site Checker</a> pour complètement récupérer la table, ou pour juste restaurer la structure de la table.";
$MESS["DUMP_WARN_NO_BITRIXCLOUD"] = "Vous ne pouvez pas activer la sauvegarde automatique. S'il vous plaît installer le module de support de service de nuage ou utiliser cron pour exécuter des agents.";
$MESS["ERR_EMPTY_RESPONSE"] = "Serveur a renvoyé une réponse vide. S'il vous plaît contactez votre société d'hébergement pour l'examen du journal de ce jour: #DATE#";
$MESS["ERR_NO_BX_CLOUD"] = "Le module de stockage cloud &quot;Bitrix&quot; n'a pas été installé";
$MESS["ERR_NO_CLOUDS"] = "Le module des stockages au cloud n'est pas installé";
$MESS["FILE_SIZE"] = "Taille du fichier";
$MESS["INTEGRITY_CHECK"] = "Vérification de l'intégrité";
$MESS["INTEGRITY_CHECK_OPTION"] = "Vérifier l'intégrité de l'archive après la fin";
$MESS["MAIN_DUMP_ACTION_DOWNLOAD"] = "Télécharger";
$MESS["MAIN_DUMP_ALERT_DELETE"] = "tes-vous sûr que vous voulez supprimer le fichier ?";
$MESS["MAIN_DUMP_ARC_LOCATION"] = "Emplacement de la copie en réserve : ";
$MESS["MAIN_DUMP_ARC_NAME"] = "Nom de l'archive";
$MESS["MAIN_DUMP_ARC_NAME_W_O_EXT"] = "Nom du fichier sans extension";
$MESS["MAIN_DUMP_ARC_SIZE"] = "Taille de l'archive : ";
$MESS["MAIN_DUMP_AUTO_BUTTON"] = "Sauvegardes régulières";
$MESS["MAIN_DUMP_AUTO_LOCK"] = "Le processus de sauvegarde automatique a commencé";
$MESS["MAIN_DUMP_AUTO_LOCK_TIME"] = "Depuis le moment du lancement il s'est écoulé: #TIME#";
$MESS["MAIN_DUMP_AUTO_NOTE"] = "Par un panneau du hosting ajustez la tâche à cron pour l'exécution du script <b>#SCRIPT#</b>. Fréquence recommandée: une fois par semaine.";
$MESS["MAIN_DUMP_AUTO_PAGE_TITLE"] = "Sauvegardes régulières";
$MESS["MAIN_DUMP_AUTO_WARN"] = "Activez <a href='#LINK#'>la copie de sauvegarde automatique</a> pour avoir les données actuelles en cas de la restauration.";
$MESS["MAIN_DUMP_BASE_SINDEX"] = "index de recherche";
$MESS["MAIN_DUMP_BASE_SIZE"] = "mégaoctets";
$MESS["MAIN_DUMP_BASE_STAT"] = "statistiques";
$MESS["MAIN_DUMP_BXCLOUD_ENC"] = "Si la copie de réserve est placée dans un cloud de stockage &quot;1C-Bitrix; il est impossible de désactiver le codage.";
$MESS["MAIN_DUMP_CLOUDS_DOWNLOAD"] = "Retourner les fichiers du stockage de cloud";
$MESS["MAIN_DUMP_DB_PROC"] = "Archiver les résultats de vidage";
$MESS["MAIN_DUMP_DELETE"] = "Supprimer";
$MESS["MAIN_DUMP_DELETE_OLD"] = "Suppression d'anciennes copies";
$MESS["MAIN_DUMP_DOWN_ERR_CNT"] = "Sauté pendant téléchargement";
$MESS["MAIN_DUMP_EMPTY_PASS"] = "Mot de passe pour le chiffrement de l'archive non renseigné.";
$MESS["MAIN_DUMP_ENABLE_ENC"] = "Chiffrer les données de la copie de sauvegarde";
$MESS["MAIN_DUMP_ENC_PASS"] = "Mot de passe pour chiffrer l'archive (pas moins de 6 caractères) : ";
$MESS["MAIN_DUMP_ENC_PASS_DESC"] = "Pour des raisons de sécurité le mot de passe pour crypter l'archive doit être d'au moins 6 caractères.";
$MESS["MAIN_DUMP_ERROR"] = "Erreur";
$MESS["MAIN_DUMP_ERR_COPY_FILE"] = "Le copiage du ficher a échoué:";
$MESS["MAIN_DUMP_ERR_DELETE"] = "Vous ne pouvez pas supprimer manuellement les fichiers stockés dans Bitrix Cloud. Les archives obsolètes sont remplacés par un nouveau dès que vous créer et télécharger une nouvelle sauvegarde.";
$MESS["MAIN_DUMP_ERR_FILE_RENAME"] = "Impossible de renommer le fichier : ";
$MESS["MAIN_DUMP_ERR_FILE_SEND"] = "Impossible d'envoyer le fichier au cloud : ";
$MESS["MAIN_DUMP_ERR_INIT_CLOUD"] = "La tentative d'établir une connexion au stockage cloud a échoué";
$MESS["MAIN_DUMP_ERR_NAME"] = "Le nom de fichier peut contenir seulement des caractères latins, des chiffres et un point.";
$MESS["MAIN_DUMP_ERR_OPEN_FILE"] = "On n'a pas réussi à ouvrir le fichier pour la lecture : ";
$MESS["MAIN_DUMP_EVENT_LOG"] = "journal d'évènements";
$MESS["MAIN_DUMP_FILES_DOWNLOADED"] = "Mon disque chargés";
$MESS["MAIN_DUMP_FILES_SIZE"] = "Taille de fichiers téléchargés";
$MESS["MAIN_DUMP_FILE_CNT"] = "Fichiers compressés : ";
$MESS["MAIN_DUMP_FILE_DUMP_BUTTON"] = "Enregistrer";
$MESS["MAIN_DUMP_FILE_FINISH"] = "Sauvegarde terminée";
$MESS["MAIN_DUMP_FILE_KERNEL"] = "Enregistrer des fichiers du noyau : ";
$MESS["MAIN_DUMP_FILE_MAX_SIZE"] = "Ne pas inclure des fichiers qui dépasse la taille (0 - pas de limite) : ";
$MESS["MAIN_DUMP_FILE_MAX_SIZE_b"] = "B";
$MESS["MAIN_DUMP_FILE_MAX_SIZE_gb"] = "Go";
$MESS["MAIN_DUMP_FILE_MAX_SIZE_kb"] = "kb";
$MESS["MAIN_DUMP_FILE_MAX_SIZE_mb"] = "Mémos et règlements";
$MESS["MAIN_DUMP_FILE_NAME"] = "Nom du fichier";
$MESS["MAIN_DUMP_FILE_PAGES"] = "Copies de réserve";
$MESS["MAIN_DUMP_FILE_PUBLIC"] = "Enregistrer des fichiers publics : ";
$MESS["MAIN_DUMP_FILE_SENDING"] = "Transfert de la copie en réserve vers le cloud";
$MESS["MAIN_DUMP_FILE_SIZE"] = "La taille des fichiers : ";
$MESS["MAIN_DUMP_FILE_SIZE1"] = "Taille de l'archive";
$MESS["MAIN_DUMP_FILE_STEP_SLEEP"] = "intervalle : ";
$MESS["MAIN_DUMP_FILE_STEP_sec"] = "dès";
$MESS["MAIN_DUMP_FILE_STOP_BUTTON"] = "Arrêter";
$MESS["MAIN_DUMP_FILE_TIMESTAMP"] = "Modifié";
$MESS["MAIN_DUMP_FOLDER_ERR"] = "Le dossier #FOLDER# est inaccessible pour opérations de sauvegarde";
$MESS["MAIN_DUMP_FOOTER_MASK"] = "Pour les masques d'exclusions, les règles ci dessous s'appliquent:
 <p><li>le modèle du masque peut contenir &quot;*&quot;, n'importe quels caractères qui composent le nom du fichier ou du dossier; </li>
<li>Si au début il y'a une barre oblique (&quot;/ &quot; ou &quot;\\&quot;), le chemin est considéré comme la racine du site; </li>
<li>sinon le modèle est appliqué à chaque fichier ou dossier;</li>
<p>Exemple de modèles: </p>
<li>/content/photo - exclure tout le dossier /content/photo;</li>
<li>*.zip - exclure les fichiers avec l'extension &quot;zip&quot;;</li>
<li>.access.php - exclure tous les fichiers &quot;.access.php&quot;;</li>
<li>/files/download/*.zip - exclure tous les fichiers avec l'extension &quot;;zip&quot; dans le répertoire /files/download;</li>
<li>/files/d*/*.ht* -exclure tous les fichiers du répertoire, qui commence par &quot;/files/d&quot; avec les extensions, commençant par &quot;ht&quot;.</li>";
$MESS["MAIN_DUMP_FROM"] = "de";
$MESS["MAIN_DUMP_GET_LINK"] = "Obtenir le lien pour le transfert";
$MESS["MAIN_DUMP_HEADER_MSG1"] = "Pour déplacer le site d'archives de sauvegarde vers un autre serveur, copier le script de restauration  <a href='#EXPORT#'>restore.php</a> et le fichier d'archive à la racine du document du nouveau serveur. Ensuite, tapez dans votre navigateur: <b>&lt;site name&gt;/restore.php</b>.";
$MESS["MAIN_DUMP_INT_CLOUD_ERR"] = "Échec d'initialisation du service de stockage cloud. Réessayez plus tard.";
$MESS["MAIN_DUMP_LIST_PAGE_TITLE"] = "Liste des copies de sauvegarde";
$MESS["MAIN_DUMP_LOCAL"] = "Localement";
$MESS["MAIN_DUMP_LOCAL_DISK"] = "dans le dossier du site";
$MESS["MAIN_DUMP_LOCATION"] = "Emplacement";
$MESS["MAIN_DUMP_MASK"] = "Exclure des fichiers et des répertoires de l'archive par le masque suivant : ";
$MESS["MAIN_DUMP_MAX_ARCHIVE_SIZE"] = "La taille du fichier uploadable maximale (octets) : ";
$MESS["MAIN_DUMP_MAX_ARCHIVE_SIZE_INFO"] = "PHP limite la taille d'une pièce de fichier archive à 2 Go max. Ne pas utiliser des valeurs de plus de 200 Mo, car il va augmenter les archives et extraire substantielles. Valeur optimale est de 100 MB.";
$MESS["MAIN_DUMP_MAX_ARCHIVE_SIZE_VALUES"] = "valeurs possibles: 11-2047";
$MESS["MAIN_DUMP_MORE"] = "Plus";
$MESS["MAIN_DUMP_MYSQL_ONLY"] = "Système de sauvegarde ne fonctionne qu'avec la base de données MySQL. Veuillez utiliser des outils externes pour créer une copie de sauvegarde de la base de données.";
$MESS["MAIN_DUMP_NOT_INSTALLED"] = "Le module PHP Mcrypt n'a pas été installé.";
$MESS["MAIN_DUMP_NOT_INSTALLED_HASH"] = "Hash for PHP n'est pas installé.";
$MESS["MAIN_DUMP_NO_CLOUDS_MODULE"] = "Le module de stockage cloud n'a pas été installé.";
$MESS["MAIN_DUMP_NO_ENC_FUNCTIONS"] = "Le chiffrement est indisponible. S'il vous plaît contactez votre administrateur système.";
$MESS["MAIN_DUMP_PAGE_TITLE"] = "Sauvegarde";
$MESS["MAIN_DUMP_PARTS"] = "parties : ";
$MESS["MAIN_DUMP_PERIODITY"] = "Fréquence : ";
$MESS["MAIN_DUMP_PER_1"] = "chaque jour";
$MESS["MAIN_DUMP_PER_2"] = "dans un jour";
$MESS["MAIN_DUMP_PER_3"] = "tous les 3 jours";
$MESS["MAIN_DUMP_PER_5"] = "tous les 5 jours";
$MESS["MAIN_DUMP_PER_7"] = "chaque semaine";
$MESS["MAIN_DUMP_PER_14"] = "toutes les deux semaines";
$MESS["MAIN_DUMP_PER_21"] = "toutes les trois semaines";
$MESS["MAIN_DUMP_PER_30"] = "mensuel";
$MESS["MAIN_DUMP_RENAME"] = "Renommer";
$MESS["MAIN_DUMP_RESTORE"] = "Extraire";
$MESS["MAIN_DUMP_SAVE_PASS"] = "Attention ! Le mot de passe n'est sauvegardé nulle part. Notez-le dans un endroit sûr, la restauration de la copie de réserve est impossible sans la connaissance de ce mot de passe.";
$MESS["MAIN_DUMP_SAVE_PASS_AUTO"] = "Le mot de passe saisi sera sauvegardé sous forme codée dans la base de données locale. Pour le codage, votre clé de licence est utilisée. Il est recommandé de changer de mot de passe de codage au moins une fois par mois.";
$MESS["MAIN_DUMP_SEND_CLOUD"] = "Envoyer au cloud";
$MESS["MAIN_DUMP_SEND_FILE_CLOUD"] = "Envoyer la copie de réserve au stockage au cloud";
$MESS["MAIN_DUMP_SHED"] = "Graphique";
$MESS["MAIN_DUMP_SHED_CLOSEST_TIME"] = "Le prochain démarrage est prévu pour : ";
$MESS["MAIN_DUMP_SHED_CLOSEST_TIME_TODAY"] = "Le prochain démarrage est prévu pour aujourd'hui : ";
$MESS["MAIN_DUMP_SHED_CLOSEST_TIME_TOMORROW"] = "Le prochain lancement est prévu pour demain : ";
$MESS["MAIN_DUMP_SHED_TIME_SET"] = "Le réglage du temps de création d'une copie de réserve est accessible au cas où les agents système sont exécutés sur cron (tous les agents ou seuls les agents périodiques, peu importe). Autrement, pour la création automatique des copies de réserve il faudra régler un temps bien déterminé d'exécution du php du script <b>/bitrix/modules/main/tools/backup.php</b> via la barre d'hébergement.";
$MESS["MAIN_DUMP_SITE_PROC"] = "Compression...";
$MESS["MAIN_DUMP_SKIP_SYMLINKS"] = "Sauter les liens symboliques vers les répertoires : ";
$MESS["MAIN_DUMP_SUCCESS_SAVED"] = "Les changements sont sauvegardés.";
$MESS["MAIN_DUMP_SUCCESS_SAVED_DETAILS"] = "La création automatique de copies de sauvegarde commence juste après le réglage du cron";
$MESS["MAIN_DUMP_SUCCESS_SENT"] = "La copie de réserve a été bien envoyée au stockage au cloud.";
$MESS["MAIN_DUMP_TABLE_FINISH"] = "Tables traitées : ";
$MESS["MAIN_DUMP_USE_THIS_LINK"] = "Utilisez ce lien pour le transfert vers un autre serveur via";
$MESS["MAIN_RIGHT_CONFIRM_EXECUTE"] = "Attention ! Restauration d'une sauvegarde sur le site actuel peut entraîner les dommages sur le site ! Continuer ?";
$MESS["MAKE_DUMP_FULL"] = "Création d'une copies de sauvegarde complète";
$MESS["STEP_LIMIT"] = "Durée de l'étape : ";
$MESS["TIME_H"] = "h";
$MESS["TIME_LEFT"] = ", env. temps restant #TEME#";
$MESS["TIME_M"] = "m";
$MESS["TIME_S"] = "a";
$MESS["TIME_SPENT"] = "Temps de création d'une copie de réserve : ";
