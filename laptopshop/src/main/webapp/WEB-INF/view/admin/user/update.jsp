<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Update - SB Admin</title>
        <link href="/css/styles.css" rel="stylesheet" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

        <script>
            $(document).ready(() => {
                const avatarFile = $("#avatarFile");
                avatarFile.change(function (e) {
                    const imgURL = URL.createObjectURL(e.target.files[0]);
                    $("#avatarPreview").attr("src", imgURL);
                    $("#avatarPreview").css({ "display": "block" });
                });
            });
        </script>
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <jsp:include page="../layout/header.jsp"/>
        <div id="layoutSidenav">
        <jsp:include page="../layout/sidebar.jsp"/>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Manage users</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"> <a href="/admin">Dashboard</a></li>
                            <li class="breadcrumb-item active">user</li>
                        </ol>
                        <div class="container mt-5">
                            <div class="row">
                                <div class="col-md-6 col-12 mx-auto">
                                    <h2>Update user</h2> <hr>
                                    <form:form class="row" method="POST" action="/admin/user/update" enctype="multipart/form-data" modelAttribute="currentUser">
                                        <div class="mb-3" style="display: none;">
                                            <label class="form-label">ID</label>
                                            <form:input type="text" path="id" class="form-control" />
                                        </div>
                                        <div class="mb-3 col-12 col-md-6">
                                            <label for="inputEmail4" class="form-label">Email</label>
                                            <form:input type="email" path="email" class="form-control" disabled="true" id="inputEmail4"/>
                                          </div>
                                          <div class="mb-3 col-12 col-md-6">
                                            <label for="inputPassword4" class="form-label">Password</label>
                                            <form:input type="password" path="password" class="form-control" id="inputPassword4"/>
                                          </div>
                                          <div class="mb-3 col-12 col-md-6">
                                            <label for="phoneNumber" class="form-label">Phone number</label>
                                            <form:input type="text" path="phone" class="form-control" id="phoneNumber" placeholder="phone"/>
                                          </div>
                                          <div class="mb-3 col-12 col-md-6">
                                            <label for="fullname" class="form-label">Full name</label>
                                            <form:input type="text" path="fullname" class="form-control" id="fullname" placeholder="Full name"/>
                                          </div>
                                          <div class="mb-3 col-12">
                                            <label for="address" class="form-label">Address</label>
                                            <form:input type="text" path="address" class="form-control" id="address"/>
                                          </div>
                                          <div class="mb-3 col-12 col-md-6">
                                            <label for="role" class="form-label">Role</label>
                                            <form:select id="role" class="form-select" path="role.name">
                                              <form:option value="ADMIN">ADMIN</form:option>
                                              <form:option value="USER">USER</form:option>
                                            </form:select>
                                            <div class="mb-3 col-12 col-md-6">
                                                <label for="avatarFile" class="form-label">Avatar</label>
                                                <input class="form-control" type="file" id="avatarFile" 
                                                        accept=".png, .jpg, .jpeg" name="trantienloiFile"/>
                                            </div>
                                            <div class="mb-3 col-12">
                                               <img style="max-height: 250px; display: none;" alt="avatar preview"
                                                    id="avatarPreview">
                                            </div>
                                        <button type="submit" class=" mb-5 btn btn-warning">update</button>
                                    </form:form>
                                </div>
                            </div>
                            
                        </div>
                    
                    
                    </div>
                </main>
               <jsp:include page="../layout/footer.jsp" />
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="/js/scripts.js"></script>
    </body>
</html>
