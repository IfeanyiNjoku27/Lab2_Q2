<html>
<body>
<%@ page import="java.time.LocalTime" %>
<%
    LocalTime time = LocalTime.now();
    int hour = time.getHour();
    String greeting = (hour < 12) ? "Good morning" : "Good afternoon";
%>
<h2><%= greeting %>, Ifeanyi, Welcome to COMP367</h2>
</body>
</html>
