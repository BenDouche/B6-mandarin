
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

    <!-- Custom styles for this template -->
    <link href="css/landing-page.min.css" rel="stylesheet">

</head>

<body>

<!-- Navigation -->
<nav class="navbar navbar-light bg-light static-top">
<!--    <div class="container">Mandarin Library System&nbsp; </div>-->
	    <div class="container" ><a href="index.html"> <img src="images/logo.png" alt="" width="212" height="45" class="img-rounded"/></a>
    </div>
</nav>

<!-- Masthead -->
<header class="masthead text-white text-center">
    <div class="overlay"></div>
    <div class="container">
        <form action = "ChangeAdminPwServlet" method ="post">
        <div class="row">
            <div class="col-md-10 col-lg-8 mx-auto col-xl-7 offset-xl-3">
                <h1 class="mb-5">Change Your Password</h1>
            </div>
                <div class="col-md-10 col-lg-8 mx-auto col-xl-7 offset-xl-3" align="center">
                    <div class="col-12 col-md-9 mb-2 mb-md-0" style="margin-top:10px">
                        <input type="text" name="username" class="form-control form-control-lg" placeholder="Admin account">
                    </div>
                    <div class="col-12 col-md-9 mb-2 mb-md-0" style="margin-top:10px">
                        <input type="password" name="OriginalPw" class="form-control form-control-lg" placeholder="Original Password">
                    </div>
                    <div class="col-12 col-md-9 mb-2 mb-md-0" style="margin-top:10px">
                        <input type="password" name="NewPw" class="form-control form-control-lg" placeholder="New Password">
                    </div>
                    <div class="col-12 col-md-9 mb-2 mb-md-0" style="margin-top:10px">
                        <input type="password" name="AffirmPw"class="form-control form-control-lg" placeholder="Affirm new Password">
                    </div>

                    <div class="col-12 col-md-9 mb-2 mb-md-0" style="margin-top: 10px">
                        <button type="submit" class="btn btn-block btn-lg btn-primary">Affirm</button>
                    </div>

                </div>
        </div>
        </form>
    </div>
</header>
</body>

</html>



