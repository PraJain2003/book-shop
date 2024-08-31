<%-- 
    Document   : a1
    Created on : 11 Aug, 2024, 5:46:09 PM
    Author     : Pranjal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin </title>
        <link href="../stATIC/css/bootstrap.css" rel="stylesheet" type="text/css" />
        <script src="../stATIC/JQUERY/jquery.js"></script>
    </head>
    <body>
        <nav class="navbar navbar-expand-md bg-success navbar-dark" >
<svg xmlns="http://www.w3.org/2000/svg" width="50" height="40" fill="currentColor" class="bi bi-bootstrap-fill" viewBox="0 0 16 16">
  <path d="M6.375 7.125V4.658h1.78c.973 0 1.542.457 1.542 1.237 0 .802-.604 1.23-1.764 1.23H6.375zm0 3.762h1.898c1.184 0 1.81-.48 1.81-1.377 0-.885-.65-1.348-1.886-1.348H6.375v2.725z"/>
  <path d="M4.002 0a4 4 0 0 0-4 4v8a4 4 0 0 0 4 4h8a4 4 0 0 0 4-4V4a4 4 0 0 0-4-4h-8zm1.06 12V3.545h3.399c1.587 0 2.543.809 2.543 2.11 0 .884-.65 1.675-1.483 1.816v.1c1.143.117 1.904.931 1.904 2.033 0 1.488-1.084 2.396-2.888 2.396H5.062z"/>
</svg>
	<a href="#" class="navbar-brand text-light font-weight-bold">BookShop</a>
	<button class="navbar-toggler" id="b1">
    	<span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="collnav">

    	<ul class="navbar-nav text-center">
            <li class="nav-item"><a href="bookupload.jsp" class="nav-link active">Upload Book</a></li>
            <li class="nav-item"><a href="managebook.jsp" class="nav-link active">Manage Book</a></li>
            <li class="nav-item"><a href="confirmdelivery.jsp" class="nav-link active">Confirm Delivery</a></li>
           
            
            <li class="nav-item"><a href="changepassword.jsp" class="nav-link active ">Change password</a></li>
            <li class="nav-item"><a href="../logout.jsp" class="nav-link active ">Logout</a></li>


           
        </ul>
        </div>
	
			
   
</nav>

<script>
	$(document).ready(function(e) {
        $("#c1").click(function(e) {
            $("#dd1").slideToggle(1000);
        });

	$("#b1").click(function(e) {
            $("#collnav").slideToggle(1000);
        });
    });
	
</script>

    </body>
</html>
