<%@taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
   
<html>
<head>
<meta  charset="UTF-8">

  
    <!-- Bootstrap core CSS -->
    <link href="views/css/bootstrap.min.css" rel="stylesheet">

    <!-- Add custom CSS here -->
    <link href="views/css/myapp.css" rel="stylesheet">
        <link href="views/css/dataTables.bootstrap.css" rel="stylesheet">
        <script>
	$(document).ready(function() {
		$('#table').DataTable();
	});
</script>
<style type="text/css">
.jumbotron {
	background-color: white;
	text-align: center;
	height: 400px;
}
</style>
<title>Gestion de stock</title>
 
</head>
<body>
<form action="index">

<form action="pdf">
    <form action="produits">
  
  <form action="produits1">

  
        <!-- Sidebar -->
        <nav>
      <input type="checkbox" id="check"/>
	   	<label for="check" class="checkbtn">
	        <i class="fas fa-bars"></i>
	    </label>
	    
     	 <label class="logo">Gestion de Stock</label>
     	 
	     <ul>
			<li><a class="active" href="produits">Produits</a></li>
			<li><a href="produits1">Approvisionnement</a></li>
			<li><a href="pdf">Rapport pdf</a></li>
						<li><a href="index">Deconnexion</a></li>
			
		</ul>
	</nav>
	
	</form>
	</form>
	</form>
	</form>
	


<body class="body">

	
			

	
	<br />
	<br />

	<div class="container">
		<br /> <br />
		<div class="jumbotron">
			<s:form action="modifier" method="post">

				<div class="form-group row">
					<label for="inputCode" class="col-sm-4 col-form-label">Code
						Article</label>
					<div class="col-sm-8">
						<s:textfield theme="simple" cssClass="form-control"
							name="produit.codePdt" />
					</div>
				</div>
				<div class="form-group row">
					<label for="inputQAchete" class="col-sm-4 col-form-label">Nom
						Article</label>
					<div class="col-sm-8">
						<s:textfield theme="simple" cssClass="form-control"
							name="produit.nomPdt" />
					</div>
				</div>
				<div class="form-group row">
					<label for="inputQAchete" class="col-sm-4 col-form-label">Description
						Achete</label>
					<div class="col-sm-8">
						<s:textfield theme="simple" cssClass="form-control"
							name="produit.descPdt" />
					</div>
				</div>
				<div class="form-group row">
					<label for="inputQAchete" class="col-sm-4 col-form-label">Quantite
						Achete</label>
					<div class="col-sm-8">
						<s:textfield theme="simple" cssClass="form-control"
							name="produit.qtePdt" />
					</div>
				</div>
				<div class="form-group row">
					<label for="inputQAchete" class="col-sm-4 col-form-label">Prix
						Achete</label>
					<div class="col-sm-8">
						<s:textfield theme="simple" cssClass="form-control"
							name="produit.prixPdt" />
					</div>
				</div>
				
			<s:hidden name="editMode"></s:hidden>
					
				</div>
				<br />
				<s:submit theme="simple" cssClass="btn btn-success center-block"
					value="Modifier l'achat"></s:submit>
			</s:form>

		</div>
	</div>
</body>
</html>
	
	</div>
	</div>
	 <!-- JavaScript -->
    <script src="views/js/jquery.js"></script>
    <script src="views/js/bootstrap.js"></script>
                <script src="views/js/jquery.dataTables.js"></script>
    
        <script src="views/js/dataTables.bootstrap.js"></script>
	</body>
	</html>
	