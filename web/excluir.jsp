<%-- 
     Document   : home
    Created on : 10/05/2020, 16:26:43
    Author     : Priscila Nascimento
--%>

<%@page import="contato.Db"%>
<%@page import="contato.Dados"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Dados contato = new Dados(null,null,null);
    if(request.getParameter("index") !=null){
        int index = Integer.parseInt(request.getParameter("index"));
        contato = Db.getDados().get(index);
    }
    if(request.getParameter("cancel") !=null){
        response.sendRedirect("index.jsp");
    }if(request.getParameter("remove") !=null){
        int index = Integer.parseInt(request.getParameter("index"));
        Db.getDados().remove(index);
        response.sendRedirect("index.jsp");
    }
%>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="CSS/main.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir</title
        
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf"%>
        <center>
        <h2>Excluir</h2>
        <form>
            Deseja realmente excluir o <br/>
            Indice<br/><b><%= request.getParameter("index") %></b><br/>
            <input type="hidden" name="index" value="<%= request.getParameter("index") %>"/> <br/>
            <input type="submit" class="botão" name="remove" value="Excluir"/>
            <input type="submit" class="botão" name="cancel" value="Cancelar"/>
            </center>
        </form>
            <%@include file="WEB-INF/jspf/footer.jspf"%>
    </body>
</html>