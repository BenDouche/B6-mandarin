
<%@ page import="com.basic.Book" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2019/9/28
  Time: 11:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>My Charity A Charity  category Flat bootstrap Responsive  Website Template| Home :: w3layouts</title>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!--new-fonts-->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/landing-page.min.css" rel="stylesheet">
    <link href="css/load.css" rel="stylesheet">
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
    <!-- //end-smoth-scrolling -->
</head>
<body>
<!--header start here-->

<nav class="navbar navbar-light bg-light static-top">
    <div class="container">
        <a href="index.jsp"> <img src="images/logo.png" alt="" width="180" height="60"/> </a>
        <a class="btn btn-primary" onclick="Show()" style="float: right;margin-top: 10px">Sign In</a>
    </div>
</nav>

<!--heder end here-->
<!--body start here-->

<div class="container" >

    <div id="shade" class="c1 hide text-center"></div>
    <div id="modal" class="c2 hide text-center">
        <form action="LoginServlet" method="post">
            <ul>
                <li><label>username: <input type="text" name="username"/></li>
                <li><label>password: <input type="password" name="password"/></li>
                <li><label><input name="danxuan" type="radio" value="Librarian"/>Librarian </label>
                    <label><input name="danxuan" type="radio" value="Reader" checked="checked"/>Reader </label></li>
                <li><button type="submit" style="width: 60px; height: 30px; border-radius: 10px;">ok</button>&nbsp;&nbsp;&nbsp;&nbsp;
                    <button type="button" onclick="Hide()" style="width: 60px;height: 30px;border-radius: 10px;">cancel</button></li>
            </ul>
        </form>
    </div>

    <div>
        <form action="youkeSearchBookR" method="post">
            <div class="form-row">
                <div class="col-12 col-md-9 mb-2 mb-md-0 col-lg-offset-1 col-md-offset-1">
                    <input type="book name" class="form-control form-control-lg" placeholder="Enter your book title..." name="keyword">
                </div>
                <div class="col-12 col-md-3 col-lg-2">
                    <button type="submit" class="btn btn-block btn-lg btn-primary">Search!</button>
                </div>
            </div>
        </form>
    </div>
    <h1>Search Result</h1>

    <div class="row">
        <div class="col-md-3" style="background-color: #eff3f5;border: none;"><a class="list-group-item" style="background-color: #5C8194;"> Location&nbsp; </a> <a href="#" class="list-group-item">First Floor</a> <a href="#" class="list-group-item">Second Floor</a> <a href="#" class="list-group-item">Third Floor</a> <a href="#" class="list-group-item">Fourth Floor</a>

            <a class="list-group-item" style="background-color: #5C948E;"> Classification&nbsp; </a> <a href="#" class="list-group-item">Technology</a> <a href="#" class="list-group-item">Transportation</a> <a href="#" class="list-group-item">Literature</a> <a href="#" class="list-group-item">Psychology</a><a href="#" class="list-group-item">Basic Science</a>

        </div>

        <div class="col-md-9" style="background-color: #eff3f5; box-shadow: inset 1px -1px 1px #444, inset -1px 1px 1px #444;">
            <div >
                <p >Book List</p>
            </div>

            <table class="table table-condensed">
                <thead>
                <tr>
                    <th>Name</th>
                    <th>Author</th>
                    <th>Press</th>
                </tr>
                </thead>
                <tbody>
                <%
                    List<Book> books = (List<Book>) request.getAttribute("books");
                    for (int i = 0; i < books.size(); i++) {
                        Book book=books.get(i);
                %>
                <% String name=book.getName();%>
                <tr>
                    <td>
                        <a role="button" href="youke-bookinfo.jsp?name=<%=name%>"><%=name%></a>
                    </td>
                    <td><%=book.getAuthor()%></td>
                    <td><%=book.getPublisher()%></td>
                </tr>
                <%
                    }
                %>
                </tbody>
            </table>
        </div>
    </div><br>


</div>





<!--body end here-->

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
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script>
    function Show(){
        document.getElementById('shade').classList.remove('hide');
        document.getElementById('modal').classList.remove('hide');
    }
    function Hide(){
        document.getElementById('shade').classList.add('hide');
        document.getElementById('modal').classList.add('hide');
    }
</script>
</body>
</html>
