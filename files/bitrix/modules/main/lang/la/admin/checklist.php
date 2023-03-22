<?php
$MESS["CL_ADD_COMMENT"] = "Agregar comentario...";
$MESS["CL_ADD_SITES_FIELDS"] = "Agregar más";
$MESS["CL_AUTOTEST_DONE"] = "La autocomprobación ha finalizado.";
$MESS["CL_AUTOTEST_RESULT"] = "Resultados de la autocomprobación";
$MESS["CL_AUTOTEST_START"] = "Ejecutar autoprueba";
$MESS["CL_A_STATUS"] = "Aprobado";
$MESS["CL_BACK_TO_CHECKLIST"] = "Regresar a la página anterior";
$MESS["CL_BEGIN"] = "Liberar proyecto";
$MESS["CL_BEGIN_AUTOTEST"] = "Ejecutar autoprueba";
$MESS["CL_BEGIN_PROGECT_TEST"] = "Ver árbol de pruebas";
$MESS["CL_BEGIN_PROJECT_AUTOTEST"] = "Ejecutar autotest";
$MESS["CL_BEGIN_PROJECT_AUTOTEST_DELAY"] = "Retraso";
$MESS["CL_CANT_CLOSE_PROJECT"] = "No se puede liberar el proyecto. Todas las pruebas <b>obligatorias</b> deben estar en estado de \"Saltados\" o \"Aprobados\". El árbol de pruebas no debe presentar pruebas fallidas.";
$MESS["CL_CANT_CLOSE_PROJECT_FAILED"] = "Pruebas desaprobadas:";
$MESS["CL_CANT_CLOSE_PROJECT_PASSED_REQUIRE"] = "Las pruebas obligatorias pasado hasta ahora:";
$MESS["CL_CHECK_PROGRESS"] = "Prueba de funcionamiento";
$MESS["CL_CLOSE"] = "Cerrar";
$MESS["CL_DESC"] = "Descripción";
$MESS["CL_DONE"] = "Listo";
$MESS["CL_EMPTY_COMMENT"] = "El estatus 'Saltado' requiere un comentario¡";
$MESS["CL_EMPTY_DESC"] = "sin descripción";
$MESS["CL_END_TEST"] = "Finalizado...";
$MESS["CL_END_TEST_PROCCESS"] = "Finalizando...";
$MESS["CL_FORM_ABOUT_CLIENT_TITLE"] = "Información de contacto del propietario del proyecto";
$MESS["CL_FROM"] = " del";
$MESS["CL_F_STATUS"] = "Desaprobado";
$MESS["CL_HIDE_COMMENTS"] = "Ocultar comentario";
$MESS["CL_HIDE_REPORT"] = "Ocultar el proyecto";
$MESS["CL_MANUAL"] = "Antes de lanzar el proyecto, usted tendrá que pasar varias pruebas: calidad de desarrollo, parámetros del sistema y conformidad con especificaciones del FrameWork Bitrix. Estas son pruebas <b>obligatorias</b> u <b>opcionales</b>. Para lanzar un proyecto, es suficiente pasar las pruebas obligatorias, sin embargo al lograr aprobar las pruebas opcionales obtendrá mayor crédito para su proyecto. Por último, tenga en cuenta que algunas de las pruebas son evaluadas automáticamente.";
$MESS["CL_MANUAL2"] = "<p>La evaluación del proceso de calidad de un proyecto es un proceso de dos pasos: el monitoreo de calidad y encuestas aplicadas al propietario del proyecto. La primera etapa ha sido superada satisfactoriamente.</p>
<p><b>La segunda etapa es el envío del proyecto a Bitrix24: Encuesta al dueño del proyecto.</b><br>
Por favor especifique la información de contacto del dueño del proyecto.</p>
<p>Nos pondremos en contacto con él para hacer diez preguntas cortas relativas a las normas de gestión de calidad, la calidad general del proyecto y la facilidad de uso del software de Bitrix.</p>
<p><b>Por favor, hágale saber que vamos a llamar!</b></p>";
$MESS["CL_MANUAL_MINI"] = "<p>Para enviar el proyecto a Bitrix24 usted debe aprobar las pruebas obligatorias restantes. El estatus de esas pruebas puede ser \"Desaprobado\" (prueba automática desaprobada), o \"Pendiente\" (estas necesitarán ser revisadas manualmente). Para aprobar pruebas desaprobadas o pendientes, lea las recomendaciones e investigue acerca del error y sus detalles.</p>
<p>En ese punto, usted tiene dos opciones:</p>
<ol>
  <li>resuelva los errores y ejecute nuevamente el test, o</li>
	<li>si usted se inclina a considerar el test como aprobado debido a que hay factores que afectan el resultado del test, usted puede dejar un comentario que será leido por uno de nuestros especialistas, luego cambie el estatus del test al estatus aprobado.</li>
