<%-- 
    Document   : produto
    Created on : 05/05/2024, 13:41:59
    Author     : natan
--%>

<%@taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Produto</title>
    </head>
    <body>
        <main>
            <div class="produtos">
                <c:forEach items="${produtos}" var="produto">
                    <div class="card" style="width: 18rem;">
                        <img src="data:image/jpeg;base64,${produto.imagemBase64}" class="card-img-top" alt="${produto.nome}">
                        <div class="card-body">
                            <h3 class="card-title">${produto.nome}</h3>
                            <h4>Preço:</h4>
                            <p class="card-text">${produto.valor}</p>
                            <a href="#" class="btn btn-primary">Comprar</a>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </main>
    </body>
</html>
