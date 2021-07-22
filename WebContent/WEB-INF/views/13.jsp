<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
    
<%@ page import="java.util.List" %>       
<%@ page import="vo.UserVo" %>    
    
<%

	List<UserVo> userList = (List<UserVo>)request.getAttribute("userList");

%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table border="1">
		<thead>
			<tr>
				<td>no</td>
				<td>name</td>
				<td>email</td>
				<td>password</td>
				<td>gender</td>
			</tr>
		</thead>
		
		<tbody>
		<%for(int i=0; i<userList.size(); i++) { %>
			<tr>
				<td><%=userList.get(i).getNo() %></td>
				<td><%=userList.get(i).getName() %></td>
				<td><%=userList.get(i).getEmail() %></td>
				<td><%=userList.get(i).getPassword() %></td>
				<td><%=userList.get(i).getGender() %></td>
			</tr>
			
		<%} %>
		</tbody>
	</table>
	
	<br><br><br>
	
	
	<table border="1">
		<thead>
			<tr>
				<td>no</td>
				<td>name</td>
				<td>email</td>
				<td>password</td>
				<td>gender</td>
			</tr>
		</thead>
		
		<tbody>
		<%for(UserVo userVo : userList) { %>
			<tr>
				<td><%=userVo.getNo() %></td>
				<td><%=userVo.getName() %></td>
				<td><%=userVo.getEmail() %></td>
				<td><%=userVo.getPassword() %></td>
				<td><%=userVo.getGender() %></td>
			</tr>
			
		<%} %>
		</tbody>
	</table>
	
	
	<br><br><br>
	
	
	
	<table border="1">
		<thead>
			<tr>
				<td>no</td>
				<td>name</td>
				<td>email</td>
				<td>password</td>
				<td>gender</td>
				<td>index</td>
				<td>count</td>
				
			</tr>
		</thead>
		
		<tbody>
			<c:forEach items="${userList}" var="userVo" varStatus="status" begin="5" end="10" step="3"> <!-- var은 여기서 사용할 이름, 스테이터스는 일련번호, begin,end 는 구간 설정, step은 간격 -->
				<tr>
					<td>${userVo.no }</td> <!-- getter가 실행되는것, getNo() -->
					<td>${userVo.name }</td>
					<td>${userVo.email }</td>
					<td>${userVo.password }</td>
					<td>${userVo.gender }</td>
					<td>${status.index }</td> <!-- 0번부터 매겨지는 일련번호 -->
					<td>${status.count }</td> <!-- 1번부터 매겨지는 일련번호, 갯수 -->
				</tr>
			</c:forEach>	
		</tbody>
	</table>
	
	
	

</body>
</html>