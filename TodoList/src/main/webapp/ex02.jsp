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
              <th>No.</th>
              <th>Todo item</th>
              <th>status</th>
              <th>Actions</th>
            </tr>
          </thead>
          
          <tbody>
            <%
          	//자바 코드 영역
          		for (int i = 0; i<5; i++)
          		
          		{
          		%>
          			<!-- html영역 -->
          		<tr
            		ng-repeat="task in tasks"
            		class="table-light"
          				>
            
            		<td class="ng-binding"><%= i %>
            		</td>
            		<%
            			if (i % 2 == 0)
            			{%>
            				<td class = "task">짝수 영역이야 !</td>
            				
            			<% }
            			else 
            			{%>
            				<td class = "task">홀수  영역이야 !</td>
            			<% }
            		%>
            		<td class="ng-binding">In progress</td>
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

          	%>
          </tbody>
        </table>
      </div>
    </div>
</body>
</html>