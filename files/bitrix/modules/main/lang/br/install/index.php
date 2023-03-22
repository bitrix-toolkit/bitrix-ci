<?php
$MESS["MAIN_ADMIN_GROUP_DESC"] = "Acesso total.";
$MESS["MAIN_ADMIN_GROUP_NAME"] = "Administradores";
$MESS["MAIN_DEFAULT_LANGUAGE_AM_VALUE"] = "am";
$MESS["MAIN_DEFAULT_LANGUAGE_CODE"] = "pt-BR";
$MESS["MAIN_DEFAULT_LANGUAGE_DAY_MONTH_FORMAT"] = "j \\d\\e F";
$MESS["MAIN_DEFAULT_LANGUAGE_DAY_OF_WEEK_MONTH_FORMAT"] = "l, j \\d\\e F";
$MESS["MAIN_DEFAULT_LANGUAGE_DAY_SHORT_MONTH_FORMAT"] = "j \\d\\e M";
$MESS["MAIN_DEFAULT_LANGUAGE_FORMAT_CHARSET"] = "iso-8859-1";
$MESS["MAIN_DEFAULT_LANGUAGE_FORMAT_DATE"] = "DD/MM/YYYY";
$MESS["MAIN_DEFAULT_LANGUAGE_FORMAT_DATETIME"] = "DD/MM/YYYY HH:MI:SS";
$MESS["MAIN_DEFAULT_LANGUAGE_FORMAT_NAME"] = "#NAME# #LAST_NAME#";
$MESS["MAIN_DEFAULT_LANGUAGE_FULL_DATE_FORMAT"] = "l, j \\d\\e F \\d\\e Y";
$MESS["MAIN_DEFAULT_LANGUAGE_LONG_DATE_FORMAT"] = "j \\d\\e F \\d\\e Y";
$MESS["MAIN_DEFAULT_LANGUAGE_LONG_TIME_FORMAT"] = "G:i:s";
$MESS["MAIN_DEFAULT_LANGUAGE_MEDIUM_DATE_FORMAT"] = "j M Y";
$MESS["MAIN_DEFAULT_LANGUAGE_NAME"] = "Portuguese";
$MESS["MAIN_DEFAULT_LANGUAGE_NUMBER_DECIMAL_SEPARATOR"] = ",";
$MESS["MAIN_DEFAULT_LANGUAGE_NUMBER_THOUSANDS_SEPARATOR"] = ".";
$MESS["MAIN_DEFAULT_LANGUAGE_PM_VALUE"] = "pm";
$MESS["MAIN_DEFAULT_LANGUAGE_SHORT_DATE_FORMAT"] = "j/n/Y";
$MESS["MAIN_DEFAULT_LANGUAGE_SHORT_DAY_OF_WEEK_MONTH_FORMAT"] = "D, j \\d\\e F";
$MESS["MAIN_DEFAULT_LANGUAGE_SHORT_DAY_OF_WEEK_SHORT_MONTH_FORMAT"] = "D, j \\d\\e M";
$MESS["MAIN_DEFAULT_LANGUAGE_SHORT_TIME_FORMAT"] = "G:i";
$MESS["MAIN_DEFAULT_SITE_FORMAT_CHARSET"] = "iso-8859-1";
$MESS["MAIN_DEFAULT_SITE_FORMAT_DATE"] = "DD/MM/YYYY";
$MESS["MAIN_DEFAULT_SITE_FORMAT_DATETIME"] = "DD/MM/YYYY HH:MI:SS";
$MESS["MAIN_DEFAULT_SITE_FORMAT_NAME"] = "#NAME# #LAST_NAME#";
$MESS["MAIN_DEFAULT_SITE_NAME"] = "Site padrão";
$MESS["MAIN_DESKTOP_CREATEDBY_KEY"] = "Criado por";
$MESS["MAIN_DESKTOP_CREATEDBY_VALUE"] = "Bitrix24";
$MESS["MAIN_DESKTOP_EMAIL_KEY"] = "E-mail";
$MESS["MAIN_DESKTOP_EMAIL_VALUE"] = "<a href=\"mailto:info@bitrixsoft.com\">info@bitrixsoft.com</a>";
$MESS["MAIN_DESKTOP_INFO_TITLE"] = "Informações do site";
$MESS["MAIN_DESKTOP_PRODUCTION_KEY"] = "Lançado em";
$MESS["MAIN_DESKTOP_PRODUCTION_VALUE"] = "12.12.2011";
$MESS["MAIN_DESKTOP_RESPONSIBLE_KEY"] = "Administrador";
$MESS["MAIN_DESKTOP_RESPONSIBLE_VALUE"] = "John Doe";
$MESS["MAIN_DESKTOP_RSS_TITLE"] = "Bitrix Notícias";
$MESS["MAIN_DESKTOP_URL_KEY"] = "URL do site";
$MESS["MAIN_DESKTOP_URL_VALUE"] = "<a href=\"http://www.bitrixsoft.com\">www.bitrixsoft.com</a>";
$MESS["MAIN_EVERYONE_GROUP_DESC"] = "Todos os usuários (incluindo usuários não-autorizados).";
$MESS["MAIN_EVERYONE_GROUP_NAME"] = "Todos os usuários (com usuários não-autorizados)";
$MESS["MAIN_INSTALL_DB_ERROR"] = "Não é possível conectar ao banco de dados. Por favor, verifique os parâmetros.";
$MESS["MAIN_INSTALL_EVENT_MESSAGE_NEW_DEVICE_LOGIN"] = "Olá #NAME#,

