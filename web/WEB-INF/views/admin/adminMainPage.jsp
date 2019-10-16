<%--
  Created by IntelliJ IDEA.
  User: 郝志伟
  Date: 2019/9/26
  Time: 19:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>AdminIndex</title>
  <link rel="stylesheet" type="text/css" href="css/style1.css" />
  <link href="../../../public/admin/css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
  <link href="../../../public/admin/css/style.css" rel="stylesheet" type="text/css" media="all"/>
  <!--web-fonts-->
  <link href='http://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>
  <!--js-->
  <script src="../../../public/admin/js/jquery.min.js"></script>
  <script type="text/javascript" src="js/move-top.js"></script>
  <script type="text/javascript" src="js/easing.js"></script>
</head>
<body>
<!--header start here-->
<div class="mothergrid">
  <div class="container">
    <div class="header">
      <div class="logo">
        <img src="images/logo.png" alt=""/>
      </div>
      <a class="btn btn-primary" href="login.jsp" style="float: right; margin-left: 10px; margin-right: 13%; margin-top: 20px;">Sign Out</a>
      <form>
        <div class="form-row col-md-2" style="float: right; margin-top: 1%">
          <img src="images/touxiang.png" alt="" style="float: right; margin-top: -4.75%; width: 59px; height: 59px; border-radius: 100%; overflow: hidden;"/>
          <h1 style="float: left; margin-top: 0%;">Admin</h1>
        </div>
      </form>
      <div class="clearfix"> </div>
    </div>
  </div>
</div>
<!--heder end here-->
<div class="container">
  <div class="row clearfix">
    <div class="col-md-12 column">
      <nav class="navbar navbar-default">
        <div class="container-fluid">
          <div class="navbar-header">
            <a class="navbar-brand" href="adminMainPage.jsp">Welcome</a>
          </div>
          <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-left">
              <li class="active"><a href="adminMainPage.jsp">LibraryManagement</a></li>
              <li><a href="LibrarianList.jsp">LibrarianInformation</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
              <li><a href="ChangeAdminPw.jsp">ChangePassword</a></li>
            </ul>
          </div>
        </div>
      </nav>
    </div>
  </div>
  <div class="row clearfix">
    <div class="col-md-12 column">
      <form action="RegisterLibrarian" method="post">
        <div class="container">
          <div id="container_demo" >
            <div id="wrapper">
              <div id="register" >
                <h1>
                  Registered  <small>Librarian</small>
                </h1>
                <c:choose>
                  <c:when test="${requestScope.msg eq '1'}">
                    <div style="width: 974px" class="alert alert-success">The librarian registered successfully!</div>
                  </c:when>
                  <c:when test="${requestScope.msg eq '0'}">
                    <div style="width: 974px" class="alert alert-danger">The librarian failed to register, the user name already exists!</div>
                  </c:when>
                </c:choose>
                <p>
                  <label> Librarian User Name </label>
                  <input id="username" name="username"  type="text" required="required" placeholder="LibrarianUserName"/>
                </p>
                <p class="register button">
                  <input type="submit" value="Registered" />
                </p>
              </div>
            </div>
          </div>
        </div>
      </form>
    </div>
  </div>
</div>
<!--footer start here-->
<div class="footer">
  <div class="container">
    <div class="footer-main">
      <div class="footer-navg">
        <ul>
          <li><a class="active" href="adminMainPage.jsp">Library Management</a></li>
          <li></li>
          <li></li>
          <li><a href="LibrarianList.jsp">Librarian Information</a></li>
          <li></li>
          <li></li>
          <li><a href="ChangeAdminPw.jsp">Change Password</a></li>
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
    </div>
  </div>
</div>
<!--/footer end here-->
</body>
</html>