<%@taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="UTF-8"/>

<head>
<title>Gestion de vente</title>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="views/css/main.css"/>
	<link rel="stylesheet" type="text/css" href="views/css/util.css"/>
	<link rel="stylesheet" type="text/css" href="views/css/bootstrap.min.css"/>
<!--===============================================================================================-->
</head>
<body>
<div class="limiter">
		<div class="container-login100" style="background-color: #57b846">
			<div class="wrap-login100" style="height:600px" >
				<div class="login100-pic js-tilt">
					<img style="margin-top: -30px;  border-radius: 15px;"src="views/img/stock.jpg"/>
				</div>

				<s:form class="login100-form validate-form"  style="margin-top: 30px;">	
          
					<div class="wrap-input100 validate-input">
						<input type="text" id="name" class="input100 input" placeholder="E-mail"/>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input">
						<input type="password" id="pass" class="input100 input" placeholder="Password"/>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
						</span>
					</div>
					<s:url namespace="/" action="produits" var="lien1" />
					<div class="container-login100-form-btn">
					<s:a href="%{lien1}" class="btn btn-block btn-round btn-theme button login100-form-btn" value="Login" style="border-radius:20px;content-align:center;font-weight:bold;padding-top:15px">Sign in</s:a>

					</div>
					</div>

				</s:form>
			</div>
		</div>
	</div>
	
</body>
</html>