um novo dispositivo acabou de iniciar sessão com o seu login #LOGIN#.
 
Dispositivo: #DEVICE# 
Navegador: #BROWSER#
Plataforma: #PLATFORM#
Localização: #LOCATION# (aproximado)
Data: #DATE#

Recomendamos que você altere sua senha imediatamente se não foi você ou se o acesso não foi em seu nome.
";
$MESS["MAIN_INSTALL_EVENT_MESSAGE_NEW_DEVICE_LOGIN_SUBJECT"] = "Novo dispositivo conectado";
$MESS["MAIN_INSTALL_EVENT_MESS_USER_CODE_REQUEST"] = "#SITE_NAME#: Solicitação de código de verificação";
$MESS["MAIN_INSTALL_EVENT_MESS_USER_CODE_REQUEST_MESS"] = "Use o seguinte código para efetuar login:

#CHECKWORD#

Uma vez logado, você pode alterar senha no seu perfil de usuário. Suas informações de cadastro:

ID do usuário: #USER_ID#
Status da conta: #STATUS#
Login: #LOGIN#

Esta mensagem foi criada automaticamente.";
$MESS["MAIN_INSTALL_EVENT_TYPE_NEW_DEVICE_LOGIN"] = "Novo dispositivo conectado";
$MESS["MAIN_INSTALL_EVENT_TYPE_NEW_DEVICE_LOGIN_DESC"] = "#USER_ID# - ID do usuário
#EMAIL# - E-mail do usuário:
#LOGIN# - Login do usuário
#NAME# - Nome do usuário
#LAST_NAME# - Sobrenome do usuário
#DEVICE# - Dispositivo
#BROWSER# - Navegador
#PLATFORM# - Plataforma
#USER_AGENT# - Agente do usuário
#IP# - Endereço IP
#DATE# - Data
#COUNTRY# - País
#REGION# - Região
#CITY# - Cidade
#LOCATION# - Localização completa (city, região, país)
";
$MESS["MAIN_INSTALL_EVENT_TYPE_USER_CODE_REQUEST"] = "Solicitação de código de verificação";
$MESS["MAIN_INSTALL_EVENT_TYPE_USER_CODE_REQUEST_DESC"] = "#USER_ID# - ID do usuário
#STATUS# - Status do login
#LOGIN# - Login
#CHECKWORD# - Código de verificação
#NAME# - Primeiro nome
#LAST_NAME# - Sobrenome
#EMAIL# - E-mail do usuário
";
$MESS["MAIN_MODULE_DESC"] = "O kernel do produto";
$MESS["MAIN_MODULE_NAME"] = "Módulo principal";
$MESS["MAIN_NEW_USER_CONFIRM_EVENT_DESC"] = "Saudações de #SITE_NAME#!
------------------------------------------

Olá,

você recebeu esta mensagem pois você (ou alguém) usou seu e-mail para registrar-se em #SERVER_NAME#.

Seu código de confirmação de registro: #CONFIRM_CODE#

Por favor use o link abaixo para verificar e ativar seu registro:
http://#SERVER_NAME#/auth/index.php?confirm_registration=yes&confirm_user_id=#USER_ID#&confirm_code=#CONFIRM_CODE#

Alternativamente, abra este link em seu navegador e entre com o código manualmente:
http://#SERVER_NAME#/auth/index.php?confirm_registration=yes&confirm_user_id=#USER_ID#

Atenção! Sua conta não será ativada até que você confirme seu registro.

---------------------------------------------------------------------

