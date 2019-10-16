<%@ page import="com.mandarin.dao.AdminCl" %>
<%@ page import="com.mandarin.basic.Librarian" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Librarian List</title>
    <link rel="stylesheet" href="/css/bootstrap.css">

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Landing Page - Start Bootstrap Theme</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" type="text/css" href="css/style1.css" />
    <link href="../../../public/admin/css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
    <link href="../../../public/admin/css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>
    <!-- Custom fonts for this template -->
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

</head>
<body>
<%
    AdminCl service=new AdminCl();
    ArrayList<Librarian> librarianList=service.getAllLibrarian();
%>
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
<!-- mainlist -->
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
                        <li><a href="adminMainPage.jsp">LibraryManagement</a></li>
                        <li class="active" ><a href="LibrarianList.jsp">LibrarianInformation</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="ChangeAdminPw.jsp">ChangePassword</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
</div>
<section>
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <nav class="navbar navbar-default" role="navigation">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="#">List</a>
                    </div>

                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <form class="navbar-form navbar-left" role="search">
                            <div class="form-group">
                                <input type="text" class="form-control" />
                            </div> <button type="submit" class="btn btn-default">Search</button>
                        </form>
                    </div>

                </nav>
                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <th>
                            编号
                        </th>
                        <th>
                            名称
                        </th>
                        <th>
                            状态
                        </th>
                        <th>
                            操作
                        </th>
                    </tr>
                    </thead>
                    <tbody>
                    <%
                        for (int i = 0; i < librarianList.size(); i++) {
                           Librarian librarian=librarianList.get(i);
                    %>


                    <tr class="success">
                        <td>
                            <%=i %>
                        </td>
                        <td>
                            <%=librarian.getAccount() %>
                        </td>
                        <td>
                            <%=librarian.getState() %>
                        </td>
                        <td>
                            <button type="button" class="btn btn-success">编辑</button>
                            <button type="button" class="btn btn-danger">删除</button>
                        </td>
                    </tr>
                    <%
                        }
                    %>
                    </tbody>
                </table>
                <div class="row clearfix">
                    <div class="col-md-4 column">
                    </div>
                    <div class="col-md-4 column">
                        <ul class="pagination">
                            <li>
                                <a href="#">Prev</a>
                            </li>
                            <li>
                                <a href="#">1</a>
                            </li>
                            <li>
                                <a href="#">2</a>
                            </li>
                            <li>
                                <a href="#">3</a>
                            </li>
                            <li>
                                <a href="#">4</a>
                            </li>
                            <li>
                                <a href="#">5</a>
                            </li>
                            <li>
                                <a href="#">Next</a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-4 column">
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</div>
<!--footer start here-->
<div class="footer">
    <div class="container">
        <div class="footer-main">
            <div class="footer-navg">
                <ul>
                    <li><a  href="adminMainPage.jsp">Library Management</a></li>
                    <li></li>
                    <li></li>
                    <li><a class="active" href="LibrarianList.jsp">Librarian Information</a></li>
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
