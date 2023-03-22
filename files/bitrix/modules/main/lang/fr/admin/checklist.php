<?php
$MESS["CL_ADD_COMMENT"] = "Ajouter un commentaire...";
$MESS["CL_ADD_SITES_FIELDS"] = "Ajouter plus";
$MESS["CL_AUTOTEST_DONE"] = "L'autotest est terminé";
$MESS["CL_AUTOTEST_RESULT"] = "Résultat de l'autotest";
$MESS["CL_AUTOTEST_START"] = "Lancer un autotest";
$MESS["CL_A_STATUS"] = "A été passé";
$MESS["CL_BACK_TO_CHECKLIST"] = "Revenir à la page précédente";
$MESS["CL_BEGIN"] = "Présenter le projet";
$MESS["CL_BEGIN_AUTOTEST"] = "Procéder au test";
$MESS["CL_BEGIN_PROGECT_TEST"] = "Accéder à l'aperçu de l'arbre de tests";
$MESS["CL_BEGIN_PROJECT_AUTOTEST"] = "Démarrer l'autotest";
$MESS["CL_BEGIN_PROJECT_AUTOTEST_DELAY"] = "Reporter";
$MESS["CL_CANT_CLOSE_PROJECT"] = "Vous ne pouvez pas annuler le projet. Tous <b>les tests</b> obligatoires doivent avoir le statut 'Omis' ou 'Passé'. En outre, l'arbre ne doit pas contenir de tests non passés.";
$MESS["CL_CANT_CLOSE_PROJECT_FAILED"] = "Nombre de tests dans le statut 'Non exécuté':";
$MESS["CL_CANT_CLOSE_PROJECT_PASSED_REQUIRE"] = "Actuellement sont passés les obligatoires : ";
$MESS["CL_CHECK_PROGRESS"] = "Tests réussis";
$MESS["CL_CLOSE"] = "Fermer";
$MESS["CL_DESC"] = "Description";
$MESS["CL_DONE"] = "Prêt";
$MESS["CL_EMPTY_COMMENT"] = "Pour les statuts 'Passé' et 'Omis' le commentaire est obligatoire !";
$MESS["CL_EMPTY_DESC"] = "la description manque";
$MESS["CL_END_TEST"] = "Complète ...";
$MESS["CL_END_TEST_PROCCESS"] = "Arrêtez...";
$MESS["CL_FORM_ABOUT_CLIENT_TITLE"] = "Coordonnées pour contacter le propriétaire du projet";
$MESS["CL_FROM"] = "partir de";
$MESS["CL_F_STATUS"] = "Échec";
$MESS["CL_HIDE_COMMENTS"] = "Cacher les commentaires";
$MESS["CL_HIDE_REPORT"] = "Masquer les barres de tâches";
$MESS["CL_MANUAL"] = "<p>Avant de réaliser un projet vous devrez passer des tests différents: qualité du développement, configurations du produit et la conformité spécifique de Bitrix Framework .</p><p>Les tests eux-mêmes sont divisés en deux types: obligatoires et facultatifs. Pour la réalisation du projet il suffit de passer les tests obligatoires.</p><p>Le passage de tests facultatifs avantagera votre projet. Certains tests dispose d'une vérification automatique.</p> ";
$MESS["CL_MANUAL2"] = "<p>Programme partenaire du Monitoring de la qualité des projets se compose de deux étapes: le passage des tests du Monitoring de la qualité et de l'enquête du propriétaire du projet. La première étape (Monitoring de la qualité) est passée.</p><p><b>Deuxième étape du projet dqns 'Bitrix'. Enquête du propriétaire du projet.</b><br>Veuillez saisir les coordonnées du propriétaire.<br>Nous prendrons contact avec lui et poserons 10 petites questions consernant la qualité de la gestion du développeur, qualité du projet développé et facilité d'utilisation du logiciel 'Bitrix'.</p><p><b>Informez-le obligatoirement sur notre appel !</b></p>";
$MESS["CL_MANUAL_MINI"] = "<p>Pour la réalisation du projet dans le Bitrix vous devez passer les tests restants obligatoires. Ils peuvent être dans le statut 'N'est pas encore passé' (N'est pas passé automatiquement), ou dans le statut 'En attente' (nécessite vérification manuelle supplémentaire). Pour les passer, vous devez apprendre à nos conseils relatives à l'épreuve en allant aux détails du test à l'onglet 'Conseils', ainsi que les détails de l'erreur (rapport détaillé).</p> <p>Ensuite, il ya deux options : </p> <ol> <li> soit corriger les erreurs et relancez le test, </li> <li>, soit, si vous pensez que vous aviez suivi tous les conseils mais il ya des nuances qui affectent la résultat du test, laisser un commentaire pour notre modérateur et modifier votre propre statut contre 'Réussi'. </li> </ol>";
$MESS["CL_MANUAL_MINI_2"] = "Ces résultats sont suffisants pour présenter le projet du Moniteur de qualité. Pour enregistrer les résultats du test veuillez entrer vos coordonnées.";
$MESS["CL_MANUAL_TEST"] = "<p>Liste de contrôle de la qualité comprend les recommendations d'experts pour effectuer le projet web mieux intégrée, en commençant par le réglage de modèles de conception et en terminant par des tests de charge et de l'organisation de l'audit de sécurité.</p>
<p>Les recommandations sont basées sur l'expérience de mise en uvre et l'exploitation de solutions Web de complexité variable sur la plate-forme Bitrix Framework sous de fortes charges. La mise en uvre des recommandations permettra d'améliorer la performance, la sécurité et la gestion du projet web, permettra de réduire les risques techniques et le coût d'appui et de développement.</p>
<p>Les recommandations sont présentées sous la forme de tests obligatoires et facultatifs. Tests obligatoires - sont essentiels et doivent être remplis. Les tests facultatifs sont recommandés pour la mise en uvre. Certains tests sont automatisés</p>
<p>Le projet est prêt pour la remise si toutes les sections de la liste de contrôle sont en vert.</p>
<p>Ordre de remise recommendé : </p>
<ol>
<li>Développeur lance les tests automatisés. Le système effectue une vérification automatique, marquant chaque texte automatisé <font color='green'>'passé avec succès'</font> ou <font color='red'>'échoué'</font>.
<li>Développeur contrôle chaque test echoué automatisé, élimine des accrocs et redémarre l'auto-test pour une nouvelle vérification. Le changement manuel d'état de test en status 'manqué' est possible.</li>
<li>Développeur contrôle des tests non automatisés et change le à l'état <font color='green'>'passé avec succès'</font> ou 'manqué'.</li>
<li>Après les tests obligatoires sont passés avec succès, le développeur saisit des informations sur lui-même/son entreprise dans la section appropriée de la liste.</li>
<li>Développeur remet le projet au client. Client s'assure que tous les tests obligatoires sont dans l'état de <font color='green'>'passé avec succès'</font>, et il n'y a pas de test à l'état <font color='red'>'échoué'</font>.</li>
<li>Developpeur remet le projet réussi le test intégré et met le dans l'archive.</li>
</ol>
<p>Il est recommandé de remettre tout les raffinements suivants de projet web selon la liste de contrôle de qualité de la mise en uvre. Cela permettra d'assurer une qualité adéquate de l'intégration dans le développement et la modification du fonctionnel du projet web.</p>";
$MESS["CL_MORE_DETAILS"] = "Rapport détaillé";
$MESS["CL_MORE_DETAILS_INF"] = "Information détaillée sur le résultat de l'autotest";
$MESS["CL_NEED_TO_STOP"] = "Pour modifier le statut vous devez arrêter l'autotest.";
$MESS["CL_NEXT_TEST"] = "Suivant";
$MESS["CL_NOW_AUTOTEST_WORK"] = "Comment ca fonctionne";
$MESS["CL_NOW_TO_TEST_IT"] = "Comment tester";
$MESS["CL_NO_COMMENT"] = "Si vous pensez que les recommandations ont été remplies et qu'il y a des nuances qui influent sur le résultat du test, vous pouvez laisser un commentaire pour notre modérateur et changer le statut à 'Passé avec succès'.";
$MESS["CL_PASS_TEST"] = "démarrer l'autotest";
$MESS["CL_PERCENT_LIVE"] = "Terminé";
$MESS["CL_PREV_TEST"] = "Précédent";
$MESS["CL_REFRESH_REPORT_STATUSES"] = "Mettre à jour les statuts des projets";
$MESS["CL_REPORT_ARCHIVE"] = "Tests terminés du 'Moniteur de qualité'";
$MESS["CL_REPORT_CALL_TIME"] = "Temps pour un appel";
$MESS["CL_REPORT_CALL_TIME_HINT"] = "spécifier quand un spécialiste Bitrix devrait appeler votre client";
$MESS["CL_REPORT_CITY"] = "Ville";
$MESS["CL_REPORT_CLIENT_NAME"] = "Personne à contacter (nom, prénom, patronyme)";
$MESS["CL_REPORT_CLIENT_POST"] = "Fonction de l'employé";
$MESS["CL_REPORT_COMMENT"] = "Commentaire";
$MESS["CL_REPORT_COMMENT_HELP"] = "Ici vous pouvez indiquer n'importe quelle information qui pourra être utile à l'employé de Bitrix lors de l'activation du client.";
$MESS["CL_REPORT_COMPANY_NAME"] = "Entreprise";
$MESS["CL_REPORT_DATE"] = "Date";
$MESS["CL_REPORT_EMAIL"] = "Adresse e-mail";
$MESS["CL_REPORT_FIO_TESTER"] = "Nom du fournisseur";
$MESS["CL_REPORT_INFO"] = "Information sur le rapport";
$MESS["CL_REPORT_INVITE"] = "Nous vous invitons à prendre part au programme de contrôle qualité. Remplissez le formulaire ci-dessous afin que nos employés puissent contacter le client pour remplir les questionnaires. Prévenez le client.";
$MESS["CL_REPORT_NOT_FOUND"] = "le rapport n'a pas été trouvé.";
$MESS["CL_REPORT_OLD"] = "Le rapport n'est pas à jour. Veuillez recommencer le test.";
$MESS["CL_REPORT_PHONE"] = "Téléphone de contact";
$MESS["CL_REPORT_PHONE_ADD"] = "ext.";
$MESS["CL_REPORT_SENDED"] = "Le rapport est transféré vers Bitrix24";
$MESS["CL_REPORT_SITES"] = "Sites";
$MESS["CL_REPORT_TABLE_CHECKED"] = "A été passé";
$MESS["CL_REPORT_TABLE_DETAIL"] = "détails";
$MESS["CL_REPORT_TABLE_FAILED"] = "Échec";
$MESS["CL_REPORT_TABLE_TESTER"] = "Commentaire du testeur";
$MESS["CL_REPORT_TABLE_TOTAL"] = "De tests au total";
$MESS["CL_REPORT_WARNED"] = "Je valide";
$MESS["CL_REPORT_WARNED2"] = "que le client est averti de l'appel par un collaborateur de Bitrix";
$MESS["CL_REQUIRE_FIELDS"] = "Tous les champs, à l'exception du commentaire et du numéro d'extension, sont obligatoires.";
$MESS["CL_REQUIRE_FIELDS2"] = "Tous les champs sont obligatoires.";
$MESS["CL_REQUIRE_SITES"] = "Les domaines spécifiés doivent être listés dans les préférences des sites (dans le champ \"Nom du domaine).";
$MESS["CL_RESULT_TEST"] = "Résultat";
$MESS["CL_SAVE_COMMENTS"] = "Enregistrer le commentaire";
$MESS["CL_SAVE_REPORT"] = "Enregistrer le rapport";
$MESS["CL_SAVE_SEND_REPORT"] = "Rejoignez Programme d'évaluation de la qualité";
$MESS["CL_SAVE_SEND_REPORT_CUT"] = "Envoyer le rapport dans &laquo;Bitrix&raquo;";
$MESS["CL_SAVE_SEND_REPORT_HINT"] = "la remise du projet au contrôle de qualité à la compagnie 'Bitrix', seule l'information sur les résultats du passage des tests sur le Moniteur de qualité et les coordonnées du côté du propriétaire du projet (pour contacter les employés de 'Bitrix') sont transmises. Aucunes autres données sur le projet ne sont transmises si elles ne sont pas séparément indiquées (à la main) dans les commentaires aux tests.";
$MESS["CL_SAVE_SUCCESS"] = "Le statut du test et les commentaires sont sauvegardés.";
$MESS["CL_SENDING_QC_REPORT"] = "Envoi des résultats du Moniteur de Qualité";
$MESS["CL_SHOW_COMMENTS"] = "Afficher les commentaires";
$MESS["CL_SHOW_HIDDEN"] = "Afficher les éléments cachés";
$MESS["CL_SHOW_REPORT"] = "Montrer le projet";
$MESS["CL_STATUS_COMMENT"] = "Commentaire";
$MESS["CL_S_STATUS"] = "Omis";
$MESS["CL_TAB_DESC"] = "Description";
$MESS["CL_TAB_RESULT"] = "Résultat";
$MESS["CL_TAB_TEST"] = "Test";
$MESS["CL_TEST"] = "Test";
$MESS["CL_TESTER"] = "Commentaire du testeur";
$MESS["CL_TEST_CHECKED"] = "A été passé";
$MESS["CL_TEST_CHECKED_COUNT"] = "a été passé";
$MESS["CL_TEST_CHECKED_COUNT_FROM"] = "de";
$MESS["CL_TEST_CHECKED_R"] = "Obligatoires qui restent";
$MESS["CL_TEST_CODE"] = "Le code du texte";
$MESS["CL_TEST_FAILED"] = "Échec";
$MESS["CL_TEST_IS_REQUIRE"] = "obligatoire";
$MESS["CL_TEST_LINKS"] = "Liens";
$MESS["CL_TEST_NAME"] = "Dénomination";
$MESS["CL_TEST_PROGRESS"] = "#check# du #total#";
$MESS["CL_TEST_REQUIRE"] = "Obligatoire";
$MESS["CL_TEST_RESULT"] = "Résultat du test";
$MESS["CL_TEST_SKIP_REQUIRE"] = "Nombre de  obligatoires manqués";
$MESS["CL_TEST_STATUS"] = "Statut du test";
$MESS["CL_TEST_TOTAL"] = "De tests au total";
$MESS["CL_TEST_WAITING"] = "Attend l'exécution";
$MESS["CL_TITLE_CHECKLIST"] = "Moniteur de la qualité";
$MESS["CL_VENDOR"] = "Développeur";
$MESS["CL_W_STATUS"] = "Attend l'exécution";
