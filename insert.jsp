<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String dob=request.getParameter("date_ofbirth");
String mob=request.getParameter("phone");
String email=request.getParameter("email");
String doj=request.getParameter("date of joined");

String yof=request.getParameter("year of experience");


Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/web","root","");
Statement st=con.createStatement();
st.executeUpdate("insert into employee(fname,lname,dateofbirth,phoneno,email,yearofjoined,)values('"+fname+"','"+lname+"','"+date_ofbirth+"','"+phone+"','"+email+"','"+yoj+"','"+add+"')");
st.close();
con.close();
%>
<html>
<body>
<script>
if(confirm("Record inserted seccessfully\nTo insert another record press ok"))
window.location.replace("http://localhost:8080/web technologies/emp.html");
else
window.location.replace("http://localhost:8080/web technologies/emp.html");
</script>
<marquee>RECORD INSERTED SUCESSFULLY</marquee>
</body>
</html>