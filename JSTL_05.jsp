<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="score" value="<%=new int[]{90,100,80,85,95,75} %>"/>

<c:set var="total" value="${0 }" /> <%-- JSTL변수 total선언하고 0으로 초기화 --%>
** 점수 출력***<br>
<c:forEach var="s" items="${score}" begin="0" end="5" step="1">
	<%-- begin속성은 시작,end속성은 끝, step속성은 증가값 --%>
	${s }&nbsp; <%-- &nbsp;은 한칸의 빈공백 처리 --%>
	<c:set var="total" value="${total+s }"/> <%-- 배열원소 누적합 --%>
</c:forEach>
<hr>
배열원소 점수의 총합 = <c:out value="${total }"/>
<hr>

<%-- 
 문제)JSTL c:forEach문 등을 활용해서 1부터 10까지 자연수 중에서 짝수값을 출력하고, 짝수들의 누적합을 구해서 출력해보자.
 --%>
<c:forEach var="s1" begin="2" end="10" step="2"> 
	${s1}&nbsp;&nbsp;
	<c:set var="sum" value="${sum+s1 }"/> <%-- 짝수 누적합 --%>
</c:forEach>
<hr>
짝수 누적합=${sum}
<hr>