<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>table users</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>
<body>
    <div class="container mt-5">
        <div class="row">
            <div class="col-12 mx-auto">
                <div class="d-flex justify-content-between">
                    <h3 >List users</h3>
                    <a href="/admin/user/create" class="btn btn-primary">create user</a>
                </div>
                <hr>
                <table class="table table-bordered table-hover">
                    <thead>
                      <tr>
                        <th scope="col">#</th>
                        <th scope="col">Email</th>
                        <th scope="col">fullName</th>
                        <th scope="col">Action</th>
                      </tr>
                    </thead>
                    <tbody>
                      <c:forEach var="user" items="${Model_users}">
                          <tr>
                              <td>${user.id}</td>
                              <td>${user.email}</td>
                              <td style="text-align: center">${user.fullname}</td>
                              <td >
                                  <button class="btn btn-success">View</button>
                                  <button class="btn btn-warning">update</button>
                                  <button class="btn btn-danger">Delete</button>
                               </td>
                          </tr>
                      </c:forEach>
                    </tbody>
                  </table>
            </div>
            
        </div>
    </div>
</body>
</html>