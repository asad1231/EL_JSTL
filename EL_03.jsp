<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setAttribute("name", "이순신");//문자열 속성 키이름인 name에 Object 타입으로 업캐스팅한 값 이순신을 저장
%>
<h3>닷(.) 연산자로 접근</h3>
${requestScope.name}<br>
${param.id}<hr><%-- 피라미터 id값을 가져온다. 주소창에 노출되는 get방식으로 *.jsp?id=아이디가 전달되어야 한다. --%>

<h3>브라켓 연산자([])로 접근</h3>
${requestScope["name"]}<br>
${param["id"]}<hr>

<h3>jsp 스크립트 요소인 표현식으로 접근</h3>
<%= request.getAttribute("name") %><br>
<%= request.getParameter("id") %><hr>
