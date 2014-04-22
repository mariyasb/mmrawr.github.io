#!/bin/env ruby
# encoding: utf-8
template='<!DOCTYPE html>
<html>
<head>
	<title> %{first_name} %{last_name} </title>
	<style>
	    body {
		    font-family:Comic Sans MS;
		    color:#4674B0;
		    /*color:rgb(70,116,136);*/
		    background-image:url(\'../images/background.jpg\');
		    background-size: cover
		}
	    h1{font-size: 72px;}
	    span{position: absolute; bottom: 20pt; left: 10pt;}
	    img{max-width: 70px;}
	</style>
</head>
<body><h1>%{first_name} %{last_name}</h1><p>
		"Better to be the one who smiled than the one
		who didn\'t smile back!"
	</p>
	<span>
 		<a href="https://www.facebook.com/violette.winderhill" target="_blank">
 		<img src="../images/facebook.png"></a>
		<a href="https://instagram.com/mmrrawr" target="_blank">
		<img src="../images/instagram.png"></a>
		<a href="https://plus.google.com/u/0/107895210775635386987/posts" target="_blank">
		<img src="../images/google.png"></a>
	</span>
</body>
</html>'
bg_translations={first_name:'Мария', last_name:'Божкова'}
en_translations={first_name:'Maria', last_name:'Bozhkova'}
bg=template%bg_translations
en=template%en_translations
File.write "bg/indexbg.html", bg
File.write "en/indexen.html", en