<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
        
        <META HTTP-EQUIV="REFRESH" CONTENT="5; URL=index.jsp"> 
    </head>
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/ratonleon","root", "");
            Statement s = conexion.createStatement();
            s.execute ("DELETE FROM ratones WHERE idRaton=" + request.getParameter("ID"));
        %>
        <div class="alert alert-danger" role="alert">Se ha borrado el ratón seleccionado</div> 
    </body>
</html>
