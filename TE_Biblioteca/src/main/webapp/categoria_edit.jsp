
<%@page import="com.emergentes.modelos.Categoria"%>
<%
    Categoria item = (Categoria) request.getAttribute("item");
    String tipo = (String) request.getAttribute("tipo");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Categoria Edit</title>
    </head>
    <body>
         <h1><%= (tipo == "new") ? "Nuevo" : "Editar"%>Categoria</h1>
        <form action="CategoriaController" method="post">
            <input type="hidden" name="tipo" value="<%=tipo%>"/>
            <table>
                <tr>
                    <td>Id</td>
                    <td><input type="text" name="id" value="<%=item.getId()%>"/></td>
                </tr>
                <tr>
                    <td>Categoria</td>
                    <td><input type="text" name="categoria" value="<%=item.getCategoria() %>"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
