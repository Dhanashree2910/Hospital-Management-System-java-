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
                            <p class ="fs-4 text-center">ADD NOTES </p>
        <form method="POST" action="addnote"  enctype="multipart/form-data">
             <div class="mb-3">
    
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Enter Note Title</label>
    <input type="text" class="form-control" id="notes" name="notes" aria-describedby="email"  maxlength="40"  required>
    <div id="emailHelp" class="form-text"  ></div>
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Enter notes Details</label>
    <input type="text" class="form-control" id="note_detail" name="note_detail" required>
  </div>
                 
                 
   <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Enter File</label>
    <input type="file" class="form-control" id="note_file" name="note_file" required>
  </div>
  
   <input type="submit" name="submit" value="Submit"><br><br>
</form>
    </body>
</html>
