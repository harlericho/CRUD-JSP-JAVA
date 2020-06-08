<%-- 
    Document   : persona
    Created on : Jun 8, 2020, 11:28:34 AM
    Author     : Charlie
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="crud" class="com.controllers.crud" scope="page"></jsp:useBean><!--We call the class where the SQL crud -->
    <!DOCTYPE html>
<%
    //Aqui hacemos el controlador para realziar todos los crud
    //Guardar
    if (request.getParameter("btnSave") != null) {
        String name = request.getParameter("txtname");
        String email = request.getParameter("txtemail");
        crud.addPersons(name, email);
        out.println("<html><head></head><body onload=\"alert('Saved Data!!'); window.location='index.jsp' \"></body></html>");
    }
    
    //Eliminar
    if (request.getParameter("cod") != null) {
        int codigo = Integer.parseInt(request.getParameter("cod"));
        crud.deletePersons(codigo);
        out.println("<html><head></head><body onload=\"alert('Delete Data!!'); window.location='index.jsp' \"></body></html>");

    }
    
    //Modificar
    if (request.getParameter("btnEdit") != null) {
        int id=Integer.parseInt(request.getParameter("txtid"));
        String name = request.getParameter("txtname");
        String email = request.getParameter("txtemail");
        crud.updatePersons(id, name, email);
        out.println("<html><head></head><body onload=\"alert('Update Data!!'); window.location='index.jsp' \"></body></html>");

    }


%>
