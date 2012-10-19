

<%
   String state=request.getParameter("state").toString();
   session.setAttribute("state",state);
  
 %>
 <form action="donor2.jsp">
<table align="Center">
 <tr>
  <td><font color="green">Select City <td><td>
                            
							<%if(state.equals("andhrapradesh"))
							    { %>
							<select name="city">
							<option value="hyderabad">HyderaBad</option>
							<option value="warangal">Warangal </option>
							<option value="vijayawada">Vijayawada </option>
							<option value="kakinada ">Kakinada </option>
							<option value="rajamundry">Rajamundry </option>
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
						 <td>Select City <td> <td><select name="bg">
							<option value="a">A</option>
							<option value="b">B</option>
							<option value="ab">AB </option>
							<option value="ab+">AB+</option>
							<option value="b+">B+</option>
							</select>
                         </td>
  </tr>
  <tr><td colspan="3"><center><input type="submit" value="next"></center></tr>
  </table>


