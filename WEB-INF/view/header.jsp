<%-- <%@ page import="net.ecobonus.dto.UserDto"%> --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
// 	UserDto userDto = (UserDto)request.getSession().getAttribute("userDto");
%>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<img class="logo" alt="icona_logo" src="${pageContext.request.contextPath}/resources/images/icon/logo.png" width="14%">
<%-- 	<c:if test="${userDto!=null && userDto.getNominativo() != null && !userDto.getNominativo().isEmpty()}"> --%>
<!-- 		<div style="float: left;"> -->
<!-- 			<h6> -->
<!-- 				<img alt="icona_user" src="images/icon/icona_user.png" width="30px" height="30px"> -->
<!-- 				Welcome:   -->
<%-- 				<a href="user?function=userdetail&IdUtente=${userDto.getIdUtente()}" style="color: #058c05;"> --%>
<%-- 					<%= userDto.getNominativo()%> --%>
<!-- 				</a> -->
<!-- 			</h6> -->

<!-- 			<a href="user?function=logout" style="text-decoration: none; text-align: center;width: 40%;float:right;background-color: #058c05;padding: 4px;border-radius: 5px;color: white;font-weight: bold;">Logout</a> -->
		
<!-- 		</div> -->
<%-- 	</c:if> --%>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav ml-auto">
      <a class="nav-link" href="${pageContext.request.contextPath}/user/home">Home</a>
      <a class="nav-link" href="${pageContext.request.contextPath}/user/login">Login</a>
      <a class="nav-link" href="${pageContext.request.contextPath}/user/showFormAddUser">Gestione Utenti</a>
      <a class="nav-link" href="${pageContext.request.contextPath}/user/list">Lista Utenti</a>
      <a class="nav-link" href="${pageContext.request.contextPath}/interventi/showFormAddIntervento">Gestione interventi</a>
      <a class="nav-link" href="${pageContext.request.contextPath}/interventi/list">Lista Interventi</a>
    </div>
  </div>

</nav>