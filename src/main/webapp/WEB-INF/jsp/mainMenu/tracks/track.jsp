<%@ page session="false" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="yogogym" tagdir="/WEB-INF/tags" %>

<yogogym:layout pageName="tracks">
    <h2>Tracks</h2>
    <h3> <c:out value="${track.name}"/> </h3>
    <p><c:out value="${track.uri}"/></p>
    <p><c:out value="${track.previewUrl}"/></p>
   
</yogogym:layout>