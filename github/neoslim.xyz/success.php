

<html lang="ru" class="no-js">

<head>
    <title>Спасибо!</title>
    <link href="../https@fonts.googleapis.com/css@family=PT+Sans&subset=latin,cyrillic" rel="stylesheet" type="text/css">
    <meta charset="utf-8">
    <meta name="description" content="">
    <meta name="Description" content="">
    <meta name="keywords" lang="ru" content="">
    <meta name="revisit" content="">
    <meta name="robots" content="">
    <meta name="keywords" content="">
    <meta name="robots" content="">
    <meta name="viewport" content="width=320">
    <meta name="MobileOptimized" content="">
    <meta name="HandheldFriendly" content="true">
    <!--[if lt IE 9]> <script src="../html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
    <!--[if lt IE 9]> <script src="../css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script><![endif]-->
    <link rel="stylesheet" href="http://cdn.dr.cash/built/assets/css/thanks/thanks.css" type="text/css">
</head>

<!-- Yandex.Metrika counter -->
<!--ipt type="text/javascript" >
    (function (d, w, c) {
        (w[c] = w[c] || []).push(function() {
            try {
                w.yaCounter45325911 = new Ya.Metrika({
                    id:45325911,
                    clickmap:true,
                    trackLinks:true,
                    accurateTrackBounce:true,
                    webvisor:true
                });
            } catch(e) { }
        });

        var n = d.getElementsByTagName("script")[0],
            s = d.createElement("script"),
            f = function () { n.parentNode.insertBefore(s, n); };
        s.type = "text/javascript";
        s.async = true;
        s.src = "https://mc.yandex.ru/metrika/watch.js";

        if (w.opera == "[object Opera]") {
            d.addEventListener("DOMContentLoaded", f, false);
        } else { f(); }
    })(document, window, "yandex_metrika_callbacks");
</scri-->
<noscript><div><img src="../https@mc.yandex.ru/watch/45325911" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- /Yandex.Metrika counter -->

<body>//
    <!--[CDATA[<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"-->
    <!--ipt type="text/javascript" async="" src="https://mc.yandex.ru/metrika/watch.js"></scri-->
    <script type="text/javascript" src="../https@cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.14.0/jquery.validate.min.js"></script>
    <script type="text/javascript" src="../cdn.dr.cash/built/assets/js/thanks/validate.js@v=1.0"></script>
    <div class="thanks-block">
        <p class="aab white px80 no-padd">Спасибо</p>
        <p class="aab black px50 no-padd">ваш заказ принят</p>
        <p class="white px18 bold oper">Наш оператор свяжется с вами для
            <br>подтверждения заказа.
            <br>Доставка осуществляется
            <br>курьером или почтой.
            <br>Оплата - при получении!</p>
        <p class="black px18 bold action">Для того, чтобы принять участие в акции
            <br>и следить за статусом вашего заказа,
            <br>введите E-mail и нажмите "Сохранить"!</p>
        <form name="form" id="form2" method="post" class="thanksForm" action="" novalidate="novalidate">
            <input placeholder="Введите email" type="email" name="email" id="email" maxlength="35" class="email required" aria-required="true">
            <button class="button" type="submit">СОХРАНИТЬ</button>
            <p class="thanks-txt aab white">Спасибо за ваше участие!</p>
        </form>
    </div>

</body>

</html>
 
<?php
 
   if(!empty($_POST['name']) and !empty($_POST['phone']) and !empty($_POST['adress'])){
      $name = trim(strip_tags($_POST['name']));
      $phone = trim(strip_tags($_POST['phone']));
      $adress = trim(strip_tags($_POST['adress']));
 
      mail('info@invitestudio.ru', 'Письмо с адрес_вашего_сайта', 
      'Вам написал: '.$name.'<br />Его номер: '.$phone.'<br />Его почта: '.$mail.'<br />
      Его сообщение: '.$adress,"Content-type:text/html;charset=utf8");
 
      
      exit;
   } 

?>
