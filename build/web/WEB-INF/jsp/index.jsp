<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>        
        <script src="https://kit.fontawesome.com/6f0f753ce6.js" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link href="./style/footer.css" rel="stylesheet" type="text/css" />
        <link href="./style/header.css" rel="stylesheet" type="text/css" />
        <link href="./style/index.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página Inicial - Komunhão Livraria</title>
    </head>

    <body>
    <main>
        <jsp:include page="header.jsp" ></jsp:include>
            <section class="carrosel">
                <div id="carouselExampleIndicators" class="carousel slide"> 
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                    </div>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="./assets/carrosel-komunhao.webp" class="d-block w-100" alt="...">
                        </div>
                        <div class="carousel-item">
                            <img src="./assets/carrosel-komunhao2.webp" class="d-block w-100" alt="...">
                        </div>
                        <div class="carousel-item">
                            <img src="./assets/carrosel-komunaho3.webp" class="d-block w-100" alt="...">
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button> 
                </div> 
            </section>
            <section class="show-products">
                <div class="h1-text">
                    <h1>DESTAQUES</h1>
                </div>
            <jsp:include page="produto.jsp"></jsp:include>
            </section>
            <section class="email-section">
                <div class="newsletter">
                    <h3>NEWSLETTER</h3>
                    <h2>Receba todas as promoções</h2>
                    <p>Quer receber nossas ofertas? Cadastre-se e comece a recebê-las!</p>
                    <div class="input-box">
                        <i class="fa-solid fa-arrow-right"></i>
                        <input type="text" placeholder="E-mail">
                    </div>
                </div>
            </section>
            <section class="instagram-section">
                <div class="to-instagram">
                    <div class="tag-insta">
                        <h2><i class="fa-brands fa-instagram"></i>komunhaolivraria</p> 
                    </div>   
                    <h3>Estamos no instagram</h3>
                    <button><b><a href="https://www.instagram.com/komunhaolivraria/">SIGA-NOS</a></b></button>
                </div>
            </section>
        </main>
    <jsp:include page="footer.jsp" ></jsp:include>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
crossorigin="anonymous"></script>
</html>
