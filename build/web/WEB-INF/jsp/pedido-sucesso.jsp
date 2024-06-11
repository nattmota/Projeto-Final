<%-- 
    Document   : pedido-sucesso
    Created on : 07/06/2024, 16:05:09
    Author     : natan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="./style/pedido-sucesso.css" rel="stylesheet" type="text/css" />
        <script src="https://kit.fontawesome.com/6f0f753ce6.js" crossorigin="anonymous"></script>
        <title>Pedido Confirmado</title>
    </head>
    <body>
        <jsp:include page="header.jsp" ></jsp:include>
        <main class="main">
            <div class="container-sucesso">
                <div class="text-sucesso">
                    <h1>PEDIDO FEITO COM SUCESSO</h1>
                    <div class="circle">  
                        <i class="fa-solid fa-check"></i> 
                    </div>
                </div>
                <hr>
                <div class="btn-link">
                    <button>
                        <a href="./index">VER MAIS PRODUTOS</a>
                    </button>
                </div>
            </div>      
        </main>
        <jsp:include page="footer.jsp" ></jsp:include>
    </body>
</html>
