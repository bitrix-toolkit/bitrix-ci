<?
$MESS["MAIN_OPTION_CACHE_BUTTON_OFF"] = "Désactiver la Mise en cache";
$MESS["MAIN_OPTION_CACHE_BUTTON_ON"] = "Activer la mise en cache";
$MESS["MAIN_OPTION_CACHE_ERROR"] = "Ce type de mise en cache automatique de composants a déjà une valeur donnée";
$MESS["MAIN_OPTION_CACHE_OFF"] = "Composants Cache est désactivée par défaut";
$MESS["MAIN_OPTION_CACHE_OK"] = "Fichiers cache nettoyé";
$MESS["MAIN_OPTION_CACHE_ON"] = "Composants Cache est activé par défaut";
$MESS["MAIN_OPTION_CACHE_SUCCESS"] = "Le type de la mise en cache automatique a été changé avec succès";
$MESS["MAIN_OPTION_CLEAR_CACHE"] = "Supprimer les Fichiers Cache";
$MESS["MAIN_OPTION_CLEAR_CACHE_ALL"] = "Tous";
$MESS["MAIN_OPTION_CLEAR_CACHE_CLEAR"] = "Annuler";
$MESS["MAIN_OPTION_CLEAR_CACHE_MANAGED"] = "Tous cache géré";
$MESS["MAIN_OPTION_CLEAR_CACHE_MENU"] = "Menu";
$MESS["MAIN_OPTION_CLEAR_CACHE_OLD"] = "Seulement les surannés";
$MESS["MAIN_OPTION_CLEAR_CACHE_STATIC"] = "Toutes les pages de cache HTML";
$MESS["MAIN_OPTION_PUBL"] = "Composants Paramètres du cache";
$MESS["MAIN_TAB_3"] = "Supprimer les Fichiers Cache";
$MESS["MAIN_TAB_4"] = "La mise en cache de composants";
$MESS["MCACHE_TITLE"] = "Paramètres du cache";
$MESS["cache_admin_note1"] = "<p>Utilisation du régime &quot;Mise en cache automatique&quot; permet d'accélérer votre site en plusieurs fois !</p>
<p>Faites attention : avec le régime activé &quot;Mise en cache automatique&quot;, la mise à jour de l'information, affichée par composants, se fait en conformité aux paramètres de ces composants à part. </p>
<p>Pour rafraichir le contenu des objets en cache sur la page, vous pouvez : </p>
<p>1. Passer à la page en question et rafraîchir son contenu à l'aide d'un bouton spécial sur le panneau administratif de commande pour nettoyer l'information en cache.</p>
<img src='/bitrix/images/main/page_cache.png' vspace='5' />
<p>2. En régime de la Rédaction du site il faut utiliser les boutons du nettoyage sur le panneau des composants.</p>
<img src='/bitrix/images/main/comp_cache.png' vspace='5' />
<p>3. Il faut accéder aux réglages des composants et choisir le régime sans mise en cache. </p>
<img src='/bitrix/images/main/spisok.png' vspace='5' />
<p>Remarque : Après l'activation du régime de mise en cache automatique pour composants, des composants avec le paramètre de la mise en cache <i>'Auto'</i> seront transmis sous le régime avec mise en cache.</p>
<p>Des composants avec le paramètre de la mise en cache <i>'Mettre en cache'</i> et avec du temps de la mise en cache supérieur à zéro, fonctionnent toujours en régime de la mise en cache.</p>
<p>Des composants avec le paramètre de la mise en cache <i>'Ne pas mettre en cache '</i> et avec du temps de la mise en cache inférieur à zéro ou bien avec le temps zéro, fonctionnent toujours en régime sans mise en cache.</p>";
$MESS["cache_admin_note2"] = "Après la suppression des fichiers de cache les données affichées seront mises à jour jusqu'à l'état actuel.
Les nouveaux fichiers de cache seront créés au fur et à mesure que les pages avec les régions mises en cache sont consultées.";
$MESS["cache_admin_note4"] = "<p>Le mieux serait de démarrer le mécanisme de caching HTML pour une rubrique rarement modifiée avec fréquentation régulière de visiteurs anonymes, parce qu'en cas d'un caching TML activé les processus suivants se déroulent :- </p>
<ul style='font-size:100%'>
<li>le mécanisme de la cache HTML ne traite que les pages non indiquées dans le masque d'exclusion et indiquées dans le masque d'inclusion;</li>
<li>si un utilisateur non autorisé entre sur des pages pareilles, l'existence du fichier de la cache sera vérifiée, et si ce fichier se découvre, une page sera délivrée de la cache sans activer aucun module du produit; par exemple, le module statistiques ne fonctionnera pas (les hits de cet utilisateur ne seront pas pris en compte), tout comme le module publicité, le module principal et d'autres 
<li>en ce cas, su au moment de démarrage du cache le module compression était installé, la page sera présentée sous forme comprimée;</li>
<li>si la page dans le cache n'a pas été trouvée, le code sera exécuté au régime normal; une fois la page entièrement formée, sa copie esrt sauvegardée dans le cache HTLM;</li>
</ul>
<p>Nettoyage du cache : </p>
<ul style='font-size:100%'>
<li>si le volume sauvegardé provoque le dépassement du quota disque du cache, ce dernier est entièrement nettoyé;</li>
<li>un nettoyage complet du cache se produit à chaque modification de données dans la partie administrative du système;</li>
<li>si un POST de données se produit dans la partie publique du site (par exemple, l'ajout d'un commentaire ou le vote), la partie respective du cache s'annule;</li>
</ul>

