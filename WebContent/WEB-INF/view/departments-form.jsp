<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Department Form</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css"></link>
</head>
<body>



	<h3 align="center">Department Registration</h3>
	<br>
	<br>
	<frm:form action="saveDepartment" modelAttribute="departments"
		method="POST" align="center">
		<div align="center">
			<input type="hidden" path="id" name="id" value="${id}" />
			<table class="klasik-tablo" border="2">
				<tr>
					<td><label>Department Name</label></td>
					<td><input type="text" name="name" minlength="2"
						required="required" value="${departments.departmentName}" /></td>

				</tr>

				<tr>
					<td><label>Manager</label></td>
					<td><select name="manager">
							<option value="0">${manager}</option>
							<c:forEach var="mngr" items="${managers}">
								<c:choose>
									<c:when test="${mngr.id eq empID}">
										<option selected="selected" value="${mngr.id}">${mngr.firstName} ${mngr.lastName}</option>
									</c:when>
									<c:otherwise>
										<option value="${mngr.id}">${mngr.firstName} ${mngr.lastName}</option>
									</c:otherwise>
								</c:choose>

							</c:forEach>
					</select></td>
				</tr>
				<tr>
					<td><label>Location</label></td>
					<td><select name="location">
							<option value="0">${location}</option>
							<c:forEach var="lct" items="${locations}">
								<c:choose>
									<c:when test="${lct.locationId eq locId}">
										<option selected="selected" value="${lct.locationId}">${lct.city}</option>
									</c:when>	
									<c:otherwise>
									<option value="${lct.locationId}">${lct.city}</option>
									</c:otherwise>
								</c:choose>
							</c:forEach>

					</select></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Save" class="save-button" /></td>
				</tr>

			</table>
		</div>
	</frm:form>

	<div id="content">

		<button
			onclick="window.location.href='${pageContext.request.contextPath}/department/list'"
			class="back-button">Back To List</button>

	</div>



</body>
</html>
