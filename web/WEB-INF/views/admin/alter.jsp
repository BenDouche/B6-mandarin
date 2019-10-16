<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Librarian List</title>
<link rel="stylesheet" href="./css/bootstrap.css">

  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title></title>

  <!-- Bootstrap core CSS -->
  <link href="../../../public/admin/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="../../../public/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="../../../public/admin/vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

  <!-- Custom styles for this template -->
  <link href="../../../public/admin/css/landing-page.min.css" rel="stylesheet">

</head>
<body>
<%
	String msg = "";
	if(request.getAttribute("msg")!=null){
		if(request.getAttribute("msg").equals("密码不一致"))  {
			msg="<p style='background:red'>两次输入的密码不一致!</p>";
		}else if(request.getAttribute("msg").equals("信息不完整")){
			msg="<p style='background:red'>请输入完整密码!</p>";
		}
	}
%>
<!-- 标题 -->
  <!-- Navigation -->
  <nav class="navbar navbar-light bg-light static-top">
    <div class="container">
      <a href="index.html"> <img src="images/logo.png" alt="" width="212" height="45"/> </a>
      <a class="btn btn-primary" href="#">alter</a>
    </div>
  </nav>




<!-- 主体 -->
<section>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<form class="form" action="AlterPassword" method="post">
				<%=msg %>
				<div class="form-group">
				 <label for="exampleInputPassword">Name</label><p name="username">xxx</p>
				</div>
				<div class="form-group">
				
					 <label for="exampleInputPassword">Password</label><input type="password" class="form-control" name="password" />
				</div>
				<div class="form-group">
					 <label for="exampleInputPassword1">CheckPassword</label><input type="password" class="form-control" name="password1" />
				</div>
				
				<div class="checkbox">
					
				</div> <button type="submit" class="btn btn-default">Submit</button>
			</form>
		</div>
	</div>
</div>
</section>
<!-- 尾部 -->
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
</body>
</html>