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
 * Servlet implementation class EditShelf
 */
@WebServlet("/EditShelf")
public class EditShelf extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
    public EditShelf() {
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
		
		request.setAttribute("entry", entry);
		request.getRequestDispatcher("/WEB-INF/EditShelf.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unchecked")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		int id = Integer.parseInt(request.getParameter("id"));
		List<shelf> shelves = (List<shelf>) getServletContext().getAttribute("shelves");
		List<Movie> movies = (List<Movie>) getServletContext().getAttribute("movies");
		
		if("Edit".equals(action)) {
			
			shelf entry = null;
			for(shelf s: shelves) {
				if(s.getID() == id) {
					entry = s;
					break;
				}
			}
			
			for(Movie m: movies) {
				if(entry.getGenre().equals(m.getGenre())) {
					m.setGenre(request.getParameter("genre"));
				}
			}
			
			entry.setGenre(request.getParameter("genre"));
			response.sendRedirect("Shelves");

		}
		else {
			
			shelf entry = null;
			for(shelf s: shelves) {
				if(s.getID() == id) {
					entry = s;
					break;
				}
			}
			
			int MID = Integer.parseInt(request.getParameter("action"));
			for(Movie m: movies) {
				if (m.getID() == MID) {
					m.setGenre("Unknown");
				}
			}
			
			response.sendRedirect("EditShelf?id="+entry.getID());
			
		}
	}

}
