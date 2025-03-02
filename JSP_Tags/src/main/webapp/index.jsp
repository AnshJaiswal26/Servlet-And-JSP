<%--
  Created by IntelliJ IDEA.
  User: Ansh jaiswal
  Date: 04-02-2025
  Time: 04:48 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--     Implicit Objects--%>
    <%
        String name = "Ansh Jaiswal";
        out.println(name);
    %>
    <%
      session.setAttribute("session_name", "Ansh Jaiswal");
    %>

<%--    Expression Language--%>
<%--    we can use logical, conditional, relational, arithmetic operators in expression language--%>
    ${10+5}
<%--    To get attributes from sessions we can directly use session name which is provided by us--%>
    ${session_name}

    <form action="output.jsp" method="get">
        <input type="text" name="name1" placeholder="Search here">
        <input type="submit" value="Submit">
    </form>
</body>
</html>
