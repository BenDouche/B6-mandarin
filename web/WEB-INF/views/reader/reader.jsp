<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2019/9/29
  Time: 10:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/-->

<!DOCTYPE html>
<html>
<head>
    <title>My Charity A Charity  category Flat bootstrap Responsive  Website Template| Home :: w3layouts</title>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="css/reader-style.css" rel="stylesheet" type="text/css" media="all"/>
    <!--web-fonts-->
    <link href='http://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>
    <!--js-->
    <script src="js/jquery.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }
    </script>
    <meta name="keywords" content="My Charity Responsive web template, Bootstrap Web Templates, Flat Web Templates, AndriodCompatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <!-- start-smoth-scrolling -->
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
            });
        });
    </script>
    <script src="js/jquery-1.11.2.min.js" type="text/javascript"></script>
    <script src="js/slide.js" type="text/javascript"></script>
    <script src="assets/deps/bootstrap-3.3.5-dist/js/bootstrap.min.js" type="text/javascript"></script>

    <!-- //end-smoth-scrolling -->
</head>
<body>
<!--header start here-->
<div class="mothergrid">
    <div class="container">
        <div class="header">
            <div class="logo">
                <a href="index.jsp"> <img src="images/logo.png" alt=""/> </a>
            </div>
            <a class="btn btn-primary" href="index.jsp" style="float: right; margin-left: 10px; margin-right: 13%; margin-top: 20px;">Sign Out</a>
            <form>
                <div class="form-row col-md-2" style="float: right; margin-top: 1%">
                    <a href="mubiao.html"> <img src="images/touxiang.png" alt="" style="float: right; margin-top: -4.75%; width: 59px; height: 59px; border-radius: 100%; overflow: hidden;"/></a>
                    <h1 style="float: left; margin-top: 0%;">Reader</h1>
                </div>
            </form>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!--heder end here-->
<!--banner start here-->
<section class="slider-contaner">
    <ul class="slider">
        <li class="slider-item slider-item1" style="float: left"></li>
        <li class="slider-item slider-item2"></li>
        <li class="slider-item slider-item3"></li>
        <li class="slider-item slider-item4"></li>
        <li class="slider-item slider-item5"></li>
        <div class="container" style="z-index:9999;position:relative;">
            <div class="banner-main">
                <h1>WELCOME  TO  MANDARIN  LIBRARY</h1>
                <p>Having a great time!</p>
                <div class="row">
                    <div class="col-xl-9 mx-auto">
                        <h1 class="mb-5">Search books!!!</h1>
                    </div>
                    <div class="col-md-12 col-xl-7 mx-auto col-lg-12">
                        <form action="SearchBookResult" method="post">
                            <div class="form-row">
                                <div class="col-12 col-md-9 mb-2 mb-md-0 col-lg-offset-1">
                                    <input type="book name" class="form-control form-control-lg" placeholder="Enter your book name..." name="keyword">
                                </div>
                                <div class="col-12 col-md-3 col-lg-2">
                                    <button type="submit" class="btn btn-block btn-lg btn-primary">Search!</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </ul>

</section>
<!--banner end here-->
<!--below banner start here-->
<!--below banner end here-->
<!--news end here-->
<div class="news">
    <div class="container">
        <div class="news-main">
            <div class="news-top">
                <h3>Our Events</h3>
            </div>
            <div class="news-bottom">
                <div class="col-md-4 new-left">
                    <div class="notch">
                        <small>18</small>
                    </div>
                    <div class="notch-h"> </div>
                    <h3>August</h3>
                    <h4>Lorem Ipsum is simply</h4>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard unchanged</p>
                    <div class="button">
                        <a href="#">MORE</a>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="col-md-4 new-left">
                    <div class="notch">
                        <small>22</small>
                    </div>
                    <div class="notch-h"> </div>
                    <h3>September</h3>
                    <h4>Lorem Ipsum is simply</h4>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard unchanged</p>
                    <div class="button">
                        <a href="#">MORE</a>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="col-md-4 new-left">
                    <div class="notch">
                        <small>28</small>
                    </div>
                    <div class="notch-h"> </div>
                    <h3>October</h3>
                    <h4>Lorem Ipsum is simply</h4>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard unchanged</p>
                    <div class="button">
                        <a href="#">MORE</a>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!--/news end here-->
<!--footer start here-->
<div class="footer">
    <div class="container">
        <div class="footer-main">
            <div class="footer-navg">
                <ul>
                    <li><a class="active" href="index.html">HOME</a></li>
                    <li><a href="about.html">ABOUT US</a></li>
                    <li><a href="projects.html">PROJECTS</a></li>
                    <li><a href="blog.html">BLOG</a></li>
                    <li><a href="events.html">EVENTS</a></li>
                    <li><a href="gallery.html">GALLERY</a></li>
                    <li><a href="contact.html">CONTACT US</a></li>
                </ul>
            </div>
            <div class="footer-top">
                <div class="col-md-4 footer-left">
                    <h3>FOLLOW US</h3>
                    <ul>
                        <li><a href="#"><span class="a"> </span></a></li>
                        <li><a href="#"><span class="b"> </span></a></li>
                        <li><a href="#"><span class="c"> </span></a></li>
                    </ul>
                </div>
                <div class="col-md-4 footer-middle">
                    <h3>NEWS LETTER</h3>
                    <input type="text" value="Enter your email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter your email';}"/>
                    <input type="submit" value="Subscribe">
                </div>
                <div class="col-md-4 footer-right">
                    <h3>Contact us</h3>
                    <p>Address : Richard McClintock</p>
                    <p>New Street : Letraset sheets</p>
                    <p>ph : 5240-2948-600</p>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="footer-bottom">
                <p>2014 &copy Template by <a href="http://w3layouts.com/"> W3layouts </a> </p>
            </div>
            <div class="clearfix"> </div>
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
</div>
<!--/footer end here-->
<script type="text/javascript">
    $(document).ready(function() {
        // 超过1张背景图片时启用轮播功能
        if ($(".slideInner a").length > 1) {
            $(".slideInner").slide({
                slideContainer : $('.slideInner a'),
                effect : 'easeOutCirc',
                autoRunTime : 5000,
                slideSpeed : 1000,
                nav : true,
                autoRun : true,
                prevBtn : $('a.prev'),
                nextBtn : $('a.next')
            });
        }
    });
</script>

</body>
</html>
