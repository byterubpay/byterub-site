<?php
date_default_timezone_set('Africa/Johannesburg');
if (isset($_COOKIE["BYTERUB_LANG"]))
{
	if ($_COOKIE["BYTERUB_LANG"] == "en")
	{
		header('Location: /home');
		die();
	}
	else
	{
		header('Location: /'.$_COOKIE["BYTERUB_LANG"]);
		die();
	}
}
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>ByteRub - secure, private, and untraceable</title>
	<meta name="description" content="ByteRub is a digital currency that is secure, private, and untraceable.">
	<meta name="keywords" content="byterub, btr, bitbyterub, cryptocurrency">

    <meta property="og:title" content="ByteRub - secure, private, untraceable"/>
    <meta property="og:description" content="ByteRub is a digital currency that is secure, private, and untraceable.">
    <meta property="og:image" content="http://static.getbyterub.org/images/opengraph/logo.png">
    <meta property="og:site_name" content="getbyterub.org, The ByteRub Project">
    <meta property="og:url" content="https://getbyterub.org/language.php">
    <meta property="og:type" content="website">

    <link href="//static.getbyterub.org/style.css?1" rel="stylesheet">
  </head>

  <body class="body-language">
    <!-- Static navbar -->
    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container" style="padding-bottom: 0px;">
        <div class="navbar-header">
          <a class="navbar-brand" href="/"><img class="logo" src="//static.getbyterub.org/images/logo.svg"></a>
        </div>
      </div>
    </div>

    <div class="container main-content">
      <div class="row">
        <div class="col-md-4 col-md-offset-2">
          <ul class="nav nav-pills nav-stacked flag-select">
            <li><a href="/home"><h3><img class="flag" src="//static.getbyterub.org/images/flags/english_combined.png"> English</h3></a></li>
          </ul>
        </div>
        <div class="col-md-4">
          <ul class="nav nav-pills nav-stacked flag-select">
            <li><h3 style="line-height: 50px; padding: 10px 20px;"><img class="flag" src="//static.getbyterub.org/images/flags/allflags.png"> More to come...</h3></li>
          </ul>
        </div>
      </div>
    </div>

    <div class="footer">
      <div class="container">
        <p>
          Copyright &copy; <strong>The ByteRub Project, <?php echo date("Y"); ?></strong>
        </p>
      </div>
    </div>


    <!-- JS -->
    <script src="//static.getbyterub.org/scripts.js"></script>
  </body>
</html>
