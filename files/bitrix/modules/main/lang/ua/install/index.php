<?php
$MESS["MAIN_ADMIN_GROUP_DESC"] = "Повний доступ до управління сайтом.";
$MESS["MAIN_ADMIN_GROUP_NAME"] = "Адміністратори";
$MESS["MAIN_DEFAULT_LANGUAGE_AM_VALUE"] = "am";
$MESS["MAIN_DEFAULT_LANGUAGE_CODE"] = "uk";
$MESS["MAIN_DEFAULT_LANGUAGE_DAY_MONTH_FORMAT"] = "j F";
$MESS["MAIN_DEFAULT_LANGUAGE_DAY_OF_WEEK_MONTH_FORMAT"] = "l, j F";
$MESS["MAIN_DEFAULT_LANGUAGE_DAY_SHORT_MONTH_FORMAT"] = "j M";
$MESS["MAIN_DEFAULT_LANGUAGE_FORMAT_CHARSET"] = "windows-1251";
$MESS["MAIN_DEFAULT_LANGUAGE_FORMAT_DATE"] = "DD.MM.YYYY";
$MESS["MAIN_DEFAULT_LANGUAGE_FORMAT_DATETIME"] = "DD.MM.YYYY HH:MI:SS";
$MESS["MAIN_DEFAULT_LANGUAGE_FORMAT_NAME"] = "#NAME# #LAST_NAME#";
$MESS["MAIN_DEFAULT_LANGUAGE_FULL_DATE_FORMAT"] = "l, j F Y";
$MESS["MAIN_DEFAULT_LANGUAGE_LONG_DATE_FORMAT"] = "j F Y";
$MESS["MAIN_DEFAULT_LANGUAGE_LONG_TIME_FORMAT"] = "H:i:s";
$MESS["MAIN_DEFAULT_LANGUAGE_MEDIUM_DATE_FORMAT"] = "j M Y";
$MESS["MAIN_DEFAULT_LANGUAGE_NAME"] = "Ukrainian";
$MESS["MAIN_DEFAULT_LANGUAGE_NUMBER_DECIMAL_SEPARATOR"] = ",";
$MESS["MAIN_DEFAULT_LANGUAGE_NUMBER_THOUSANDS_SEPARATOR"] = " ";
$MESS["MAIN_DEFAULT_LANGUAGE_PM_VALUE"] = "pm";
$MESS["MAIN_DEFAULT_LANGUAGE_SHORT_DATE_FORMAT"] = "d.m.Y";
$MESS["MAIN_DEFAULT_LANGUAGE_SHORT_DAY_OF_WEEK_MONTH_FORMAT"] = "D, j F";
$MESS["MAIN_DEFAULT_LANGUAGE_SHORT_DAY_OF_WEEK_SHORT_MONTH_FORMAT"] = "D, j M";
$MESS["MAIN_DEFAULT_LANGUAGE_SHORT_TIME_FORMAT"] = "H:i";
$MESS["MAIN_DEFAULT_SITE_FORMAT_CHARSET"] = "windows-1251";
$MESS["MAIN_DEFAULT_SITE_FORMAT_DATE"] = "DD.MM.YYYY";
$MESS["MAIN_DEFAULT_SITE_FORMAT_DATETIME"] = "DD.MM.YYYY HH:MI:SS";
$MESS["MAIN_DEFAULT_SITE_FORMAT_NAME"] = "#NAME# #LAST_NAME#";
$MESS["MAIN_DEFAULT_SITE_NAME"] = "Сайт за умовчанням";
$MESS["MAIN_DESKTOP_CREATEDBY_KEY"] = "Автор сайту";
$MESS["MAIN_DESKTOP_CREATEDBY_VALUE"] = "Група компаній &laquo;Бітрікс24&raquo;.";
$MESS["MAIN_DESKTOP_EMAIL_KEY"] = "E-mail";
$MESS["MAIN_DESKTOP_EMAIL_VALUE"] = "<a href=\"mailto:info@bitrix24.ua\">info@bitrix24.ua</a>";
$MESS["MAIN_DESKTOP_INFO_TITLE"] = "Інформація про сайт";
$MESS["MAIN_DESKTOP_PRODUCTION_KEY"] = "Сайт зданий";
$MESS["MAIN_DESKTOP_PRODUCTION_VALUE"] = "12 грудня 2010 р.";
$MESS["MAIN_DESKTOP_RESPONSIBLE_KEY"] = "Відповідальна особа";
$MESS["MAIN_DESKTOP_RESPONSIBLE_VALUE"] = "Іван Іванов";
$MESS["MAIN_DESKTOP_RSS_TITLE"] = "Новини Бітрікс24";
$MESS["MAIN_DESKTOP_URL_KEY"] = "Адреса сайту";
$MESS["MAIN_DESKTOP_URL_VALUE"] = "<a href=\"https://www.bitrix24.ua\">www.bitrix24.ua</a>";
$MESS["MAIN_EVENT_MESS_NOTIFICATION"] = "Сповіщення журналу подій: #NAME#";
$MESS["MAIN_EVENT_MESS_NOTIFICATION_TEXT"] = "Зафіксовані події в журналі, що відповідають параметрам сповіщення:

