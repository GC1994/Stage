<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista Utenti</title>
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/icon/iconaEco.png" />
	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css" />
		   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  			<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  			<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body background="${pageContext.request.contextPath}/resources/images/icon/sfondologo.png">

	<div id="wrapper">
		<div class="row" id="header">
			<jsp:include page="header.jsp"></jsp:include>
</div>
	</div>
		<div id="container" class="table">	
			<div id="content">
				<hr>      
            		<div class="BoxInterventiLista">
            	 		<div class="row barraBlu">                      
                			<div class="col-1">Nome</div>
                			<div class="col-1">Cognome</div>
                			<div class="col-1">Ragione Sociale</div>
                			<div class="col-1">Codice Fiscale</div>
							<div class="col-1">Indirizzo</div>
							<div class="col-1">Telefono</div>
							<div class="col-1">Email</div>
							<div class="col-1">Pec</div>
							<div class="col-1">Password</div>
							<div class="col-1">Tipo Utente</div>
							<div class="col-1">Regione</div>		
							<div class="col-1">Modifica</div>
						</div>
		
				<c:forEach var="tempUser" items="${users}">
					<c:url var="updateLink" value="/user/showFormUpdateUser">
						<c:param name="idUtente" value="${tempUser.idUtente}" />
					</c:url>					
					<c:url var="deleteLink" value="/user/delete">
						<c:param name="idUtente" value="${tempUser.idUtente}" />
					</c:url>		
					
					      <div class="row tabella">                                           
                     		<div class="col-1">
                    			<c:out value="${tempUser.nome}"></c:out>
                    		</div>
                     		<div class="col-1">
                    			<c:out value="${tempUser.cognome}"></c:out>
                    		</div>
                    		<div class="col-1">
                    			<c:out value="${tempUser.ragioneSociale}"></c:out>
                    		</div>
                    		<div class="col-1">
                    			<c:out value="${tempUser.codFiscPIva}"></c:out>
                   			</div>      
                    		<div class="col-1">
                    			<c:out value="${tempUser.indirizzo}"></c:out>
                    		</div>
                    		<div class="col-1">
                    			<c:out value="${tempUser.telefono}"></c:out>
                    		</div>
                    		<div class="col-1">
                    			<c:out value="${tempUser.email}"></c:out>
                    		</div>  
                    		<div class="col-1">
                    			<c:out value="${tempUser.pec}"></c:out>
                    		</div>
                    		<div class="col-1">
                    			<c:out value="${tempUser.password}"></c:out>
                    		</div>
                     		<div class="col-1">
                    			<c:out value="${tempUser.tipoUtente.descrizione}"></c:out>
                    		</div>
                    		<div class="col-1">
                    			<c:out value="${tempUser.regione.nomeRegione}"></c:out>
                    		</div>
                     		<div class="col-1">
                    			<a href="${updateLink}">Aggiorna</a>
                        		<a href="${deleteLink}"
                               		onclick="if (!(confirm('Sei sicuro di voler eliminare questo utente?'))) return false">Cancella</a>
                    		</div>       
                    	</div>
                </c:forEach>
			</div>	     
         </div>		
			<input type="button" value="Aggiungi Utente"
                   onclick="window.location.href='showFormAddUser'; return false;"
                   class="btn btn-success"/>
	</div>
		<div id="footer">
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
</body>
</html>