<%-- 
    Document   : home
    Created on : 10/05/2020, 16:26:43
    Author     : Priscila Nascimento
--%>

<%@page import="contato.Db"%>
<%@page import="contato.Dados"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="CSS/main.css">
        <title>Home</title>
    </head>
    <body>
        
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <%
            int cont = 0;
            
            for(Dados a : Db.getDados()){
                cont+=1;
            }
        %>
        <main>
            
            <div class="team">
                <h2>Total de cadastrados</h2>
                <div class="pe">
                    <h3>Nome</h3>
                    <p>N° de nome: <%=cont%></p>
                </div>
                <div class="pe">
                    <h3>E-mail</h3>
                    <p>N° de email: <%=cont%></p>
                </div>
                <div class="pe">
                    <h3>Telefone</h3>
                    <p>N° de telefone: <%=cont%></p>
                </div>
            </div>
        </main>
        <br><br><br>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
