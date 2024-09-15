<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List of Users</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    </head>
    <body>
        <%@include file="components/header.jsp"%>
        <main class="container-fluid">
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Name</th>
                        <th>Lastname</th>
                        <th>Username</th>
                        <th>E-Mail</th>
                        <th>D.N.I.</th>
                        <th>Phone</th>
                        <th>Birhdate</th>
                        <th>Gender</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${users}" var = "user">
                    <tr>
                        <td>${user.getId()}</td>
                        <td>${user.getName()}</td>
                        <td>${user.getLastname()}</td>
                        <td>${user.getUsername()}</td>
                        <td>${user.getEmail()}</td>
                        <td>${user.getDni()}</td>
                        <td>${user.getPhone()}</td>
                        <td>${user.getBirthdate()}</td>
                        <td>${user.getGender()}</td>
                        <form action="user" method="post">
                            <td><button type="submit" class="btn btn-info" value="${user.getId()}">Update</button></td>
                            <td><button type="submit" class="btn btn-danger" value="${user.getId()}">Delete</button></td>
                        </form>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>

        </main>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>
