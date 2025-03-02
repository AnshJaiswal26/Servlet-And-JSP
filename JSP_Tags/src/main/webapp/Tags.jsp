<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP Example</title>
</head>
<body>
    <h3>Hello, JSP in IntelliJ!</h3>

    <%-- Declaration tags --%>
    <%!
        String name = "Ansh Jaiswal";
        int a = 10;
        int b = 20;

        int sq(){
            return a+b;
        }
    %>

    <%-- Scriplet tags --%>
    <%
        out.print("sum = "+sq());

        for(int i=1;i<=50;i++){
            out.print(i);
        }
    %>
    <%-- Expression tags --%>
    <%= name %>
    <%= a+b %>
    <%= sq() %>
    <%= Math.random() %>

</body>
</html>
