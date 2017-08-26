<%-- 
    Document   : consultas2
    Created on : 23/03/2017, 07:35:37 AM
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
            
            //variables para la conexion
            Connection con= null;
            Statement sta= null;
             ResultSet rs=null;
            try{
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                con = DriverManager.getConnection("jdbc:mysql://localhost/DyA","root","n0m3l0");
                sta = con.createStatement();
            }catch(Exception error){
                out.print(error.toString()+"no conecto");
            }
            
            try{
               rs= sta.executeQuery("SELECT* FROM formularito");
               out.println("<table border='1'");
               while(rs.next()){
                   
                   String nom= rs.getString("nombre");
                   String ap= rs.getString("a_paterno");
                   String am= rs.getString("a_materno");
                   String es= rs.getString("escuela");
                   out.println("<tr>");
                   out.print("<td>" + nom+"</td><td>" + ap+"</td><td>"+am+"</td><td>"+es+"</td>");
                  
                   
                   
               }
                out.println("<script> alert('son todos') </script>");
               //out.print("<META HTTP-EQUIV='REFRESH' CONTENT='.1;URL=http://localhost:8080/ABCCcompleto/'/>");
            }catch(Exception error){
                out.print(error.toString());
            }
            con.close();
            rs.close();
            %>
    </body>
</html>
