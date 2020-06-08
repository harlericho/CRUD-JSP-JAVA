<%-- 
    Document   : index
    Created on : Jun 8, 2020, 10:04:23 AM
    Author     : Charlie
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Template/header.jsp" %> 
<jsp:useBean id="crud" class="com.controllers.crud" scope="page"></jsp:useBean><!--We call the class where the SQL crud -->
    <div class="container">
        <h1>CRUD DATA</h1>
        <div class="row">
            <div class="mx-auto table-responsive-sm">
                <a href="addPersons.jsp" class="btn btn-outline-dark" title="Add">
                    <i class="fa fa-user-plus"></i> Add
                </a>
                <br><br>
                <table class="table">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Name</th>
                            <th scope="col">Email</th>
                            <th scope="col">Date</th>
                            <th scope="col">Actions</th>
                        </tr>
                    </thead>
                <%
                    ResultSet rs = crud.getALLPersons();
                %>
                <tbody>
                    <%while (rs.next()) {
                    %>
                    <tr>
                        <th scope="row"><%= rs.getString(1)%></th>
                        <td><%= rs.getString(2)%></td>
                        <td><%= rs.getString(3)%></td>
                        <td><%= rs.getString(4)%></td>
                        <td>
                            <a href="editPersons.jsp?cod=<%= rs.getString(1)%>" class="btn btn-outline-primary btn-sm" title="Edit">
                                <i class="fa fa-edit"></i>
                            </a>
                            <a href="persona.jsp?cod=<%= rs.getString(1)%>" class="btn btn-outline-danger btn-sm" title="Delete">
                                <i class="fa fa-trash"></i>
                            </a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
    </div>
</div>
<%@include file="Template/footer.jsp" %>
