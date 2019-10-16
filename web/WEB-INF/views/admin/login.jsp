<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/25
  Time: 21:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Landing Page - Start Bootstrap Theme</title>

    <!-- Bootstrap core CSS -->
    <link href="../../../public/admin/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom fonts for this template -->
    <link href="../../../public/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
    <link href="../../../public/admin/vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">


  <style>
      body{font-family:Lato,'Helvetica Neue',Helvetica,Arial,sans-serif}h1,h2,h3,h4,h5,h6{font-family:Lato,'Helvetica Neue',Helvetica,Arial,sans-serif;font-weight:700}header.masthead{position:relative;background-color:#343a40;background:url(../../../public/admin/images/bg-masthead.jpg) no-repeat center center;background-size:cover;padding-top:8rem;padding-bottom:8rem}header.masthead .overlay{position:absolute;background-color:#212529;height:100%;width:100%;top:0;left:0;opacity:.3}header.masthead h1{font-size:2rem}@media (min-width:768px){header.masthead{padding-top:12rem;padding-bottom:12rem}header.masthead h1{font-size:3rem}}.showcase .showcase-text{padding:3rem}.showcase .showcase-img{min-height:30rem;background-size:cover}@media (min-width:768px){.showcase .showcase-text{padding:7rem}}.features-icons{padding-top:7rem;padding-bottom:7rem}.features-icons .features-icons-item{max-width:20rem}.features-icons .features-icons-item .features-icons-icon{height:7rem}.features-icons .features-icons-item .features-icons-icon i{font-size:4.5rem}.features-icons .features-icons-item:hover .features-icons-icon i{font-size:5rem}.testimonials{padding-top:7rem;padding-bottom:7rem}.testimonials .testimonial-item{max-width:18rem}.testimonials .testimonial-item img{max-width:12rem;box-shadow:0 5px 5px 0 #adb5bd}.call-to-action{position:relative;background-color:#343a40;background:url(../../../public/admin/images/bg-masthead.jpg) no-repeat center center;background-size:cover;padding-top:7rem;padding-bottom:7rem}.call-to-action .overlay{position:absolute;background-color:#212529;height:100%;width:100%;top:0;left:0;opacity:.3}footer.footer{padding-top:4rem;padding-bottom:4rem}
  </style>
</head>

<body>

<!-- Navigation -->
<nav class="navbar navbar-light bg-light static-top">
    <div class="container">Mandarin Library System&nbsp; </div>
</nav>


<!-- Masthead -->
<header class="masthead text-white text-center">
    <div class="overlay"></div>

    <div class="container">
        <form action = "LoginServlet" method ="post">
        <div class="row">
            <div class="col-md-10 col-lg-8 mx-auto col-xl-7 offset-xl-3">
                <h1 class="mb-5">Welcome, Admin</h1>
            </div>
            <div class="col-md-10 col-lg-8 mx-auto col-xl-7 offset-xl-3" align="center">
                <c:if test="${requestScope.msg !=null}">
                    <div style="width: 450px" class="alert alert-danger">${requestScope.msg}</div>
                </c:if>
                <div class="col-12 col-md-9 mb-2 mb-md-0">
                    <input name="username" type="text" class="form-control form-control-lg" placeholder="Username">
                </div>

                <div class="col-12 col-md-9 mb-2 mb-md-0" style="margin-top:10px">
                    <input name="password" type="password" class="form-control form-control-lg" placeholder="Password">
                </div>

                <div class="col-12 col-md-9 mb-2 mb-md-0" style="margin-top: 10px">
                    <button name="submit" type="submit" class="btn btn-block btn-lg btn-primary">Login</button>
                </div>
            </div>
        </div>
        </form>
    </div>
</header>

<footer class="footer bg-light" style="padding: 5px">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 h-100 text-center text-lg-left my-auto">
                <ul class="list-inline mb-2">
                    <li class="list-inline-item">
                        <a href="#">About</a>
                    </li>
                    <li class="list-inline-item">&sdot;</li>
                    <li class="list-inline-item">
                        <a href="#">Contact</a>
                    </li>
                    <li class="list-inline-item">&sdot;</li>
                    <li class="list-inline-item">
                        <a href="#">Terms of Use</a>
                    </li>
                    <li class="list-inline-item">&sdot;</li>
                    <li class="list-inline-item">
                        <a href="#">Privacy Policy</a>
                    </li>
                </ul>
                <p class="text-muted small mb-4 mb-lg-0">&copy; Your Website 2019. All Rights Reserved.</p>
            </div>
            <div class="col-lg-6 h-100 text-center text-lg-right my-auto">
                <ul class="list-inline mb-0">
                    <li class="list-inline-item mr-3">
                        <a href="#">
                            <i class="fab fa-facebook fa-2x fa-fw"></i>
                        </a>
                    </li>
                    <li class="list-inline-item mr-3">
                        <a href="#">
                            <i class="fab fa-twitter-square fa-2x fa-fw"></i>
                        </a>
                    </li>
                    <li class="list-inline-item">
                        <a href="#">
                            <i class="fab fa-instagram fa-2x fa-fw"></i>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</footer>
</body>


</html>


