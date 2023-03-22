<?
$MESS["CES_ACTIONS"] = "Actions";
$MESS["CES_ADD_PROFILE"] = "Ajouter un profil";
$MESS["CES_ADD_PROFILE_DESCR"] = "Ajouter un nouveau profil d'exportation";
$MESS["CES_AUTO_CRON"] = "Réglage automatique : ";
$MESS["CES_AUTO_CRON_DEL"] = "Supprimer automatiquement : ";
$MESS["CES_AUTO_REFRESH"] = "Si la page n'est pas actualisée automatiquement, cliquez sur le lien";
$MESS["CES_AUTO_REFRESH_STEP"] = "Étape suivante";
$MESS["CES_CLOSE"] = "Fermer";
$MESS["CES_COPY_PROFILE"] = "Copie";
$MESS["CES_COPY_PROFILE_ERR_DEFAULT"] = "Vous ne pouvez pas copier le profil 'par default'.";
$MESS["CES_COPY_PROPFILE_DESCR"] = "Copier le profil";
$MESS["CES_CREATED_BY"] = "Créé par";
$MESS["CES_CRON_AGENT_ERRORS"] = "Les profils sont mis à fonctionner en utilisant un agent et cron. Il est recommandé de ne pas utiliser les deux simultanément.";
$MESS["CES_DATE_CREATE"] = "Créé le";
$MESS["CES_DEFAULT"] = "Par défaut";
$MESS["CES_DEFAULT_PROFILE"] = "système";
$MESS["CES_DELETE"] = "Supprimer";
$MESS["CES_DELETE_PROFILE"] = "Supprimer le profil";
$MESS["CES_DELETE_PROFILE_CONF"] = "tes-vous sûr de vouloir supprimer ce profil ?";
$MESS["CES_DELETE_PROFILE_DESCR"] = "Supprimer ce profil";
$MESS["CES_EDIT_PROFILE"] = "Éditer";
$MESS["CES_EDIT_PROFILE_ERR_DEFAULT"] = "Il est impossible d'éditer le profilb 'par défaut'.";
$MESS["CES_EDIT_PROFILE_ERR_ID_ABSENT"] = "L'identifiant du profil n'est pas indiqué";
$MESS["CES_EDIT_PROFILE_ERR_ID_BAD"] = "Identificateur incorrect du profil.";
$MESS["CES_EDIT_PROPFILE_DESCR"] = "Éditer le profil";
$MESS["CES_ERRORS"] = "Erreur lors de l'exécution de l'opération : ";
$MESS["CES_ERROR_ADD2CRON"] = "Erreur d'installer le fichier de configuration avec cron : ";
$MESS["CES_ERROR_ADD_PROFILE"] = "Erreur d'ajout de profil.";
$MESS["CES_ERROR_BAD_EXPORT_FILENAME"] = "Le nom du fichier d'exportation contient des caractères illégaux.";
$MESS["CES_ERROR_BAD_FILENAME"] = "Le nom du fichier d'importation contient des caractères non valides.";
$MESS["CES_ERROR_BAD_FILENAME2"] = "Le nom du fichier de l'exportateur contient des symboles interdits.";
$MESS["CES_ERROR_COPY_PROFILE"] = "Erreur de copie du profile.";
$MESS["CES_ERROR_FILE_NOT_EXIST"] = "Exporter le fichier est introuvable : ";
$MESS["CES_ERROR_NOT_AGENT"] = "Ce profil ne peut pas être utilisé pour les agents car il est utilisé par défaut et un fichier de paramètres est défini pour l'exportateur actuel.";
$MESS["CES_ERROR_NOT_CRON"] = "Ce profil ne peut pas être utilisé avec cron, car il est utilisé par défaut et un fichier de paramètres est défini pour l'exportateur actuel.";
$MESS["CES_ERROR_NO_ACTION"] = "Action n'est pas indiquée.";
$MESS["CES_ERROR_NO_FILE"] = "Fichier d'exportation est pas défini.";
$MESS["CES_ERROR_NO_PROFILE1"] = "Profil #";
$MESS["CES_ERROR_NO_PROFILE2"] = "est introuvable.";
$MESS["CES_ERROR_NO_SETUP_FILE"] = "Fichier d'installation de l'exportation est introuvable.";
$MESS["CES_ERROR_PROFILE_UPDATE"] = "Erreur du rafraîchissement du profil";
$MESS["CES_ERROR_SAVE_PROFILE"] = "Sauver profil d'exportation erreur.";
$MESS["CES_ERROR_UNKNOWN"] = "erreur inconnue.";
$MESS["CES_EXPORTER"] = "Exportateur";
$MESS["CES_EXPORT_FILE"] = "fichier de données d'exportation : ";
$MESS["CES_IN_AGENT"] = "Dans agents";
$MESS["CES_IN_CRON"] = "Le cron";
$MESS["CES_IN_MENU"] = "Menu";
$MESS["CES_MODIFIED_BY"] = "Modifié(e)s par";
$MESS["CES_NEED_EDIT"] = "le profil nécessite le réglage";
$MESS["CES_NO"] = "Non";
$MESS["CES_NOTES1"] = "Agents sont des fonctions PHP qui sont exécutés périodiquement à un intervalle donné. Chaque fois qu'une page est demandée, le système vérifie automatiquement pour les agents qui doivent être exécutés et les exécute. Il est recommandé de ne pas affecter des travaux de longues ou de grandes exportation aux agents. Vous devez utiliser le démon cron à cet effet.";
$MESS["CES_NOTES10"] = "Attention ! Cela va également supprimer toutes les tâches pas dans le fichier de configuration.";
$MESS["CES_NOTES11_EXT"] = "Ce fichier sert de shell pour les exécution de tâches basées sur cron : <br><b>#FILE#</b> (par rapport à la racine du site).";
$MESS["CES_NOTES12_EXT"] = "Assurez-vous que le fichier contiennent les bons chemins d'accès à la racine du site et à la racine PHP (<b>\$_SERVER['DOCUMENT_ROOT']</b>) et l'ID du site (la constante <b>SITE_ID</b> doit être explicitement assignée avant d'inclure le prologue).";
$MESS["CES_NOTES13_EXT"] = "Si <b>cron_frame.php</b> n'existe pas au chemin spécifié, vous devez le copier depuis le dossier <b>#FOLDER#</b> (par rapport à la racine du site).";
$MESS["CES_NOTES2"] = "Le démon cron est disponible uniquement sur les serveurs UNIX.";
$MESS["CES_NOTES3"] = "Le démon cron fonctionne dans le mode de fond et exécute les tâches assignées à l'heure indiquée. Vous devez spécifier le fichier de configuration pour ajouter une opération d'exportation de la liste des tâches";
$MESS["CES_NOTES4"] = "dans cron. Ce fichier contient des instructions pour les opérations d'exportation. Après avoir changé les tâches cron fixés, vous devez installer le fichier de configuration à nouveau.";
$MESS["CES_NOTES5"] = "Pour configurer le fichier de configuration, vous devez vous connecter à votre site via le SSH ou SSH2 ou tout autre protocole similaire que votre fournisseur prend en charge pour les opérations à distance shell. En ligne de commande, exécutez la commande";
$MESS["CES_NOTES6"] = "Pour afficher la liste des tâches actuellement installés, exécutez la commande";
$MESS["CES_NOTES7"] = "Pour supprimer toutes les tâches assignées à l'cron, exécutez la commande";
$MESS["CES_NOTES8"] = "La liste actuelle des tâches cron : ";
$MESS["CES_OR"] = "ou";
$MESS["CES_PHP_PATH"] = "Chemin vers php : ";
$MESS["CES_PROFILE"] = "Directions d'activité";
$MESS["CES_RUN_EXPORT"] = "Décharger";
$MESS["CES_RUN_EXPORT_DESCR"] = "Lancer exportation de données";
$MESS["CES_RUN_INTERVAL"] = "Période entre les lancements (heures) : ";
$MESS["CES_RUN_TIME"] = "Lancez le temps : ";
$MESS["CES_SET"] = "Installation";
$MESS["CES_SHOW_VARS_LIST"] = "liste Variables";
$MESS["CES_SHOW_VARS_LIST_DESCR"] = "Afficher la liste des variables pour ce profil d'exportation";
$MESS["CES_STEP_TITLE"] = "Assistant";
$MESS["CES_SUCCESS"] = "Opération réussie.";
$MESS["CES_TIMESTAMP_X"] = "Date de modification";
$MESS["CES_TO_AGENT"] = "Créer un agent";
$MESS["CES_TO_AGENT_DEL"] = "Supprimer l'agent";
$MESS["CES_TO_AGENT_DESCR"] = "Créer agent de lancement automatisé";
$MESS["CES_TO_AGENT_DESCR_DEL"] = "Supprimer agent de lancement automatisé";
$MESS["CES_TO_CRON"] = "Utilisez cron";
$MESS["CES_TO_CRON_DEL"] = "Arrêter cron";
$MESS["CES_TO_CRON_DESCR"] = "Utilisez cron pour le lancement automatique";
$MESS["CES_TO_CRON_DESCR_DEL"] = "Retirer de cron";
$MESS["CES_TO_LEFT_MENU"] = "Ajouter au menu";
$MESS["CES_TO_LEFT_MENU_DEL"] = "Supprimer dans le menu";
$MESS["CES_TO_LEFT_MENU_DESCR"] = "Ajouter le lien de menu dans le menu de gauche";
$MESS["CES_TO_LEFT_MENU_DESCR_DEL"] = "Supprimer le lien de menu à partir du menu de gauche";
$MESS["CES_USED"] = "Dernier lancement";
$MESS["CES_YES"] = "Oui";
$MESS["TITLE_EXPORT_PAGE"] = "Configuration de l'exportation";
$MESS["export_setup_begin"] = "Lancer exportation de données";
$MESS["export_setup_cat"] = "Exportation de scripts sont situés dans le dossier : ";
$MESS["export_setup_file"] = "Fichier";
$MESS["export_setup_name"] = "Dénomination";
$MESS["export_setup_script"] = "Le script d'exportation";
?>