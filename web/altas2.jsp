<%-- 
    Document   : altas2
    Created on : 22/03/2017, 08:17:53 AM
    Author     : CECyT9
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="java.sql.*,java.io.*" %>
        <%
            String nombre = request.getParameter("nombre");
            String apaterno = request.getParameter("apaterno");
            String amaterno = request.getParameter("amaterno");
            String escuela = request.getParameter("escuela");
            //variables para la conexion
            Connection con= null;
            Statement sta= null;
            
            try{
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                con = DriverManager.getConnection("jdbc:mysql://localhost/DyA","root","n0m3l0");
                sta = con.createStatement();
            }catch(Exception error){
                out.print(error.toString()+"no conecto");
            }
            
            try{
               sta.executeUpdate( "INSERT INTO formularito VALUES('"+nombre+"','"+apaterno+"','"+amaterno+"','"+escuela+"');");
               out.println("<script> alert('Registro dado de alta exitosamente.') </script>");
               con.close();
               out.print("<META HTTP-EQUIV='REFRESH' CONTENT='.0000001;URL=http://localhost:8080/Formulario/>");
            }catch(Exception error){
                out.print(error.toString());
            }
            con.close();

            %>
    </body>
</html>
