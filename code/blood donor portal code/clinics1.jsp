

<%
   String state=request.getParameter("state").toString();
   session.setAttribute("state",state);
  
 %>
 <form action="clinics2.jsp">
<table align="Center">
 <tr>
  <td><font color="green">Select City <td><td>
                            
							<%if(state.equals("andhrapradesh"))
							    { %>
							<select name="city">
							<option value="hyderabad">HyderaBad</option>
							<option value="Warangal">Warangal </option>
							<option value="Vijayawada">Vijayawada </option>
							<option value="Kakinada ">Kakinada </option>
							<option value="Rajamundry">Rajamundry </option>
							</select>
							     <% } else if(state.equals("MadhyaPradesh"))
							    { %>
							<select name="city">
							<option value="mpHyderabad">mpHyderaBad</option>
							<option value="mpWarangalr">mpWarangal </option>
							<option value="mpVijayawad">mpVijayawada </option>
							<option value="mpKakinada">mpKakinada </option>
							<option value="mpRajamundry">mpRajamundry </option>
							</select> 
								  
								 <% } else if(state.equals("Maha Rastra"))
							    { %>
							<select name="city">
							<option value="mhHyderabad">mhHyderaBad</option>
							<option value="mhWarangalr">mhWarangal </option>
							<option value="mhVijayawadaj">mhVijayawada </option>
							<option value="mhKakinadad">mhKakinada </option>
							<option value="mhRajamundry">mhRajamundry </option>
							</select> 
                                   <%}
								  %>

                         </td>
						 
  </tr>
  <tr><td colspan="3"><center><input type="submit" value="next"></center></tr>
  </table>


