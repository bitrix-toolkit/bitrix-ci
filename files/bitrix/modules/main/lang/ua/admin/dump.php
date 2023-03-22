<?php
$MESS["AUTO_EXEC_FROM_BITRIX"] = "через хмарний сервіс \"Бітрікс\"";
$MESS["AUTO_EXEC_FROM_CRON"] = "з агентами на cron";
$MESS["AUTO_EXEC_FROM_MAN"] = "через прямий запуск #SCRIPT#";
$MESS["AUTO_EXEC_METHOD"] = "Метод запуску:";
$MESS["AUTO_LOCK_EXISTS_ERR"] = "Автоматичного резервне копіювання, запущене #DATETIME# , завершилося необроблюваної помилкою. Подивіться логи сервера щоб знайти причину.";
$MESS["AUTO_URL"] = "адреса сайту";
$MESS["BCL_BACKUP_USAGE"] = "Використано місця: #USAGE# з #QUOTA#.";
$MESS["CURRENT_POS"] = "Поточна позиція:";
$MESS["DISABLE_GZIP"] = "Вимкнути компресію архіву (зниження навантаження на процесор):";
$MESS["DUMP_ADDITIONAL"] = "Додаткові параметри";
$MESS["DUMP_AUTO_INFO_OFF"] = "Регулярне резервне копіювання вимкнено";
$MESS["DUMP_AUTO_INFO_ON"] = "Регулярне резервне копіювання включено";
$MESS["DUMP_AUTO_INFO_TEXT"] = "<b>Регулярне резервне копіювання</b> 

Рекомендується включити регулярне автоматичне резервне копіювання щоб завжди мати актуальні дані у разі необхідності відновлення. 

Хмарний моніторинг &quot;Бітрікс&quot; відкриє спеціальну посилання на вашому сайті в зазначений час щоб створити резервну копію. Посилання містить секретний код, який дозволяє створити резервну копію, але не дає доступ до даних сайту. Доступ до адміністративної частини не потрібен, може бути закритий за IP. 

За замовчуванням резервна копія відправляється до хмари &quot;Бітрікс&quot;, де в зашифрованому вигляді зберігається в декількох примірниках. Це надійний і безпечний спосіб зберегти ваші дані. 

