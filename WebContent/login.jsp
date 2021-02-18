<%-- 
    Document   : login
    Created on : 17 févr. 2021, 11:33:22
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Login Template</title>
  <link href="https://fonts.googleapis.com/css?family=Karla:400,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdn.materialdesignicons.com/4.8.95/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/css/login.css">
  <style>
						      body {
						  font-family: "Karla", sans-serif;
						  background-color: #d0d0ce;
						  min-height: 100vh; }
						
						.brand-wrapper {
						  margin-bottom: 19px; }
						  .brand-wrapper .logo {
						    height: 37px; }
						
						.login-card {
						  border: 0;
						  border-radius: 27.5px;
						  box-shadow: 0 10px 30px 0 rgba(172, 168, 168, 0.43);
						  overflow: hidden; }
						  .login-card-img {
						    border-radius: 0;
						    position: absolute;
						    width: 100%;
						    height: 100%;
						    -o-object-fit: cover;
						       object-fit: cover; }
						  .login-card .card-body {
						    padding: 85px 60px 60px; }
						    @media (max-width: 422px) {
						      .login-card .card-body {
						        padding: 35px 24px; } }
						  .login-card-description {
						    font-size: 25px;
						    color: #000;
						    font-weight: normal;
						    margin-bottom: 23px; }
						  .login-card form {
						    max-width: 326px; }
						  .login-card .form-control {
						    border: 1px solid #d5dae2;
						    padding: 15px 25px;
						    margin-bottom: 20px;
						    min-height: 45px;
						    font-size: 13px;
						    line-height: 15;
						    font-weight: normal; }
						    .login-card .form-control::-webkit-input-placeholder {
						      color: #919aa3; }
						    .login-card .form-control::-moz-placeholder {
						      color: #919aa3; }
						    .login-card .form-control:-ms-input-placeholder {
						      color: #919aa3; }
						    .login-card .form-control::-ms-input-placeholder {
						      color: #919aa3; }
						    .login-card .form-control::placeholder {
						      color: #919aa3; }
						  .login-card .login-btn {
						    padding: 13px 20px 12px;
						    background-color: #000;
						    border-radius: 4px;
						    font-size: 17px;
						    font-weight: bold;
						    line-height: 20px;
						    color: #fff;
						    margin-bottom: 24px; }
						    .login-card .login-btn:hover {
						      border: 1px solid #000;
						      background-color: transparent;
						      color: #000; }
						  .login-card .forgot-password-link {
						    font-size: 14px;
						    color: #919aa3;
						    margin-bottom: 12px; }
						  .login-card-footer-text {
						    font-size: 16px;
						    color: #0d2366;
						    margin-bottom: 60px; }
						    @media (max-width: 767px) {
						      .login-card-footer-text {
						        margin-bottom: 24px; } }
						  .login-card-footer-nav a {
						    font-size: 14px;
						    color: #919aa3; }
						
						/*# sourceMappingURL=login.css.map */

  </style>
</head>
<body>
  <main class="d-flex align-items-center min-vh-100 py-3 py-md-0">
    <div class="container">
      <div class="card login-card">
        <div class="row no-gutters">
          <div class="col-md-5">
            <img src="assets/img/portfolio/Inscription.jpg" style="width: 200px;height: 80px;" alt="login" class="login-card-img">
          </div>
          <div class="col-md-7">
            <div class="card-body">
              <div class="brand-wrapper">
                <img src="assets/img/portfolio/Logo.png" style="width: 200px;height: 80px;margin-left:50px;" alt="logo" class="logo">
              </div>
              <p class="login-card-description">Sign into your account</p>
              <form action="login" method="post">
                  <div class="form-group">
                    <label for="email" class="sr-only">UserName</label>
                    <input type="text" name="username" id="email" class="form-control" placeholder="Entrez votre Nom">
                  </div>
                  <div class="form-group mb-4">
                    <label for="password" class="sr-only">Password</label>
                    <input type="password" name="password" id="password" class="form-control" placeholder="***********">
                  </div>
                  <input name="login" id="login" class="btn btn-block login-btn mb-4" type="submit" value="Login">
                </form>
                <a href="#!" class="forgot-password-link">Forgot password?</a>
                <p class="login-card-footer-text">Don't have an account? <a href="Inscription.jsp" class="text-reset">Register here</a></p>
                <nav class="login-card-footer-nav">
                  <a href="#!">Terms of use.</a>
                  <a href="#!">Privacy policy</a>
                </nav>
            </div>
          </div>
        </div>
      </div>
      <!-- <div class="card login-card">
        <img src="assets/images/login.jpg" alt="login" class="login-card-img">
        <div class="card-body">
          <h2 class="login-card-title">Login</h2>
          <p class="login-card-description">Sign in to your account to continue.</p>
          <form action="#!">
            <div class="form-group">
              <label for="email" class="sr-only">Email</label>
              <input type="email" name="email" id="email" class="form-control" placeholder="Email">
            </div>
            <div class="form-group">
              <label for="password" class="sr-only">Password</label>
              <input type="password" name="password" id="password" class="form-control" placeholder="Password">
            </div>
            <div class="form-prompt-wrapper">
              <div class="custom-control custom-checkbox login-card-check-box">
                <input type="checkbox" class="custom-control-input" id="customCheck1">
                <label class="custom-control-label" for="customCheck1">Remember me</label>
              </div>              
              <a href="#!" class="text-reset">Forgot password?</a>
            </div>
            <input name="login" id="login" class="btn btn-block login-btn mb-4" type="button" value="Login">
          </form>
          <p class="login-card-footer-text">Don't have an account? <a href="#!" class="text-reset">Register here</a></p>
        </div>
      </div> -->
    </div>
  </main>
  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>