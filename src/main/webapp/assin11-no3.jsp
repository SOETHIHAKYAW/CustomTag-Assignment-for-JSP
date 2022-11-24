<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@ taglib uri="/WEB-INF/my-foreach-tag.tld" prefix="myforeach" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Custom My foreach Tag</title>
</head>
<body>

<%-- 	<c:forEach var="num" begin="1" end="10" step="1"></c:forEach> --%>
<%-- 	<p>Loop : ${num} </p> --%>
	
	<myforeach:myforeach begin="1" end="10" step="2"></myforeach:myforeach>

</body>
</html>