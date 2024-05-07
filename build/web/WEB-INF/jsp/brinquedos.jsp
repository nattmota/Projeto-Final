<%-- 
    Document   : brinquedos
    Created on : 06/05/2024, 16:30:23
    Author     : Senai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="header.jsp" ></jsp:include>
        <section class="show-products">
            <div class="h1-text">
                <h1>BRINQUEDOS EDUCATIVOS</h1>
            </div>
            <jsp:include page="produto.jsp" ></jsp:include>
        </section>
        <jsp:include page="footer.jsp" ></jsp:include>
    </body>
</html>
