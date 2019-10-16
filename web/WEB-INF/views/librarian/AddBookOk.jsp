<%--
  Created by IntelliJ IDEA.
  User: 10110
  Date: 2019/9/16
  Time: 14:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.basic.Librarian" %>
<%@ page import="com.basic.Category" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Mandarin Library System</title>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <!--web-fonts-->
    <link href='http://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>
    <!--js-->
    <script src="js/jquery.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }
    </script>
    <meta name="keywords" content="Mandarin Library System" />
    <!-- start-smoth-scrolling -->
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
            });
        });
    </script>
    <!-- //end-smoth-scrolling -->
</head>
<body>
<!--header start here-->
<div class="container">
    <div class="header">
        <div class="logo">
            <a href="index.jsp"> <img src="images/logo.png" alt=""/> </a>
        </div>
        <a class="btn btn-primary" href="#" style="float: right; margin-left: 10px; margin-right: 13%; margin-top: 20px;">Sign Out</a>
        <form>
            <div class="form-row col-md-2" style="float: right; margin-top: 1%">
                <a href="mubiao.html"> <img src="images/touxiang.png" alt="" style="float: right; margin-top: -4.75%; width: 59px; height: 59px; border-radius: 100%; overflow: hidden;"/></a>
                <h1 style="float: left; margin-top: 0%;">Librarian</h1>
            </div>
        </form>
        <div class="clearfix"> </div>
    </div>
</div>

<!--heder end here-->
<!--the homemake nav bar start here(*╯3╰)-->
<div class="top">
    <center>
        <ul>
            <li><a href="#"><strong>Borrow&amp;Return</strong></a></li>
            <li><a href="#"><b>Book Management</b></a></li>
            <li><a href="#"><b>Reader Management</b></a></li>
            <li><a href="#"><b>Records</b></a></li>
            <li><a href="#"><b>Pay Fines</b></a></li>
            <li><a href="#"><b>Announcement</b></a></li>

        </ul>
    </center>
</div>
<!--the homemade nav bar end here(*╯3╰)-->
<!--the homemade main page start here-->
<div class="container">
    <div class="functioncheck">
        <button type="button" class="btn btn-primary btn-lg" style="float: none; margin-left: 180px; ">Add Book</button>
        <button type="button" class="btn btn-primary btn-lg" style="float: none; margin-left: 180px;">Edit &#38; Delete Book</button>
        <button type="button" class="btn btn-primary btn-lg" style="float: none; margin-left: 180px;">Edit Catalogs</button>
    </div>
    <div class="information">
        <br/>
        <h2 class="text-center">ResultPage - Added Book Information</h2>
        <div class="textcontent col-lg-6 col-lg-offset-3" style="height: 800px">
            <form>
                <form>
                    <div class="form-group">
                        <label >ISBN:</label>
                        <label class="text-success" style="margin-left: 5%">${ISBN}</label>
                    </div>
                </form>
                <form>
                    <div class="form-group" style="margin-top: 5%;">
                        <label >Title:</label>
                        <label class="text-primary" style="margin-left: 5%">${name}</label>
                    </div>
                </form>
                <form>
                    <div class="form-group" style="margin-top: 5%;">
                        <label >Author:</label>
                        <label class="text-primary" style="margin-left: 5%">${author}</label>
                    </div>
                </form>
                <form>
                    <div class="form-group"  style="margin-top: 5%;">
                        <label >Publisher</label>
                        <label class="text-info" style="margin-left: 5%">${publisher}</label>
                    </div>
                </form>
                <form>
                    <div class="form-group" style="margin-top: 5%;">
                        <label >Shelf Location:</label>
                        <label class="text-justify" style="margin-left: 5%">${location}</label>
                    </div>
                </form>
                <form>
                    <div class="form-group" style="margin-top: 5% ;">
                        <label>Content Description:</label>
                        <h5 style="margin-top: 2%">${introduction}</h5>
                    </div>
                </form>
                <form>
                    <div class="form-group" style="margin-top: 5%;">
                        <label>Price($):</label>
                        <label class="text-danger" style="margin-left: 5%">${price}</label>
                    </div>
                </form>
                <form>
                    <div class="form-group" style="margin-top: 5% ;">
                        <label >Category:</label>
                    </div>
                </form>
                <form>
                    <div class="form-group" style="margin-top: 5% ;">
                        <label>Copies:</label>
                        <label class="text-justify" style="margin-left: 5%">${copies}</label>
                    </div>
                </form>
                <form>
                    <div class="form-group" style="margin-top: 5%;">
                        <label>CodeBar(s):</label>
                        <div id="codebars"></div>
                    </div>
                </form>
                <div style="text-align: left;height: auto;">
                    <input class="btn btn-success" type="button" onclick="window.location.href='index.jsp'" value="Go Back" id="submit" style="width: 200px">
                </div>
            </form>
        </div>
    </div>

</div>
<!--the homemade main page end here-->
<!--footer start here-->
<div class="footer">
    <div class="container">
        <div class="footer-main">
            <div class="footer-navg">
                <ul>
                    <li><a class="active" href="index.html">Borrow&amp;Return</a></li>
                    <li><a href="about.html">Book Management</a></li>
                    <li><a href="projects.html">Reader Management</a></li>
                    <li><a href="blog.html">Records</a></li>
                    <li><a href="events.html">Pay Fines</a></li>
                    <li><a href="gallery.html">Announcement</a></li>
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
                    <p>Address : NorthWestern Polytechnical University</p>
                    <p>Chang'an District, Xi'an, Shaanxi Province</p>
                    <p>ph : +86 182-0928-0000</p>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="footer-bottom">
                <p>2019 &website by <a href="http://w3layouts.com/"> Team-B6 </a> </p>
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
</body>
</html>
