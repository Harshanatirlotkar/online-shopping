<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring"  uri="http://www.springframework.org/tags" %>

<spring:url var="css" value="/resources/css"></spring:url>
<spring:url var="js" value="/resources/js"></spring:url>
<spring:url var="images" value="/resources/images"></spring:url>


<c:set var="contextRoot" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- <html> -->
<!-- <head> -->
<!-- <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> -->
<!-- <title>Online shopping</title> -->
<!-- </head> -->
<!-- <body> -->
<%-- 	${contextRoot} say - ${greeting} --%>
<!-- </body> -->
<!-- </html> -->


<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Shop shopping - ${title}</title>
    
    <script>
    	window.menu = "${title}";
   	</script>

    <!-- Bootstrap core CSS -->
    <link href="${css}/bootstrap.min.css" rel="stylesheet">

	<!-- Bootstrap readable theme -->
    <link href="${css}/bootstrap-readable-theme.css" rel="stylesheet">
    
    <!-- Custom styles for this template -->
    <link href="${css}/myapp.css" rel="stylesheet">

  </head>

  <body>
	<div class="wrapper" >
    <!-- Navigation -->
    <%@include file="./shared/navbar.jsp" %>

    <!-- Page Content -->
    
    <div class="content" >
   <!-- loading the home page -->
   <c:if test="${userClickedHome == true}">
   <%@ include file="home.jsp" %>
	</c:if>
	
	<!-- load only when user clicked about -->
   <c:if test="${userClickedAbout == true}">
   <%@ include file="about.jsp" %>
	</c:if>
	
	<!-- load only when user clicked contact -->
   <c:if test="${userClickedContact == true}">
   <%@ include file="contact.jsp" %>
	</c:if>
	</div>
	
	<!-- load only when user clicked  -->
   <c:if test="${userClickedAllProducts == true or userClickedCategoryProducts == true}">
   <%@ include file="listProduct.jsp" %>
	</c:if>
	</div>
	
    <!-- Footer -->
    <%@ include file="./shared/footer.jsp" %>

    <!-- Bootstrap core JavaScript -->
    <script src="${js}/jquery.js"></script>
    <script src="${js}/popper.min.js"></script>
    <script src="${js}/bootstrap.min.js"></script>

	<!-- self coded javascript -->
	<script src="${js}/myapp.js"></script>
	</div>
  </body>

</html>
