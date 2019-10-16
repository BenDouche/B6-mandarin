<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2019/9/28
  Time: 9:47
  To change this template use File | Settings | File Templates.
--%>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Landing Page - Start Bootstrap Theme</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <!-- Custom fonts for this template -->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
    <link href="vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template -->
    <link href="css/landing-page.min.css" rel="stylesheet">
    <link href="css/load.css" rel="stylesheet">

</head>
<body>

<!-- Navigation -->
<nav class="navbar navbar-light bg-light static-top">
    <div class="container">
        <a href="index.jsp"> <img src="images/logo.png" alt="" width="180" height="60"/> </a>
        <a class="btn btn-primary" onclick="Show()">Sign In</a>
    </div>
</nav>

<!-- Masthead -->
<header class="masthead text-white text-center">
    <div class="overlay"></div>
    <div class="container">
        <div class="row">
            <div class="col-xl-9 mx-auto">
                <h1 class="mb-5">         <h1 class="mb-5">Welcome to LIBRARY.Mandarin</h1></h1>
            </div>
            <div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
                <form action="youkeSearchBookR" method="post">
<%--                <form>--%>
                <div class="form-row">
                    <div class="col-12 col-md-9 mb-2 mb-md-0">
                        <input name="keyword" type="text" class="form-control form-control-lg" placeholder="Enter your book title">
                    </div>
                    <div class="col-12 col-md-3">
                        <button type="submit" class="btn btn-block btn-lg btn-primary">Search</button>
                    </div>
                </div>
                </form>
            </div>
        </div>
    </div>
</header>
<%
    String text= (String) request.getAttribute("nameError");
%>
<!-- Icons Grid -->
<section class="features-icons bg-light text-center">

    <div id="shade" class="c1 hide"></div>
    <div id="modal" class="c2 hide">
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



    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
                    <div class="features-icons-icon d-flex">
                        <i class="icon-screen-desktop m-auto text-primary"></i>
                    </div>
                    <h3>Fully Responsive</h3>
                    <p class="lead mb-0">This theme will look great on any device, no matter the size!</p>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
                    <div class="features-icons-icon d-flex">
                        <i class="icon-layers m-auto text-primary"></i>
                    </div>
                    <h3>Book Is Ready</h3>
                    <p class="lead mb-0">Featuring the latest build of the new Bootstrap 4 framework!</p>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="features-icons-item mx-auto mb-0 mb-lg-3">
                    <div class="features-icons-icon d-flex">
                        <i class="icon-check m-auto text-primary"></i>
                    </div>
                    <h3>Easy to Use</h3>
                    <p class="lead mb-0">Ready to use with your own content, or customize the source files!</p>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Image Showcases -->
<section class="showcase">
    <div class="container-fluid p-0">
        <div class="row no-gutters"> </div>
    </div>
</section>

<!-- Testimonials -->

<!-- Call to Action -->
<section class="call-to-action text-white text-center">
    <div class="container">
        <div class="row">
            <div class="col-xl-9 mx-auto">
                <h2 class="mb-4">Ready to get started? Sign up now!</h2>
            </div>

        </div>
    </div>
</section>

<!-- Footer -->
<footer class="footer bg-light">
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

<!-- Bootstrap core JavaScript -->
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

