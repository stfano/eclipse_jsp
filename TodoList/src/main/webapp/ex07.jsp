<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TodoList ver1</title>


    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.7.9/angular.min.js"></script>
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
      integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
      crossorigin="anonymous"
    />

    <link rel="stylesheet" href="./css/index.css" />
</head>

<body>
    <div
      class="app-container d-flex align-items-center justify-content-center flex-column"
      ng-app="myApp"
      ng-controller="myController"
    >
      <h3>Todo App</h3>
    <form action="https://www.daum.net">
      <div class="d-flex align-items-center mb-3">
        <div class="form-group mr-3 mb-0">
          <input
            type="text"
            class="form-control"
          />
        </div>
        <button
          type="submit"
          class="btn btn-primary mr-3"
          ng-click="saveTask()"
        >
          Save
        </button>
      </div>
    </form>
      <div class="table-wrapper">
        <table class="table table-hover table-bordered">
          <thead>
            <tr>
              <th>customerNumber</th>
              <th>city</th>
              <th>country</th>
              <th>Actions</th>
            </tr>
          </thead>
          
          <tbody>
          <%@ page import="java.sql.*" %>
            <%
          	//자바 코드 영역

	
	
				String url = "jdbc:mysql://localhost:3306/classicmodels";
				String user = "test";
				String password = "test1234";
	
				Connection conn=null;
				PreparedStatement pstmt=null;
				ResultSet rs = null;
            	
				try {
					Class.forName("com.mysql.jdbc.Driver");
					conn = DriverManager.getConnection(url, user, password);
					
					System.out.println("MySQL 연결 성공 ");
					
					String sql = "select * from customers limit 5;";
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					
					
					String tr_color = "";
					String td_color = "";
					while(rs.next()) {
						int customerNumber = rs.getInt("customerNumber");
						String city = rs.getString("city");
						String country = rs.getString("country");
						
						if (customerNumber >= 115)
						{
							tr_color = "table-warning";
							td_color = "complete";
						}
						else
						{
							tr_color = "table-success";
							td_color = "task";
						}
          		
          	%>
          			<!-- html영역 -->
          		<tr class=<%=tr_color %>>
          				
            		<td class="ng-binding">
            			<%= customerNumber %>
            		</td>
            		<td class =<%=td_color %>> 
            			<%= city %>
					</td>
            		<td class="ng-binding"> 
            			<%= country%>
            		</td>
            		
            		<td>
             		 <button class="btn btn-danger" ng-click="delete($index)">
               		 Delete
              		</button>
             		 <button class="btn btn-success" ng-click="finished($index)">
               		 Finished
              		</button>
            		</td>
          		</tr>
          		<%
          		
					}
					
				} catch(Exception e) {
					System.out.println("MySQL 연결 오류: "+e.getMessage());
				} finally {
					if(rs != null) {
						try{
							rs.close();
						}catch(SQLException sqle){
							System.out.println("MySQL 연결 오류: "+sqle.getMessage());
						}
					}
					if(pstmt != null) {
			 			try{
			 				pstmt.close();
			 			}catch(SQLException sqle){
			 				System.out.println("MySQL 연결 오류: "+sqle.getMessage());
			 			}
					}
			 		if(conn != null) {
			 			try{
			 				conn.close();
			 			}catch(SQLException sqle){
			 				System.out.println("MySQL 연결 오류: "+sqle.getMessage());
			 			}
			 		}
				}

          	%>
          </tbody>
        </table>
      </div>
    </div>
</body>
</html>