Mensagem gerada automaticamente.";
$MESS["MAIN_NEW_USER_CONFIRM_EVENT_NAME"] = "#SITE_NAME#: confirmação de inscrição de novo usuário";
$MESS["MAIN_NEW_USER_CONFIRM_TYPE_DESC"] = "#USER_ID# - ID de usuário
#LOGIN# - Login
#EMAIL# - E-mail
#NAME# - Nome
#LAST_NAME# - Sobrenome
#USER_IP# - IP do usuário
#USER_HOST# - Hóspede do usuário
#CONFIRM_CODE# - Código de confirmação
";
$MESS["MAIN_NEW_USER_CONFIRM_TYPE_NAME"] = "Confirmação de cadastro de novo usuário";
$MESS["MAIN_NEW_USER_EVENT_DESC"] = "Mensagem informativa de #SITE_NAME#
---------------------------------------

Novo usuário foi registrado com sucesso no site #SERVER_NAME#.

Detalhes de usuário:
ID de usuário: #USER_ID#

Nome: #NAME#
Sobrenome: #LAST_NAME#
E-mail do usuário: #EMAIL#

Login: #LOGIN#

Mensagem gerada automaticamente.";
$MESS["MAIN_NEW_USER_EVENT_NAME"] = "#SITE_NAME#: Novo usuário foi registrado no site";
$MESS["MAIN_NEW_USER_TYPE_DESC"] = "#USER_ID# - ID de usuário
#LOGIN# - Login
#EMAIL# - EMail
#NAME# - Nome
#LAST_NAME# - Sobrenome
#USER_IP# - IP do usuário
#USER_HOST# - Hóspede do usuário
";
$MESS["MAIN_NEW_USER_TYPE_NAME"] = "Novo usuário foi registrado";
$MESS["MAIN_RATING_AUTHORITY_NAME"] = "Autoridade";
$MESS["MAIN_RATING_NAME"] = "Avaliação";
$MESS["MAIN_RATING_TEXT_LIKE_D"] = "Curtir";
$MESS["MAIN_RATING_TEXT_LIKE_N"] = "Ao contrário";
$MESS["MAIN_RATING_TEXT_LIKE_Y"] = "Curtir";
$MESS["MAIN_RULE_ADD_GROUP_AUTHORITY_NAME"] = "Inscreva-se no grupo de usuários autorizados a votar pela autoridade";
$MESS["MAIN_RULE_ADD_GROUP_RATING_NAME"] = "Inscreva-se no grupo de usuários autorizados a votar para a avaliação";
$MESS["MAIN_RULE_AUTO_AUTHORITY_VOTE_NAME"] = "Autovoto para a autoridade do usuário";
$MESS["MAIN_RULE_REM_GROUP_AUTHORITY_NAME"] = "Remover do grupo usuários não autorizados a votar pela autoridade";
$MESS["MAIN_RULE_REM_GROUP_RATING_NAME"] = "Remover do grupo usuários não autorizados a votar pela classificação";
$MESS["MAIN_SMILE_DEF_SET_NAME"] = "Conjunto padrão";
$MESS["MAIN_USER_INFO_EVENT_DESC"] = "Mensagem informativa de #SITE_NAME#
---------------------------------------

#NAME# #LAST_NAME#,

#MESSAGE#

Sua informação de registro:

ID de usuário: #USER_ID#
Status da conta: #STATUS#
Login: #LOGIN#

Para mudar sua senha visite o link abaixo:
http://#SERVER_NAME#/auth/index.php?change_password=yes&lang=en&USER_CHECKWORD=#CHECKWORD#

Mensagem gerada automaticamente.";
$MESS["MAIN_USER_INFO_EVENT_NAME"] = "#SITE_NAME#:: informação de registo";
$MESS["MAIN_USER_INFO_TYPE_DESC"] = "#USER_ID# - ID do usuário
#STATUS# - Status da conta
#MESSAGE# - Mensagem para o usuário
#LOGIN# - Login
#CHECKWORD# - Verificar string para mudança de senha
#NAME# - Nome
#LAST_NAME# - Sobrenome
#EMAIL# - E-Mail do usuário
";
$MESS["MAIN_USER_INFO_TYPE_NAME"] = "Informações da Conta";
$MESS["MAIN_USER_INVITE_EVENT_DESC"] = "Mensagem informativa do site #SITE_NAME#
------------------------------------------
Olá #NAME# #LAST_NAME#!

O administrador adicionou você aos usuários registrados do site.

Nós convidamos você a visitar nosso site.

Sua informação de registro:

ID de usuário: #ID#
Login: #LOGIN#