Тип події: #AUDIT_TYPE_ID#
Об'єкт: #ITEM_ID#
Користувач: #USER_ID#
IP-адреса: #REMOTE_ADDR#
Браузер: #USER_AGENT#
Сторінка: #REQUEST_URI#

Кількість записів: #EVENT_COUNT#

#ADDITIONAL_TEXT#

Перейти в журнал подій:
http://#SERVER_NAME#/bitrix/admin/event_log.php?set_filter=Y&find_audit_type_id=#AUDIT_TYPE_ID#";
$MESS["MAIN_EVERYONE_GROUP_DESC"] = "Всі користувачі, включаючи неавторизованих.";
$MESS["MAIN_EVERYONE_GROUP_NAME"] = "Всі користувачі (у тому числі неавторизовані)";
$MESS["MAIN_INSTALL_DB_ERROR"] = "Не можу з'єднатися з базою даних. Перевірте правильність введених параметрів";
$MESS["MAIN_INSTALL_EVENT_MESSAGE_NEW_DEVICE_LOGIN"] = "Вітаємо, #NAME#!

Новий пристрій авторизувався під вашим логіном #LOGIN#.
 
Пристрій: #DEVICE#
Браузер: #BROWSER#
Платформа: #PLATFORM#
Розташування: #LOCATION# (може бути неточним)
Дата: #DATE#

Якщо ви не знаєте, хто це був, радимо негайно змінити пароль.
";
$MESS["MAIN_INSTALL_EVENT_MESSAGE_NEW_DEVICE_LOGIN_SUBJECT"] = "Вхід із нового пристрою";
$MESS["MAIN_INSTALL_EVENT_MESS_USER_CODE_REQUEST"] = "#SITE_NAME#: Запит коду авторизації";
$MESS["MAIN_INSTALL_EVENT_MESS_USER_CODE_REQUEST_MESS"] = "Використовуйте для авторизації код:

#CHECKWORD#

Після авторизації ви зможете змінити свій пароль у редагуванні профілю.

Ваша реєстраційна інформація:

ID користувача: #USER_ID#
Статус профілю: #STATUS#
Логін: #LOGIN#

