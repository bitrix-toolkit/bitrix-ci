<?php
$MESS["SALE_CHECK_PRINT_HTML_SUB_TITLE"] = "Cher/chère #ORDER_USER#,";
$MESS["SALE_CHECK_PRINT_HTML_TEXT"] = "
votre paiement a été traité et le reçu correspondant a été créé. Pour voir le reçu, utilisez ce lien :

#CHECK_LINKL#

Pour obtenir plus d'informations sur votre commande ##ORDER_ID# ou du #ORDER_DATE#, veuillez suivre le lien suivant :
http://#SERVER_NAME#/personal/order/detail/#ORDER_ACCOUNT_NUMBER_ENCODE#/
";
$MESS["SALE_CHECK_PRINT_HTML_TITLE"] = "Votre paiement pour la commande passée sur #SITE_NAME#";
$MESS["SALE_CHECK_PRINT_SUBJECT"] = "Lien du reçu";
$MESS["SALE_CHECK_PRINT_TYPE_DESC"] = "#ORDER_ID# - ID de la commande
#ORDER_DATE# - date de la commande
#ORDER_USER# - client
#ORDER_ACCOUNT_NUMBER_ENCODE# - ID de la commande à utiliser dans les liens
#ORDER_PUBLIC_URL# - lien d'affichage de la commande pour les utilisateurs non autorisés (nécessite une configuration dans les paramètres du module e-Store)
#CHECK_LINK# - lien du reçu";
$MESS["SALE_CHECK_PRINT_TYPE_NAME"] = "Notification d'impression de reçu";
$MESS["SALE_NEW_ORDER_DESC"] = "#ORDER_ID# - Code de la commande
#ORDER_DATE# - date de la commande
#ORDER_USER# - client
#EMAIL# - Adresse email du client
#BCC# - Adresse email de la copie cachée
#ORDER_LIST# - détails de la commande
#SALE_EMAIL# - Adresse email du service commercial";
$MESS["SALE_NEW_ORDER_HTML_SUB_TITLE"] = "Cher #ORDER_USER#,";
$MESS["SALE_NEW_ORDER_HTML_TEXT"] = "Votre commande numéro ##ORDER_ID# du #ORDER_DATE# est acceptée.

Prix de la commande: #PRICE#.

Composition de la commande:
#ORDER_LIST#

Vous pouvez suivre l'exécution de votre commande (stade d'exécution) dans votre rubrique personnelle du site #SITE_NAME#.

Pour entrer dans cette rubrique vous devrez entrer l'identifiant et le mot de passe d'utilisateur du site #SITE_NAME#.

Pour annuler la commande, profitez de la fonction d'Annuler de commandes accessible dans votre rubrique personnelle du site #SITE_NAME#.

Si vous contactez l'administration du site #SITE_NAME#, indiquez OBLIGATOIREMENT le numéro de votre commande #ORDER_ID#.

Merci pour votre achat !";
$MESS["SALE_NEW_ORDER_HTML_TITLE"] = "Vous avez passé une commande dans la boutique #SITE_NAME#";
$MESS["SALE_NEW_ORDER_MESSAGE"] = "Confirmation de commande à partir de #SITE_NAME#
------------------------------------------

Cher #ORDER_USER#,

Votre commande #ORDER_ID# de #ORDER_DATE# a été acceptée.

Valeur de la commande: #PRICE#.

Les articles commandés:
#ORDER_LIST#

Vous pouvez suivre votre commande (voir le statut actuel) depuis la section de site personnel à #SITE_NAME#.
Notez que vous aurez besoin de login et mot de passe pour entrer sur cette
section du site au #SITE_NAME#.

Pour annuler votre commande vous pouvez utiliser l'option spéciale disponible dans votre
section personnelle au #SITE_NAME#.

S'il vous plaît noter que vous devez indiquer votre numéro de commande: #ORDER_ID#
lorsque vous demandez des renseignements de l'administration du site à #SITE_NAME#.

