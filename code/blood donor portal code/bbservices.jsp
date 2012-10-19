
  <% String orgname=session.getAttribute("user").toString(); %>
   
    <h4><font color="red">WelCome  <%=orgname%> </font></h4>
	<%
	 out.println("<script>parent.location.href='link4.html'</script>");
	  %>



