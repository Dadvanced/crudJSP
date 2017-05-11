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
         
    </head>
    <body>
        <% request.setCharacterEncoding("UTF-8"); %>
        <div class="panel-heading text-center">Modificación de ratón
        </div>
        <div class="container">
            <div class="row">
                <form method="get" action="ratonModificado.jsp">

                    <div class="col-md-4 col-md-offset-4">
                        <div class="form-group">
                            <div class="input-group">
                                <input type="hidden" name="ID" class="form-control" value="<%=request.getParameter("ID") %>" aria-describedby="sizing-addon2">
                            </div>

                            <div class="input-group">
                                <span class="input-group-addon" id="sizing-addon2">Marca</span>
                                <input type="text" name="marca" class="form-control" value="<%=request.getParameter("marca") %>" placeholder="<%=request.getParameter("marca") %>" aria-describedby="sizing-addon2">
                            </div>

                            <div class="input-group">
                                <span class="input-group-addon" id="sizing-addon2">Tipo</span>
                                <input type="text" name="tipo" class="form-control" value="<%=request.getParameter("tipo") %>" placeholder="<%=request.getParameter("tipo") %>" aria-describedby="sizing-addon2">
                            </div>

                            <div class="input-group">
                                <span class="input-group-addon" id="sizing-addon2">Precio</span>
                                <input type="number" name="precio" class="form-control" value="<%=Float.valueOf(request.getParameter("precio")) %>" placeholder="<%=request.getParameter("precio") %>" aria-describedby="sizing-addon2">
                             </div>
                        </div>
                         <button type="submit" class="btn btn-success">Aceptar</button>
                         <button type="button" class="btn btn-danger" onclick="cancelar()">Cancelar</button>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
