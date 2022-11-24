<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    
    <%@taglib uri="/WEB-INF/my-caculation.tld" prefix="myCaculation"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Caculation</title>
</head>
<body>
	
	<myCaculation:mycaculation opt="-" num2="2" num1="2"></myCaculation:mycaculation>

</body>
</html>