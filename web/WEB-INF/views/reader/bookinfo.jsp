<%@ page import="com.basic.Book" %>
<%@ page import="com.basic.Category" %>
<%@ page import="com.basic.Category_Book" %>
<%@ page import="com.basic.Reader" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="com.basic.dao.ReaderCl" %>
<!DOCTYPE html>
<%
  String name= request.getParameter("name");
  List<Book> books=new ArrayList<Book>();
  Category_Book cb=new Category_Book();
  Category c=new Category();
  Reader reader=new Reader();
  ReaderCl re = new ReaderCl();
  books = re.findBookByName(name);
%>
<html>
<head>
  <title>My Charity A Charity  category Flat bootstrap Responsive  Website Template| Home :: w3layouts</title>
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

<div class="book-information" style="background-color: #FFFFFF">
  <div class="container" style="background-color: #EAEAEA; border-radius: 15px;">
    <div class="book-main">
      <div class="book-top" style="text-align: center">
        <h2><dl class="name">
        <dt style="display: inline">Book Name:</dt>
        <dd style="display: inline"><%=name%></dd>
        </dl></h2>
      </div>
      <div class="book-detail" style="float: left; width: 80%;">
        <dl class="detail">
          <dt style="display: inline">author:</dt>
          <dd style="display: inline"><%=books.get(0).getAuthor()%></dd>
        </dl>
        <dl class="detail">
          <dt style="display: inline">ISBN:</dt>
          <dd style="display: inline"><%=books.get(0).getISBN()%></dd>
        </dl>
        <dl class="detail">
          <dt style="display: inline">position:</dt>
          <dd style="display: inline"><%=books.get(0).getLocation()%></dd>
        </dl>
        <dl class="detail">
          <dt style="display: inline">price:</dt>
          <dd style="display: inline">$<%=books.get(0).getPrice()%></dd>
        </dl>
        <dl class="detail">
          <dt style="display: inline">category:</dt>
          <dd style="display: inline"><%=c.ChangeIdToName(cb.getCategoryId(books.get(0).getId()))%></dd>
        </dl>
        <dl class="detail">
          <dt style="display: inline">press:</dt>
          <dd style="display: inline"><%=books.get(0).getPublisher()%></dd>
        </dl>
        <dl class="detail">
          <dt style="display: inline">description:</dt>
          <dd style="display: inline"><%=books.get(0).getIntroduction()%></dd>
        </dl>
        <dl class="detail" style="font-size: 20px">
          <dt style="display: inline">state:</dt>
          <dd style="display: inline"><%=books.get(0).getState()%></dd>
        </dl>
      </div>
      <div class="col-md-12" id="book_pic" style="width: 20%;float: left">
        <img src="images/book.jpg" width="100%" height="80%" alt=""/>
      </div>
    </div>
    <div class="col-md-12">
      <h1 style="text-align: center">Book List</h1>
    </div>

    <table class="table table-condensed">
      <thead>
      <tr>
        <th>ID</th>
        <th>ISBN</th>
        <th>Location</th>
        <th>State</th>
        <th>Appointment</th>
      </tr>
      </thead>
      <tbody>

      <%

        for (int i = 0; i < books.size(); i++) {
          Book book=books.get(i);
      %>

      <tr>
        <td><%=books.get(i).getId()%></td>
        <td><%=books.get(i).getISBN()%></td>
        <td><%=books.get(i).getLocation()%></td>
        <td><%=books.get(i).getState()%></td>
        <td><a href="1.jsp">
          <button type="button" href="#" class="btn btn-lg btn-primary" style="margin-left: 10px">Appointment!</button>
        </a></td>
      </tr>
      <%
        }
      %>


      </tbody>
    </table>
  </div>
</div>

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

          var defaults = {
                containerID: 'toTop', // fading element id
              containerHoverID: 'toTopHover', // fading element hover id
              scrollSpeed: 1200,
              easingType: 'linear'
           };


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
