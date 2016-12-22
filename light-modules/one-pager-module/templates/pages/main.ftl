[#--
 This macro renders the section navigation(s) on top and in footer section.
 - Param page: must be the content (contentMap) of a page.
 - Param areaName: the name of the area node which contains the content-section components.
 - Param type: "top" or "bottom".
--]
[#macro createSectionNav page areaName="content-sections" type="top" ]

    [#assign ulClass = "default-ul-class" ]
    [#assign isTop = false ]
    [#if type=="top"]
        [#assign ulClass = "nav navbar-nav navbar-right" ]
        [#assign isTop = true ]
    [#elseif type=="bottom"]
        [#assign ulClass = "list-inline" ]
    [/#if]

<ul class="${ulClass}">
    [#if isTop]
        <li><a class="page-scroll" href="#intro">Home</a></li>
    [#else]
        <li><a class="page-scroll" href="#intro">Intro</a></li>
    [/#if]

    [#if cmsfn.contentByPath(page.@path+"/"+areaName)?exists]
        [#list cmsfn.children(cmsfn.contentByPath(page.@path+"/"+areaName), "mgnl:component") as component]
            [#assign navTitle = component.sectionName!component.headline!/]
            [#if navTitle?has_content]
                [#if !isTop]<li class="footer-menu-divider">&sdot;</li>[/#if]
                <li><a class="page-scroll" href="#${component.@uuid}">${component.sectionName!component.headline!component.@uuid}</a></li>
            [/#if]
        [/#list]
    [/#if]
</ul>
[/#macro]

<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>Hobby Photo Gallery</title>
<link href="${ctx.contextPath}/.resources/one-pager-module/webresources/css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${ctx.contextPath}/.resources/one-pager-module/webresources/js/jquery-1.11.0.min.js"></script>
<!-- Custom Theme files -->
<link href="${ctx.contextPath}/.resources/one-pager-module/webresources/css/style.css" rel="stylesheet" type="text/css" media="all"/>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }>
</script>
<!--Google Fonts-->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="${ctx.contextPath}/.resources/one-pager-module/webresources/js/move-top.js"></script>
<script type="text/javascript" src="${ctx.contextPath}/.resources/one-pager-module/webresources/js/easing.js"></script>
    <script type="text/javascript">
            jQuery(document).ready(function($) {
                $(".scroll").click(function(event){     
                    event.preventDefault();
                    $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
                });
            });
    </script>
<!-- //end-smoth-scrolling -->
<script src="${ctx.contextPath}/.resources/one-pager-module/webresources/js/bootstrap.min.js"></script>
[@cms.page /]
</head>
<body>
<!--header start here-->
<!-- NAVBAR
        ================================================== -->
<div class="header">
    <div class="fixed-header">  
            <div class="navbar-wrapper">
              <div class="container">
                <nav class="navbar navbar-inverse navbar-static-top">
                     <div class="navbar-header">
                          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                          </button>
                          <div class="logo wow slideInLeft" data-wow-delay="0.3s">
                          </div>
                      </div>
                    <div id="navbar" class="navbar-collapse collapse">
                   <nav class="cl-effect-1">    
                      <ul class="nav navbar-nav">
                       <li><a href="#" class="scroll"> <span data-hover="Home">Home</span></a></li>                     
                        <li><a href="#Work" class="scroll"> <span data-hover="Work">Gallery</span></a></li>                                             
                      </ul>
                    </nav>
                    </div>            
                     </nav>
                  </div>
                   <div class="clearfix"> </div>
            </div>
     </div>
</div>
<!--header end here-->

<div class="banner">
  <div class="container">
     <div class="banner-main" id="home">
         <div class="bann-right">        
            <h1>You don't take a photograph,</h1>
            <h2>you make it.</h2>
            <p>- Ansel Adams</p>
                
         </div>
        <div class="clearfix"> </div>
    </div>
  </div>
</div>
<!--header end here-->  
<!--portfolio start here-->
<link rel="stylesheet" href="${ctx.contextPath}/.resources/one-pager-module/webresources/css/swipebox.css">
    <script src="${ctx.contextPath}/.resources/one-pager-module/webresources/js/jquery.swipebox.min.js"> </script> 
        <script type="text/javascript">
            jQuery(function($) {
                $(".swipebox").swipebox();
            });
</script>


[@cms.area name="content-sections"/]

<script src="${ctx.contextPath}/.resources/one-pager-module/webresources/js/responsiveslides.min.js"></script>
 <script>
    // You can also use "$(window).load(function() {"
    $(function () {
      $("#slider").responsiveSlides({
        auto: true,
        manualControls: '#slider3-pager',
      });
    });
  </script>

</div>

<div class="footer">
    <div class="container">
        <div class="footer-main">
            <div class="footer-left">
               
            </div>
            <div class="footer-right">
                <p>Photographs by Aymen Furter, released under <a target="_blank" href="https://creativecommons.org/publicdomain/zero/1.0/">Public Domain</a>  | Template by <a href="http://w3layouts.com/" target="_blank">W3layouts</a></p>
            </div>
        </div>
        <script type="text/javascript">
                                        $(document).ready(function() {
                                            /*
                                            var defaults = {
                                                containerID: 'toTop', // fading element id
                                                containerHoverID: 'toTopHover', // fading element hover id
                                                scrollSpeed: 1200,
                                                easingType: 'linear' 
                                            };
                                            */
                                            
                                            $().UItoTop({ easingType: 'easeOutQuart' });
                                            
                                        });
                                    </script>
                        <a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
    </div>
</div>
<!--footer end here-->
</body>
</html>