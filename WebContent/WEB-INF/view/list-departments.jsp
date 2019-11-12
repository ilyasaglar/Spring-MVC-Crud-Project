<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Departments...</title>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm"%>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>

	<br>
	<div id="butons-bar" align="center">
		<table >
			<tr >
				<th width="100px">Department</th>
				<th width="100px">Manager</th>
				<th width="100px">Location</th>
				<th width="100px"></th>
				<th width="100px"></th>
			</tr>
			<tr>


				<frm:form action="searchDepartment" method="GET">
					<th width=100px><input type="text" name="searchName" /></th>
					<th><select width="150px" name="searchManager">
							<option value="0" selected>Please selected</option>
							<option value="${searchManager}">${searchManager}</option>
							<c:forEach var="mngr" items="${managers}">
								<option value="${mngr.id}">${mngr.firstName}
									${mngr.lastName}</option>
							</c:forEach>
					</select></th>

					<th><select width="150px" name="searchLocation">
							<option value="0" selected>Please selected</option>
							<option value="${searchName}">${searchName}</option>
							<c:forEach var="lct" items="${locations}">
								<option value="${lct.locationId}">${lct.city}</option>
							</c:forEach>
					</select></th>

					<th width="100px"><input type="submit" class="search-button"
						value="Search"></th>
				</frm:form>
				<th>
					<button onclick="window.location.href='addDepartmentForm'"
						class="add-button">Add Department</button>
				</th>
			</tr>

		</table>
	</div>

	<table align="center" border="	">
		<tr></tr>
		<tr>

			<th>Department Name</th>
			<th>Manager ID</th>
			<th>Location ID</th>

			<th>Update</th>
			<th>Delete</th>

		</tr>
		<c:forEach var="dept" items="${departments}">
			<c:url var="updateLink" value="/department/updateDepartmentForm">
				<c:param name="id" value="${dept.id}" />
			</c:url>
			<c:url var="deleteLink" value="/department/deleteDepartment">
				<c:param name="departmentId" value="${dept.id}" />
			</c:url>

			<tr>
				<b>
					<td>${dept.departmentName }</td>
					<td>${dept.manager}</td>
					<td>${dept.location}</td>
					<td>
						<button onclick="window.location.href='${updateLink}'"
							class="update-button">Update</button>
				</td>
					<td><button
							onclick="if(confirm('Siliyoruz, emin misin?')) window.location.href='${deleteLink}'"
							class="delete-button">Delete</button></td>
				</b>
			</tr>
		</c:forEach>

	</table>

	<div id="result"></div>


</body>
</html>