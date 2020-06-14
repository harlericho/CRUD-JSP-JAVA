<%-- 
    Document   : editPersons
    Created on : Jun 8, 2020, 12:41:08 PM
    Author     : Charlie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Template/header.jsp" %> 
<%@page import="java.sql.*"%>
<jsp:useBean id="crud" class="com.controllers.crud" scope="page"></jsp:useBean> <!--We call the class where the SQL crud -->
    <!DOCTYPE html>
<%
    int per=0;
    if (request.getParameter("cod") != null) {
        per = Integer.parseInt(request.getParameter("cod"));
    }
    ResultSet res = crud.getPersons(per);
%>
<br><br>
<div class="container">
    <div class="row">
        <div class="mx-auto">
            <h1>EDIT PERSONS</h1>
            <% while (res.next()) {%>
            <form method="post" action="persona.jsp">
                <div class="form-group">
                    <input type="hidden" id="txtid" name="txtid" value="<%= res.getString(1)%>">
                    <label for="exampleInputPassword1">Name:</label>
                    <input type="text" class="form-control" id="txtname"
                    value="<%= res.getString(2)%>" name="txtname" required="">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Email:</label>
                    <input type="email" class="form-control" id="txtemail"
                    value="<%= res.getString(3)%>" name="txtemail" aria-describedby="emailHelp" required="">
                </div>
                <button type="submit" class="btn btn-primary" name="btnEdit"> <i class="fa fa-edit"></i> Edit</button>
                <br><br>
                <div class="form-group">
                    <a href="index.jsp">Go to start</a>
                </div>
            </form>
            <%}%>  
        </div>
    </div>
</div>
<%@include file="Template/footer.jsp" %> 