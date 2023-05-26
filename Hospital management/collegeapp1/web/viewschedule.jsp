
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
  <title></title>
  <meta charset="utf-8">
    <meta name="viewport"
        content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href=
"https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src=
"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
    </script>
    <script src=
"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js">
    </script>
    <script src=
"https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js">
    </script>
   
</head>
<body>



<div class="container-fluid">

    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary"><center>SCHEDULE INFORMATION</center></h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
           
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
            sql = "select * from schedule  group by typedoc" ;
            Statement stmt = con.createStatement();
            rs = stmt.executeQuery(sql);
while(rs.next()){
%>
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th> DOCTOR ID </th>
                            <th> DATE </th>
                            <th> TIME </th>
                          
                            <th> TYPE OF DOCTOR</th>
                             <th >BOOK</th>
                            
                           
                        </tr>
                    </thead>
                    <tbody>
                        
                            <tr>
                                          
                                    
                                <td><%=rs.getString("doc_id") %></td>
                                <td><%=rs.getString("date") %></td>
                                <td><%=rs.getString("time") %></td>
                                <td><%=rs.getString("typedoc") %></td>
                                <td><a href ="book.jsp?id=<%= session.getAttribute("id") %>"><i class="fa fa-eye fa-lg"  style="color: black"></i><font color="crimson" size=4px><b> &nbsp Book Appointment</b></font></a><br></td>
                               
                                
                               
                            </tr>
                        
                    </tbody>
                </table>

            </div>
        </div>
    </div>

</div>

</body>
</html>
<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>