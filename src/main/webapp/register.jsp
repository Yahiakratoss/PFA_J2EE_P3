<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EBook: Register</title>
<%@include file="all_component/allCss.jsp" %>
</head>
<body style="background-color: #f0f1f2;">
<%@include file="all_component/navbar.jsp" %>
<div class="container p-2">
    <div class="row mt-3">
        <div class="col-md-4 offset-md-4 mt-4">
            <div class="card mt-4">
                <div class="card-body mt-4">
                    <h4 class="text-center">Registration Page</h4>
                    
                    <c:if test="${not empty succMsg}">
                        <p class="text-center text-success">${succMsg}</p>
                        <c:remove var="succMsg" scope="session"/>
                    </c:if>
                    
                    <c:if test="${not empty FailedMsg}">
                        <p class="text-center text-danger">${FailedMsg}</p>
                        <c:remove var="FailedMsg" scope="session"/>
                    </c:if>
                    
                    <form action="register" method="post">
                        <div class="form-group">
                            <label for="nameInput">Name</label>
                            <input type="text" required="required" class="form-control" id="nameInput" 
                                   aria-describedby="nameHelp" name="fname">
                        </div>
                        
                        <div class="form-group">
                            <label for="emailInput">Email address</label>
                            <input type="email" required="required" class="form-control" id="emailInput" 
                                   aria-describedby="emailHelp" name="email">
                        </div>
                        
                        <div class="form-group">
                            <label for="phoneInput">Phone No</label>
                            <input type="number" required="required" class="form-control" id="phoneInput" 
                                   aria-describedby="phoneHelp" name="phno">
                        </div>
                        
                        <div class="form-group">
                            <label for="passwordInput">Password</label>
                            <input type="password" required="required" class="form-control" 
                                   id="passwordInput" name="password">
                        </div>
                        
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" name="check" id="termsCheck">
                            <label class="form-check-label" for="termsCheck">Agree terms & Condition</label>
                        </div>
                        
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="all_component/footer.jsp" %>
</body>
</html>