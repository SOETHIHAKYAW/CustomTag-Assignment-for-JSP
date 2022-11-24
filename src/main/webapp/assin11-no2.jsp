<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<%@ taglib uri="/WEB-INF/date-tag.tld" prefix="date" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Utility function of JSTL </title>
</head>
<body>
	<h3>***** ALL FUNCTIONS IN JSTL *****</h3> <p></p>
	<c:set var="sentence" value="Hello,I'm Mr.Michael who loves CS"></c:set>
	<h3>${sentence}</h3>
	
	<p> SubString Test : ${fn:substring(sentence,0,20)} </p>
	<p> String After : ${fn:substringAfter(sentence,",")} </p>
	<p> String Before : ${fn:substringBefore(sentence,",")} </p>
	
	<p> Replace with "Nature" : ${fn:replace(sentence,"CS","Nature")} </p>
	
	<c:if test="${fn:contains(sentence,'Hello') }">
		<p> This sentence Contained Hello</p> 
	</c:if>
	
	<c:if test="${fn:containsIgnoreCase(sentence,'Hello') }">
		<p> Contains Ignore Case with Hello</p>
	</c:if>
	
	<c:if test="${fn:endsWith(sentence,'CS') }">
		<p>Yes,it is end with CS</p>
	</c:if>
	
	<c:set var="xml" value="It is <xyz>xml String.</xyz>"/>  
	<p> This is xmlTag Test : ${fn:escapeXml(xml)} </p>
	
	<p> Index of Michael : ${fn:indexOf(sentence,"Michael")} </p>
	
	<c:set var="trim" value="${fn:trim(sentence) }"></c:set>
	<p>The length whithout Trim : ${fn:length(sentence) } </p>
	<p>The length with Trim : ${fn:length(trim) } </p>
	
	<p> Start with "Hello" : ${fn:startsWith(sentence,"Hello")} </p>
	
	<c:set var="str1" value="Welcome-to-JSP-Programming."/>  
	<c:set var="str2" value="${fn:split(str1, '-')}" />  
	<c:set var="str3" value="${fn:join(str2, ' ')}" />  
	<p> Split and Join : ${str3} </p>
	
	<p>Lower Case : ${fn:toLowerCase(sentence) } </p>
	<p>Upper Case : ${fn:toUpperCase(sentence)} </p>

</body>
</html>