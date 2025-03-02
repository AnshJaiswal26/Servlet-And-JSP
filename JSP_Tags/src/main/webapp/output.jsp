<%--
  Created by IntelliJ IDEA.
  User: Ansh jaiswal
  Date: 04-02-2025
  Time: 05:11 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        String name = request.getParameter("name1");
        out.print(name);
    %>
    <%
        String name2 = (String) session.getAttribute("session_name");
        out.print(name2);
    %>

<%--    demo--%>
    <%
        request.setAttribute("name_key", "...Java");
    %>
<%--    To get attribute from request we will use requestScope--%>
    ${requestScope.name_key}
<%--And to get value from requestParameter we will use param.name..--%>
    ${param.name1}
</body>
</html>
