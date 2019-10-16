<%--
  Created by IntelliJ IDEA.
  User: 10110
  Date: 2019/9/16
  Time: 14:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %><%@ page import="com.util.DBUtil" %>
<%@ page import="com.basic.Librarian" %>
<%@ page import="com.basic.Category" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.servlet.BookInformationServlet"%>
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
  <script src="js/checkinput.js"></script>
  <script src="js/jquery.dropdown.js"></script>
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
  <div class="information1">
    <br/>
    <h2 class="text-center">Add a new book</h2>
    <div class="textcontent col-lg-6 col-lg-offset-3" style="height: 1050px">

      <form id="form1">
        <div class="form-group">
          <label for="isbn">ISBN [13 digits]</label>
          <input type="text" class="form-control" id="isbn" placeholder="Input the ISBN of the book" name="ISBN" value="${ISBN}">
          <p><label id="isbn_alert" for="isbn" style="color: #FF0004"></label></p>
          <text class="text-info">Fill the follow information automatically by</text>
          <button id="autofill" type="button" onclick="autofillfunc()"class="btn btn-primary btn-sm" disabled>Auto Fill</button>
          <text class="text-info">with ISBN</text>
        </div>
      </form>
      <form id="form2">
        <div class="form-group">
          <label for="title">Book Title</label>
          <input type="text" class="form-control" id="title" placeholder="Input the Title of the book" name="name" value="${name}" >
          <p><label id="title_alert" for="title_alert" style="color: #FF0004"></label></p>
        </div>
      </form>
      <form id="form3">
        <div class="form-group">
          <label for="author">Author</label>
          <input type="text" class="form-control" id="author" placeholder="Input the Author of the book" name="author" value="${author}">
          <p><label id="author_alert" for="author" style="color: #FF0004"></label></p>
        </div>
      </form>
      <form id="form4">
        <div class="form-group">
          <label for="publisher">Publisher</label>
          <input type="text" class="form-control" id="publisher" placeholder="Input the Publisher of the book" name="publisher" value="${publisher}">
          <p><label id="publisher_alert" for="publisher" style="color: #FF0004"></label></p>
        </div>
      </form>
      <form id="form5">
        <div class="form-group">
          <label for="shelflocation">Shelf Location</label>
          <input type="text" class="form-control" id="shelflocation" placeholder="Input the Shelf Location of the book" name="location">
          <p><label id="shelflocation_alert" for="shelflocation" style="color: #FF0004"></label></p>
        </div>
      </form>
      <form id="form6">
        <div class="form-group">
          <label for="description">Content Description</label>
          <textarea type="text" class="form-control" id="description" placeholder="Input the abstract or description......" rows="3" name="introduction" value="${introduction}"></textarea>
          <input type="hidden" name="introduction" id="introduction" value="${introduction}"/>
        </div>
      </form>
      <form id="form7">
        <div class="form-group">
          <label for="price">Price</label>
          <div class="input-group">
            <div class="input-group-addon">$</div>
            <input type="text" class="form-control" id="price" placeholder="Input the Price of the book" name="price" value="${price}" >
          </div>
          <p><label id="price_alert" for="price" style="color: #FF0004;white-space: pre"></label></p>
        </div>
      </form>
      <form id="form8">
        <div class="form-group">
          <label for="mydropdown">Catalog</label>
          <div id="labels" class="labels"></div>
          <div class="dropdown" id="myDropdown">
            <button class="btn btn-default" type="button" id="dropdown" data-toggle="dropdown"
                    style="width: 540px;">
              Add Catalogs
              <span class="caret"></span>
            </button>
            <ul class="dropdown-menu">
              <%
                ArrayList<Category> categories = new ArrayList<>();
                Librarian librarian=new Librarian();
                categories = librarian.getAllCatagories();
                for(Category category:categories){
                  String string = category.getName();
              %>
              <li><a onClick="Literature('<%=string%>')"><%=string%></a></li>
              <%
                }
              %>
            </ul>
          </div>
          <p><label id="category_alert" for="myDropdown" style="color: #FF0004"></label></p>
        </div>
      </form>
      <form  id="form9">
        <div class="form-group">
          <label for="copies">Copies</label>
          <input type="number" class="form-control" id="copies" placeholder="The copies you have" name="copies">
          <p><label id="copies_alert" for="copies" style="color: #FF0004"></label></p>
        </div>
      </form>
      <div style="text-align: center;height: auto">
        <input class="btn btn-primary" type="button" onclick="finalSubmit()" value="Submit" disabled id="submit">
      </div>

    </div>
    <div class="col-lg-3" style="margin-top: 20px">
      <p class="col-lg-12"><text class="text-success" style="">Old book without ISBN?</text></p>

      <button id="manualfill"type="button" class="btn btn-default" style="margin-top: 8px">Generate internal ID Manual</button>
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
