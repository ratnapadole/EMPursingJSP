
<!--validate.jsp-->

<%--scriplet tag--%>


<%@ page import = "   java.sql.*"  %>
<% 
String empno=request.getParameter("eno");
	
	
	try
			{
			
	     
			    Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","scott","123");
				
			Statement st =con.createStatement();
			
			st.executeUpdate("delete from emdata where empno='"+empno+"'");
			
			response.sendRedirect("showdata.jsp");
			
			}catch(Exception e)
			{
				System.out.println(e);
			}


			
			


%>