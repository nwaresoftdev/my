<%@ page import="java.util.*"%>
<%@ include file="removecache.jsp"%>
<%

	session.removeAttribute("user");
	session.removeAttribute("password");
	 out.println("<script>parent.location.href='homelink.html'</script>");
	
%>