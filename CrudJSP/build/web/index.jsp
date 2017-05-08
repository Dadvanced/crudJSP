<%-- 
    Document   : index
    Description: Crud en JSP
    Author     : David León Galisteo
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ratonleon</title>
        
        <link rel="stylesheet" type="text/css" href="style.css">
        <script type="text/javascript" src="scripts.js"></script>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" 
        integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    </head>
    <body>
        <h1>Listado de ratones</h1>
        <br>
        <button type="button" class="btn btn-success" onclick='nuevo()'><span class="glyphicon glyphicon-plus-sign"></span></button>
        
        <div class="panel panel-default">
            <div class="panel-heading">Ratones</div>
                <table class="table" border="3">
                    <tr>
                        <td><b>MARCA</b></td><td><b>TIPO</b></td><td><b>PRECIO</b></td><td><b>Acciones</b></td>
                    </tr>
                <%
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/ratonleon","root", "");
                    Statement s = conexion.createStatement();

                    ResultSet listado = s.executeQuery ("Select * FROM ratones");


                    while (listado.next()) {
                        int idRaton = Integer.valueOf(listado.getString("ID"));
                        out.println("<tr>");
                        out.println("<td>" + listado.getString("MARCA") + "</td>");
                        out.println("<td>" + listado.getString("TIPO") + "</td>");
                        out.println("<td>" + listado.getString("PRECIO") + "</td>");
                        %>
                        <td>
                        <form action="borraRaton.jsp">
                            <input type="hidden" name="idRaton" />
                            <button type='submit' class='btn btn-danger'><span class="glyphicon glyphicon-remove-sign"></span></button>
                        </form>
                        <form method="get" action="editaRaton.jsp">
                            <input type="hidden" name="idRaton"/>
                            <input type="hidden" name="marca" value="<%=listado.getString("marca") %>">
                            <input type="hidden" name="tipo" value="<%=listado.getString("tipo") %>">
                            <input type="hidden" name="precio" value="<%=listado.getString("precio") %>">
                            <button type='submit' class='btn btn-warning'><span class="glyphicon glyphicon-edit"></span></button>
                        </form>
                        </td>
                        <%
                         } //while
                    conexion.close();
                %>
                </table>
            </div>
    </body>
</html>