Merci pour votre commande !
";
$MESS["SALE_NEW_ORDER_NAME"] = "Nouvelle commande";
$MESS["SALE_NEW_ORDER_RECURRING_DESC"] = "#ORDER_ID# -  ID d'ordre \r\n#ORDER_DATE# - pour la date \r\n#ORDER_USER# - client \r\n#PRICE# -  montant de la commande\r\n#EMAIL# - adresse e-mail du client\r\n#BCC# - copie cachée adresse e-mail \r\n#ORDER_LIST# - articles de la commande\r\n#SALE_EMAIL# - ventes dept. adresse e-mail";
$MESS["SALE_NEW_ORDER_RECURRING_MESSAGE"] = "Message d'information du site #SITE_NAME#
------------------------------------------

Cher #ORDER_USER#,

Votre commande numéro #ORDER_ID# datée #ORDER_DATE# du renouvellement de l'abonnement est acceptée.

Prix de la commande: #PRICE#.

Composition de la commande:
#ORDER_LIST#

Vous pouvez suivre votre commande en vous connectant à votre section personnelle du site #SITE_NAME#. Faites attention que, pour vous identifier dans cette section, vous devrez entrer votre nom d'utilisateur et votre mot de passe du site #SITE_NAME#.

Pour annuler votre commande utilisez la fonction d'Annuler qui est disponible dans votre section personnelle du site #SITE_NAME#.

En vous référant à l'administration du site #NOM_SITE# spécifiez OBLIGATOIREMENT le numéro de votre commande #ORDER_ID#.

Merci pour votre achat !";
$MESS["SALE_NEW_ORDER_RECURRING_NAME"] = "Nouvelle commande pour le renouvellement de l'abonnement";
$MESS["SALE_NEW_ORDER_RECURRING_SUBJECT"] = "#SITE_NAME# : Nouvelle commande ##ORDER_ID# de renouvellement d'abonnement";
$MESS["SALE_NEW_ORDER_SUBJECT"] = "#SITE_NAME# : Nouvelle commande ##ORDER_ID#";
$MESS["SALE_ORDER_CANCEL_DESC"] = "#ORDER_ID# - code de la commande
#ORDER_DATE# - date de commande
#EMAIL# - Adresse email de l'utilisateur
#CANCELED_REASON# - raison de l'annulation
#SALE_EMAIL# - Adresse email du service commercial
";
$MESS["SALE_ORDER_CANCEL_HTML_SUB_TITLE"] = "La commande numéro ##ORDER_ID# du #ORDER_DATE# est annulée.";
$MESS["SALE_ORDER_CANCEL_HTML_TEXT"] = "#ORDER_CANCEL_DESCRIPTION#

Pour plus d'informations sur la commande veuillez accéder au site http://#SERVER_NAME#/personal/order/#ORDER_ID#/";
$MESS["SALE_ORDER_CANCEL_HTML_TITLE"] = "#SITE_NAME# : Annulation de la commande ##ORDER_ID#";
$MESS["SALE_ORDER_CANCEL_MESSAGE"] = "Message d'information à partir de #SITE_NAME#
------------------------------------------

La commande  ##ORDER_ID# du #ORDER_DATE# a été annulée.

#ORDER_CANCEL_DESCRIPTION#

#SITE_NAME#

";
$MESS["SALE_ORDER_CANCEL_NAME"] = "Annuler de la commande";
$MESS["SALE_ORDER_CANCEL_SUBJECT"] = "#SITE_NAME# : Annulation de la commande ##ORDER_ID#";
$MESS["SALE_ORDER_DELIVERY_DESC"] = "#ORDER_ID# - code de la commande
#ORDER_DATE# - date de commande
#EMAIL# - Adresse email de l'utilisateur
#SALE_EMAIL# - Adresse email du service commercial";
$MESS["SALE_ORDER_DELIVERY_HTML_SUB_TITLE"] = "La livraison de la commande numéro ##ORDER_ID# datée de #ORDER_DATE# est autorisée.";
$MESS["SALE_ORDER_DELIVERY_HTML_TEXT"] = "Pour plus d'informations sur commande consultez le site http://#SERVER_NAME#/personal/order/#ORDER_ID#/";
$MESS["SALE_ORDER_DELIVERY_HTML_TITLE"] = "La livraison de votre commande à partir de site #SITE_NAME# est autorisée/";
$MESS["SALE_ORDER_DELIVERY_MESSAGE"] = "Message d'information à partir de #SITE_NAME#
------------------------------------------

