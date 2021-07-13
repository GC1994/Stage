<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
	<title>Login</title>
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/icon/iconaEco.png" />
	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css">
		   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  			<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  			<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	</head>
<body background="${pageContext.request.contextPath}/resources/images/icon/sfondologo.png">
	
	<div id="wrapper">
		<div id="header">
			<jsp:include page="header.jsp"></jsp:include>
		</div>
	</div>
	<div id="container3" class="row">
		<div id="loginContainer" class="row">	
		<form:form action="saveUser" modelAttribute="user" method="POST">	
			<form:hidden path="idUtente" />				
			<div class=login>
			<div id="titlelogin">LOGIN</div>
  				<div class="form-group">
    				<label for="exampleInputEmail1">Email</label>
    				<form:input path="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Inserisci Email"/>
			  </div>
  				<div class="form-group">
    			<label for="exampleInputPassword1">Password</label>
    			<form:input path="password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Inserisci Password"/>
  			</div>
  			<div class="form-check">
    			<input type="checkbox" class="form-check-input" id="exampleCheck1">
    			<label class="form-check-label" for="exampleCheck1">Ricorda password</label>
  				</div>
  				<button type="submit" class="btn btn-primary">Login</button>
			</div>
		</form:form>
		<div style="clear; both;"></div>	
	</div>		
			<div id="login2" class="row">
			<div class=login2>
			<div id="titleSignup">SIGNUP</div>
				<form:form action="saveUser" modelAttribute="user" method="POST">
				<form:hidden path="idUtente" />
					<div><label>Tipo Utente:</label></div>
						<div>
							<select id="idTipoUtente" name="idTipoUtente">
								<c:forEach var="tipoUtente" items="${tipiUtente}">
									<option value="${tipoUtente.idTipoUtente}"
										<c:if test="${tipoUtente.idTipoUtente eq user.tipoUtente.idTipoUtente}"> selected</c:if>
										>${tipoUtente.descrizione}</option>
								</c:forEach>
							</select>
						</div>	
						<div><label>Regione:</label></div>
						<div>
							<select id="idRegione" name="idRegione">
								<c:forEach var="regione" items="${regioni}">
									<option value="${regione.idRegione}"
										<c:if test="${regione.idRegione eq user.regione.idRegione}"> selected</c:if>
										>${regione.nomeRegione}</option>
								</c:forEach>
							</select>
						</div>
						<div><label>Nome:</label></div>
						<div><form:input path="nome" /></div>
						<div><label>Cognome:</label></div>
						<div><form:input path="cognome" /></div>
						<div><label>Ragione Sociale:</label></div>
						<div><form:input path="ragioneSociale" /></div>
						<div><label>Email:</label></div>
						<div><form:input path="email" /></div>
						<div><label>Password:</label></div>
						<div><form:input path="password" /></div>
						<div><label></label></div>
						<div><input type="submit" value="Registrati" class="save" /></div>	
				</form:form>
			</div>	
		<div style="clear; both;"></div>		
	</div>
	</div>
	<div id="footer">
	<jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>