<%-- Document : produto Created on : 05/05/2024, 13:41:59 Author : natan --%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

    <head>
        <link href="./style/categorias.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Produto</title>
    </head>

    <body>
        <div class="card-products">
            <c:forEach items="${produtos}" var="produto">
                <div class="card" style="width: 18rem;">
                    <c:choose>
                        <c:when test="${produto.imagemBase64 == null}">
                            <img src="./assets/livro1.webp" class="card-img-top" alt="...">
                        </c:when>
                        <c:otherwise>
                            <div class="imagem-left">
                                <img src="data:image/jpeg;base64,${produto.imagemBase64}" class="card-img-top"
                                     alt="${produto.nome}">
                            </div>
                        </c:otherwise>
                    </c:choose>
                    <div class="card-body">
                        <h5 class="card-title"><b>${produto.nome}</b></h5>
                        <div class="center-element">
                            <h5 class="card-price">R$ ${produto.valor}</h5>
                        </div>
                        <div class="center-element">
                            <a href="#" class="btn btn-primary">ADICIONAR</a>
                            <a href="./produto-espec?id=${produto.idProduto}" class="btn btn-primary">VISITAR</a>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </body>
</html>