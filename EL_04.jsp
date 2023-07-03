<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");//post로 전달되는 한글을 안깨지게 한다.
%>
<form method="post" action="EL_04.jsp">
 <label for="name">이름</label> <%-- label for 이름인 name과 입력필드 id속성명 name이 같으면 마우스 조작이
 어려우신 분들이 입력필드 뿐만 아니라 라벨 for 이름을 선택해도 입력필드 선택효과가 난다. --%>
 <input type="text" name="name" id="name" value="${param.name }"/>
 <input type="submit" value="전송">
<hr>
입력하신 이름은 <strong>${param.name}</strong>입니다. 

</form>