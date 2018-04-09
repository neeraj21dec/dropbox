<%@ page import="java.io.*" %>
<%@ page contentType="text/html" %>
<%
    //to get the content type information from JSP Request Header
    String contentType = request.getContentType();
    //here we are checking the content type is not equal to Null and
 //as well as the passed data from mulitpart/form-data is greater than or
 //equal to 0
    if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0))
 {
        DataInputStream in = new DataInputStream(request.getInputStream());
        //we are taking the length of Content type data
        int formDataLength = request.getContentLength();
        byte dataBytes[] = new byte[formDataLength];
        int byteRead = 0;
        int totalBytesRead = 0;
        //this loop converting the uploaded file into byte code
        while (totalBytesRead < formDataLength)
 {
            byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
            totalBytesRead += byteRead;
            }

        String file = new String(dataBytes);
        //for saving the file name
        String saveFile = file.substring(file.indexOf("filename=\"") + 10);
 //out.println(saveFile);        
saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
 //out.println(saveFile);        
saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
        
 //out.println(saveFile);
int lastIndex = contentType.lastIndexOf("=");
        String boundary = contentType.substring(lastIndex + 1,contentType.length());
        int pos;
        //extracting the index of file 
        pos = file.indexOf("filename=\"");
        pos = file.indexOf("\n", pos) + 1;
        pos = file.indexOf("\n", pos) + 1;
        pos = file.indexOf("\n", pos) + 1;
        int boundaryLocation = file.indexOf(boundary, pos) - 4;
        int startPos = ((file.substring(0, pos)).getBytes()).length;
        int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;

        // creating a new file with the same name and writing the 
//content in new file
out.println(saveFile);
        FileOutputStream fileOut = new FileOutputStream("C:/Users/Neeraj/Dropbox/"+saveFile);
        fileOut.write(dataBytes, startPos, (endPos - startPos));
        fileOut.flush();
        fileOut.close();

        %><Br><Br/><br/><table border="2" style="position:relative;left:20%;"><tr><td><b>You have successfully
 upload the file by the name of:</b>
        <% out.println(saveFile); %></td></tr></table> <%
        }
%>

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
<div style="color:white;position:relative;top:-90px;background-color:white;width:1530px;"><h1 style="color:black;">UPLOADED</h1></div>
<a href="front.jsp" style="position:relative;left:30%;"><input type="button" value="back" class="btn btn-default"/></a>
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
