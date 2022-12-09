package filmshelf.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import filmshelf.model.Movie;

/**
 * Servlet implementation class AddMovie
 */
@WebServlet("/AddMovie")
public class AddMovie extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AddMovie() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/AddMovie.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unchecked")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String director = request.getParameter("director");
		String year =request.getParameter("year");
		String genre = request.getParameter("genre");
		String watched = request.getParameter("yesno");
		
		List<Movie> movies = (List<Movie>) getServletContext().getAttribute("movies");
		Movie m = new Movie();
		m.setName(name);
		m.setDirector(director);
		m.setYear(year);
		m.setGenre(genre);
		m.setWatched(watched);
		movies.add(m);
		
		response.sendRedirect("Movies");
	}

}
