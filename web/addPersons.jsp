<%-- 
    Document   : addPersons
    Created on : Jun 8, 2020, 12:04:02 PM
    Author     : Charlie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Template/header.jsp" %> 
<!DOCTYPE html>
<br><br>
<div class="container">
    <div class="row">
        <div class="mx-auto">
            <h1>ADD PERSONS</h1>
            <form method="post" action="persona.jsp">
                <div class="form-group">
                    <label for="exampleInputPassword1">Name:</label>
                    <input type="text" class="form-control" id="txtname" name="txtname" required="">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Email:</label>
                    <input type="email" class="form-control" id="txtemail" name="txtemail" aria-describedby="emailHelp" required="">
                </div>
                <button type="submit" class="btn btn-dark" name="btnSave"> <i class="fa fa-save"></i> Save</button>
                <br><br>
                <div class="form-group">
                    <a href="index.jsp">Go to start</a>
                </div>
            </form>
        </div>
    </div>
</div>
<%@include file="Template/footer.jsp" %> 