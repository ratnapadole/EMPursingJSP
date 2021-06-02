

<%@ page import = "   java.sql.*"  %>



<% 


String empno=request.getParameter("eno");
String ename=request.getParameter("ename");
String eaddr=request.getParameter("eadr");
String email=request.getParameter("email");
String emob=request.getParameter("emobno");
String gender=request.getParameter("gender");
	String id = request.getParameter("id");

			
if(empno!=null)
	{
					
					try{
						
					PreparedStatement ps;
	     
			    Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","scott","123");
			
			String sql=	"update emdata set empno=?, ename=?,eaddr=?,email=?,emob=?,gender=? where empno="+empno;
			 ps =con.prepareStatement(sql);
		
			
			ps.setString(1,empno);
			ps.setString(2,ename);
			ps.setString(3,eaddr);
			ps.setString(4,email);
			ps.setString(5,emob);
			ps.setString(6,gender);
		
			
		int x=ps.executeUpdate();
			if(x>0)
			{
				out.println(" Record Updated Successfully...");
			}
			else   out.println(" Record  Update Failed...");
			

			}catch(Exception e)
			{
				System.out.println(e);
			}


		


}


%>