Якщо хмарні сервіси &quot;Бітрікс&quot; недоступні, а агенти виконуються на cron, буде створюватися локальна копія через cron.";
$MESS["DUMP_AUTO_TAB"] = "Регулярний запуск";
$MESS["DUMP_BTN_AUTO_DISABLE"] = "Вимкнути регулярне резервне копіювання";
$MESS["DUMP_BTN_AUTO_ENABLE"] = "Увімкнути регулярне резервне копіювання";
$MESS["DUMP_BXCLOUD_NA"] = "Хмарне сховище «1С-Битрикс» недоступно";
$MESS["DUMP_CHECK_BITRIXCLOUD"] = "Стан завдання можна перевірити на <a href=\"#LINK#\">сторінці</a> хмарного сервісу \"Бітрікс\"";
$MESS["DUMP_CLOUD_DELETE"] = "після успішної передачі в хмару";
$MESS["DUMP_CUR_PATH"] = "Поточний шлях:";
$MESS["DUMP_DB_CREATE"] = "Створення дампа бази даних";
$MESS["DUMP_DELETE"] = "Видаляти локальні резервні копії";
$MESS["DUMP_DELETE_ERROR"] = "Не вдалося видалити файл #FILE#";
$MESS["DUMP_ERR_AUTO"] = "У процесі створення резервної копії сталася помилка. Подробиці в <a href=\"#LINK#\">системному журналі</a>";
$MESS["DUMP_ERR_BIG_BACKUP"] = "Розмір резервної копії перевищує вашу квоту в хмарі &quot;Бітрікс&quot;. Архів збережений локально.";
$MESS["DUMP_ERR_NON_ASCII"] = "Щоб уникнути проблем з відновленням резервної копії в паролі не допускаються символи національного алфавіту";
$MESS["DUMP_LOCAL_TIME"] = "(локальний час сайту)";
$MESS["DUMP_MAIN_ACTIVE_FROM"] = "Початок активності";
$MESS["DUMP_MAIN_ACTIVE_TO"] = "Закінчення активності";
$MESS["DUMP_MAIN_ARC_CONTENTS"] = "Вміст резервної копії";
$MESS["DUMP_MAIN_ARC_DATABASE"] = "Архівувати базу даних";
$MESS["DUMP_MAIN_ARC_MODE"] = "Режим архівації";
$MESS["DUMP_MAIN_AUTO_PARAMETERS"] = "Налаштування скрипта періодичного запуску";
$MESS["DUMP_MAIN_BITRIX_CLOUD"] = "хмара «Бітрікс»";
$MESS["DUMP_MAIN_BITRIX_CLOUD_DESC"] = "Хмарне сховище «1С-Битрикс»";
$MESS["DUMP_MAIN_BXCLOUD_INFO"] = "Компанія «Бітрікс24» безкоштовно надає місце в хмарі для зберігання трьох резервних копій на кожну активну ліцензію. Доступ до резервних копій здійснюється за ліцензійним ключем та паролем. Без знання пароля ніхто, включаючи співробітників «Бітрікс24», не зможе отримати доступ до ваших даних.";
$MESS["DUMP_MAIN_CHANGE_SETTINGS"] = "Зміна експертних настроювань може призвести до створення нецілісність архіву та неможливості його відновлення. Ви повинні добре розуміти, що робите.";
$MESS["DUMP_MAIN_DB_EXCLUDE"] = "Виключити з бази даних:";
$MESS["DUMP_MAIN_DOWNLOAD_CLOUDS"] = "Завантажити і помістити в архів дані хмарних сховищ:";
$MESS["DUMP_MAIN_EDITION"] = "Редакція";
$MESS["DUMP_MAIN_ENABLE_EXPERT"] = "Включити експертні настроювання резервної копії";
$MESS["DUMP_MAIN_ENC_ARC"] = "Шифрування архіву";
$MESS["DUMP_MAIN_ERROR"] = "Помилка!";
$MESS["DUMP_MAIN_ERR_GET_INFO"] = "Не вдалося отримати інформацію про ключі з сервера оновлень";
$MESS["DUMP_MAIN_ERR_PASS_CONFIRM"] = "Введені паролі не співпадають";
$MESS["DUMP_MAIN_EXPERT_SETTINGS"] = "Експертні налаштування";
$MESS["DUMP_MAIN_IN_THE_BXCLOUD"] = "в хмарі «1С-Битрикс»";
$MESS["DUMP_MAIN_IN_THE_CLOUD"] = "в хмарі";
$MESS["DUMP_MAIN_MAKE_ARC"] = "Резервне копіювання";
$MESS["DUMP_MAIN_MULTISITE_INFO"] = "Якщо вибрано кілька сайтів для приміщення в архів, в корені архіву буде лежати перший за списком сайт, а публічні частини решти сайтів будуть поміщені в папку <b>/bitrix/backup/sites </b>. При відновленні потрібно буде вручну скопіювати їх в потрібні папки і створити символічні посилання.";
$MESS["DUMP_MAIN_PARAMETERS"] = "Параметри";
$MESS["DUMP_MAIN_PASSWORD_CONFIRM"] = "Повтор паролю:";
$MESS["DUMP_MAIN_REGISTERED"] = "Зареєстровано";
$MESS["DUMP_MAIN_SAVE"] = "Зберегти";
$MESS["DUMP_MAIN_SESISON_ERROR"] = "Ваша сесія закінчилася. Перезавантажте сторінку.";
$MESS["DUMP_MAIN_SITE"] = "Сайт:";
$MESS["DUMP_NOT_DELETE"] = "ніколи не видаляти";
$MESS["DUMP_NO_PERMS"] = "Закінчилося вільне місце чи немає прав на сервері на створення резервної копії";
$MESS["DUMP_NO_PERMS_READ"] = "Помилка відкриття архіву на читання";
$MESS["DUMP_RETRY"] = "Спробувати ще раз";
$MESS["DUMP_RM_BY_CNT"] = "якщо загальне число копій більше #CNT#";
$MESS["DUMP_RM_BY_SIZE"] = "якщо сумарний розмір резервних копій більше #SIZE# Гб";
$MESS["DUMP_RM_BY_TIME"] = "якщо пройшло #TIME# днів з моменту створення";
$MESS["DUMP_SAVED_DISABLED"] = "Автоматичний запуск резервного копіювання вимкнений. <br> Резервна копія буде створюватися лише при прямому запуску скрипта /bitrix/modules/main/tools/backup.php.";
$MESS["DUMP_TABLE_BROKEN"] = "Таблиця #TABLE# зруйнована в результаті внутрішньої помилки MySQL. Відновіть її цілком з резервної копії або лише структуру через <a href=\"/bitrix/admin/site_checker.php?tabControl_active_tab=edit1\" target=_blank> перевірку системи </a>";
$MESS["DUMP_WARN_NO_BITRIXCLOUD"] = "Неможливо включити автоматичне резервне копіювання: необхідний модуль хмарних сервісів \"Бітрікс\" або агенти повинні виконуватися на cron.";
$MESS["ERR_EMPTY_RESPONSE"] = "Сталася помилка на стороні сервера: отримано порожню відповідь. Зверніться до хостеру для уточнення проблеми в журналі помилок за датою запиту: #DATE#";
$MESS["ERR_NO_BX_CLOUD"] = "Не встановлено модуль хмарних сервісів &quot;Бітрікс&quot;";
$MESS["ERR_NO_CLOUDS"] = "Не встановлено модуль хмарних сховищ";
$MESS["FILE_SIZE"] = "Розмір файлу";
$MESS["INTEGRITY_CHECK"] = "Перевірка цілісності";
$MESS["INTEGRITY_CHECK_OPTION"] = "Перевірити цілісність архіву після завершення:";
$MESS["MAIN_DUMP_ACTION_DOWNLOAD"] = "Скачати";
$MESS["MAIN_DUMP_ALERT_DELETE"] = "Ви впевнені, що бажаєте видалити файл?";
$MESS["MAIN_DUMP_ARC_LOCATION"] = "Розміщення архіву:";
$MESS["MAIN_DUMP_ARC_NAME"] = "Ім'я архіву";
$MESS["MAIN_DUMP_ARC_NAME_W_O_EXT"] = "Ім'я архіву без розширення";
$MESS["MAIN_DUMP_ARC_SIZE"] = "Розмір архіву:";
$MESS["MAIN_DUMP_AUTO_BUTTON"] = "Автоматичне створення";
$MESS["MAIN_DUMP_AUTO_LOCK"] = "Запущено процес автоматичного резервного копіювання";
$MESS["MAIN_DUMP_AUTO_LOCK_TIME"] = "З моменту запуску пройшло: #TIME#";
$MESS["MAIN_DUMP_AUTO_NOTE"] = "Через панель хостингу налаштуйте задачу на cron на виконання скрипта <b>#SCRIPT#</b>. Рекомендована періодичність: щотижня.";
$MESS["MAIN_DUMP_AUTO_PAGE_TITLE"] = "Автоматичне створення резервної копії";
$MESS["MAIN_DUMP_AUTO_WARN"] = "Увімкніть <a href=\"#LINK#\">автоматичне резервне копіювання</a>, щоб мати актуальні дані на випадок відновлення.";
$MESS["MAIN_DUMP_BASE_SINDEX"] = "пошуковий індекс";
$MESS["MAIN_DUMP_BASE_SIZE"] = "МБ";
$MESS["MAIN_DUMP_BASE_STAT"] = "статистику";
$MESS["MAIN_DUMP_BXCLOUD_ENC"] = "При розміщенні резервної копії в хмарному сховище &quot;1С-Битрикс&quot; відключити шифрування неможна.";
$MESS["MAIN_DUMP_CLOUDS_DOWNLOAD"] = "Завантаження файлів з хмарних сховищ";
$MESS["MAIN_DUMP_DB_PROC"] = "Стиснення дампа бази даних";
$MESS["MAIN_DUMP_DELETE"] = "Видалити";
$MESS["MAIN_DUMP_DELETE_OLD"] = "Видалення старих копій";
$MESS["MAIN_DUMP_DOWN_ERR_CNT"] = "Пропущено при завантаженні";
$MESS["MAIN_DUMP_EMPTY_PASS"] = "Не заданий пароль для шифрування архіву";
$MESS["MAIN_DUMP_ENABLE_ENC"] = "Шифрувати дані резервної копії:";
$MESS["MAIN_DUMP_ENC_PASS"] = "Пароль для шифрування архіву (не менше 6 символів):";
$MESS["MAIN_DUMP_ENC_PASS_DESC"] = "З метою безпеки пароль для шифрування архіву повинен бути не менше 6 символів";
$MESS["MAIN_DUMP_ERROR"] = "Помилка";
$MESS["MAIN_DUMP_ERR_COPY_FILE"] = "Не вдалося скопіювати файл:";
$MESS["MAIN_DUMP_ERR_DELETE"] = "Не можна вручну видалити файли зі хмарного сховища &quot;Бітрікс&quot;. Старі копії автоматично видаляються після завантаження нових.";
$MESS["MAIN_DUMP_ERR_FILE_RENAME"] = "Помилка перейменування файлу:";
$MESS["MAIN_DUMP_ERR_FILE_SEND"] = "Не вдалося відправити файл в хмару:";
$MESS["MAIN_DUMP_ERR_INIT_CLOUD"] = "Не вдалося підключити хмарне сховище";
$MESS["MAIN_DUMP_ERR_NAME"] = "Ім'я архіву може містити тільки латинські літери, цифри, дефіс і крапку";
$MESS["MAIN_DUMP_ERR_OPEN_FILE"] = "Не вдалося відкрити файл на читання:";
$MESS["MAIN_DUMP_EVENT_LOG"] = "журнал подій";
$MESS["MAIN_DUMP_FILES_DOWNLOADED"] = "Завантажено файлів";
$MESS["MAIN_DUMP_FILES_SIZE"] = "Розмір завантажених файлів";
$MESS["MAIN_DUMP_FILE_CNT"] = "Файлов стиснуто:";
$MESS["MAIN_DUMP_FILE_DUMP_BUTTON"] = "Архівувати";
$MESS["MAIN_DUMP_FILE_FINISH"] = "Створення резервної копії завершено";
$MESS["MAIN_DUMP_FILE_KERNEL"] = "Архівувати ядро:";
$MESS["MAIN_DUMP_FILE_MAX_SIZE"] = "Виключити з архіву файли розміром більше (0 — без обмеження):";
$MESS["MAIN_DUMP_FILE_MAX_SIZE_b"] = "б ";
$MESS["MAIN_DUMP_FILE_MAX_SIZE_gb"] = "Гб ";
$MESS["MAIN_DUMP_FILE_MAX_SIZE_kb"] = "кб ";
$MESS["MAIN_DUMP_FILE_MAX_SIZE_mb"] = "Мб ";
$MESS["MAIN_DUMP_FILE_NAME"] = "Ім'я";
$MESS["MAIN_DUMP_FILE_PAGES"] = "Резервні копії";
$MESS["MAIN_DUMP_FILE_PUBLIC"] = "Архівувати публічну частину:";
$MESS["MAIN_DUMP_FILE_SENDING"] = "Передача архіву в хмару";
$MESS["MAIN_DUMP_FILE_SIZE"] = "Розмір файлів:";
$MESS["MAIN_DUMP_FILE_SIZE1"] = "Розмір архіву";
$MESS["MAIN_DUMP_FILE_STEP_SLEEP"] = "інтервал:";
$MESS["MAIN_DUMP_FILE_STEP_sec"] = "сек.";
$MESS["MAIN_DUMP_FILE_STOP_BUTTON"] = "Зупинити";
$MESS["MAIN_DUMP_FILE_TIMESTAMP"] = "Змінений";
$MESS["MAIN_DUMP_FOLDER_ERR"] = "Папка #FOLDER# недоступна на запис";
$MESS["MAIN_DUMP_FOOTER_MASK"] = "Для маски виключення діють наступні правила:
 <p>
 <li>шаблон маски може містити символи &quot;*&quot;, які відповідають будь-якої кількості будь-яких символів в імені файла або папки;</li>
 <li> якщо на початку стоїть слеш (&quot;/&quot; или &quot;\\&quot;) шлях рахується від кореня сайту;</li>
 <li>у протилежному випадку шаблон застосовується до кожного файлу або папки;</li>
 <p>Приклади шаблонів:</p>
 <li>/content/photo — виключити папку повністю /content/photo;</li>
 <li>*.zip — виключити файли з розширенням &quot;zip&quot;;</li>
 <li>.access.php — виключити всі файли &quot;.access.php&quot;;</li>
 <li>/files/download/*.zip — виключити файли з розширенням &quot;zip&quot; у директорії /files/download;</li>
 <li>/files/d*/*.ht* — виключити файли з директорій, що починаються на  &quot;/files/d&quot;  з розширеннями, що починаються на &quot;ht&quot;.</li>
