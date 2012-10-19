<%! 
  String user=null;
  %>
  <%
    user=session.getAttribute("user").toString();
   %>
   <br><br><br><h4> <font color="red">WelCome To <%=user %> </h4>
