<%@ page session="false" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="yogogym" tagdir="/WEB-INF/tags" %>

<yogogym:layout pageName="clients">
	<h2>Trainer: Client Routine Details</h2>
	<p><b>Client Name:</b> <c:out value="${client.firstName}"/></p>
	<p><b>Routine Name:</b> <c:out value="${routine.name}"/></p>
	<p><b>Description:</b> <c:out value="${routine.description}"/></p>
	
	<br>
	<br>
	
	<h2>Line of Routines</h2>
	<c:forEach var="lineRoutine" items="${routine.routineLine}">
	<p><b>Line #${lineRoutine.id}</b> <a href="">Edit Routine</a> </p>
	<table class="table table-striped">
		<thead>
        <tr>
            <th>Repetitions</th>
            <th>Weight</th>
            
            <th>Exercise</th>
			<th>Description</th>
			<th>Kcal</th>
        </tr>
        </thead>
			 <tr>
	           <td><c:out value="${lineRoutine.reps}"/></td>
	        	<td><c:out value="${lineRoutine.weight}"/></td>
	        	<td>
				<spring:url value="/mainMenu/exercises/{exerciseId}" var="exerciseUrl">
                       <spring:param name="exerciseId" value="${lineRoutine.exercises.id}"/>
                   </spring:url>
				<a href="${fn:escapeXml(exerciseUrl)}"><c:out value="${lineRoutine.exercises.name}"/></a>
				</td>
				<td><c:out value="${lineRoutine.exercises.description}"/></td>
				<td><c:out value="${lineRoutine.exercises.kcal}"/></td>
	        </tr>
	</table>
	</c:forEach>
	
	<spring:url value="/trainer/${trainerUsername}/clients/${clientId}/routines/${routine.id}/routineLine/create" var="routineLineAddUrl" />
	<a href="${fn:escapeXml(routineLineAddUrl)}">Add Routine Line</a>
	
</yogogym:layout>
