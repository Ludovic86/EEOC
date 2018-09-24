<%-- 
    Document   : JSP1
    Created on : 24 sept. 2018, 11:11:36
    Author     : TA-13
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Test</title>
	</head>
	<body>
            <c:out value="${auteur}"/>
		<c:out value="test" />
                <c:out value="${ludo.prenom}" />
                <c:out value="${date}" />
                <c:out value="<p>Je suis un 'paragraphe'.<p/>" escapeXml="false" />
                
                <c:set var="message" value="Bonjour !" scope="request" />
                
                <c:out value="${requestScope.message}" />
                
                <c:set target="${ludo}" property="prenom" value="Patrick" />
                <c:out value="${ludo.prenom}" />
                
                <c:if test="${ludo.prenom == 'Patrick'}" var="maVariable" scope="session">
                    Ce test est vrai.
                </c:if>       
                <table>
                    <tr>
                      <th>Valeur</th>
                      <th>Cube</th>
                    </tr>
                  <c:forEach var="i" begin="0" end="7" step="1">
                    <tr>
                      <td><c:out value="${i}"/></td>
                      <td><c:out value="${i * i * i}"/></td>
                    </tr>
                  </c:forEach>
                </table>    
	</body>
</html>