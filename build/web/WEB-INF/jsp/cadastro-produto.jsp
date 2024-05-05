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
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="header.jsp" ></jsp:include>
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

                </div>
            </div>
        </main>
        <section class="upper-footer" id="footer">
            <div class="column-dp">
                <h4>Departamentos</h4>
                <p><a href="#">Início</a></p>
                <p><a href="#">Livros</a></p>
                <p><a href="#">Presentes</a></p>
                <p><a href="#">Bíblias</a></p>
                <p><a href="#">Brinquedos educativos</a></p>
                <p><a href="#">Quem somos</a></p>
                <p><a href="#">Contato</a></p>
            </div>
            <div class="column-empresa">
                <h4>Diretrizes da empresa</h4>
                <p><a href="#">Missão, Visão, Valores</a></p>
                <p><a href="#">Como Comprar</a></p>
                <p><a href="#">Trocas e Devoluções</a></p>
                <p><a href="#">Perguntas Frequentes</a></p>
                <p><a href="#">Política de Privacidade</a></p>
                <p><a href="#">Termos de Uso</a></p>
                <p><a href="#">Política de Reembolso</a></p>
            </div>
            <div class="contato">
                <h4>Entre em contato</h4>
                <div class="div-contato">
                    <a href=""><i class="fa-brands fa-whatsapp"></i>5543999752103</a>
                </div>
                <br/>
                <div class="div-contato">
                    <a href=""><i class="fa-solid fa-phone"></i>(43) 3028-3484</a>
                </div>
                <br/>
                <div class="div-contato">
                    <i class="fa-solid fa-envelope"></i>
                    <span>contato@komunhao.com.br</span>
                </div>
                <br/>
                <div class="div-contato">
                    <i class="fa-solid fa-location-dot"></i>
                    <span>Rua Barão de Loreto, 15 Vila Fujita - Londrina - PR</span>
                </div>
            </div>
            <div class="sociais">
                <h4>Permaneça conectado</h4>
                <button><a href="#"><i class="fa-brands fa-instagram"></i></a></button>
                <button><a href="#"><i class="fa-brands fa-facebook"></i></a></button>
            </div>
        </section>
        <footer>
            <div class="text-footer">
                <span>Copyright KOMUNHÃO LIVRARIA CRISTÃ - 20860874000126 - 2024. Todos os direitos reservados.</span>
            </div>
        </footer>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
                crossorigin="anonymous"></script>
    </body>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/7.2.0/mdb.umd.min.js"></script>
</html>
