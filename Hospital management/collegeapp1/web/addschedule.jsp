<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html>
    <head>
        <style>
            
          input[type="submit"]
{
     width: 100%;
    text-align: center;
    
    height: 45px;
    background:  #17a2b8;
    color: #fff;
    font-size: 18px;
    border-radius: 20px;
}
input[type="submit"]:hover
{
    cursor: pointer;
    background: #39dc79;
    color: #000;
}
select {
        width: 100%;
        height: 30px;
        border: 1px solid #999;
        font-size: 18px;
        color: black;
        background-color: transparent;
        border-radius: 5px;
        box-shadow: 4px 4px #ccc;
      }
           
        </style>
       
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
   <body >
        <div class=container p-5">
            <div class="row mt-5">
                <div class ="col-md-6 offset-md-4">
                    <div class="card paint-card"><div class="card-body">
                            <p class ="fs-4 text-center">ADD SCHEDULE</p>
        <form method="POST" action="addschedule">
            
     <div class="mb-3">
      
    <label for="exampleInputEmail1" class="form-label">Name</label>
    <input type="text" class="form-control" id="name" name="name" aria-describedby="email" required>
    <div id="emailHelp" class="form-text" ></div>
  </div>
            
             <div class="mb-3">
      
    <label for="exampleInputEmail1" class="form-label">Date</label>
    <input type="date" class="form-control" id="date" name="date" aria-describedby="email" required>
    <div id="emailHelp" class="form-text" ></div>
  </div>
  <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label">Time</label>
    <select name="time" id="time">
    <option value="9 am">9 am</option>
    <option value="10 am">10 am</option>
    <option value="11 am">11 am</option>
    <option value="12 pm">12 pm</option>
     <option value="1 pm">1 pm</option>
      <option value="2 pm">2 pm </option>
       <option value="3 pm">3 pm</option> 
       <option value="4 pm">4 pm</option>
        <option value="5 pm">5 pm</option>
         <option value="6 pm">6 pm</option>
          <option value="7 pm">7 pm</option>
           <option value="8 pm">8 pm</option>
            <option value="9 pm">9 pm</option> 
            <option value="10 pm">10 pm</option>
            
            
         
       
       
  </select>

  </div>
 
            
  <div class="mb-3">
     
                                
                                   <%
                                       try{
     Connection con = null;
PreparedStatement ps = null;
                                         Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/collegeapp","root","");
            Statement stm = con.createStatement();
          String sql = "SELECT typedoc FROM typedoc";
ps = con.prepareStatement(sql);
ResultSet rs = ps.executeQuery(); 

    %>
<label for="exampleInputEmail1" class="form-label">Select type of doctor</label>
<select name ="typedoc">
<%
while(rs.next())
{
String typedoc = rs.getString("typedoc"); 
%>
<option  selected='selected' value="<%=typedoc %>"><%=typedoc%></option>
<%
}
%>
</select>
</p>
<%
}
catch(SQLException sqe)
{ 
out.println(sqe);
}
%>




                             
                                                <br><br>
   <input type="submit" name="submit" value="Submit"><br><br>
</form>
    </body>
</html>
