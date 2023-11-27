<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="/JspMySQL/jsp/ex01.jsp">ex01.jsp</a>
	</br>
	
	<p><%=request.getContextPath() %></p>
	
	<a href="/<%=request.getContextPath() %>/jsp/ex02.jsp">ex02.jsp</a>
	
</body>
</html>