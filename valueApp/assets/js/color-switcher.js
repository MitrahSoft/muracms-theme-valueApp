jQuery(document).ready(function($) {

    // picker buttton
    jQuery(".picker_close").click(function(){
        jQuery("#choose_color").toggleClass("position");
    });

    jQuery("#blue-1" ).click(function(){
        var url =  $('#color').attr('href');
        jQuery("#color" ).attr("href", url.replace(url.substr(url.lastIndexOf('/') + 1), '') + "blue-1.css");
        jQuery(".logo img" ).attr("src", "images/logo.png");
        setCookie('getColor','blue-1');
        return false;
    });

    jQuery("#blue-2" ).click(function(){
        var url =  $('#color').attr('href');
        jQuery("#color" ).attr("href", url.replace(url.substr(url.lastIndexOf('/') + 1), '') + "blue-2.css");
        jQuery(".logo img" ).attr("src", "images/logo.png");
        setCookie('getColor','blue-2');
        return false;
    });

    jQuery("#cumin" ).click(function(){
        var url =  $('#color').attr('href');
        jQuery("#color" ).attr("href", url.replace(url.substr(url.lastIndexOf('/') + 1), '') + "cumin.css");
        jQuery(".logo img" ).attr("src", "images/logo.png");
        setCookie('getColor','cumin');
        return false;
    });

    jQuery("#gold" ).click(function(){
        var url =  $('#color').attr('href');
        jQuery("#color" ).attr("href", url.replace(url.substr(url.lastIndexOf('/') + 1), '') + "gold.css");
        jQuery(".logo img" ).attr("src", "images/logo.png");
        setCookie('getColor','gold');
        return false;
    });

    jQuery("#gray" ).click(function(){
        var url =  $('#color').attr('href');
        jQuery("#color" ).attr("href", url.replace(url.substr(url.lastIndexOf('/') + 1), '') + "gray.css");
        jQuery(".logo img" ).attr("src", "images/logo.png");
        setCookie('getColor','blue-1');
        return false;
    });

    jQuery("#green-1" ).click(function(){
        var url =  $('#color').attr('href');
        jQuery("#color" ).attr("href", url.replace(url.substr(url.lastIndexOf('/') + 1), '') + "green-1.css");
        jQuery(".logo img" ).attr("src", "images/logo.png");
        setCookie('getColor','green-1');
        return false;
    });

    jQuery("#green-2" ).click(function(){
        var url =  $('#color').attr('href');
        jQuery("#color" ).attr("href", url.replace(url.substr(url.lastIndexOf('/') + 1), '') + "green-2.css");
        jQuery(".logo img" ).attr("src", "images/logo.png");
        setCookie('getColor','green-2');
        return false;
    });

    jQuery("#orange-1" ).click(function(){
        var url =  $('#color').attr('href');
        jQuery("#color" ).attr("href", url.replace(url.substr(url.lastIndexOf('/') + 1), '') + "orange-1.css");
        jQuery(".logo img" ).attr("src", "images/logo.png");
        setCookie('getColor','orange-1');
        return false;
    });

    jQuery("#orange-2" ).click(function(){
        var url =  $('#color').attr('href');
        jQuery("#color" ).attr("href", url.replace(url.substr(url.lastIndexOf('/') + 1), '') + "orange-2.css");
        jQuery(".logo img" ).attr("src", "images/logo.png");
        setCookie('getColor','orange-2');
        return false;
    });

    jQuery("#pink" ).click(function(){
        var url =  $('#color').attr('href');
        jQuery("#color" ).attr("href", url.replace(url.substr(url.lastIndexOf('/') + 1), '') + "pink.css");
        jQuery(".logo img" ).attr("src", "images/logo.png");
        setCookie('getColor','pink');
        return false;
    });

    jQuery("#purple-1" ).click(function(){
        var url =  $('#color').attr('href');
        jQuery("#color" ).attr("href", url.replace(url.substr(url.lastIndexOf('/') + 1), '') + "purple-1.css");
        jQuery(".logo img" ).attr("src", "images/logo.png");
        setCookie('getColor','purple-1');
        return false;
    });

    jQuery("#purple-2" ).click(function(){
        var url =  $('#color').attr('href');
        jQuery("#color" ).attr("href", url.replace(url.substr(url.lastIndexOf('/') + 1), '') + "purple-2.css");
        jQuery(".logo img" ).attr("src", "images/logo.png");
        setCookie('getColor','purple-2');
        return false;
    });

    jQuery("#red-1" ).click(function(){

        var url =  $('#color').attr('href');
        jQuery("#color" ).attr("href", url.replace(url.substr(url.lastIndexOf('/') + 1), '') + "red-1.css");
        jQuery(".logo img" ).attr("src", "images/logo.png");
        setCookie('getColor','red-1');
        return false;
    });

    jQuery("#red-2" ).click(function(){
        var url =  $('#color').attr('href');
        jQuery("#color" ).attr("href", url.replace(url.substr(url.lastIndexOf('/') + 1), '') + "red-2.css");
        jQuery(".logo img" ).attr("src", "images/logo.png");
        setCookie('getColor','red-2');
        return false;
    });

    jQuery("#yellow-1" ).click(function(){
        var url =  $('#color').attr('href');
        jQuery("#color" ).attr("href", url.replace(url.substr(url.lastIndexOf('/') + 1), '') + "yellow-1.css");
        jQuery(".logo img" ).attr("src", "images/logo.png");
        setCookie('getColor','yellow-1');
        return false;
    });

    jQuery("#yellow-2" ).click(function(){
        var url =  $('#color').attr('href');
        jQuery("#color" ).attr("href", url.replace(url.substr(url.lastIndexOf('/') + 1), '') + "yellow-2.css");
        jQuery(".logo img" ).attr("src", "images/logo.png");
        setCookie('getColor','yellow-2');
        return false;
    });

    jQuery("#default" ).click(function(){
        var url =  $('#color').attr('href');
        jQuery("#color" ).attr("href", url.replace(url.substr(url.lastIndexOf('/') + 1), '') + "default.css");
        jQuery(".logo img" ).attr("src", "images/logo.png");
        setCookie('getColor','default');
        return false;
    });

    function setCookie (Name,Value){
        var getDomainName = $('#domainName').val();
        var cookieName = Name;
        var cookieValue = Value;
        var myDate = new Date();
        myDate.setMonth(myDate.getMonth() + 12);
        document.cookie = cookieName +"=" + cookieValue + ";expires=" + myDate
                          + ";domain="+getDomainName+";path=/";
    }
});
