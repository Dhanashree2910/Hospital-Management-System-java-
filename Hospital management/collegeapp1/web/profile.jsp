<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>





<%
Connection connection = null;
Statement statement = null;
ResultSet rs = null;
Connection con;
    PreparedStatement pst;
    int row;
     
try{ 
         Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/collegeapp","root","");
           
            String sql;
          String id = request.getParameter("id");
            sql = "select * from register where id ="+id+" " ;
            Statement stmt = con.createStatement();
            rs = stmt.executeQuery(sql);
while(rs.next()){
%>
<html>
<head>

 
   <style>
      h4{
            font-size:25px;
             text-shadow: 0 0 3px #FF0000;
         }
         body{
      background-color: whitesmoke;
    }
     .card{
    
        
        width: 100%;
        top: 80%;
        left:50%;
         box-shadow: 4px 4px #ccc;
       
  }
 
   </style>
</head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	
	<!--<script src="https://kit.fontawesome.com/yourcode.js"></script>-->
	
	<link rel="stylesheet" href="assests/css/bootstrap.min.css"><!--define all the styles for style for button,dropdown,menu,namebar,panels
-->
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css"><!--for icons-->
	<!--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">-->
    <body>
  <!--start dashboard 2nd col width of second coloumn-->
       <div class="col-md-6">
      <div class= "mt-5"><!--start of tgird col space between 2 and third coloumn-->
       
           

     </h4>
         <br><br>

             
  <div class="card"> <center><div class="box_1">
                          
                            <div class="card-content"><br>
                             
                                <center><span class="card-title" ><b><font size="5px"> PROFILE</span></b></center><br></font>
                                   
<table class='table'>

                    <tr>
                    <td>
                    <b> ID:</b>

                    </td>
                    <td>
                    <%=rs.getString("id") %>
                    </td>
                    </tr>
                    
                    
                    
                    <tr>
                    <td>
                    <b> NAME:</b>

                    </td>
                    <td>
                    <%=rs.getString("name") %>
                    </td>
                    </tr>
                    
                    
                    <tr>
                    <td>
                    <b> EMAIL:</b>

                    </td>
                    <td>
                    <%=rs.getString("email") %>
                    </td>
                    </tr>
                    
                    <tr>
                    <td>
                    <b> PASSWORD:</b>

                    </td>
                    <td>
                    <%=rs.getString("password") %>
                    </td>
                    </tr>
                    
                    
                    <tr>
                    <td>
                    <b> DOCTOR TYPE:</b>

                    </td>
                    <td>
                    <%=rs.getString("typedoc") %>
                    </td>
                    </tr>
                    
                            </table>
                    </body>
                    </html>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>