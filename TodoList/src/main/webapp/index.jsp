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
          <%
          	//자바 코드 영역
          	String str = "Java Code";
          %>
          <tbody>
            <tr class="table-light">
            
            <td class="ng-binding">1
            </td>
            <td class = "task"><%= str %></td>
            <td class="ng-binding">In progress</td>
            <td>
              <button class="btn btn-danger" >
                Delete
              </button>
              <button class="btn btn-success" >
                Finished
              </button>
            </td>
          </tr>
          <tr class="table-success">
            <td class="ng-binding">2</td>
            <td class="complete">
              bbb
            </td>
            <td class="ng-binding">Completed</td>
            <td>
              <a href="https://www.google.com">
                <button class="btn btn-danger" >
                  Delete
                </button>
              </a>
              <a href="https://www.naver.com">
                <button class="btn btn-success" >
                  Finished
                </button>
              </a>
            </td>
          </tr>
          </tbody>
        </table>
      </div>
    </div>
</body>
</html>








