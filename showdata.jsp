






<%@ page import = "   java.sql.*"  %>

<!DOCTYPE html>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css.css">

</head>
<body>

	
	
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

           	<h1><center>Employee Data:</h1></center>

<hr color="orange" size=3px>
              
			  
			         
                       <table   border=1 align="center" bordercolor="#003366"   cellpadding=20 cellspacing="0" >   
					   <tr align=center>
		
                                            <th>Emp No</th>
                                            <th>Emp Name</th>
                                            <th>Emp Address</th> 
											<th>Emp EmailId</th>
                                            <th>Emp MobileNo</th>
                                            <th> Gender</th>
											
											<th>Action </th> </tr>
									
                                 <% 
								 
								Class.forName("oracle.jdbc.driver.OracleDriver");
								Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","scott","123");
				
									Statement st =con.createStatement();
									ResultSet rs=st.executeQuery("Select * from emdata ");
									while(rs.next())
									{
			
								 
								 %>
                                        <tr align=center>
										<td><%= rs.getString("empno")  %></td>
                                         <td><%= rs.getString("ename")  %></td>
                                        <td><%= rs.getString("eaddr")  %></td>
                                        <td><%= rs.getString("email")  %></td>
                                        <td><%= rs.getString("emob")  %></td>
                                        <td><%= rs.getString("gender")  %></td>
										
				
                                        
										<td><a href="update.jsp?id=<%=rs.getString("empno")%>">Update</a></b>&nbsp; &nbsp;	
											<b><a href='delete.jsp?eno=<%=rs.getString("empno")%>'        >Delete</a></b></td></tr>  
										
										
										
										<br>
										
										
										<%
										
										}
										
										%>
                                   
                                </table>
								
						
                  
          <br>
  <br>
  <br>
  <br>        
 
 
 <div >&nbsp; 
				 
&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;  &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
				 &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; 
				 
&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;  &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
				 &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; 
				 
&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;  &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
				 &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; 
				 
&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;  &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
				 &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; 
				 
&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;  &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
				 &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; 
				 &nbsp; &nbsp;<b><a href="service.html">click Back</a></b>     
				 </div>

 
<hr color="orange" size=3px>
   
  <br>
  
 
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
 <!-- Footer Section --><div class="" style="background-color:#990066; height:150px"> 
	
<br><br><br><br><br>	<p style="text-align:center",>@ Copyright 2021 All Right Reserved By: <a href="Home.html">Ratna Padole</a></p>
    </div>
   




</body>
</html>
