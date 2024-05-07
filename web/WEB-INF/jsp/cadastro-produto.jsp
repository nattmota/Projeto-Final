<%-- 
    Document   : cadastro-produto
    Created on : 30/04/2024, 19:18:48
    Author     : natan
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="https://kit.fontawesome.com/6f0f753ce6.js" crossorigin="anonymous"></script>
        <link href="./style/footer.css" rel="stylesheet" type="text/css"/>
        <link href="./style/header.css" rel="stylesheet" type="text/css"/>
        <link href="./style/cadastro-produto.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="./js/display-img.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <main>
                <div class="form-cadastro">
                    <form action="cadastrarProduto" method="post" enctype="multipart/form-data">
                        <div class="mb-3">
                            <label for="nome-produto" class="form-label">Nome</label>
                            <input type="text" class="form-control" id="nome-produto" name="nome-produto" aria-describedby="emailHelp">           
                        </div>
                        <div class="mb-3">
                            <label for="autor" class="form-label">Autor</label>
                            <input type="text" class="form-control" name="autor" id="autor">
                        </div>
                        <div class="mb-3">
                            <label for="valor" class="form-label">Valor</label>
                            <input type="text" class="form-control" name="valor" id="valor">
                        </div>
                        <div class="mb-3">
                            <label for="descricao" class="form-label">Descricao</label>
                            <input type="text" class="form-control" id="descricao" name="descricao">
                        </div>
                        <div class="mb-3">                      
                            <label for="categoria" class="form-label">Categoria</label>
                            <select name="categoria" id="categoria">
                            <c:forEach items="${categorias}" var="categoria">
                                <option value="${categoria.idCategoria}"> ${categoria.nome}</option>
                            </c:forEach>
                        </select>
                    </div>

                    <div class="mb-3">                     
                        <label for="formFile" class="form-label">Imagem</label>
                        <input class="form-control" type="file" id="imagem" name="imagem" required accept="image/*">                       
                    </div>
                    <button type="submit" class="btn btn-primary">Cadastrar</button>
                </form>
                <div class="container-img">
                    <img id="imagem-produto" src="#" alt="Imagem do Produto">
                </div>
            </div>
        </main>
        <jsp:include page="footer.jsp"></jsp:include>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
    </body>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/7.2.0/mdb.umd.min.js"></script>
</html>
