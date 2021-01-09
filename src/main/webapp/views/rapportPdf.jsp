 <%@taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta  charset="UTF-8">

  
    <!-- Bootstrap core CSS -->
    <link href="views/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="views/css/main.css"/>
	<link rel="stylesheet" type="text/css" href="views/css/util.css"/>
    <!-- Add custom CSS here -->
    <link href="views/css/myapp.css" rel="stylesheet">
        <link href="views/css/dataTables.bootstrap.css" rel="stylesheet">
        
<title>Insert title here</title>
 
</head>
<style type="text/css">
button {
	background-color: #008CBA;
	border: none;
	color: white;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;	
	display: inline-block;
	font-size: 16px;
	border-radius: 12px;
}
</style>
</head>
<body >
  <form action=index>

  <form action="pdf">
      <form action="produits1">
  
    <form action="produits">
  
        <!-- Sidebar -->
        <nav>
      <input type="checkbox" id="check"/>
	   	<label for="check" class="checkbtn">
	        <i class="fas fa-bars"></i>
	    </label>
	    
     	 <label class="logo">Gestion de Stock</label>
     	 
	     <ul>
			<li><a  href="produits">Produits</a></li>
			<li><a href="produits1">Approvisionnement</a></li>
			<li><a class="active" href="pdf">Rapport pdf</a></li>
						<li><a href="index">Deconnexion</a></li>
			
		</ul>
	</nav>
	</form>
	</form>
	</form>
	
	
		<div class="container-login100">
			<div class="wrap-login100">
  		<div class="form-group" style="box-shadow: 0px 0px 8px 8px #c0c0c0;margin:15px;padding:100px ; margin-top:-150px">
	<h1 style="text-align: center;">Rapport PDF de la situation du stock.</h1>
	
	<s:form method="POST"  action="downloadPDFFileAction">
		<s:submit value="Download PDF" style="text-align: center;background-color:red; margin-left:200px; margin-top:40px" class="btn btn-primary"></s:submit>

	</s:form>
	
	</div>
	</div>
	</div>
	</div>
	</div>

	<script src="views/js/jquery.js"></script>
    <script src="views/js/bootstrap.js"></script>
                <script src="views/js/jquery.dataTables.js"></script>
    
        <script src="views/js/dataTables.bootstrap.js"></script>
            
        
    

    <!-- Custom JavaScript for the Menu Toggle -->
    <script>
    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("active");
    });
    </script>
</body>

</html> 