Повідомлення створено автоматично. ";
$MESS["MAIN_INSTALL_EVENT_TYPE_NEW_DEVICE_LOGIN"] = "Вхід із нового пристрою";
$MESS["MAIN_INSTALL_EVENT_TYPE_NEW_DEVICE_LOGIN_DESC"] = "#USER_ID# — ID користувача
#EMAIL# — адреса електронної пошти користувача
#LOGIN# — логін користувача
#NAME# — ім’я користувача
#LAST_NAME# — прізвище користувача
#DEVICE# — пристрій
#BROWSER# — браузер
#PLATFORM# — платформа
#USER_AGENT# — агент користувача
#IP# — IP-адреса
#DATE# — дата
#COUNTRY# — країна
#REGION# — регіон
#CITY# — місто
#LOCATION# — розташування (місто, регіон, країна)
";
$MESS["MAIN_INSTALL_EVENT_TYPE_NOTIFICATION"] = "Сповіщення журналу подій";
$MESS["MAIN_INSTALL_EVENT_TYPE_NOTIFICATION_DESC"] = "#EMAIL# - Email одержувача
#ADDITIONAL_TEXT# - Додатковий текст дії
#NAME# - Назва сповіщення
#AUDIT_TYPE_ID# - Тип події
#ITEM_ID# - Об'єкт
#USER_ID# - Користувач
#REMOTE_ADDR# - IP-адреса
#USER_AGENT# - Браузер
#REQUEST_URI# - Сторінка
#EVENT_COUNT# - Кількість записів";
$MESS["MAIN_INSTALL_EVENT_TYPE_NOTIFICATION_DESC_SMS"] = "#PHONE_NUMBER# - Номер телефону одержувача
#ADDITIONAL_TEXT# - Додатковий текст дії
#NAME# - Назва сповіщення
#AUDIT_TYPE_ID# - Тип події";
$MESS["MAIN_INSTALL_EVENT_TYPE_USER_CODE_REQUEST"] = "Запит коду авторизації";
$MESS["MAIN_INSTALL_EVENT_TYPE_USER_CODE_REQUEST_DESC"] = "#USER_ID# - ID користувача
#STATUS# - Статус логіна
#LOGIN# - Логін
#CHECKWORD# - Код для авторизації
#NAME# - Ім'я
#LAST_NAME# - Прізвище
#EMAIL# - Email користувача
";
$MESS["MAIN_MAIL_CONFIRM_EVENT_TYPE_DESC"] = "

#EMAIL_TO# — Email-адреса для підтвердження
#MESSAGE_SUBJECT# — Тема повідомлення
#CONFIRM_CODE# — Код підтвердження";
$MESS["MAIN_MAIL_CONFIRM_EVENT_TYPE_NAME"] = "Підтвердження email-адреси відправника";
$MESS["MAIN_MODULE_DESC"] = "Ядро системи";
$MESS["MAIN_MODULE_NAME"] = "Головний модуль";
$MESS["MAIN_NEW_USER_CONFIRM_EVENT_DESC"] = "Інформаційне повідомлення сайту #SITE_NAME#
------------------------------------------

Вітаємо,

Ви отримали це повідомлення, оскільки ваша адреса була використана при реєстрації нового користувача на сервері #SERVER_NAME#.

Ваш код для підтвердження реєстрації: #CONFIRM_CODE#

Для підтвердження реєстрації перейдіть за наступним посиланням:
http://#SERVER_NAME#/auth/index.php?confirm_registration=yes&confirm_user_id=#USER_ID#&confirm_code=#CONFIRM_CODE#

Ви також можете ввести код для підтвердження реєстрації на сторінці:
http://#SERVER_NAME#/auth/index.php?confirm_registration=yes&confirm_user_id=#USER_ID#

Увага! Ваш профіль не буде активним, поки ви не підтвердите свою реєстрацію.

---------------------------------------------------------------------

Повідомлення сгенеровано автоматично.";
$MESS["MAIN_NEW_USER_CONFIRM_EVENT_NAME"] = "#SITE_NAME#: Підтвердження реєстрації нового користувача";
$MESS["MAIN_NEW_USER_CONFIRM_TYPE_DESC"] = "


#USER_ID# — ID користувача
#LOGIN# — Логін
#EMAIL# — E-mail
#NAME# — Ім'я
#LAST_NAME# — Прізвище
#USER_IP# — IP користувача
#USER_HOST# — Хост користувача
#CONFIRM_CODE# — Код підтвердження
";
$MESS["MAIN_NEW_USER_CONFIRM_TYPE_NAME"] = "Підтвердження реєстрації нового користувача";
$MESS["MAIN_NEW_USER_EVENT_DESC"] = "Інформаційне повідомлення сайту #SITE_NAME#
------------------------------------------

На сайті #SERVER_NAME# успішно зареєстрований новий користувач.

Дані користувача:
ID користувача: #USER_ID#

Ім'я: #NAME#
Прізвище: #LAST_NAME#
E-mail: #EMAIL#

Login: #LOGIN#

Лист згенеровано автоматично.";
$MESS["MAIN_NEW_USER_EVENT_NAME"] = "#SITE_NAME#: Зареєструвався новий користувач";
$MESS["MAIN_NEW_USER_TYPE_DESC"] = "

