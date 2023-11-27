<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HTTP(브라우저) 요청 정보</title>
</head>
<body>

	<h3>
		<a href="/JspMySQL/index.jsp">index.jsp
		</a>
	</h3>
	
	요청정보 인코딩 : <%= request.getCharacterEncoding() %>
	</br>
	요청정보 전송 방식 : <%= request.getMethod() %>
	</br>
	요청 URL : <%= request.getRequestURL()%>
	</br>
	컨텍스트 경로 : <%=request.getContextPath() %>
	</br>
	서버이름 : <%= request.getServerName() %>
	</br>
	서버포트 : <%= request.getServerPort() %>
	</br>
	
	
</body>
</html>