";
$MESS["MAIN_DUMP_FROM"] = "з";
$MESS["MAIN_DUMP_GET_LINK"] = "Отримати посилання для перенесення";
$MESS["MAIN_DUMP_HEADER_MSG1"] = "Для перенесення резервної копії сайту на інший хостинг помістіть в кореневій папці нового сайту скрипт для відновлення <a href='#EXPORT#'>restore.php</a>, потім наберіть в рядку браузера \"<ім'я сайту> / відновлення. PHP \"і дотримуйтесь інструкцій з розпакуванню. інструменти Детальна інструкція доступна в <a href='http://dev.1c-bitrix.ru/learning/course/index.php?COURSE_ID=35&LESSON_ID=2031' target=_blank>розділі довідки</a>.";
$MESS["MAIN_DUMP_INT_CLOUD_ERR"] = "Помилка ініціалізації хмарного сховища. Спробуйте повторити відправку пізніше.";
$MESS["MAIN_DUMP_LIST_PAGE_TITLE"] = "Список резервних копій";
$MESS["MAIN_DUMP_LOCAL"] = "локально";
$MESS["MAIN_DUMP_LOCAL_DISK"] = "на локальному диску";
$MESS["MAIN_DUMP_LOCATION"] = "Розміщення";
$MESS["MAIN_DUMP_MASK"] = "Виключити з архіву файли і директорії за маскою:";
$MESS["MAIN_DUMP_MAX_ARCHIVE_SIZE"] = "Максимальний розмір однієї частини архіву (МБ):";
$MESS["MAIN_DUMP_MAX_ARCHIVE_SIZE_INFO"] = "Системні обмеження php не дозволяють робити розмір однієї частини архіву більше 2 Гб. Не встановлюйте це значення більше 200 Мб тому це суттєво збільшує час архівації та розпакування, оптимальне значення: 100 Мб.";
$MESS["MAIN_DUMP_MAX_ARCHIVE_SIZE_VALUES"] = "Допустимі значення: 11 - 2047";
$MESS["MAIN_DUMP_MORE"] = "Ще...";
$MESS["MAIN_DUMP_MYSQL_ONLY"] = "Система резервного копіювання працює тільки з базою даних MySQL.<br> Будь ласка, використовуйте зовнішні інструменти для створення архіву бази даних.";
$MESS["MAIN_DUMP_NOT_INSTALLED1"] = "Не встановлений PHP модуль Openssl";
$MESS["MAIN_DUMP_NOT_INSTALLED_HASH"] = "Чи не встановлений PHP модуль Hash.";
$MESS["MAIN_DUMP_NO_CLOUDS_MODULE"] = "Модуль хмарних сховищ не встановлено";
$MESS["MAIN_DUMP_NO_ENC_FUNCTIONS"] = "Функції шифрування недоступні, використання хмарного сховища «Бітрікс» неможливе. Зверніться до системного адміністратора для вирішення проблеми";
$MESS["MAIN_DUMP_PAGE_TITLE"] = "Резервне копіювання";
$MESS["MAIN_DUMP_PARTS"] = "частин:";
$MESS["MAIN_DUMP_PERIODITY"] = "Періодичність:";
$MESS["MAIN_DUMP_PER_1"] = "кожен день";
$MESS["MAIN_DUMP_PER_2"] = "через день";
$MESS["MAIN_DUMP_PER_3"] = "кожні 3 дні";
$MESS["MAIN_DUMP_PER_5"] = "кожні 5 днів";
$MESS["MAIN_DUMP_PER_7"] = "на тижні";
$MESS["MAIN_DUMP_PER_14"] = "кожні два тижні";
$MESS["MAIN_DUMP_PER_21"] = "кожні три тижні";
$MESS["MAIN_DUMP_PER_30"] = "щомісячно";
$MESS["MAIN_DUMP_RENAME"] = "Перейменувати";
$MESS["MAIN_DUMP_RESTORE"] = "Розпакувати";
$MESS["MAIN_DUMP_SAVE_PASS"] = "Увага! Пароль ніде не зберігається. Запишіть його в надійному місці, без знання цього пароля відновити резервну копію не вдасться.";
$MESS["MAIN_DUMP_SAVE_PASS_AUTO"] = "Введений пароль буде збережено в локальній базі даних в зашифрованому вигляді. Для шифрування використовується ваш ліцензійний ключ. Змінюйте пароль для шифрування не рідше одного разу на місяць.";
$MESS["MAIN_DUMP_SEND_CLOUD"] = "Відправити в хмару";
$MESS["MAIN_DUMP_SEND_FILE_CLOUD"] = "Відправити архів у хмарне сховище";
$MESS["MAIN_DUMP_SHED"] = "Розклад";
$MESS["MAIN_DUMP_SHED_CLOSEST_TIME"] = "Найближчий запуск запланований на:";
$MESS["MAIN_DUMP_SHED_CLOSEST_TIME_TODAY"] = "Найближчий запуск запланований на сьогодні:";
$MESS["MAIN_DUMP_SHED_CLOSEST_TIME_TOMORROW"] = "Найближчий запуск запланований на завтра:";
$MESS["MAIN_DUMP_SHED_TIME_SET"] = "Налаштування часу створення резервної копії доступна в разі якщо системні агенти виконуються на cron (неважливо, чи неперіодичні або всі). Інакше для автоматичного створення резервних копій необхідно налаштувати на певний час виконання php скрипта <b>/bitrix/modules/main/tools/backup.php</b> через панель хостингу.";
$MESS["MAIN_DUMP_SITE_PROC"] = "Стискання...";
$MESS["MAIN_DUMP_SKIP_SYMLINKS"] = "Пропускати символічні посилання на директорії:";
$MESS["MAIN_DUMP_SUCCESS_SAVED"] = "Зміни збережені";
$MESS["MAIN_DUMP_SUCCESS_SAVED_DETAILS"] = "Автоматичне створення резервних копій розпочнеться після налаштування планувальника cron";
$MESS["MAIN_DUMP_SUCCESS_SENT"] = "Архів успішно передано в хмарне сховище";
$MESS["MAIN_DUMP_TABLE_FINISH"] = "Оброблено таблиць:";
$MESS["MAIN_DUMP_USE_THIS_LINK"] = "Використовуйте цю посилання для перенесення на інший сервер через";
$MESS["MAIN_RIGHT_CONFIRM_EXECUTE"] = "Увага! Розпакування резервної копії на діючому сайті може призвести до пошкодження сайта! Продовжити?";
$MESS["MAKE_DUMP_FULL"] = "Створення повної резервної копії";
$MESS["STEP_LIMIT"] = "Тривалість кроку:";
$MESS["TIME_H"] = "год.";
$MESS["TIME_LEFT"] = ", залишилося приблизно #TIME#";
$MESS["TIME_M"] = "хв.";
$MESS["TIME_S"] = "сек.";
$MESS["TIME_SPENT"] = "Час створення резервної копії:";
