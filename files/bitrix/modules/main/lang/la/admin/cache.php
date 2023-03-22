<?
$MESS["MAIN_OPTION_CACHE_BUTTON_OFF"] = "Deshabilitar caché";
$MESS["MAIN_OPTION_CACHE_BUTTON_ON"] = "Habilitar caché";
$MESS["MAIN_OPTION_CACHE_ERROR"] = "El tipo de caché de componetes ahora tiene este valor";
$MESS["MAIN_OPTION_CACHE_OFF"] = "El caché de componentes está deshabilitado por defecto";
$MESS["MAIN_OPTION_CACHE_OK"] = "Archivos de Caché limpiados";
$MESS["MAIN_OPTION_CACHE_ON"] = "El caché de componentes está habilitado por defecto";
$MESS["MAIN_OPTION_CACHE_SUCCESS"] = "El tipo de caché de componentes ha cambiado satisfactoriamente";
$MESS["MAIN_OPTION_CLEAR_CACHE"] = "Limpiar Archivos de Caché";
$MESS["MAIN_OPTION_CLEAR_CACHE_ALL"] = "Todo";
$MESS["MAIN_OPTION_CLEAR_CACHE_CLEAR"] = "Limpiar";
$MESS["MAIN_OPTION_CLEAR_CACHE_MANAGED"] = "Todo el caché administrativo";
$MESS["MAIN_OPTION_CLEAR_CACHE_MENU"] = "Menú";
$MESS["MAIN_OPTION_CLEAR_CACHE_OLD"] = "Sólo lo vencido";
$MESS["MAIN_OPTION_CLEAR_CACHE_STATIC"] = "Todas las páginas en caché HTML";
$MESS["MAIN_OPTION_PUBL"] = "Configuraciones de caché de componentes";
$MESS["MAIN_TAB_3"] = "Eliminar Archivos de Cache";
$MESS["MAIN_TAB_4"] = "Caché de componentes";
$MESS["MCACHE_TITLE"] = "Configuraciones de caché";
$MESS["cache_admin_note1"] = "<p>Usando el modo Autocache la velocidad de su sitio web se incrementará increiblemente!</p>
<p>En el modo Autocache, la información generada por componentes es refrescada de acuerdo a las configuraciones del componente.</p>
<p>Para refrescar los objetos cacheados sobre su página usted puede:</p>
<p>1. Abrir la página requerida y refrescar el objeto haciendo click en un botón especial sobre la barra administrativa.</p>
<img src=\"/bitrix/images/main/page_cache_en.png\" vspace=\"5\" />
<p>2. En el modo Edición del Sitio, usted puede hacer click en el botón limpiar caché de un componente específico. </p>
<img src=\"/bitrix/images/main/comp_cache_en.png\" vspace=\"5\" />
<p>3. Diríjase a las configuraciones del componente y cambie el componente requerido al modo sin caché.</p>
<img src=\"/bitrix/images/main/spisok_en.png\" vspace=\"5\" />
<p>Después de habilitar el modo de caché, por defecto todos los componentes con la configuración de Auto caché<i>\"Auto\"</i> serán cambiados a trabajar con el caché.</p>
<p>Componentes con la configuración <i>\"Caché\"</i> y con el tiempo de caché superior a 0 (cero), trabajarán en el modo caché.</p>
<p>Componentes con la configuración <i>\"No usar caché\"</i> o con el tiempo de caché igual a 0 (cero), trabajarán sin caché.</p>";
$MESS["cache_admin_note2"] = "Después de realizar la actualización de archivos se mostrará el contenido actualizado de acuerdo a la nueva información y datos publicados. Los nuevos archivos de caché se irán creando gradualmente mientras se vayan solicitando nuevas páginas y estas se vayan guardando en el caché.";
$MESS["cache_admin_note4"] = "<p>El caché HTML es recomendado para secciones del sitio web que cambian con poca frecuencia y son mayormente vistas por visitantes anónimos. Los siguientes procesos se llevan a cabo cuando el caché HTML es habilitado: </p>
<ul style=\"font-size:100%\">
<li>Proceso de Cache HTML sólo para páginas listadas en la máscara de inclusión y no listadas en la máscara de exclusión;</li>
<li>Para usuarios no autorizados, el sistema revisa si una copia de la página es almacenada en el caché HTML. Si la página es encontrada en el caché, esta es mostrada sin incluir funciones de algunos módulos del sistema, por ejemplo las estadísticas no serán registradas, el módulo principal así como otros módulos no son tomados en cuenta;</li>
<li>Las páginas serán comprimidas si el Módulo de Compresión está instalado en el momento de generación del caché.;</li>
<li>Si no es encontrada la página en el caché, esta es procesada por la vía regular. Después de terminada la carga de la página un copia de ella será guardada en el caché;</li>
</ul>
<p>Limpieza de caché:</p>
<ul style=\"font-size:100%\">
<li>Si al guardar los datos esta excede el espacio disponible en el disco, el caché será completamente limpiado;</li>
<li>También se realiza la eliminación completa del caché si algún dato es cambiado mediante el panel de control;</li>
<li>Si los datos son enviados desde las páginas públicas del sitio web (por ejemplo, la adición de comentarios o votos), entonces sólo las partes seleccionadas del caché serán eliminadas;</li>
</ul>
<p>Fíjese que los usuarios no autorizados que vistan páginas no cacheadas, iniciarán una sesión y el caché HTML no será más usado.</p>
<p>Notas importantes:</p>
<ul style=\"font-size:100%\">
<li>Estadísticas no serán seguidas;</li>
<li>El módulo de Publicidad trabajará sólo en el momento de creación del caché HTML. Note que esto no afecta módulos externos de publicidad (Google Ad Sense por ejemplo);</li>
<li>El resultado de la comparación de items no será guardado para usuarios no autorizados (una sesión debe ser iniciada);</li>
<li>La cuota de disco debe ser especificada para evitar ataques DOS;</li>
<li>Toda la funcionalidad de la sección del sitio a la que se le habilitó caché HTML debe ser revisada (por ejemplo los comentarios con las plantillas antiguas del blog, entre otros detalles.);</li>
</ul>";
$MESS["cache_admin_note5"] = "El caché HTML siempre está habilitado en esta edición.";
$MESS["main_cache_files_continue"] = "Continuar";
$MESS["main_cache_files_delete_errors"] = "Errores en la eliminación: #value#";
$MESS["main_cache_files_deleted_count"] = "Borrado: #value#";
$MESS["main_cache_files_deleted_size"] = "Tamaño de los archivos borrados: #value#";
$MESS["main_cache_files_last_path"] = "Carpeta Actual: #value#";
$MESS["main_cache_files_scanned_count"] = "Procesado: #value#";
$MESS["main_cache_files_scanned_size"] = "Tamaño de los archivos procesados: #value#";
$MESS["main_cache_files_start"] = "Inicio";
$MESS["main_cache_files_stop"] = "Detener";
$MESS["main_cache_finished"] = "Los archivos del caché han sido borrados.";
$MESS["main_cache_in_progress"] = "Borrando archivos de caché.";
$MESS["main_cache_managed"] = "Caché Administrativo";
$MESS["main_cache_managed_const"] = "La constante BX_COMP_MANAGED_CACHE está definida. El administrador del caché siempre está habilitado.";
$MESS["main_cache_managed_note"] = "La tecnología de <b>Dependencias de Caché</b> actualiza el caché cada vez que un cambio de datos ocurre. Si esta característica está encendida, usted no tendrá que actualizar el caché manualmente cuando actualiza noticias o productos: los visitantes del sitio web siempre verán actualizada la información.
<br><br>Consiga mayor información acerca de esta tecnología en el sitio web de Bitrix 
<br><br><span style=\"color:grey\">Nota: no todos los componentes soportan esta característica.</span>
";
$MESS["main_cache_managed_off"] = "El Caché Administrativo está deshabilitado (no recomendado).";
$MESS["main_cache_managed_on"] = "El Caché Administrativo está habilitado.";
$MESS["main_cache_managed_saved"] = "La configuración de caché administrado ha sido guardada.";
$MESS["main_cache_managed_sett"] = "Parámetros de caché Administrado";
$MESS["main_cache_managed_turn_off"] = "Deshabilitar Caché Administrativo (no recomendado).";
$MESS["main_cache_managed_turn_on"] = "Habilitar Caché Administrativo";
$MESS["main_cache_wrong_cache_path"] = "Ruta del archivo de caché inválida.";
$MESS["main_cache_wrong_cache_type"] = "Tipo de caché es inválido.";
?>