La livraison de la commande  ##ORDER_ID# du #ORDER_DATE# a été autorisée.
#SITE_NAME#

";
$MESS["SALE_ORDER_DELIVERY_NAME"] = "La livraison de la commande permis";
$MESS["SALE_ORDER_DELIVERY_SUBJECT"] = "#SITE_NAME# : Livraison de la commande ##ORDER_ID# est terminée";
$MESS["SALE_ORDER_PAID_DESC"] = "#ORDER_ID# - code de la commande
#ORDER_DATE# - date de commande
#EMAIL# - Adresse email de l'utilisateur
#SALE_EMAIL# - Adresse email du service commercial";
$MESS["SALE_ORDER_PAID_HTML_SUB_TITLE"] = "La commande numéro #ORDER_ID# du #ORDER_DATE# a été payé.";
$MESS["SALE_ORDER_PAID_HTML_TEXT"] = "Pour obtenir plus d'information sur la commande, entrez au site http://#SERVER_NAME#/personal/order/#ORDER_ID#/";
$MESS["SALE_ORDER_PAID_HTML_TITLE"] = "Vous avez payé la commande sur le site #SITE_NAME#";
$MESS["SALE_ORDER_PAID_MESSAGE"] = "Message d'information à partir de #SITE_NAME#
------------------------------------------

La commande ##ORDER_ID# du #ORDER_DATE# a été payée.

#SITE_NAME#
";
$MESS["SALE_ORDER_PAID_NAME"] = "Commande a été payée";
$MESS["SALE_ORDER_PAID_SUBJECT"] = "#SITE_NAME# : la commande ##ORDER_ID# est réglée";
$MESS["SALE_ORDER_REMIND_PAYMENT_DESC"] = "#ORDER_ID# - code de la commande
#ORDER_DATE# - date de la commande
#ORDER_USER# - client
#PRICE# - montant de la commande 
#EMAIL# - adresse email du client
#BCC# - Adresse email de la copie cachée
#ORDER_LIST# - détails de la commande
#SALE_EMAIL# - adresse email du service commercial";
$MESS["SALE_ORDER_REMIND_PAYMENT_HTML_SUB_TITLE"] = "Cher #ORDER_USER#,";
$MESS["SALE_ORDER_REMIND_PAYMENT_HTML_TEXT"] = "Vous avez effectué la commande ##ORDER_ID# de #ORDER_DATE# pour une somme de #PRICE#.

Malheureusement, jusqu'à ce jour les fonds pour cette commande nous ne sont pas encore délivrés.

Vous pouvez suivre l'évolution du traitement de votre commande (a quelle étape de traitement elle se trouve), en vous rendant dans votre section personnelle du site #SITE_NAME#.

Prêtez attention que pour entrer dans cette section, vous devrez entrer votre login et mot de passe d'utilisateur du site #SITE_NAME#.

Pour annuler la commande, utilisez l'option 'Annuler la commande' qui est dans votre section personnelle du site #SITE_NAME#.

Veuillez, s'il vous plait, indiquer le numéro de votre commande #ORDER_ID# si vous vous adressez à l'administration du site #SITE_NAME#, OBLIGATOIRE.

Merci pour l'achat !";
$MESS["SALE_ORDER_REMIND_PAYMENT_HTML_TITLE"] = "Nous vous rappelons qu'il faut payer la commande sur le site #SITE_NAME#";
$MESS["SALE_ORDER_REMIND_PAYMENT_MESSAGE"] = "Message venu du site #SITE_NAME#
------------------------------------------

Cher #ORDER_USER#,

Vous avez passé une commande ##ORDER_ID# le #ORDER_DATE# avec le montant #PRICE#.

A ce jour nous n'avons malheureusement reçu aucun paiement de votre part.