#USER_ID# — ID користувача
#LOGIN# — Логін
#EMAIL# — E-mail
#NAME# — Ім'я
#LAST_NAME# — Прізвище
#USER_IP# — IP користувача
#USER_HOST# — Хост користувача";
$MESS["MAIN_NEW_USER_TYPE_NAME"] = "Зареєструвався новий користувач";
$MESS["MAIN_RATING_AUTHORITY_NAME"] = "Авторитет";
$MESS["MAIN_RATING_NAME"] = "Рейтинг";
$MESS["MAIN_RATING_TEXT_LIKE_D"] = "Це подобається";
$MESS["MAIN_RATING_TEXT_LIKE_N"] = "Більше не подобається";
$MESS["MAIN_RATING_TEXT_LIKE_Y"] = "Мені подобається";
$MESS["MAIN_RULE_ADD_GROUP_AUTHORITY_NAME"] = "Додавання до групи користувачів, які мають право голосувати за авторитет";
$MESS["MAIN_RULE_ADD_GROUP_RATING_NAME"] = "Додавання до групи користувачів, які мають право голосувати за рейтинг";
$MESS["MAIN_RULE_AUTO_AUTHORITY_VOTE_NAME"] = "Автоматичне голосування за авторитет користувача";
$MESS["MAIN_RULE_REM_GROUP_AUTHORITY_NAME"] = "Видалення з групи користувачів, які не мають права голосувати за авторитет";
$MESS["MAIN_RULE_REM_GROUP_RATING_NAME"] = "Видалення з групи користувачів, які не мають права голосувати за рейтинг";
$MESS["MAIN_SMILE_DEF_SET_NAME"] = "Основний набір";
$MESS["MAIN_USER_INFO_EVENT_DESC"] = "Інформаційне повідомлення сайту #SITE_NAME#
------------------------------------------
#NAME# #LAST_NAME#,

#MESSAGE#

Ваша реєстраційна інформація:

ID користувача: #USER_ID#
Статус профілю: #STATUS#
Login: #LOGIN#

Ви можете змінити пароль, для цього перейдіть за наступним посиланням:
http://#SERVER_NAME#/bitrix/admin/index.php?change_password=yes&lang=ru&USER_CHECKWORD=#CHECKWORD#

Повідомлення сгенеровано автоматично.";
$MESS["MAIN_USER_INFO_EVENT_NAME"] = "#SITE_NAME#: Реєстраційна інформація";
$MESS["MAIN_USER_INFO_TYPE_DESC"] = "
#USER_ID# — ID користувача
#STATUS# — Статус логіна
#MESSAGE# — Повідомлення користувачеві
#LOGIN# — Логін
#URL_LOGIN# - Логін, закодований для використання в URL
#CHECKWORD# — Контрольний рядок для зміни паролю
#NAME# — Ім'я
#LAST_NAME# — Прізвище
#EMAIL# — E-mail користувача
";
$MESS["MAIN_USER_INFO_TYPE_NAME"] = "Інформація про користувача";
$MESS["MAIN_USER_INVITE_EVENT_DESC"] = "Інформаційне повідомлення сайту #SITE_NAME#
------------------------------------------
Вітаємо, #NAME# #LAST_NAME#!

Адміністратором сайту ви додані до числа зареєстрованих користувачів.

Запрошуємо Вас на наш сайт.

Ваша реєстраційна інформація:

ID користувача: #ID#
Login: #LOGIN#

Рекомендуємо вам змінити встановлений автоматично пароль.

Для зміни пароля перейдіть за наступним посиланням:
http://#SERVER_NAME#/auth.php?change_password=yes&USER_LOGIN=#URL_LOGIN#&USER_CHECKWORD=#CHECKWORD#
";
$MESS["MAIN_USER_INVITE_EVENT_NAME"] = "#SITE_NAME#: Запрошення на сайт";
$MESS["MAIN_USER_INVITE_TYPE_DESC"] = "#ID# — ID користувача
#LOGIN# — Логін
#URL_LOGIN# — Логин, закодований для використання в URL
#EMAIL# — E-mail
#NAME# — Ім'я
#LAST_NAME# — Прізвище
#PASSWORD# — Пароль користувача 
#CHECKWORD# — Контрольний рядок для зміни паролю
#XML_ID# — ID користувача для зв'язку з зовнішніми джерелами
";
$MESS["MAIN_USER_INVITE_TYPE_NAME"] = "Запрошення на сайт нового користувача";
$MESS["MAIN_USER_PASS_CHANGED_EVENT_DESC"] = "Інформаційне повідомлення сайту #SITE_NAME#
------------------------------------------
#NAME##LAST_NAME#,

