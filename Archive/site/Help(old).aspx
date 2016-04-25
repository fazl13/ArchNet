﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Help(old).aspx.cs" Inherits="WebArchiveR6.Help" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph" runat="server">
<div class="row">
<div class="col-md-3">
    <div style="position: fixed;top:32px;left:16px;">
    <a href="#h1">Введение</a><br />
    <a href="#h2">Краткое описание системы</a><br />
    <a href="#h3">&nbsp;&nbsp;Основные функции</a><br />
    <a href="#h4">&nbsp;&nbsp;Объекты, термины и сокращения</a><br />
    <a href="#h5">Основы работы в системе</a><br />
    <a href="#h6">&nbsp;&nbsp;Вход в систему</a><br />
    <a href="#h7">&nbsp;&nbsp;Начало работы</a><br />
    <a href="#h8">Архив документов</a><br />
    <a href="#h9">&nbsp;&nbsp;Заголовок</a><br />
    <a href="#h10">&nbsp;&nbsp;Фильтры</a><br />
    <a href="#h11">&nbsp;&nbsp;Список карточек</a><br />
    <a href="#h12">Настройка вида</a><br />
    <a href="#h13">Экспорт</a><br />
    </div>
</div>
<div class="col-md-8" role="main">
<div class="bs-docs-section">
  <h3 id="h1" class="page-header">Введение</h3>
  <p style="text-indent: 20px;">
    Система электронного архива (далее – СЭА) ЗАО «СТГ» предназначена для решения задач, связанных со сбором, хранением, систематизацией и поиском электронных копий документов.
    Редактирование данных в системе электронного архива происходит в программном продукте Archive, созданном с использованием среды разработки Visual FoxPro.
    Визуализация данных и организация доступа пользователям на просмотр информации происходит при помощи web-клиента программного комплекса Archive.
  </p>

  <h3 id="h2" class="page-header">Краткое описание системы</h3>
  <h4 id="h3">Основные функции:</h4>
  <ol>
    <li>регистрация в системе ЭА документации предприятия, присвоение уникальных кодов;</li>
    <li>сканирование и занесение в базу данных всех версий полученных на бумажном носителе документов;</li>
    <li>занесение в базу данных всех версий полученных в электронном виде документов;</li>
    <li>формирование и отслеживание реестров на передачу документов на бумажном носителе;</li>
    <li>регистрация в системе установленного набора атрибутов для каждого полученного документа, анализ внесенной информации;</li>
    <li>построение логических связей между документами;</li>
    <li>проверка документов по форме;</li>
    <li>рассылка уведомлений о регистрации в системе новых документов;</li>
    <li>атрибутивный и полнотекстовый поиск документов в системе;</li>
    <li>обеспечение безопасного хранения информации, контроль доступа;</li>
    <li>ответ на запросы и выдача информации по документам;</li>
    <li>организация доступа к карточкам и сканированным копиям документов посредством web-технологий и терминальных серверов;</li>
    <li>ретроспективная конверсия документов.</li>
  </ol>
  <br />
  <h4 id="h4">Основные объекты системы, термины и сокращения</h4>
  <ul>
      <li>Термины и сокращения
      <ul>
        <li><i>Электронный архив, ЭА </i>- комплекс аппаратно-программных средств и технологий создания архива документов в электронном виде;</li>
        <li><i>ЗАО «СТГ», Общество </i>- закрытое акционерное общество «Стройтрансгаз»;</li>
        <li><i>Бухгалтерский документ </i>- письменное свидетельство, доказательство факта совершения хозяйственной операции или права на ее совершение;</li>
        <li><i>Раздел «Договоры» </i>- содержит договоры, приложения и дополнительные соглашения к ним;</li>
        <li><i>ОРД </i>- организационно-распорядительный документ;</li>
        <li><i>Документы по личному составу </i>- документы, характеризующие правовую, трудовую и служебную деятельность работников предприятия;</li>
        <li><i>Документы по охране труда </i>- документы, относящиеся к работе предприятия по вопросам сохранения жизни и здоровья работников в процессе трудовой деятельности;</li>
        <li><i>Карточка документа </i>- экранная форма, содержащая список атрибутов выбранного документа и их значения;</li>
        </ul>
      </li>
       
    <li>Атрибуты карточки документа:
        <ul>
            <li><i>Код ЭА </i>- уникальный код, автоматически присваиваемый документу при регистрации;</li>
            <li><i>Документ, № документа, Дата документа </i>- форма документа, подтверждающего факт совершения хозяйственной операции, его номер и дата;</li>
            <li><i>Контрагент </i>- лицо или учреждение, взаимоотношения с которым образует хозяйственная операция, указанная в документе;</li>
            <li><i>Сумма </i>- сумма документа;</li>
            <li><i>Вид документа </i>- входящий, исходящий или внутренний документ;</li>
            <li><i>Содержание документа </i>- краткое содержание, описание хозяйственной операции;</li>
            <li><i>Пакет документов </i>- признак произвольного пакетирования документов в виду их принадлежности к одной хозяйственной операции;</li>
            <li><i>Договор, приложение, счет </i>- принадлежность документа к определенному договору, приложению к договору, счету на оплату;</li>
            <li><i>Участок </i>- принадлежность хозяйственной операции, указанной в документе, к определенному строительному участку;</li>
            <li><i>Код проекта </i>- соотнесение хозяйственной операции к определенному коду проекта;</li>
            <li><i>Ответственное подразделение </i>- структурное подразделение предприятия, ответственное за правильное оформление документов и своевременное предоставление их в электронный архив;</li>
            <li><i>Исполнитель </i>- сотрудник предприятия, обеспечивающий правильное оформление и своевременное предоставление документов в электронный архив;</li>
            <li><i>Получатель документа </i>- структурное подразделение предприятия, ответственное за хранение документа до сдачи его в бумажный архив;</li>
            <li><i>Дата в 1С </i>- дата проведения транзакций в 1С на основании данного документа;</li>
            <li><i>Оператор ЭА, Дата редактирования </i>- сотрудник электронного архива, последним редактировавший запись в базе данных и дата последнего редактирования;</li>
            <li><i>Подписанты </i>- сотрудники, пописавшие документ;</li>
            <li><i>Подразделения </i>- принадлежность хозяйственной операции, указанной в документе, к подразделениям предприятия.</li>
            <li><i>Версия документа </i>- электронный документ, соответствующий определенной стадии  жизненного цикла документа;</li>
            <li><i>Основная версия документа </i>- версия документа, наиболее соответствующая установленным для данной формы требованиям;</li>
        </ul>
    </li>
    <li>Атрибуты версий документа:
        <ul>
            <li><i>ID версии </i>- уникальный составной код версии документа, формируется из кода ЭА и порядкового номера версии документа;</li>
            <li><i>Дата получения </i>- дата занесения версии документа в базу электронного архива;</li>
            <li><i>Соответствие требованиям </i>- соответствие документа установленным требованиям;</li>
            <li><i>Описание несоответствия </i>- описание несоответствия документа установленным требованиям;</li>
            <li><i>Источник </i>- источник получения сканированной копии документа.</li>
        </ul>
    </li>
  
  </ul>
  
  
    <h3 id="h5" class="page-header">Работа в web-версии системы электронного архива</h3>
    <h4 id="h6">Вход в систему</h4>
    <p>
        Для входа в систему электронного архива необходимо запустить любой установленный на компьютере интернет-браузер, например Internet Explorer, Google Chrome, Opera, Mozilla Firefox. 
        В адресной строке набрать ссылку <span style="color:Blue">http://nfk-sp1.nfk.argus.cis</span> и перейти на неё. Появится окно выбора базы данных.
        При отсутствии учетной записи будет выведено соотвествующее сообщение. Для получения доступа необходимо сделать запрос о её создании на почтовый ящик <a href="mailto:earchive@stg.ru">earchive@stg.ru</a>
	</p>	
    <a class="thumbnail" href="/site/img/1.png" target=_blank>
        <img src="/site/img/1.png" alt="">
    </a>
   
   <br />
    <h4 id="h7">Начало работы</h4>
    <p>
       После выбора базы данных программа предлагает выбрать тип документов:
       <ul>
            <li>Бухгалтерские документы;</li>
            <li>Договоры;</li>
            <li>ОРД;</li>
            <li>Документы по личному составу;</li>
            <li>Документы по охране труда;</li>
            <li>Прочие документы.</li>
        </ul>
        В данной форме также присутствуют разделы «Реестр движения документов», «Версии документов», «Поиск документа».
	</p>
    <a class="thumbnail" href="/site/img/2.png" target=_blank>
        <img src="/site/img/2.png" alt="">
    </a>
    
    <br />
    <h4 id="h8">Архив документов</h4>
    <p>После выбора типа документов открывается страница «Архив документов». Страница состоит из заголовка, блока фильтров и списка всех карточек данного раздела</p>
    <a class="thumbnail" href="/site/img/3.png" target=_blank>
        <img src="/site/img/3.png" alt="">
    </a>

    <br />  
    <h4 id="h9">Заголовок</h4>
    <p>В заголовке указываются тип документов, наименование базы данных, авторизовавшийся пользователь и кнопка помощи. С помощью выпадающего меню кнопок можно выбрать другой блок или другую базу</p>
    <a class="thumbnail" href="/site/img/4.png" target=_blank>
        <img src="/site/img/4.png" alt="">
    </a>

    <br />
    <h4 id="h10">Фильтры</h4>
    <p>Фильтры используются для поиска конкретного документа в списке. Существует несколько их разновидностей: поиск по целочисленному полю (Код ЭА, Пакет и т.д), 
    полнотекстовый поиск (Примечание, Содержание, Текст документа и т.д), поиск по дате (Дата редактирования, Дата документа и т.д), поиск по значению выбранному из справочника (Документ, Контрагент, Оператор и т.д) </p>
    <a class="thumbnail" href="/site/img/5.png" target=_blank>
        <img src="/site/img/5.png" alt="">
    </a>
    <p>Кнопка <img src="/site/img/6.png"/> позволяет вызвать меню для выбора условия поиска или шаблона</p>
    <a class="thumbnail" href="/site/img/7.png" target=_blank>
        <img src="/site/img/7.png" alt="">
    </a>
    <p>При установке фильтра, использующего справочники, будет выведено соответствующее диалоговое окно со списком. Двойной щелчок по одной из строчек установит выбранное значение в фильтр.</p>
    <a class="thumbnail" href="/site/img/8.png" target=_blank>
        <img src="/site/img/8.png" alt="">
    </a>
    <p>После установки значения, кнопка фильтра будет подсвечена зеленым цветом. Чтобы сбросить значение фильтра достаточно нажать на эту кнопку, либо в выпадающем списке выбрать пункт "Очистить".
    Для применения всех установленных фильтров необходимо нажать кнопку "Применить", а для сброса кнопку "Сбросить все". Для временного скрытия блока фильтров предназначена кнопка
    <img src="/site/img/9.png"/>, находящаяся в правом нижнем углу блока.
    </p>

    <br />
    <h4 id="h11">Список карточек</h4>
    <p>Каждый тип документа имеет свой набор полей.</p>
    <div class="panel panel-default">
        <table class="table">
            <tr><th></th><th>Бух.докум.</th><th>Договоры</th><th>ОРД&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th><th>Кадры</th><th>ОТ&nbsp;&nbsp;&nbsp;</th><th>Прочие&nbsp;</th></tr>
            <tr><td>Код ЭА</td><td>+</td><th>+</th><th>+</th><th>+</th><th>+</th><th>+</th></tr>
            <tr><td>Дата ред.</td><th>+</th><th>+</th><th>+</th><th>+</th><th>+</th><th>+</th></tr>
            <tr><td>Дата док.</td><th>+</th><th>+</th><th>+</th><th>+</th><th>+</th><th>+</th></tr>
            <tr><td>Документ</td><th>+</th><th>+</th><th>+</th><th>+</th><th>+</th><th>+</th></tr>
            <tr><td>№ документа</td><th>+</th><th>+</th><th>+</th><th>+</th><th>+</th><th>+</th></tr>
            <tr><td>Вид документа</td><th>+</th><td></td><th>+</th><td></td><td></td><th>+</th></tr>
            <tr><td>Контрагент</td><th>+</th><th>+</th><th>+</th><td></td><td></td><th>+</th></tr>
            <tr><td>Содержание документа</td><th>+</th><th>+</th><th>+</th><th>+</th><th>+</th><th>+</th></tr>
            <tr><td>Примечание</td><th>+</th><th>+</th><th>+</th><th>+</th><th>+</th><th>+</th></tr>
            <tr><td>Оператор ЭА</td><th>+</th><th>+</th><th>+</th><th>+</th><th>+</th><th>+</th></tr>
            <tr><td>Договор</td><th>+</th><th>+</th><td></td><td></td><td></td><th>+</th></tr>
            <tr><td>Приложение</td><th>+</th><th>+</th><td></td><td></td><td></td><th>+</th></tr>
            <tr><td>Счет</td><th>+</th><th>+</th><td></td><td></td><td></td><th>+</th></tr>
            <tr><td>Сумма</td><th>+</th><th>+</th><td></td><td></td><td></td><th>+</th></tr>
            <tr><td>Пакет документов</td><th>+</th><td></td><th>+</th><th>+</th><th>+</th><th>+</th></tr>
            <tr><td>Код проекта</td><th>+</th><th>+</th><td></td><td></td><td></td><th>+</th></tr>
            <tr><td>Участок</td><th>+</th><th>+</th><td></td><td></td><td></td><th>+</th></tr>
            <tr><td>Дата проведения в 1С</td><th>+</th><td></td><td></td><td></td><td></td><th>+</th></tr>
            <tr><td>Исполнитель</td><th>+</th><th>+</th><th>+</th><td></td><td></td><th>+</th></tr>
            <tr><td>Получатель документа</td><th>+</th><th>+</th><th>+</th><td></td><td></td><th>+</th></tr>
            <tr><td>Отв. подразделение</td><th>+</th><th>+</th><th>+</th><td></td><td></td><th>+</th></tr>
            <tr><td>Подписанты</td><th>+</th><th>+</th><th>+</th><th>+</th><th>+</th><th>+</th></tr>
            <tr><td>Подразделения</td><th>+</th><th>+</th><td></td><td></td><td></td><th>+</th></tr>
        </table>
    </div>
    
    <p>Записи можно сортировать по любому полю таблицы, для этого достаточно щелкнуть по заголовку соответствующего столбца.    
    Двойной клик по любой из записей в списке передает браузеру команду на открытие файла основной версии документа, путь к 
    которому хранится в базе данных электронного архива. В зависимости от настроек браузера и расширения открываемого файла, есть несколько вариантов реакции на команду:
    <ul>
        <li>Браузер предложит скачать файл в любое удобное для вас место на компьютере;</li>
        <li>Браузер откроет файл в новой закладке, используя ассоциированный с ним подключенный модуль просмотра изображений;</li>
        <li>Браузер вместо файла откроет в новой закладке пустое белое или черное окно. В данном случае необходимо установить 
        или обновить до последней версии Adobe PDF Viewer и настроить браузер на использование по умолчанию именно данной версии модуля просмотра изображений.</li>
    </ul>
    В первом столбце каждой строчки, присутствует кнопка для открытия подробной информации о документе, включающая в себя: 
    Список всех версий, подробную карточку, полный текст, движения и структуру документа.
    </p>
    <br />
    <a class="thumbnail" href="/site/img/10.png" target=_blank>
        <img src="/site/img/10.png" alt="">
    </a>
    <br />
    <p>
    Внизу списка расположена панель навигации. В правой ее части показана информация о количестве загруженных и общее количество записей с учетом установленных фильтров. 
    В центральной части - кнопки перемещения по страницам. В левой части находятся кнопки «Настроить вид» и «Экспорт»
    </p>
    <br />
    <a class="thumbnail" href="/site/img/11.png" target=_blank>
        <img src="/site/img/11.png" alt="">
    </a>
    
    <br/>
    <h4 id="h12">Настройка вида</h4>
    <p>
    Для каждого блока отдельно, можно установить свои настройки (количество записей на страницу, набор/поряд полей и др.) Для перехода к странице настройки нажмите кнопку «Настроить вид».
    Чтобы скрыть столбец необходимо перетащить его в столбец «Скрытые». Положение столбца меняется перемещением его в нужную позицию, относительно других. 
    Количество записей загружаемых на страницу устанавливается ползунком (большое количество записей замедляет загрузку списка).
    Пункт «Структура документов» позволяет изменить способ (полный, сокращенный) загрузки структуры документа.
    Для сохранения и сброса настроек предназначены соответствующие кнопки.
    </p><br />
    <a class="thumbnail" href="/site/img/12.png" target=_blank>
        <img src="/site/img/12.png" alt="">
    </a>
    <br/>
    <h4 id="h13">Экспорт</h4>
    <p>
        Выгрузка осуществляется в формате Excel HTML(не более 10.000 записей).
    </p>
    <br />
    <div style="height:1500px;"></div>
</div></div>
<script type='text/javascript'>
    jQuery(document).ready(
        function () {
        $('body').css('padding-top','0px');
        //$('.navbar-fixed-top').removeClass('navbar-fixed-top');
        $('.navbar-fixed-top').hide();
        });
</script>
</asp:Content>