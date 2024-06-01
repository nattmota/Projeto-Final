<%-- 
    Document   : listar-produtos
    Created on : 05/05/2024, 14:15:08
    Author     : natan


--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Produtos</title>
    </head>
    <body>
        <jsp:include page="header.jsp" ></jsp:include>
        <jsp:include page="produto.jsp" ></jsp:include>
        <jsp:include page="footer.jsp" ></jsp:include>
        <%-- //<button onclick="showAlert8(event)""></button>
<script>
                                                     function showAlert8(event) {
                                                           event.preventDefault();
                                                           swal('Opa! Calma ae...', 'Você já tem esse produto adicionadoListadeDesejos','success0');
                                               </script> --%>
    </body>
</html>
