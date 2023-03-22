<?
$MESS["MAIN_OPTION_CACHE_BUTTON_OFF"] = "Desativar cache";
$MESS["MAIN_OPTION_CACHE_BUTTON_ON"] = "Ativar cache";
$MESS["MAIN_OPTION_CACHE_ERROR"] = "Tipo de cache componentes já está definido para este valor";
$MESS["MAIN_OPTION_CACHE_OFF"] = "Cache dos componentes estão desativados por padrão";
$MESS["MAIN_OPTION_CACHE_OK"] = "Arquivos de cache limpo";
$MESS["MAIN_OPTION_CACHE_ON"] = "Cache dos componentes estão ativados por padrão";
$MESS["MAIN_OPTION_CACHE_SUCCESS"] = "Tipo de componentes de cache com sucesso ligado";
$MESS["MAIN_OPTION_CLEAR_CACHE"] = "Excluir arquivos de cache";
$MESS["MAIN_OPTION_CLEAR_CACHE_ALL"] = "Todos";
$MESS["MAIN_OPTION_CLEAR_CACHE_CLEAR"] = "Limpar";
$MESS["MAIN_OPTION_CLEAR_CACHE_MANAGED"] = "Todo o cache gerenciado";
$MESS["MAIN_OPTION_CLEAR_CACHE_MENU"] = "Menu";
$MESS["MAIN_OPTION_CLEAR_CACHE_OLD"] = "Apenas desatualizado";
$MESS["MAIN_OPTION_CLEAR_CACHE_STATIC"] = "Todas as páginas em cache HTML";
$MESS["MAIN_OPTION_PUBL"] = "Configurações de cache do componente";
$MESS["MAIN_TAB_3"] = "Excluir arquivos de cache";
$MESS["MAIN_TAB_4"] = "Cache do componente";
$MESS["MCACHE_TITLE"] = "Configurações de cache";
$MESS["cache_admin_note1"] = "<p>Usar o modo Autocache acelera seu site de forma impressionante!</p>
<p>No modo Autocache, informação renderizada por componentes é atualizada de acordo com as configurações para aqueles componentes.</p>
<p>Para atualizar objeto de cache na página, você pode:</p>
<p>1. Abrir a página desejada e atualizar seus objetos clicando em botão especial para atualização de dados na barra de ferramentas administrativas.</p>
<img src=\"/bitrix/images/main/page_cache_en.png\" vspace=\"5\"/>
<p>2. Quando no modo Editar Site, você clicar no botão para limpar o cache de um dado componente. </p>
<img src=\"/bitrix/images/main/comp_cache_en.png\" vspace=\"5\"/>
<p>3. Vá para as configurações do componente e troque os componentes desejados para o modo sem cache.</p>
<img src=\"/bitrix/images/main/spisok_en.png\" vspace=\"5\"/>
<p>Após habilitar o modo para realizar cache, por padrão todos os componentes com o ajuste de cache <i>\"Automático\"</i> será mudado para trabalhar com cache.</p>
<p>Componentes com o ajuste <i>\"Realizar Cache\"</i> e com o tempo de cache maior que 0 (zero), sempre trabalha fazendo cache.</p>
<p>Componentes com o ajuste <i>\"Não Realizar Cache\"</i> ou com o tempo de cache igual a 0 (zero), sempre trabalha sem a realização de cache.</p>";
$MESS["cache_admin_note2"] = "Depois de eliminar todos os arquivos de cache todo conteúdo exibido será atualizado de acordo com novos dados. Novos arquivos de cache serão criados gradualmente na requisição de páginas com áreas de cache.";
$MESS["cache_admin_note4"] = "<p>Cache de HTML é recomendado para uma seção do site que raramente sofre alterações e que são mais comumente visitados por usuários anônimos. Os seguintes processos acontecem quando o cahce de HTML está habilitado: </p>
<ul style=\"font-size:100%\">
<li>O cache de HTML processa somente páginas listadas na máscara de inclusão e não listadas na másacara de exclusão;</li>
<li>Para vistantes não autorizados, o sisema verifica se a cópia da página está armazenada no cache HTML. Se a página é encontrada no cache, ela é exibida sem módulos de sistema incluídos. As estatíticas não restrearão visitantes. Publicidade, Kernel e outros módulos também não estarão inclusos;</li>
<li>As páginas serão enviadas comprimidas se o módulo de compressão está instalado nom momento de geração do cache;</li>
<li>Se nenhum cache é encontrado para a página, ela é processada normalmente. Após terminar de carregar a página, uma cópia da página será salva no cache de HTML;</li>
</ul>
<p>Limpeza de cache:</p>
<ul style=\"font-size:100%\">
<li>Se salvar dados ocasionar em exceder a cota do disco, o cache será completamente despejado;</li>
<li>O despejo completo do cache também pe realizado se qualquer dado é alterado pelo Painel de Controle.;</li>
<li>Se um dado é postado de páginas públicas do site (como ao adicionar comentários ou votos), então apenas partes relacionadas do cache serão despejadas;</li>
</ul>
<p>Por favor observe que quando usuários não autorizados visitam páginas do site sem cache, a sessão será iniciada e o cache de HTML não estará mais ativo.</p>
<p>Observações importantes:</p>
<ul style=\"font-size:100%\">
<li>As estatíticas não são rastreadas.</li>
<li>O módulo de publicidade não funcionará apenas no momento de criação do cache de HTML. Observe que isso não afeta módulos externos de publicidade (Google Ad Sense, etc.);</li>
<li>Os resultados das comparações de itens não serão salvas para usuários nãoautorizados (uma sessão deve ser inicializada);</li>
<li>A cota do disco deve ser especificada para evitar ataques DOS no espaço em disco;</li>
<li>Toda a funcionalidade da seção do site deve ser verificada depois de habilitar o cache de HTML (por exemplo, comentários de blog não funcionarão com modelos de blog antigos, etc.);</li>
</ul>";
$MESS["cache_admin_note5"] = "O cache HTML está sempre ativo nesta edição.";
$MESS["main_cache_files_continue"] = "Continuar";
$MESS["main_cache_files_delete_errors"] = "Erros de exclusão: #value#";
$MESS["main_cache_files_deleted_count"] = "Excluído: #value#";
$MESS["main_cache_files_deleted_size"] = "Tamanho de arquivos apagados: #value#";
$MESS["main_cache_files_last_path"] = "Pasta atual: #value#";
$MESS["main_cache_files_scanned_count"] = "Processado: #value#";
$MESS["main_cache_files_scanned_size"] = "Tamanho dos arquivos processados: #value#";
$MESS["main_cache_files_start"] = "Iniciar";
$MESS["main_cache_files_stop"] = "Parar";
$MESS["main_cache_finished"] = "Os arquivos de cache foram apagados.";
$MESS["main_cache_in_progress"] = "Excluindo os arquivos de cache.";
$MESS["main_cache_managed"] = "Cache Gerenciado";
$MESS["main_cache_managed_const"] = "A constante BX_COMP_MANAGED_CACHE está definida. O cache gerenciado está sempre ativado.";
$MESS["main_cache_managed_note"] = "\"As <b>Dependências de cache</b> são atualizações tecnológicas do cache sempre ocorrem após a alteração de dados, se esse recurso está ativo, você não terá que atualizar o cache manualmente ao atualizar notícias ou produtos: os visitantes do site vão sempre visualizar as informações atualizadas.

<br> Obtenha mais informações sobre a tecnologiade dependências de cache no site Bitrix.
<br> <span style=\"\"color:grey\"\">: nem todos os componentes podem suportar esse recurso </span> \".";
$MESS["main_cache_managed_off"] = "O cache gerenciado está desabilitado (não recomendado).";
$MESS["main_cache_managed_on"] = "O cache gerenciado está ativo.";
$MESS["main_cache_managed_saved"] = "As configurações de gerenciamento de cache foram salvas.";
$MESS["main_cache_managed_sett"] = "Parâmetros de cache gerenciados";
$MESS["main_cache_managed_turn_off"] = "Desativar cache gerenciado (não recomendado)";
$MESS["main_cache_managed_turn_on"] = "Ativar cache gerenciado";
$MESS["main_cache_wrong_cache_path"] = "Caminho de arquivo de cache inválido.";
$MESS["main_cache_wrong_cache_type"] = "Tipo de cache inválido.";
?>