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
        
<title>Insert title here</title>
 
</head>
<body>


<div>
    <div >
          <form action="index">
    
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
			<li><a href="produits">Produits</a></li>
			<li><a  class="active" href="produits1">Approvisionnement</a></li>
			<li><a href="pdf">Rapport pdf</a></li>
						<li><a href="index">Deconnexion</a></li>
			
		</ul>
	</nav>
	</form>
	</form>
	</form>
	</form>

</style>
  
	<div class="modal" id="AjouterModal">
				<div class="modal-dialog">
					<div class="modal-content">

						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title" style="text-align: center">Ajouter
								un Approvisenement</h4>
						</div>
						<div class="modal-body">

							<s:form action="execute" method="post" style="align:center">
								<div class="form-group row">
									<label for="inputQAchete" class="col-sm-4 col-form-label">Code Article</label>
									<div class="col-sm-8">
										
									
													<s:textfield theme="simple" cssClass="form-control" name="approvisenement.codePdt"></s:textfield>

									</div>
									</div>
								</div>
								<div class="form-group row">
									<label for="inputQAchete" class="col-sm-4 col-form-label">Quantite Commande
										</label>
									<div class="col-sm-8">
											<s:textfield theme="simple" cssClass="form-control" name="approvisenement.qtecommande"></s:textfield>
								
									</div>
								</div>
								
								<div class="form-group row">
									<label for="inputDate" class="col-sm-4 col-form-label">Date Prevue Livraison
										</label>
									<div class="col-sm-8">
									<s:textfield theme="simple" cssClass="form-control" placeholder="yyyy-MM-dd" name="approvisenement.datePrevueLivraison"></s:textfield>

									</div>
								</div>
								<br />
								<s:submit theme="simple" cssClass="btn btn-primary center-block"
									value="Ajouter un Approvisenement"></s:submit>
							</s:form>
						</div>


					</div>
				</div>
			</div> 
		
        
 
 

   

        <!-- Page content -->
        <div id="page-content-wrapper">
            
            <!-- Keep all page content within the page-content inset div! -->
            <div class="container">
		<br /> <br />
		<div class="jumbotron" style="background-color: white;">

			<button type="button" class="btn btn-primary" data-toggle="modal"
				data-target="#AjouterModal" style="background-color: #57b846;" >
				<span class="glyphicon glyphicon-plus"></span> Ajouter un approvisenement
			</button>
			
			<br /> <br />

			


			<table id="table" class="table table-hover table-bordered">
				<thead>
					<tr>
						<th class="th" style="background-color:#57b846;color:white" >Code Approvisenement</th>
						<th class="th" style="background-color:#57b846;color:white">Quantite  Approvisenement</th>
						<th class="th" style="background-color:#57b846;color:white">Date Prevue Livraison </th>
						

					</tr>
					
				</thead>
				<s:iterator value="produits1">
				<tr>
				<td ><s:property value="codePdt"/></td>
								<td> <s:property value="qtecommande"/></td>
								<td> <s:property value="datePrevueLivraison"/></td>
				
				<s:url namespace="/" action="delete1" var="lien1">
				<s:param name="code">
				<s:property value="codePdt"/>
				</s:param>
				</s:url>
				
				
				<td style="width:50px"><div class="row">
										<div class="col-sm-6">
											<s:a theme="simple" cssClass="btn btn-danger" href="%{lien1}" onclick="myFunction()">
												<span class="glyphicon glyphicon-remove"></span>
											</s:a>
										</div>
										


									</div>
									
				
				</s:iterator>
            </table>
            
            </div>
            </div>
            </div>
            </div>
            
            

    <!-- JavaScript -->
    <script src="views/js/jquery.js"></script>
    <script src="views/js/bootstrap.js"></script>
                <script src="views/js/jquery.dataTables.js"></script>
    
        <script src="views/js/dataTables.bootstrap.js"></script>
            
        
    

    <!-- Custom JavaScript for the Menu Toggle -->
    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("active");
    });
    </script>
    <script>
   function myFunction() {
   alert("Voulez-vous supprimer ce Champ ?!");
}
</script>
</div> 
        
        

</body>
</html>