<p>A noter que si l'utilisateur non autorisé passe sur la partie non cachée du site, une session commencera pour lui, et le cache HTML ne fonctionnera plus pour cet utilisateur.</p>

<p>Il découle de ce qui a été dit que : </p>
<ul style='font-size:100%'>
<li>les statistiques ne sont pas comtabilisées;</li>
<li>le module publicité ne fonctionnera qu'au moment de création de la cache (cela ne concerne pas la publicité dynamique externe (Begun, etc.);</li>
<li>par exemple, pour les utilisateurs non autorisés les résultats de la comparaison des marchandises ne seront pas sauvegardés (parce que ses données sont stockées dans la session qui ' n'existe pas ' );</li>
<li>il est absolument nécessaire d'entrer un quota disque pour éviter une attaque DoS contre l'espace disque;</li>
<li>une fois le mécanisme de caching HTML activé, il faut vérifier toute la fonctionnelle de la rubrique pour laquelle le cache est utilisé (par exemple, la publication de commentaires avec anciens modèles de blogue ne pourra pas fonctionner);</li>
</ul>";
$MESS["cache_admin_note5"] = "Dans cette version de HTML le cache est toujours désactivé.";
$MESS["main_cache_files_continue"] = "Continuer";
$MESS["main_cache_files_delete_errors"] = "Erreur de suppression: #value#";
$MESS["main_cache_files_deleted_count"] = "Supprimé: #value#";
$MESS["main_cache_files_deleted_size"] = "Taille de fichiers supprimés: #value#";
$MESS["main_cache_files_last_path"] = "Répertoire courant: #value#";
$MESS["main_cache_files_scanned_count"] = "Traité: #valeu#";
$MESS["main_cache_files_scanned_size"] = "Taille des fichiers traités: #value#";
$MESS["main_cache_files_start"] = "Commencer";
$MESS["main_cache_files_stop"] = "Arrêter";
$MESS["main_cache_finished"] = "La suppression des fichiers de la cache est terminée.";
$MESS["main_cache_in_progress"] = "La suppression des fichiers de la cache est en cours.";
$MESS["main_cache_managed"] = "Cash piloté";
$MESS["main_cache_managed_const"] = "A été déterminée la constante BX_COMP_MANAGED_CACHE - le cash guidé est toujours activé.";
$MESS["main_cache_managed_note"] = "Le <b>Cache Dépendances</b> La technologie met à jour le cache chaque changement de données en temps se produit Si cette fonction est activée, vous aurez pas à mettre à jour le cache manuellement lorsque la mise à jour des nouvelles ou des produits: les visiteurs du site seront toujours voir amont informations à jour.


<br><br>Comment obtenir plus d'informations sur la technologie de cache dépendances sur le site Bitrix.
<br><br><span style='color: gray'>Note:. tous les composants ne peuvent supporter cette fonctionnalité </span>";
$MESS["main_cache_managed_off"] = "Cache des composants gérable est désactivées (non recommandé).";
$MESS["main_cache_managed_on"] = "La cache des composants commandé est activée.";
$MESS["main_cache_managed_saved"] = "Les paramètres de la mise en cache commandée sont sauvegardés.";
$MESS["main_cache_managed_sett"] = "Réglage de la mise en cache commandée";
$MESS["main_cache_managed_turn_off"] = "Désactiver le cache réglable (n'est pas recommandé)";
$MESS["main_cache_managed_turn_on"] = "Activer le cache réglable";
$MESS["main_cache_wrong_cache_path"] = "Chemin d'accès au fichier du cache est incorrect.";
$MESS["main_cache_wrong_cache_type"] = "Type de mise en cache est incorrect.";
?>