<%@ page import="java.util.Properties" %>
<%@ page import="java.util.*" %>

<%
Properties p = System.getProperties();

Set<String> keys = new TreeSet(p.stringPropertyNames());
for (final String key : keys)
  out.println(key + " : " + p.getProperty(key) + "<br>");
%>