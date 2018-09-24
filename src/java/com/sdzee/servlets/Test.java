package com.sdzee.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sdzee.beans.Ludo;
import java.util.ArrayList;
import java.util.List;
import org.joda.time.DateTime;

public class Test extends HttpServlet {
	
	public void doGet( HttpServletRequest request, HttpServletResponse response )	throws ServletException, IOException {

		String paramAuteur = request.getParameter("auteur");
                String message = "Transmission de variables : OK !";
                
		Ludo premierBean = new Ludo();
		
		premierBean.setNom("B");
		premierBean.setPrenom("Ludovic");
                
                List<Integer> premiereListe = new ArrayList<>();
                premiereListe.add(27);
                premiereListe.add(12);
                premiereListe.add(138);
                premiereListe.add(6);
                
                DateTime dt = new DateTime();
                Integer jourDuMois = dt.getDayOfMonth();
                Integer mois = dt.getMonthOfYear();
                Integer annee = dt.getYear();
                
                request.setAttribute("date", dt);
		request.setAttribute("test", message);
		request.setAttribute("ludo", premierBean);
                request.setAttribute("liste", premiereListe);
                request.setAttribute("jour", jourDuMois);
                request.setAttribute("mois", mois);
                request.setAttribute("annee", annee);

		this.getServletContext().getRequestDispatcher( "/WEB-INF/test.jsp" ).forward( request, response );
	}

}
