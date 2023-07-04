<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="fruit" value="${param.name }"/> <%-- *.jsp?name=값 get방식으로 전달되는 name피라미터 --%>

피라미터 name에 실려온 값:
<c:if test="${!empty fruit }">
 <c:out value="${fruit }"/>
</c:if>

<hr>

<c:choose>
 <c:when test="${fruit == 'apple' }">
  ${fruit } : 사과
 </c:when>
 <c:when test="${fruit == 'banana' }">
  ${fruit } : 바나나
 </c:when>
 <c:otherwise>해당사항없음.</c:otherwise>
</c:choose>