<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	pageContext.setAttribute("nameP", "name");
	request.setAttribute("nameR", "request name");
	session.setAttribute("nameS", "session name");
	application.setAttribute("name", "application name");
		
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>범주 우선순위</h1>
	
	page name = <%=pageContext.getAttribute("name") %> <br> <!-- 자바코드에서는 생략불가능  -->
	request name = <%=request.getAttribute("name") %> <br>
	session name = <%=session.getAttribute("name") %> <br>
	application name = <%=application.getAttribute("name") %> <br>
	
	<br><br><br>
	
	<h2>el</h2>
	page name = ${pageScope.name} <br>
	request name = ${requestScope.name} <br>
	session name = ${sessionScope.name} <br> <!-- 나머지는 잘 안쓰고 리퀘스트랑 세션만 잘 구분 -->
	application name = ${applicationScope.name} <br>
	<br><br>
	
	name = ${name }
	
</body>
</html>