Recomendamos que você mude a senha gerada automaticamente.

Para mudar a senha por favor siga o link:
http://#SERVER_NAME#/auth.php?change_password=yes&USER_LOGIN=#URL_LOGIN#&USER_CHECKWORD=#CHECKWORD#";
$MESS["MAIN_USER_INVITE_EVENT_NAME"] = "#SITE_NAME#: Convite para o site";
$MESS["MAIN_USER_INVITE_TYPE_DESC"] = "#ID# - ID de usuário
#LOGIN# - Login
#URL_LOGIN# - Login codificado para uso na URL
#EMAIL# - EMail
#NAME# - Nome
#LAST_NAME# - Sobrenome
#PASSWORD# - Senha do usuário
#CHECKWORD# - String de verificação de senha
#XML_ID# - ID do usuário para conectar a fontes de dados externos

";
$MESS["MAIN_USER_INVITE_TYPE_NAME"] = "Convite de um novo usuário do site";
$MESS["MAIN_USER_PASS_CHANGED_EVENT_DESC"] = "Mensagem informativa #SITE_NAME#";
$MESS["MAIN_USER_PASS_CHANGED_EVENT_NAME"] = "#SITE_NAME#: Confirmação de Alteração de Senha";
$MESS["MAIN_USER_PASS_CHANGED_TYPE_NAME"] = "Confirmação de alteração de senha";
$MESS["MAIN_USER_PASS_REQUEST_EVENT_DESC"] = "Mensagem informativa de #SITE_NAME#
---------------------------------------

#NAME# #LAST_NAME#,

#MESSAGE#

Para mudar sua senha por favor visite o link abaixo:
http://#SERVER_NAME#/auth/index.php?change_password=yes&lang=en&USER_CHECKWORD=#CHECKWORD#

Sua informação de registro:

ID de usuário: #USER_ID#
Status da conta: #STATUS#
Login: #LOGIN#

Mensagem gerada automaticamente.";
$MESS["MAIN_USER_PASS_REQUEST_EVENT_NAME"] = "#SITE_NAME#: Pedido de Alteração de Senha";
$MESS["MAIN_USER_PASS_REQUEST_TYPE_NAME"] = "Pedido de Alteração de Senha";
$MESS["MAIN_VOTE_AUTHORITY_GROUP_DESC"] = "A associação para este grupo de usuários é gerenciada automaticamente.";
$MESS["MAIN_VOTE_AUTHORITY_GROUP_NAME"] = "Usuários autorizados a votar por autoridade";
$MESS["MAIN_VOTE_RATING_GROUP_DESC"] = "A associação para este grupo de usuários é gerenciada automaticamente.";
$MESS["MAIN_VOTE_RATING_GROUP_NAME"] = "Usuários autorizados a votar para a classificação";
$MESS["MF_EVENT_DESCRIPTION"] = "#AUTHOR# - Autor da mensagem
#AUTHOR_EMAIL# - Endereço de email do autor
#TEXT# - Texto da mensagem
#EMAIL_FROM# - Endereço de email do remetente
#EMAIL_TO# - Endereço de email do destinatário";
$MESS["MF_EVENT_MESSAGE"] = "Notificação de #SITE_NAME#
------------------------------------------

Uma mensagem lhe foi enviada a partir do formulário de feedback.

Enviada por: #AUTHOR#
E-mail do remetente: #AUTHOR_EMAIL#

Texto da mensagem:
#TEXT#

Esta notificação foi gerada automaticamente.";
$MESS["MF_EVENT_NAME"] = "Enviando uma mensagem utilizando um formulário de feedback";
$MESS["MF_EVENT_SUBJECT"] = "#SITE_NAME#: Uma mensagem de formulário de feedback";
$MESS["main_install_sms_event_confirm_descr"] = "#USER_PHONE# - número de telefone
#CODE# - código de confirmação";
$MESS["main_install_sms_event_confirm_name"] = "Verifique o número de telefone usando o SMS";
$MESS["main_install_sms_event_restore_descr"] = "#USER_PHONE# - número de telefone
#CODE# - código de confirmação da recuperação";
$MESS["main_install_sms_event_restore_name"] = "Recupere a senha usando o SMS";
$MESS["main_install_sms_template_confirm_mess"] = "Código de confirmação: #CODE#";
$MESS["main_install_sms_template_notification_mess"] = "#NAME#: #ADDITIONAL_TEXT# (eventos: #EVENT_COUNT#)";
$MESS["main_install_sms_template_restore_mess"] = "Código para recuperar a senha: #CODE#";