#MESSAGE#

Ваша реєстраційна інформація:

ID користувача: #USER_ID#
Статус профілю: #STATUS#
Login: #LOGIN#

Повідомлення згенеровано автоматично.";
$MESS["MAIN_USER_PASS_CHANGED_EVENT_NAME"] = "#SITE_NAME#: Підтвердження зміни пароля";
$MESS["MAIN_USER_PASS_CHANGED_TYPE_NAME"] = "Підтвердження зміни пароля";
$MESS["MAIN_USER_PASS_REQUEST_EVENT_DESC"] = "Інформаційне повідомлення сайту #SITE_NAME#
------------------------------------------
#NAME# #LAST_NAME#,

#MESSAGE#

Для зміни пароля перейдіть за наступним посиланням:
http://#SERVER_NAME#/auth/index.php?change_password=yes&lang=ru&USER_CHECKWORD=#CHECKWORD#

Ваша реєстраційна інформація:

ID користувача: #USER_ID#
Статус профілю: #STATUS#
Login: #LOGIN#

Повідомлення згенеровано автоматично.";
$MESS["MAIN_USER_PASS_REQUEST_EVENT_NAME"] = "#SITE_NAME#: Запит на зміну пароля";
$MESS["MAIN_USER_PASS_REQUEST_TYPE_NAME"] = "Запит на зміну пароля";
$MESS["MAIN_VOTE_AUTHORITY_GROUP_DESC"] = "У цю групу користувачі додаються автоматично.";
$MESS["MAIN_VOTE_AUTHORITY_GROUP_NAME"] = "Користувачі мають право голосувати за авторитет";
$MESS["MAIN_VOTE_RATING_GROUP_DESC"] = "У цю групу користувачі додаються автоматично.";
$MESS["MAIN_VOTE_RATING_GROUP_NAME"] = "Користувачі мають право голосувати за рейтинг";
$MESS["MF_EVENT_DESCRIPTION"] = "#AUTHOR# — Автор повідомлення
#AUTHOR_EMAIL# — E-mail автора повідомлення
#TEXT# — Текст повідомлення
#EMAIL_FROM# — E-mail відправника листа
#EMAIL_TO# — E-mail одержувача листа";
$MESS["MF_EVENT_MESSAGE"] = "Інформаційне повідомлення сайту #SITE_NAME#
------------------------------------------

Вам було відправлено повідомлення через форму зворотного зв'язку

Автор: #AUTHOR#
E-mail автора: #AUTHOR_EMAIL#

Текст повідомлення:
#TEXT#

Повідомлення згенеровано автоматично.";
$MESS["MF_EVENT_NAME"] = "Відправлення повідомлення через форму зворотного зв'язку";
$MESS["MF_EVENT_SUBJECT"] = "#SITE_NAME#: Повідомлення з форми зворотного зв'язку";
$MESS["main_install_sms_event_confirm_descr"] = "#USER_PHONE# - номер телефону
#CODE# - код підтвердження
";
$MESS["main_install_sms_event_confirm_name"] = "Підтвердження номера телефону по СМС";
$MESS["main_install_sms_event_restore_descr"] = "#USER_PHONE# - номер телефону
#CODE# - код для відновлення";
$MESS["main_install_sms_event_restore_name"] = "Відновлення пароля через СМС";
$MESS["main_install_sms_template_confirm_mess"] = "Код підтвердження #CODE#";
$MESS["main_install_sms_template_notification_mess"] = "#NAME#: #ADDITIONAL_TEXT# (подій: #EVENT_COUNT#)";
$MESS["main_install_sms_template_restore_mess"] = "Код для відновлення пароля #CODE#";
