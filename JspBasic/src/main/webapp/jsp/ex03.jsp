<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
		// 메서드 정의하는 영역
		public int sumAll(int num)
		{
			int total = 0;
			for (int i=1; i<= num; i++)
			{
				total += i;
			}
			return total;
		}
	%>
	
	<%
		// 스크립틀릿 : 연산, 처리를 하는 영역
		int num = 10;
		int total = sumAll(num);
		System.out.println("total : "+ total);
		
	%>
	<h3>1부터 <%= num %>까지 숫자의 합은 ? <%=total %></h3>

</body>
</html>