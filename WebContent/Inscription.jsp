<%-- 
    Document   : Inscription
    Created on : 17 févr. 2021, 11:43:59
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
                background-color: #fff;
                min-height: 100vh; }

            .brand-wrapper {
                padding-top: 7px;
                padding-bottom: 8px; }
            .brand-wrapper .logo {
                height: 25px; }

            .login-section-wrapper {
                display: -webkit-box;
                display: flex;
                -webkit-box-orient: vertical;
                -webkit-box-direction: normal;
                flex-direction: column;
                padding: 68px 100px;
                background-color: #fff; }
            @media (max-width: 991px) {
                .login-section-wrapper {
                    padding-left: 50px;
                    padding-right: 50px; } }
            @media (max-width: 575px) {
                .login-section-wrapper {
                    padding-top: 20px;
                    padding-bottom: 20px;
                    min-height: 100vh; } }

            .login-wrapper {
                width: 300px;
                max-width: 100%;
                padding-top: 24px;
                padding-bottom: 24px; }
            @media (max-width: 575px) {
                .login-wrapper {
                    width: 100%; } }
            .login-wrapper label {
                font-size: 14px;
                font-weight: bold;
                color: #b0adad; }
            .login-wrapper .form-control {
                border: none;
                border-bottom: 1px solid #e7e7e7;
                border-radius: 0;
                padding: 9px 5px;
                min-height: 40px;
                font-size: 18px;
                font-weight: normal; }
            .login-wrapper .form-control::-webkit-input-placeholder {
                color: #b0adad; }
            .login-wrapper .form-control::-moz-placeholder {
                color: #b0adad; }
            .login-wrapper .form-control:-ms-input-placeholder {
                color: #b0adad; }
            .login-wrapper .form-control::-ms-input-placeholder {
                color: #b0adad; }
            .login-wrapper .form-control::placeholder {
                color: #b0adad; }
            .login-wrapper .login-btn {
                padding: 13px 20px;
                background-color: #fdbb28;
                border-radius: 0;
                font-size: 20px;
                font-weight: bold;
                color: #fff;
                margin-bottom: 14px; }
            .login-wrapper .login-btn:hover {
                border: 1px solid #fdbb28;
                background-color: #fff;
                color: #fdbb28; }
            .login-wrapper a.forgot-password-link {
                color: #080808;
                font-size: 14px;
                text-decoration: underline;
                display: inline-block;
                margin-bottom: 54px; }
            @media (max-width: 575px) {
                .login-wrapper a.forgot-password-link {
                    margin-bottom: 16px; } }
            .login-wrapper-footer-text {
                font-size: 16px;
                color: #000;
                margin-bottom: 0; }

            .login-title {
                font-size: 30px;
                color: #000;
                font-weight: bold;
                margin-bottom: 25px; }

            .login-img {
                width: 100%;
                height: 100vh;
                -o-object-fit: cover;
                object-fit: cover;
                -o-object-position: left;
                object-position: left; }

            /*# sourceMappingURL=login.css.map */

        </style>
    </head>
    <body>
        <main>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-6 login-section-wrapper">
                        <div class="brand-wrapper">
                            <img src="assets/img/portfolio/Logo.png" alt="logo" class="logo" style="width: 150px;height: 80px;margin-left:50px">
                        </div>
                        <div class="login-wrapper my-auto">
                            <h1 class="login-title">Log in</h1>
                            <form action="ajouterUser" method="post">
                                <div class="form-group">
                                    <label for="nom">NOM</label>
                                    <input type="text" name="nom" id="email" class="form-control" placeholder="entez votre Nom">
                                </div>
                                <div class="form-group">
                                    <label for="prenom">PRENOM</label>
                                    <input type="text" name="prenom" id="email" class="form-control" placeholder="entez votre Prenom">
                                </div>
                                <div class="form-group">
                                    <label for="prenom">USERNAME</label>
                                    <input type="text" name="username" id="email" class="form-control" placeholder="entez votre Username">
                                </div>
                                <div class="form-group mb-4">
                                    <label for="password">MOT DE PASSE</label>
                                    <input type="password" name="password" id="password" class="form-control" placeholder="Mot de passe > 8caracteres">
                                </div>
                                <input name="login" id="login" class="btn btn-block login-btn" type="submit" value="S'inscrire">
                            </form>
                            <p class="login-wrapper-footer-text">Vous avez deja un compte? <a href="login.jsp" class="text-reset">Identifier Ici!!</a></p>
                        </div>
                    </div>
                    <div class="col-sm-6 px-0 d-none d-sm-block">
                        <img src="assets/img/portfolio/Inscription.jpeg" alt="login image" class="login-img" style="width: 400px;height: 1000px;">
                    </div>
                </div>
            </div>
        </main>
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    </body>
</html>
