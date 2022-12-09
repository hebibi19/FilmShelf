package filmshelf.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import filmshelf.model.Movie;
import filmshelf.model.shelf;

/**
 * Servlet implementation class DeleteShelf
 */
@WebServlet("/DeleteShelf")
public class DeleteShelf extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteShelf() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		List<shelf> shelves = (List<shelf>) getServletContext().getAttribute("shelves");
		
		shelf entry = null;
		for(shelf s:shelves) {
			if (s.getID() == id) {
				entry = s;
				break;
			}
		}
		
		List<Movie> movies = (List<Movie>) getServletContext().getAttribute("movies");

		for (Movie m: movies) {
			if (m.getGenre().equals(entry.getGenre())) {
				m.setGenre("Unknown");
			}
		}
		
		shelves.remove(entry);
		request.getRequestDispatcher("/WEB-INF/Shelves.jsp").forward(request, response);
	}


}
