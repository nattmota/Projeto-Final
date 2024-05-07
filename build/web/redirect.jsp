<%--
Views should be stored under the WEB-INF folder so that
they are not accessible except through controller process.

This JSP is here to provide a redirect to the dispatcher
servlet but should be the only JSP outside of WEB-INF.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% response.sendRedirect("./login"); %>
<link href="./style/footer.css" rel="stylesheet" type="text/css"/>
<link href="./style/header.css" rel="stylesheet" type="text/css"/>
<link href="./style/login.css" rel="stylesheet" type="text/css"/>
<link href="./style/cadastro-produto.css" rel="stylesheet" type="text/css"/>
<link href="./style/index.css" rel="stylesheet" type="text/css"/>
<link href="style/produto-especfico.css" rel="stylesheet" type="text/css"/>
<link href="./style/categorias.css" rel="stylesheet" type="text/css"/>