Vous pouvez suivre la réalisation de votre commande (quelle étape
de réalisation) en vous connectant à votre Compte personnel du site #SITE_NAME#. 
Veuillez noter que pour entrer à votre Compte, vous devez introduire votre identifiant
et le mot de passe d'utilisateur du site #SITE_NAME#.

Pour annuler la commande, utiliser la fonction d'Annuler de commande 
disponible dans votre Compte personnel du site #SITE_NAME#.

En vous adressant à l'administration du site #SITE_NAME#
veuillez indiquer OBLIGATOIREMENT le numéro de votre commande - #ORDER_ID#.

Merci de votre achat !";
$MESS["SALE_ORDER_REMIND_PAYMENT_NAME"] = "Rappel du paiement de la commande";
$MESS["SALE_ORDER_REMIND_PAYMENT_SUBJECT"] = "#SITE_NAME# : Rappel sur le paiement de la commande ##ORDER_ID#";
$MESS["SALE_ORDER_SHIPMENT_STATUS_CHANGED_HTML_SUB_TITLE"] = "Cher/chère #ORDER_USER#,";
$MESS["SALE_ORDER_SHIPMENT_STATUS_CHANGED_HTML_TEXT"] = "Le statut de la livraison de votre commande ##ORDER_NO# du #ORDER_DATE# a été mis à jour :

\"#STATUS_NAME#\" (#STATUS_DESCRIPTION#).

Numéro de suivi : #TRACKING_NUMBER#.

Expédié via : #DELIVERY_NAME#.

#DELIVERY_TRACKING_URL##ORDER_DETAIL_URL#
";
$MESS["SALE_ORDER_SHIPMENT_STATUS_CHANGED_HTML_TITLE"] = "Les informations du suivi de votre commande passée sur #SITE_NAME# ont été mis à jour";
$MESS["SALE_ORDER_SHIPMENT_STATUS_CHANGED_SUBJECT"] = "Le statut de votre livraison de #SITE_NAME# a été mis à jour";
$MESS["SALE_ORDER_SHIPMENT_STATUS_CHANGED_TYPE_DESC"] = "#SHIPMENT_NO# - ID de la livraison
#SHIPMENT_DATE# - date d'expédition
#ORDER_NO# - commande #
#ORDER_DATE# - date de la commande
#STATUS_NAME# - nom du statut
#STATUS_DESCRIPTION# - description du statut
#TRACKING_NUMBER# - numéro de suivi
#EMAIL# - notifier l'adresse e-mail
#BCC# - envoyer une copie à l'adresse
#ORDER_USER# - client
#DELIVERY_NAME# - nom du service de livraison
#DELIVERY_TRACKING_URL# - site du service de livraison pour plus d'informations sur le suivi
#ORDER_ACCOUNT_NUMBER_ENCODE# - ID de la commande (pour les liens)
#ORDER_PUBLIC_URL# - lien d'affichage de la commande pour les utilisateurs non autorisés (nécessite une configuration dans les paramètres du module e-Store)
#ORDER_DETAIL_URL# - URL des détails de la commande";
$MESS["SALE_ORDER_SHIPMENT_STATUS_CHANGED_TYPE_NAME"] = "Mise à jour du statut du colis";
$MESS["SALE_ORDER_TRACKING_NUMBER_HTML_SUB_TITLE"] = "Cher #ORDER_USER#,";
$MESS["SALE_ORDER_TRACKING_NUMBER_HTML_TEXT"] = "Votre commande #ORDER_ID# de #ORDER_DATE# a été expédiée.

Numéro de suivi est : #ORDER_TRACKING_NUMBER#.

Pour plus d'informations sur la commande accédez au site web http://#SERVER_NAME#/personal/order/detail/#ORDER_ID#/

E-mail : #SALE_EMAIL#";
$MESS["SALE_ORDER_TRACKING_NUMBER_HTML_TITLE"] = "Numéro d'identificateur d'envoi de votre commande sur le site #SITE_NAME#";
$MESS["SALE_ORDER_TRACKING_NUMBER_MESSAGE"] = "La commande N #ORDER_ID# de #ORDER_DATE# a été expédiée par courrier.

