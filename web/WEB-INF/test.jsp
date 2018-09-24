<%@page import="java.util.List"%>
<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Test</title>
    </head>
    <body>
        <p>Ceci est une page générée depuis une JSP.</p>
        <p>
            ${test} <br/>
            Auteur : ${param.auteur}
        </p>
        <p>
            Récupération du bean :
            ${ludo.prenom}
            ${ludo.nom}
        </p>
        <p>
            Récupération de la liste :
            <%
            List<Integer> liste = (List<Integer>) request.getAttribute( "liste" );
            for( Integer i : liste ){
                out.println(i + " : ");	
            }
            %>
        </p>
        <p>
            Récupération du jour du mois :
            <%
            Integer jourDuMois = (Integer) request.getAttribute( "jour" );
            Integer mois = (Integer) request.getAttribute( "mois" );
            Integer annee = (Integer) request.getAttribute( "annee" );
            if ( jourDuMois % 2 == 0 ){
                out.println("Jour pair : " + jourDuMois);
            } else {
                out.println("Jour impair : " + jourDuMois);
            }
            %>
            <br/>
            
            récupération de la date via l'attribut date sur l'objet dt ${date.getDayOfMonth()}/${date.getMonthOfYear()}/${date.getYear()}
            
            <br/>
            Nous sommes le : ${jour}/${mois}/${annee}
        </p>
    </body>
</html>