<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
    <head>
    	<title>Page_Admin</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="CHAOUB">
        <meta name="generator" content="Hugo 0.79.0">
        <title>PEPINIERE</title>
        <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/album/">
        <!-- Bootstrap core CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        <!-- Favicons -->
        <link rel="apple-touch-icon" href="/docs/5.0/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
        <link rel="icon" href="/docs/5.0/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
        <link rel="icon" href="/docs/5.0/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
        <link rel="manifest" href="/docs/5.0/assets/img/favicons/manifest.json">
        <link rel="mask-icon" href="/docs/5.0/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3">
        <link rel="icon" href="/docs/5.0/assets/img/favicons/favicon.ico">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.4.1/lux/bootstrap.min.css%22%3E">
        <link rel="stylesheet" href="css/main.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
        <meta name="theme-color" content="#7952b3">
        <script>
            function visible() {
                var PageConn = document.getElementById("sincrire");
                PageConn.style.display = "block";
                window.location.href = "#"
            }
            function cacherConn() {
                var PageConn = document.getElementById("sincrire");
                PageConn.style.display = "none";
            }
            function cacherValider() {
                var PageConn = document.getElementById("POPUP");
                PageConn.style.display = "none";
            }
            function visible1() {
                var PageConn = document.getElementById("modif");
                PageConn.style.display = "block";
                window.location.href = "#"
            }
            function cacherConn2() {
                var PageConn = document.getElementById("modif");
                PageConn.style.display = "none";
            }
            function cacherValider2() {
                var PageConn = document.getElementById("POPUP");
                PageConn.style.display = "none";
            }

        </script>
        <style>
            .bd-placeholder-img {
                font-size: 1.125rem;
                text-anchor: middle;
                -webkit-user-select: none;
                -moz-user-select: none;
                user-select: none;
            }

            @media (min-width: 768px) {
                .bd-placeholder-img-lg {
                    font-size: 3.5rem;
                }
            }

            #AjoutBTN{
                display: flex;
                justify-items: center;
                align-content: center;
                height : 255px;
                width: 430px;

            }
        </style>
        <style>
            .sincrire {
                display: none;
                width: 100%;
                height: 500%;
                background-color: rgba(0, 0, 0, 0.808);
                position: absolute;
                top: 0;
                z-index: 88;
            }

            .sincrire .logoInscrip {
                width: 60%;
                height: 100px;
                background-color: black;
                margin-left: 20%;
                margin-top: 7.5%;
            }

            .sincrire .logoInscrip img {
                margin-left: 5%;
                width: 40%;
                height: 100px;
                float: left;
            }

            .sincrire .logoInscrip a {
                font-size: 20px;
                font-family: "Bebas Neue";
                margin-left: 43%;
                color: #f7f7f7;
                margin-top: 90px;
                list-style-type: none;
                text-decoration: none;
                cursor: pointer;
            }

            .sincrire .Inscrip {
                width: 60%;
                height: 400px;
                margin-left: 20%;
                display: -webkit-box;
                display: -ms-flexbox;
                display: flex;
                -webkit-box-orient: horizontal;
                -webkit-box-direction: normal;
                -ms-flex-direction: row;
                flex-direction: row;
                -ms-flex-wrap: nowrap;
                flex-wrap: nowrap;
                background-color: white;
            }

            .sincrire .Inscrip .pan1 {
                width: 100%;
                background-color: white;
            }

            .sincrire .Inscrip .pan1 p {
                margin-left: 10%;
                font-size: 18px;
                font-family: "Bebas Neue";
                margin-left: 47%;
            }

            .sincrire .Inscrip .pan1 input {
                margin-left: 10%;
                width: 25%;
                height: 20px;
                font-size: 14px;
                font-family: "Bebas Neue";
                margin-left: 39%;
            }

            .sincrire .Inscrip .pan1 .SeConn {
                color: #f7f7f7;
                width: 10%;
                height: 40px;
                border-radius: 5px;
                background-color: black;
                font-family: "Bebas Neue";
                font-size: 15px;
                border-style: none;
                cursor: pointer;
                margin-left: 46%;
            }
            .blank {
                width: auto;
                height: 20px;
            }
            #Grille_location {
			position: absolute;
			width: 1920px;
			height: 243px;
			left: 0px;
			top: 3320px;
			overflow: hidden;
		}

		#Grille_location_0 {
			position: absolute;
			width: 1920px;
			height: 243px;
			left: 0px;
			top: 0px;
			overflow: visible;
		}

		#Rectangle_13 {
			fill: rgba(34, 40, 49, 1);
			stroke: rgba(112, 112, 112, 1);
			stroke-width: 1px;
			stroke-linejoin: miter;
			stroke-linecap: butt;
			stroke-miterlimit: 4;
			shape-rendering: auto;
		}

		.Rectangle_13 {
			position: absolute;
			overflow: visible;
			width: 1920px;
			height: 243px;
			left: 0px;
			top: 0px;
		}

		#LOCATION {
			left: 81px;
			top: 36px;
			position: absolute;
			overflow: visible;
			width: 231px;
			white-space: nowrap;
			text-align: left;
			font-family: Montserrat;
			font-style: normal;
			font-weight: bold;
			font-size: 42px;
			color: rgba(255, 255, 255, 1);
		}

		#AROUND_THE_WEB {
			left: 750px;
			top: 36px;
			position: absolute;
			overflow: visible;
			width: 422px;
			white-space: nowrap;
			text-align: left;
			font-family: Montserrat;
			font-style: normal;
			font-weight: bold;
			font-size: 42px;
			color: rgba(255, 255, 255, 1);
		}

		#ABOUT_FREELANCER {
			left: 1421px;
			top: 36px;
			position: absolute;
			overflow: visible;
			width: 467px;
			white-space: nowrap;
			text-align: left;
			font-family: Montserrat;
			font-style: normal;
			font-weight: bold;
			font-size: 42px;
			color: rgba(255, 255, 255, 1);
		}

		#ID3_Rue_Palestine_46050_Safi {
			left: 81px;
			top: 105px;
			position: absolute;
			overflow: visible;
			width: 217px;
			white-space: nowrap;
			text-align: left;
			font-family: Montserrat;
			font-style: normal;
			font-weight: normal;
			font-size: 28px;
			color: rgba(255, 255, 255, 1);
		}

		#Ellipse_4 {
			fill: rgba(34, 40, 49, 1);
			stroke: rgba(255, 255, 255, 1);
			stroke-width: 3px;
			stroke-linejoin: miter;
			stroke-linecap: butt;
			stroke-miterlimit: 4;
			shape-rendering: auto;
		}

		.Ellipse_4 {
			position: absolute;
			overflow: visible;
			width: 90px;
			height: 90px;
			left: 683px;
			top: 105px;
		}

		#Ellipse_5 {
			fill: rgba(34, 40, 49, 1);
			stroke: rgba(255, 255, 255, 1);
			stroke-width: 3px;
			stroke-linejoin: miter;
			stroke-linecap: butt;
			stroke-miterlimit: 4;
			shape-rendering: auto;
		}

		.Ellipse_5 {
			position: absolute;
			overflow: visible;
			width: 90px;
			height: 90px;
			left: 1004px;
			top: 105px;
		}

		#Ellipse_8 {
			fill: rgba(34, 40, 49, 1);
			stroke: rgba(255, 255, 255, 1);
			stroke-width: 3px;
			stroke-linejoin: miter;
			stroke-linecap: butt;
			stroke-miterlimit: 4;
			shape-rendering: auto;
		}

		.Ellipse_8 {
			position: absolute;
			overflow: visible;
			width: 90px;
			height: 90px;
			left: 1111px;
			top: 105px;
		}

		#Ellipse_6 {
			fill: rgba(34, 40, 49, 1);
			stroke: rgba(255, 255, 255, 1);
			stroke-width: 3px;
			stroke-linejoin: miter;
			stroke-linecap: butt;
			stroke-miterlimit: 4;
			shape-rendering: auto;
		}

		.Ellipse_6 {
			position: absolute;
			overflow: visible;
			width: 90px;
			height: 90px;
			left: 897px;
			top: 105px;
		}

		#Ellipse_7 {
			fill: rgba(34, 40, 49, 1);
			stroke: rgba(255, 255, 255, 1);
			stroke-width: 3px;
			stroke-linejoin: miter;
			stroke-linecap: butt;
			stroke-miterlimit: 4;
			shape-rendering: auto;
		}

		.Ellipse_7 {
			position: absolute;
			overflow: visible;
			width: 90px;
			height: 90px;
			left: 790px;
			top: 105px;
		}

		#Freelance_is_a_free_to_use_MIT {
			left: 1435px;
			top: 105px;
			position: absolute;
			overflow: visible;
			width: 412px;
			white-space: nowrap;
			text-align: left;
			font-family: Montserrat;
			font-style: normal;
			font-weight: normal;
			font-size: 28px;
			color: rgba(255, 255, 255, 1);
		}

		#facebook {
			position: absolute;
			width: 64px;
			height: 64px;
			left: 696px;
			top: 118px;
			overflow: visible;
		}

		#twitter {
			position: absolute;
			width: 64px;
			height: 64px;
			left: 803px;
			top: 118px;
			overflow: visible;
		}

		#telegram {
			position: absolute;
			width: 64px;
			height: 64px;
			left: 906px;
			top: 118px;
			overflow: visible;
		}

		#instagram {
			position: absolute;
			width: 64px;
			height: 64px;
			left: 1017px;
			top: 118px;
			overflow: visible;
		}

		#whatsapp {
			position: absolute;
			width: 64px;
			height: 64px;
			left: 1128px;
			top: 118px;
			overflow: visible;
		}
        </style>
  </head>
    <body>
        <header>
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark" style="height:120px">
                <a class="navbar-brand" href="#"><img alt="" src="assets/img/portfolio/Logo.png" style="width: 100px;height: 80px;"></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarColor02">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="#">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#Gallerie">GALLERIE</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#ABOUT_">ABOUT</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#CONTACT_">CONTACT</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="deconnecter"> DECONNECTER</a>
                        </li>
                    </ul> 
                </div>
                <div>
                <p style="Width:300px;color:white">Bonjour  ${Session_ADMIN.getUsername()}</p>
                </div>
            </nav>
        </header>
        <main>
            <div id="Grille_about">
           		<div class="album py-5 bg-light">
	                <div class="container">
	                    <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
	                        <c:forEach items="${produits}" var="produit" varStatus="status">
	                            <div class="col"  >
	                                <div class="card shadow-sm">
	                                    <img src="<c:url value='assets/img/portfolio/p${status.count}.jpeg'/>" width="100%" height="225px" alt="changement images non valide"/>
	                                    <div class="card-body">
	                                        <p class="card-text"><c:out value="${produit.getLibelle()}"/> </p>
	                                        <div class="d-flex justify-content-between align-items-center">
	                                            <div class="btn-group">
	                                                <button type="Submit" class="btn btn-sm btn-outline-secondary" data-bs-toggle="modal" data-bs-target="#modif${produit.getId()}">
	                                                    Modifier
	                                                </button>
	                                                <button  class="btn btn-sm btn-outline-secondary">
	                                                    <a href="Sup?id=${produit.id}" style="text-decoration: none;
	                                                       text-decoration: none;
	                                                       list-style-type: none;
	                                                       color: #6c757d;">Supprimer</a>
	                                                </button>
	                                            </div>
	                                            <form action="Modif" method="POST">  <div class="modal fade" id="modif${produit.getId()}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	                                                    <div class="modal-dialog">
	                                                        <div class="modal-content">
	                                                            <div class="modal-header">
	                                                                <h5 class="modal-title align-items-center" id="exampleModalLabel">Zone Modification</h5>
	                                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	                                                            </div>
	                                                            <div class="modal-body">
	                                                                <div class="blank"></div>
	                                                                <div class="blank"></div>
	                                                                <p>Libelle Produit:</p>
	                                                                <input type="text" class="P" name="libelle" value="${produit.getLibelle()}">
	                                                                <div class="blank"></div>
	                                                                <div class="blank"></div>
	                                                                <p>Prix Produit:</p>
	                                                                <input type="text" class="P" name="prix" value="${produit.getPrix()}">
	                                                                <div class="blank"></div>
	                                                                <div class="blank"></div>
	                                                                <p>Quantité Produit:</p>
	                                                                <input type="text" class="P" name="qte" value="${produit.getQuantite()}">
	                                                            </div>
	                                                            <div class="modal-footer">
	                                                                <button type="submit" name="modif" value="${produit.id}"  class="btn btn-primary">Modifier</button> 
	                                                            </div>
	                                                        </div>
	                                                        </form>
	                                                    </div>
	                                                </div>
	                                                <small class="text-muted"> ${produit.prix} Dhs </small>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                        </c:forEach>
	                        <div class="col" >
	                            <div class="card shadow-sm">
	                                <div class="card-body">
	                                    <div class="d-flex justify-content-between align-items-center">
	                                        <div class="btn-group" id="AjoutBTN" >
	                                            <button  type="submit"  id="btn" class="btn btn-sm btn-outline-secondary" onclick="visible()"><img src="assets/img/portfolio/add1.png" width="100px" height="auto"/></button>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
                
                
                </div>
            </div>
            
            
            <div class="sincrire" id="sincrire">
                <div class="logoInscrip">
                    <img src="assets/img/portfolio/Logo.png" alt="" width="100px" height="auto">
                    <a href="javascript:cacherConn()">FERMER x</a>
                </div>
                <form action="ajouterProduit" method="post">
                    <div class="Inscrip">
                        <div class="pan1">
                            <h1 style="text-align: center">AJOUTER Produit </h1>
                            <div class="blank"></div>
                            <p>Libelle Produit:</p>
                            <input type="text" class="P" name="libelle" value="">
                            <div class="blank"></div>
                            <p>Prix Produit:</p>
                            <input type="text" class="P" name="prix">
                            <div class="blank"></div>
                            <p>Quantite Produit:</p>
                            <input type="text" class="P" name="qte">
                            <br><br><br>
                            <div ><input class="SeConn" id="SeConn" type="submit" value="AJOUTER" ></div>
                        </div>
                    </div>
                </form>

            </div>
            <div class="sincrire" id="modif">
                <div class="logoInscrip">
                    <img src="images/logo.png" alt="" width="100" height="auto">
                    <a href="javascript:cacherConn2()">FERMER ⤫</a>
                </div>
                <form action="modifier" method="post">
                    <div class="Inscrip">
                        <div class="pan1">
                            <h1 style="text-align: center"> MODIFIER PLANTE </h1>
                            <div class="blank"></div>
                            <div class="blank"></div>
                            <p>Description Plante:</p>
                            <input type="text" class="P" name="nom_modif" >
                            <div class="blank"></div>
                            <div class="blank"></div>
                            <p>Prix Plante:</p>
                            <input type="text" class="P" name="prenom_modif">
                            <br><br><br>
                            <div ><input class="SeConn" id="Modifier" type="submit" value="MODIFIER" ></div>
                        </div>
                    </div>
                </form>

            </div>
       		
       		
       		<div id="Grille_location">
		<div id="Grille_location_0" class="">
			<svg class="Rectangle_13">
				<rect id="Rectangle_13" rx="0" ry="0" x="0" y="0" width="1920" height="243">
				</rect>
			</svg>
			<div id="LOCATION">
				<span>LOCATION</span>
			</div>
			<div id="AROUND_THE_WEB">
				<span>AROUND THE WEB</span>
			</div>
			<div id="ABOUT_FREELANCER">
				<span>ABOUT FREELANCER</span>
			</div>
			<div id="ID3_Rue_Palestine_46050_Safi">
				<span>3 Rue Palestine<br />46050 Safi</span>
			</div>
			<svg class="Ellipse_4">
				<ellipse id="Ellipse_4" rx="45" ry="45" cx="45" cy="45">
				</ellipse>
			</svg>
			<svg class="Ellipse_5">
				<ellipse id="Ellipse_5" rx="45" ry="45" cx="45" cy="45">
				</ellipse>
			</svg>
			<svg class="Ellipse_8">
				<ellipse id="Ellipse_8" rx="45" ry="45" cx="45" cy="45">
				</ellipse>
			</svg>
			<svg class="Ellipse_6">
				<ellipse id="Ellipse_6" rx="45" ry="45" cx="45" cy="45">
				</ellipse>
			</svg>
			<svg class="Ellipse_7">
				<ellipse id="Ellipse_7" rx="45" ry="45" cx="45" cy="45">
				</ellipse>
			</svg>
			<div id="Freelance_is_a_free_to_use_MIT">
				<span>Freelance is a free to use, MIT<br /> licensed Bootstrap theme<br />created by Start
					Bootstrap</span>
			</div>
			<img id="facebook" src="assets/img/portfolio/facebook.png" >

			<img id="twitter" src="assets/img/portfolio/twitter.png" >

			<img id="telegram" src="assets/img/portfolio/telegram.png" >

			<img id="instagram" src="assets/img/portfolio/instagram.png">

			<img id="whatsapp" src="assets/img/portfolio/whatsapp.png">

		</div>
	</div>
			</div>
	
        </main>
       

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>

    </body>
</html>
