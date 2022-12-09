package filmshelf.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import filmshelf.model.shelf;

/**
 * Servlet implementation class AddShelf
 */
@WebServlet("/AddShelf")
public class AddShelf extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public AddShelf() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/AddShelf.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unchecked")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String genre = request.getParameter("genre");
		
		List<shelf> shelves = (List<shelf>) getServletContext().getAttribute("shelves");
		shelf s = new shelf();
		s.setGenre(genre);
		shelves.add(s);
		
		response.sendRedirect("Shelves");
	}

}
