<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<%@ taglib uri="/WEB-INF/date-tag.tld" prefix="date" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Today Date</title>
</head>
<body>

	<p>Today : <date:date date=""> </date:date> </p>

</body>
</html>