Numéro de suivi est : #ORDER_TRACKING_NUMBER#.

Pour plus d'informations sur la commande accédez au site web http://#SERVER_NAME#/personal/order/detail/#ORDER_ID#/

E-mail : #SALE_EMAIL#";
$MESS["SALE_ORDER_TRACKING_NUMBER_SUBJECT"] = "Numéro de suivi pour votre commande de #SITE_NAME#";
$MESS["SALE_ORDER_TRACKING_NUMBER_TYPE_DESC"] = "#ORDER_ID# - code de la commande
#ORDER_DATE# - date de commande
#ORDER_USER# - client
#ORDER_TRACKING_NUMBER# - code de l'envoi postal
#EMAIL# - Adresse email du client                                                                                                                                                                             
#BCC# - Adresse email de la copie cachée
#SALE_EMAIL# - Adresse email du service commercial";
$MESS["SALE_ORDER_TRACKING_NUMBER_TYPE_NAME"] = "Avis de changement de l'ID de l'envoi";
$MESS["SALE_RECURRING_CANCEL_DESC"] = "#ORDER_ID# - code de la commande
#ORDER_DATE# - date de commande
#EMAIL# - Adresse email de l'utilisateur
#CANCELED_REASON# - raison de l'annulation
#SALE_EMAIL# - Adresse email du service commercial
";
$MESS["SALE_RECURRING_CANCEL_MESSAGE"] = "Message d'information à partir de #SITE_NAME#
------------------------------------------

Paiement récurrent a été annulée

#CANCELED_REASON#
#SITE_NAME#
";
$MESS["SALE_RECURRING_CANCEL_NAME"] = "Paiement récurrent annulée";
$MESS["SALE_RECURRING_CANCEL_SUBJECT"] = "#SITE_NAME# : Abonnement annulé";
$MESS["SALE_SUBSCRIBE_PRODUCT_HTML_SUB_TITLE"] = "Monsieur, #USER_NAME#!";
$MESS["SALE_SUBSCRIBE_PRODUCT_HTML_TEXT"] = "Le produit '#NAME#' (#PAGE_URL#) a apparu en stock.

Vous pouvez Passer votre commande au http://#SERVER_NAME#/personal/cart/

N'oubliez pas de vous identifier !

Vous avez reçu ce message sur Votre demande de vous informer de l'apparition du produit.
Prière de ne pas répondre - message généré automatiquement.

Nous vous remercions de votre achat !";
$MESS["SALE_SUBSCRIBE_PRODUCT_HTML_TITLE"] = "Notification sur l'apparition d'un produit dans la boutique #SITE_NAME#";
$MESS["SALE_SUBSCRIBE_PRODUCT_SUBJECT"] = "#SITE_NAME# : Notification de l'arrivée de l'article";
$MESS["SKGS_STATUS_MAIL_HTML_TITLE"] = "Modification du statut de la commande dans le e-commerce #SITE_NAME#";
$MESS["SMAIL_FOOTER_BR"] = "Cordialement,<br /> l'administration";
$MESS["SMAIL_FOOTER_SHOP"] = "Boutique";
$MESS["UP_MESSAGE"] = "Message d'information du site #SITE_NAME#
------------------------------------------

Cher, #USER_NAME#!

Le produit '#NAME#' (#PAGE_URL#) a apparu en stock.
Vous pouvez Passer votre commande au (http://#SERVER_NAME#/personal/cart/).

N'oubliez pas de vous identifier !

Vous avez reçu ce message sur Votre demande de vous informer si ce produit devient disponible.
Prière de ne pas répondre - ce message a été généré automatiquement.

Nous vous remercions de votre achat !";
$MESS["UP_SUBJECT"] = "#SITE_NAME# : Notification de l'arrivée de l'article";
$MESS["UP_TYPE_SUBJECT"] = "Avis de réception de marchandises";
$MESS["UP_TYPE_SUBJECT_DESC"] = "#USER_NAME# - nom de l'utilisateur
#EMAIL# - adresse email de l'utilisateur
#NAME# - nom de l'article
#PAGE_URL# - page de la description détaillée de l'article";
