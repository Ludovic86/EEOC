<%-- 
    Document   : index
    Created on : 24 sept. 2018, 11:55:17
    Author     : TA-13
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <a href="<c:url value="toto">
            <c:param name="auteur" value="May"/>
            Lien !
           </c:url>">Lien !!</a>
    </body>
</html>
