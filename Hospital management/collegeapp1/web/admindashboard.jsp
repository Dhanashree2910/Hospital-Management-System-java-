
<!DOCTYPE html>
<html lang="en">
<head>
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	
	<!--<script src="https://kit.fontawesome.com/yourcode.js"></script>-->
	
	<link rel="stylesheet" href="assests/css/bootstrap.min.css"><!--define all the styles for style for button,dropdown,menu,namebar,panels
-->
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css"><!--for icons-->
	<!--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">-->
<style>




.sidebar ul li{
  padding: 1px;
  border-bottom: 1px solid #bdb8d7;
  border-bottom: 1px solid rgba(0,0,0,0.05);
  border-top: 1px solid rgba(255,255,255,0.05);
}    

 .sidebar ul li a{
  color: whitesmoke;
  display: block;
}



.sidebar ul li:hover{
  background-color: whitesmoke;
}
    
 .sidebar ul li:hover a{
  color: #fff;
}
 





</style>
</head>
<body >
   <%@ include file="newjsp.jsp" %>
	<nav class ="navbar navbar-dark fixed-top bg-danger 
	"><a class ="navbar-brand 
		">WELCOME </a></nav><!--navbar navbar for header and navbar brand for slightly larger0-->

		<div class ="container-fluid" style="margin-top: 30px "><!--provide full width container spanning entire width tp 100%-->
			<div class ="row "><!--start row of slide bar -->
				
                        
				<nav class= "col-md-2  py-5" style="background-color: antiquewhite " ><!--start sidebar 1st col col-md for width of the slidebar and py for space of row-->
				<div class ="sidebar " >



                
				<ul>
                                  
                                   
                                             	
                  

			

              <li><a href ="profile.jsp?id=<%= session.getAttribute("id") %>"><i class="fa fa-eye fa-lg"  style="color: black"></i><font color="crimson" size=4px><b> &nbsp View Profile</b></font></a></li><br>
					<li><a href ="addschedule.jsp?<%= session.getAttribute("id") %>"><i class="fa fa-plus-circle fa-lg"  style="color: black"></i><font color="crimson" size=4px><b> &nbsp Add Schedule</b></font></a></li><br>
<li><a href ="view.jsp?id=<%= session.getAttribute("id") %>"><i class="fa fa-eye fa-lg"  style="color: black"></i><font color="crimson" size=4px><b> &nbsp View Booking Details</b></font></a></li><br>				
        

				
              <li><a href ="Logout?id=<%= session.getAttribute("id") %>"><i class="fa fa-power-off fa-lg"  style="color: black"></i><font color="crimson" size=4px><b> &nbsp Delete</b></font></a></li><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>





					
					
                 

				 

			</ul>
		</div>
	</nav>