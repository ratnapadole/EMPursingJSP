
<!--validate.jsp-->

<%--scriplet tag--%>



<%@ page import = "   java.sql.*"  %>


<% 
String empno=request.getParameter("eno");
String ename=request.getParameter("ename");
String eaddr=request.getParameter("eaddr");
String email=request.getParameter("email");
String emob=request.getParameter("emobno");
String gender=request.getParameter("gender");
	
	try
			{
			
	     
			
				Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","scott","123");
				
		PreparedStatement ps =con.prepareStatement("insert into emdata(empno,ename,eaddr,email,emob,gender)values(?,?,?,?,?,?)");
			
			
			ps.setString(1,empno);
			ps.setString(2,ename);
			ps.setString(3,eaddr);
			ps.setString(4,email);
			ps.setString(5,emob);
			ps.setString(6,gender);
		
			int x=ps.executeUpdate();
			
			if(x>0)
			{
				out.println(" Registration done Successfully...");
			}
			else   out.println(" Registration  Failed...");
				
			
			}catch(Exception e)
			{
				System.out.println(e);
			}


			
			


%>