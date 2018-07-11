<cfoutput>
  <!DOCTYPE html>
  <html lang="en"<cfif $.hasFETools()> class="mura-edit-mode"</cfif>>
  <head>
  	<meta charset="utf-8">
  	<meta http-equiv="X-UA-Compatible" content="IE=edge">
  	<meta name="viewport" content="width=device-width, initial-scale=1.0">
  	<meta name="description" content="#esapiEncode('html_attr', $.content('metaDesc'))#">
  	<meta name="keywords" content="#esapiEncode('html_attr', $.content('metaKeywords'))#">
  	<cfif len($.content('credits'))><meta name="author" content="#esapiEncode('html_attr', $.content('credits'))#"></cfif>
  	<meta name="generator" content="Mura CMS #$.globalConfig('version')#">

  	<title>#esapiEncode('html', $.content('HTMLTitle'))# - #esapiEncode('html', $.siteConfig('site'))#</title>

        <!--- Mura CMS Base Styles--->
        <!--- Optional: Mura CMS Skin Styles. Duplicate to your theme to customize, changing 'assetPath' to 'themeAssetPath' below. Don't forget to move, remove or replace sprite.png. --->
        #$.outputMuraCSS(version="7.1", includeskin=true)#

  	<!-- FONTS ONLINE -->
  	<link href='http://fonts.googleapis.com/css?family=Roboto:500,900,300,700,400' rel='stylesheet' type='text/css'>

  	<!--MAIN STYLE-->
      <link rel="stylesheet" href="#$.siteConfig('themeAssetPath')#/assets/css/owl.theme.min.css">
      <link rel="stylesheet" href="#$.siteConfig('themeAssetPath')#/assets/css/bootstrap.min.css">
      <link rel="stylesheet" href="#$.siteConfig('themeAssetPath')#/assets/css/font-awesome.min.css">
      <link rel="stylesheet" href="#$.siteConfig('themeAssetPath')#/assets/css/owl.carousel.min.css">
      <link rel="stylesheet" href="#$.siteConfig('themeAssetPath')#/assets/css/styles.css">
      <link rel="stylesheet" href="#$.siteConfig('themeAssetPath')#/assets/css/custom.css">
      <link rel="stylesheet" href="#$.siteConfig('themeAssetPath')#/assets/css/magnific-popup.css">
      <link rel="stylesheet" href="#$.siteConfig('themeAssetPath')#/assets/css/portfolio_freelancer.css">
      <link rel="stylesheet" href="#$.siteConfig('themeAssetPath')#/assets/css/ionicons.css">
      <input type="hidden" id="domainName" name="domainName" value="#cgi.server_name#">

      <cfif StructKeyExists(Cookie,"getColor")>
        <cfset colorName = Cookie.getColor>
      <cfelse>
        <cfset colorName = 'default'>
      </cfif>
      <link rel="stylesheet" id="color" href="#$.siteConfig('themeAssetPath')#/assets/css/color/#colorName#.css">
  </head>

  <!--======= COLOR SWITCHER =========-->
  <div class="color-switcher" id="choose_color"> <a href="##." class="picker_close"><i class="fa fa-gear fa-spin" ></i></a>
      <div class="theme-colours">
        <p>Settings</p>
        <ul>
            <li>
              <a data-color-hex="##5687bf" id="blue-1" href="##" title="blue-1" style="background-color: rgb(86, 135, 191);"><strong>blue-1</strong></a>
            </li>
            <li>
              <a data-color-hex="##a0913d" id="gold" href="##" title="gold" style="background-color: rgb(160, 145, 61);"><strong>gold</strong></a>
            </li>
            <li>
              <a data-color-hex="##dc143c" id="red-1" href="##" title="red-1" style="background-color: rgb(220, 20, 60);"><strong>red-1</strong></a>
            </li>
            <li>
              <a data-color-hex="##3c3c3c" id="gray" href="##" title="gray" style="background-color: rgb(60, 60, 60);"><strong>gray</strong></a>
            </li>
            <li>
              <a data-color-hex="##4d391e" id="red-2" href="##" title="brown" style="background-color: ##4d391e"><strong>brown</strong></a>
            </li>
            <li>
              <a data-color-hex="##151e3d" id="blue-2" href="##" title="Navy Blue" style="background-color: ##151e3d;"><strong>Navy Blue</strong></a>
            </li>
            <li>
              <a data-color-hex="##2e9063" id="green-1" href="##" title="green-1" style="background-color: rgb(46, 144, 99);"><strong>green-1</strong></a>
            </li>
            <li>
              <a data-color-hex="##89c144" id="green-2" href="##" title="green-2" style="background-color: rgb(137, 193, 68);"><strong>green-2</strong></a>
            </li>
            <li>
              <a data-color-hex="##d6b75a" id="yellow-1" href="##" title="yellow-1" style="background-color: ##d6b75a;"><strong>yellow-1</strong></a>
            </li>
            <li>
              <a data-color-hex="##e3c552" id="yellow-2" href="##" title="yellow-2" style="background-color: rgb(227, 197, 82);"><strong>yellow-2</strong></a>
            </li>
            <li>
              <a data-color-hex="##e47911" id="orange-1" href="##" title="orange-1" style="background-color: rgb(228, 121, 17);"><strong>orange-1</strong></a>
            </li>
            <li>
              <a data-color-hex="##e48f4c" id="orange-2" href="##" title="orange-2" style="background-color: rgb(228, 143, 76);"><strong>orange-2</strong></a>
            </li>
            <li>
              <a data-color-hex="##563d7c" id="purple-1" href="##" title="purple-1" style="background-color: rgb(86, 61, 124);"><strong>purple-1</strong></a>
            </li>
            <li>
              <a data-color-hex="##270036" id="purple-2" href="##" title="purple-2" style="background-color: ##270036;"><strong>purple-2</strong></a>
            </li>
            <li>
              <a data-color-hex="##f15278" id="pink" href="##" title="pink" style="background-color: ##f15278;"><strong>pink</strong></a>
            </li>
            <li>
              <a data-color-hex="##b8a279" id="cumin" href="##" title="cumin" style="background-color: rgb(184, 162, 121);"><strong>cumin</strong></a>
            </li>
            <li style="width:100%;" >
              <a style="width:100%;" href="index-boxed.html" title="box"> <p>Layout Version</p> </a>
            </li>
        </ul>
      </div>
  </div>
</cfoutput>