</ol>";
$MESS["CL_MANUAL_MINI_2"] = "Estos resultados son suficientes. Ahora puede lanzar el proyecto y guardar los resultados de la prueba.";
$MESS["CL_MANUAL_TEST"] = "<p>La lista de verificación de control de calidad de implementación contiene recomendaciones proporcionadas por Bitrix24 a las que un desarrollador web tiene que adherirse al momento de realizar la integración y despliegue de cualquier proyecto web.</p> 
<p>Estas recomendaciones abarcan todas las etapas de desarrollo, desde el diseño de la plantilla de la solución web, las pruebas de estrés, la auditoría de seguridad, etc. y se basan en las mejores prácticas y técnicas desarrolladas por Bitrix24 para soluciones web de alta carga. Respete las recomendaciones de esta lista de control para así lograr un mejor rendimiento, alta seguridad y control de su proyecto web, y reducir los riesgos tecnológicos y costos de mantenimiento.</p> 
<p>Las recomendaciones que se recogen en las pruebas que componen este examen se agrupan en dos grupos: obligatorias y opcionales. Las pruebas obligatorias son fundamentalmente cualitativas y críticas por lo tanto deben ser aprobadas de manera obligatoria. Las pruebas opcionales mejorarán la calidad final del proyecto y el superar estar pruebas es altamente recomendado. Algunas pruebas son automáticas. 
<p>El proyecto está listo para su liberación si los nodos de la lista son de color verde. 
<p>Utilice la siguiente rutina para preparar un proyecto para su liberación. 

<ol><li> El desarrollador comienza autotesting. El sistema ejecuta las pruebas una a una y se marca cada uno de las pruebas automáticas como aprobado o no aprobado.</li> <li>El desarrollador revisa cada uno de los autotests no aprobados, corrige los problemas y reinicia el autotest de las pruebas no aprobadas. La prueba pueden ser omitidas de forma manual de ser requerido.</li> <li>El desarrollador revisa cada una de las pruebas manuales y las marca como \"aprobado\" o \"desaprobado\".</li>
<li>El desarrollador deberá proporcionar su información personal y de la compañía en el item de lista de verificación correspondiente.</li>
<li>El desarrollador libera el proyecto al cliente. Este último asegura que todas las pruebas obligatorias se han pasado y no han sido omitidas.</li>
<li>El desarrollador libera el proyecto y lo añade al archivo.</li>
</ol>
  <p>Cualquier actualización posterior importante deberá ser liberada como un proyecto independiente utilizando la lista de control de calidad. Esto asegurará de la calidad y la robustez del proyecto. 
