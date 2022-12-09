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
 * Servlet implementation class EditMovie
 */
@WebServlet("/EditMovie")
public class EditMovie extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EditMovie() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		List<Movie> movies = (List<Movie>) getServletContext().getAttribute("movies");
		
		Movie movie = null;
		for(Movie m:movies) {
			if (m.getID() == id) {
				movie = m;
				break;
			}
		}
		
		request.setAttribute("movie", movie);
		request.getRequestDispatcher("/WEB-INF/EditMovie.jsp").forward(request, response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unchecked")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		List<Movie> movies = (List<Movie>) getServletContext().getAttribute("movies");
		
		Movie movie = null;
		for(Movie m: movies) {
			if(m.getID()==id) {
				movie = m;
				break;
			}
		}
		
		movie.setName(request.getParameter("name"));
		movie.setDirector(request.getParameter("director"));
		movie.setYear(request.getParameter("year"));
		movie.setGenre(request.getParameter("genre"));
		movie.setWatched(request.getParameter("yesno"));
		
		response.sendRedirect("Movies");
	}

}
