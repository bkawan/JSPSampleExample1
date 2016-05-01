<%-- 
    Document   : index
    Created on : Apr 28, 2016, 1:52:39 PM
    Author     : bikeshkawan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.bk.jspexample1.entity.Student" %>
<!-- Using JSTl to use for loop-->
<%--<%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>--%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<jsp:useBean id="student" class="com.bk.jspexample1.entity.Student" scope="session"></jsp:useBean>
    <!--    To get student data -->
<jsp:useBean id="stdData" class="com.bk.jspexample1.data.StudentData"></jsp:useBean>
<jsp:setProperty name="student" property="firstName" value="Bikesh"></jsp:setProperty>
    <!DOCTYPE html>
    <html>
        <head>
            <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
            <link href="assets/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
            <title>JSP Example 1</title>
        </head>
        <body>
            <div class="container">
                <h1>JSP Example 1</h1>
                <hr>
            <jsp:getProperty name="student" property="firstName"/>
            <a href="detail.jsp">Click Here </a>

            <hr>
            <!--                  using expression language-->
            ${student.getFirstName()}
            <hr>
            <h3>Using JSTL</h3>
            <c:forEach begin="1" end="5" var="i">
                <h6>${student.getFirstName()} ${i}</h6>

            </c:forEach>

            <div>
                <h1>List of student </h1>
                <table class="table table-bordered table-striped table-hover">
                    <thead>
                        <tr>
                            <td>ID</td>
                            <td>Name</td>
                            <td>Email</td>
                            <td>Address</td>
                            <td>Contact</td>
                            <td>Status</td>
                        </tr>
                    </thead>
                    <tbody>



                        <c:forEach var="std" items="${stdData.getAll()}">

                            <tr>



                                <td>${std.getId()}</td>
                                <td>${std.getFirstName()} ${std.getLastName()}</td>
                                <td>${std.getEmail()}</td>
                                <td>${std.getAddress()}</td>
                                <td>${std.getContactNo()}</td>
                                <td>True</td>





                            </tr>

                        </c:forEach>

                    </tbody>

                </table>                         
            </div>



        </div>
    </body>
</html>
