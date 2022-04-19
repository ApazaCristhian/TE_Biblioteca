

<%@page import="com.emergentes.modelos.Categoria"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelos.Libros"%>
<%
    if (session.getAttribute("biblioteca") == null) {
        ArrayList<Libros> lisaux = new ArrayList<Libros>();
        session.setAttribute("biblioteca", lisaux);
    }

    if (session.getAttribute("cates") == null) {
        ArrayList<Categoria> liscat = new ArrayList<Categoria>();
        liscat.add(new Categoria(1, "Literatura"));
        liscat.add(new Categoria(2, "Cientificos"));
        liscat.add(new Categoria(3, "Matematicas"));
        session.setAttribute("cates", liscat);
    }
%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Libros</title>
    </head>
    <body>
        <h1>Biblioteca</h1>
        <ul>
            <li><a href="libros.jsp">Libros</a></li>
            <li><a href="categorias.jsp">Categorias</a></li>
        </ul>
    </body>
</html>
