<%@ page import="java.sql.*" %>
<%@ page contentType="text/html" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Material Design Bootstrap</title>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="css/mdb.min.css" rel="stylesheet">
    <!-- Your custom styles (optional) -->
    <link href="css/style.css" rel="stylesheet">


</head>

<body background="dbbackground.jpeg" height="100%" style="background-repeat: no-repeat;background-size: cover;">

    <!-- Start your project here-->
    
    <div class="name" style="width:400px;height:50px;">
        <h2 style="color:#ff7043;width:800px;text-align:center;">RAJASTHAN TECHNICAL UNIVERSITY</h2><br/>
        <h5 style="color:white;position:relative;left:53%;top:-30px;">KOTA,RAJASTHAN</h5>
        
        
    </div>
 
   
                
<br/><br/>  

<h2 style="position:relative;left:30%;color:white;width:700px;"><b>UPLOAD YOUR FILES TO YOUR DROPBOX<b></h2>

<br/>
<FORM  ENCTYPE="multipart/form-data" ACTION=
"Upload.jsp" METHOD=POST>
        <br><br><br>
      <center><table border="2" >
                    <tr><center><td colspan="2"><p align=
"center"><B>Choose the file To Upload:</B><center></td></tr>
                    <tr><td><b>Upload:</b>
</td>
                    <td><INPUT NAME="F1" TYPE="file"></td></tr>
                    <tr><td colspan="2">
<p align="right"><INPUT TYPE="submit" VALUE="UPLOAD" ></p></td></tr>
             <table>
     </center>      
     </FORM>
            
    <!-- /Start your project here-->

    <!-- SCRIPTS -->
    <!-- JQuery -->
    <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="js/popper.min.js"></script>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="js/mdb.min.js"></script>
</body>

</html>
