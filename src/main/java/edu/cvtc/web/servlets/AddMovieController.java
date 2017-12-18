package edu.cvtc.web.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.common.base.Strings;

import edu.cvtc.web.dao.MovieDao;
import edu.cvtc.web.dao.impl.MovieDaoException;
import edu.cvtc.web.dao.impl.MovieDaoImpl;
import edu.cvtc.web.model.Movie;

/**
 * Servlet implementation class AddMovieController
 */
@WebServlet("/AddMovie")
public class AddMovieController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String target = null;
		
		
		try {
			
			final String title = request.getParameter("title");
			final String director = request.getParameter("director");
			final String stringLengthInMinutes = request.getParameter("lengthInMinutes");
			String imgURL = request.getParameter("imgURL");
			
			if (Strings.isNullOrEmpty(title) || Strings.isNullOrEmpty(director) || Strings.isNullOrEmpty(stringLengthInMinutes)) {
						
				
				request.setAttribute("message", "You must complete the fields to submit the form");
				target = "addMovie.jsp";
				
			} else {
			
				if (Strings.isNullOrEmpty(imgURL)) {
					
					imgURL = "./assets/img/noImage.jpg";
					
				} 
				
				final int lengthInMinutes = Integer.parseInt(stringLengthInMinutes);
				
				final MovieDao movieDao = new MovieDaoImpl();
				
				final Movie movie = new Movie(director, title, lengthInMinutes, imgURL);
				
				movieDao.insertMovie(movie);
				
				request.setAttribute("message", "You have added " + title + " " + director + " " + lengthInMinutes + " to the database");
				
				target = "success.jsp";
			
			}
			
		} catch (MovieDaoException e ) {
			
			e.printStackTrace();
			request.setAttribute("message", e.getMessage());
			target = "error.jsp";
			
		} catch (NumberFormatException e) {
			
			e.printStackTrace();
			request.setAttribute("message", "Length must be a valid number!");
			target = "addMovie.jsp";
			
		}
		
		request.getRequestDispatcher(target).forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
