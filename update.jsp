


<%@page import="java.sql.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<html>

<head>
<title>Form</title>
<style>
body{
	text-align:center;
	font-color:Orange;
	font-family:"Times New Roman",Times,serif;}
</style>
</head>

<body bgcolor="Orange">

	
	
	
<div class="topnav"  >
 									

  <div class="logo">
  
  
   <img src="logo.png" width=130PX height=80px alt="Logo"/>
		
</div>
<nav id="nav">
					
				 &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;	
				<a href="index.html"> <b> Home </b></a></li>
					 &nbsp; 
					 <a href="service.html"> <b>Services</b></a>
			&nbsp;
			 <a href="about.html"><b> About</b></a>
						
						&nbsp;
						 <a href="career.html"><b>Career</b></a>
				&nbsp;
						<a href="contact.html"><b>Contact</b></a>
				
				</nav>

</div>
<br>

<br>
<h1>  Update Employee Details</h1>
				
<form action="upd.jsp" method="post">
					
		

<% 

						String id = request.getParameter("id");

								 
								try{
								Class.forName("oracle.jdbc.driver.OracleDriver");
								Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","scott","123");
				
									Statement st =con.createStatement();
																		
									String sql ="select * from emdata where empno="+id;	
									ResultSet rs=st.executeQuery(sql);
									while(rs.next())
									{
			
								 
								 %>
		

Emp_No :<input type="text"  placeholder="Emp_No"  autofocus required name="eno"  value="<%= rs.getString("empno")  %>"   >
<br><br>
 
Emp_Name:<input type="text"  placeholder="Emp_Name" required  name="ename" value="<%= rs.getString("ename")  %>"   >
<br><br> 
Emp_Address:<input type="text"  placeholder="Emp_Address"  required name="eadr"value="<%= rs.getString("eaddr")  %>"   >
<br><br>

Emp_Email:<input type="text"  placeholder="Emp_Email" required  name="email" value="<%= rs.getString("email")  %>"   >
<br><br> 
Emp_MobileNo:<input type="text"  placeholder="Emp_MobileNo" required    name="emobno" value="<%= rs.getString("emob")  %>"   >
<br><br>
Gender : 
							
					
					<input type="radio"   value="male"  checked required name="gender" >Male
					
				
					<input type="radio"    value="female"  checked required name="gender" >Female
					
					
				
					<input type="radio"  value="Others"   required  name="gender" >Others
					
	<br><br>
<input type="submit" style="background-color:#ff0066"   name="submit" value="Update Data">   <div>  &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
				 &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
				 &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; 
				 &nbsp; &nbsp;<b><a href="showdata.jsp">click Back</a></b>     
				 </div>
				 
	
</form>



<%
}
} catch (Exception e) {
System.out.println(e);
}
%>





</body>
</html>


