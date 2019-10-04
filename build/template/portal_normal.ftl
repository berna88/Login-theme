<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />


        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/style1.css" />
		<script type="text/javascript" src="js/modernizr.custom.86080.js"></script>




	<@liferay_util["include"] page=top_head_include />
</head>

<body class="${css_class} page">


<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />


    </head>
    <!--
        <ul class="cb-slideshow">
            <li><span>Image 01</span><div><h3></h3></div></li>
            <li><span>Image 02</span><div><h3></h3></div></li>
            <li><span>Image 03</span><div><h3></h3></div></li>
            <li><span>Image 04</span><div><h3></h3></div></li>
            <li><span>Image 05</span><div><h3></h3></div></li>
            <li><span>Image 06</span><div><h3></h3></div></li>
        </ul>

-->

<a href="${site_default_url}">
<img   src="${site_logo}" style="background-color: transparent; max-width: 300px; padding: 15px; position: absolute; top: 5%; z-index: 2; opacity: 0.8; border-radius: 20px;"/>
</a>

<div id="fady" style="position:absolute; z-index: 2;  top: 31%; left: 39%;" >
<@liferay_portlet["runtime"]
defaultPreferences=default_preferences
portletName="com.liferay.login.web.portlet"

/>

<!--

    com_liferay_login_web_portlet_LoginPortlet
<img   src="${images_folder}/TLOC/TLOC-logo-side.png" style=" position:absolute; z-index: 2; top: -15%; left: -150%;"/>
-->

</div>



<script src="http://www.youtube.com/player_api"></script>




<div class="video-foreground" id="player"></div>



<script>
var player;


function onYouTubePlayerAPIReady() {
player = new YT.Player('player', {
playerVars: {
'autoplay': 1,
'controls': 0,
'wmode': 'opaque',
'showinfo': 0,
'loop': 1,
'start':4,
'end':56,
'mute': 1,
'rel': 0,
'playlist': 'KtngitG6W2E',
'wmode': 'transparent'
},
videoId: 'KtngitG6W2E',
events: {
'onReady': onPlayerReady
}
});

}

function onPlayerReady(event) {
player.setPlaybackRate(0.8);
event.target.mute();

//why this? Well, if you want to overlay text on top of your video, you
//will have to fade it in once your video has loaded in order for this
//to work in Safari, or your will get an origin error.
}

//this pauses the video when it's out of view, just wrap your video in .m-//video
$(window).scroll(function() {
var hT = $('.m-video').height(),
wS = $(this).scrollTop();
if (wS > hT) {
player.pauseVideo();
}
else {
player.playVideo();
}
});
</script>







<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

</body>

</html>
