<?php
$MESS["SC_HELP_CHECK_MYSQL_MODE"] = "Il parametro <i>sql_mode</i> specifica la modalità di funzionamento di MySQL. Tieni presente che potrebbe accettare dei valori incompatibili con le soluzioni Bitrix. Aggiungi il seguente codice a <i>/bitrix/php_interface/after_connect_d7.php</I> per impostare la modalità predefinita:
<code>\$connection = Bitrix\Main\Application::getConnection();
\$connection-&gt;queryExecute(&quot;SET sql_mode=''&quot;);
\$connection-&gt;queryExecute(&quot;SET innodb_strict_mode=0&quot;);</code>

Tieni presente che potrebbe essere necessario disporre del privilegio utente per il database SESSION_VARIABLES_ADMIN su MySQL 8.0.26 e versioni successive. Se il tuo privilegio attuale è insufficiente, devi contattare l'amministratore del database o modificare il file di configurazione di MySQL.";