<p>";
$MESS["CL_MORE_DETAILS"] = "Reporte detallado";
$MESS["CL_MORE_DETAILS_INF"] = "Resultados detallados del autotest ";
$MESS["CL_NEED_TO_STOP"] = "Usted tiene que detener la autocomprobación antes de cambiar el estado.";
$MESS["CL_NEXT_TEST"] = "Siguiente";
$MESS["CL_NOW_AUTOTEST_WORK"] = "¿Cómo funciona?";
$MESS["CL_NOW_TO_TEST_IT"] = "¿Cómo hacer funcionar la prueba?";
$MESS["CL_NO_COMMENT"] = "Si usted está dispuesto a considerar el test como aprobado porque hay factores que afectan el resultado de la prueba, puede dejar un comentario para ser leído por uno de nuestros especialistas y cambiar el estado de la prueba a aprobado.";
$MESS["CL_PASS_TEST"] = "ejecutar autoprueba";
$MESS["CL_PERCENT_LIVE"] = "Finalizado:";
$MESS["CL_PREV_TEST"] = "Anterior";
$MESS["CL_REFRESH_REPORT_STATUSES"] = "Actualizar el estado del proyecto";
$MESS["CL_REPORT_ARCHIVE"] = "Archivar reporte";
$MESS["CL_REPORT_CALL_TIME"] = "Es hora de llamar a";
$MESS["CL_REPORT_CALL_TIME_HINT"] = "especificar cuándo un especialista de Bitrix debe llamar a su cliente";
$MESS["CL_REPORT_CITY"] = "Ciudad";
$MESS["CL_REPORT_CLIENT_NAME"] = "Nombre completo del empleado";
$MESS["CL_REPORT_CLIENT_POST"] = "Posición de empleado";
$MESS["CL_REPORT_COMMENT"] = "Comentario";
$MESS["CL_REPORT_COMMENT_HELP"] = "Proporcione información adicional, como las horas de contacto más apropiados, etc.";
$MESS["CL_REPORT_COMPANY_NAME"] = "Compañía";
$MESS["CL_REPORT_DATE"] = "Fecha";
$MESS["CL_REPORT_EMAIL"] = "Correo electrónico de contacto";
$MESS["CL_REPORT_FIO_TESTER"] = "Nombre completo";
$MESS["CL_REPORT_INFO"] = "Información del reporte";
$MESS["CL_REPORT_INVITE"] = "Bienvenido al Programa de Evaluación de Calidad. Por favor, complete el formulario y uno de nuestros representantes se pondrá en contacto con usted muy pronto.";
$MESS["CL_REPORT_NOT_FOUND"] = "el reporte no fue encontrado.";
$MESS["CL_REPORT_OLD"] = "El informe está desactualizado. Realice la prueba de nuevo.";
$MESS["CL_REPORT_PHONE"] = "Teléfono de contacto";
$MESS["CL_REPORT_PHONE_ADD"] = "ext.";
$MESS["CL_REPORT_SENDED"] = "Se ha enviado el informe a Bitrix24";
$MESS["CL_REPORT_SITES"] = "Sitios web";
$MESS["CL_REPORT_TABLE_CHECKED"] = "Aprobado";
$MESS["CL_REPORT_TABLE_DETAIL"] = "detalles";
$MESS["CL_REPORT_TABLE_FAILED"] = "Desaprobado";
$MESS["CL_REPORT_TABLE_TESTER"] = "Evaluador";
$MESS["CL_REPORT_TABLE_TOTAL"] = "Total de pruebas";
$MESS["CL_REPORT_WARNED"] = "Yo confirmo";
$MESS["CL_REPORT_WARNED2"] = "el cliente ha sido notificado de que un asesor de Bitrix lo llamará.";
$MESS["CL_REQUIRE_FIELDS"] = "Los campos son obligatorios excepto comentarios y extensión telefónica.";
$MESS["CL_REQUIRE_FIELDS2"] = "Los campos son obligatorios.";
$MESS["CL_REQUIRE_SITES"] = "Los dominios especificados deben aparecer en las preferencias de Sitio web (el campo \"Nombre de dominio\").";
$MESS["CL_RESULT_TEST"] = "Resultado";
$MESS["CL_SAVE_COMMENTS"] = "Guardar comentario";
$MESS["CL_SAVE_REPORT"] = "Guardar reporte";
$MESS["CL_SAVE_SEND_REPORT"] = "Programa de evaluación de calidad";
$MESS["CL_SAVE_SEND_REPORT_CUT"] = "Enviar a Bitrix24";
$MESS["CL_SAVE_SEND_REPORT_HINT"] = "Cuando usted revise su proyecto en el programa de evluación de Calidad de Bitrix24, el sistema sólo envía los resultados de las pruebas y los datos de contacto del dueño del proyecto. Si usted desea proporcionar información adicional, especifíquela como comentarios.";
$MESS["CL_SAVE_SUCCESS"] = "El estatus del test y los comentarios han sido guardados.";
$MESS["CL_SENDING_QC_REPORT"] = "Enviando datos de evaluación de calidad...";
$MESS["CL_SHOW_COMMENTS"] = "Mostrar comentarios";
$MESS["CL_SHOW_HIDDEN"] = "Mostrar datos ocultos";
$MESS["CL_SHOW_REPORT"] = "Iniciar el proyecto";
$MESS["CL_STATUS_COMMENT"] = "Comentar";
$MESS["CL_S_STATUS"] = "Saltar";
$MESS["CL_TAB_DESC"] = "Descripción";
$MESS["CL_TAB_RESULT"] = "Resultados";
$MESS["CL_TAB_TEST"] = "Prueba";
$MESS["CL_TEST"] = "Prueba";
$MESS["CL_TESTER"] = "Evaluador";
$MESS["CL_TEST_CHECKED"] = "Aprobado";
$MESS["CL_TEST_CHECKED_COUNT"] = "aprobado";
$MESS["CL_TEST_CHECKED_COUNT_FROM"] = "del";
$MESS["CL_TEST_CHECKED_R"] = "Requerimientos pendientes";
$MESS["CL_TEST_CODE"] = "Código de prueba";
$MESS["CL_TEST_FAILED"] = "Desaprobado";
$MESS["CL_TEST_IS_REQUIRE"] = "obligatorio";
$MESS["CL_TEST_LINKS"] = "Links";
$MESS["CL_TEST_NAME"] = "Nombre";
$MESS["CL_TEST_PROGRESS"] = "#check# de #total#";
$MESS["CL_TEST_REQUIRE"] = "Obligatorias";
$MESS["CL_TEST_RESULT"] = "Resultados de la prueba";
$MESS["CL_TEST_SKIP_REQUIRE"] = "Se han saltado pruebas obligatorias";
$MESS["CL_TEST_STATUS"] = "Estado de la prueba";
$MESS["CL_TEST_TOTAL"] = "Total de pruebas";
$MESS["CL_TEST_WAITING"] = "Pendiente";
$MESS["CL_TITLE_CHECKLIST"] = "Control de Calidad de Proyectos";
$MESS["CL_VENDOR"] = "Desarrollador";
$MESS["CL_W_STATUS"] = "Pendiente";
