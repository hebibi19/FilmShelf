package filmshelf.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import filmshelf.model.Movie;
import filmshelf.model.shelf;

/**
 * Servlet implementation class HomePage
 */
@WebServlet(urlPatterns="/HomePage", loadOnStartup=1)
public class HomePage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public HomePage() {
        super();
    }
    
    public void init(ServletConfig config) throws ServletException {
    	super.init(config);
    	
    	// stored in application scope
    	List<Movie> movies = new ArrayList<Movie>();
    	List<shelf> shelves = new ArrayList<shelf>();
    	
    	shelf s = new shelf();
    	s.setGenre("Unknown");
    	
    	shelf s1 = new shelf();
    	s1.setGenre("Classics");
    	
    	shelf s2 = new shelf();
    	s2.setGenre("Dystopian");
    	
    	shelf s3 = new shelf();
    	s3.setGenre("Drama");
    	
    	// added preset genres
    	shelves.add(s);
    	shelves.add(s1);
    	shelves.add(s2);
    	shelves.add(s3);

    	
    	Movie m1 = new Movie();
    	m1.setName("It Happened One Night");
    	m1.setGenre("Classics");
    	m1.setYear("1934");
    	m1.setWatched("yes");
    	m1.setDirector("Frank Capra");
    	
    	Movie m2 = new Movie();
    	m2.setName("The Hunger Games");
    	m2.setYear("2012");
    	m2.setGenre("Dystopian");
    	m2.setWatched("no");
    	
    	Movie m3 = new Movie();
    	m3.setName("Dead Poets Society");
    	m3.setYear("1989");
    	m3.setGenre("Unknown");
    	m3.setWatched("no");
    	
    	Movie m4 = new Movie();
    	m4.setName("Shoplifters");
    	m4.setYear("2018");
    	m4.setGenre("Drama");
    	m4.setWatched("no");
    	m4.setDirector("Hirokazu Kore-eda");
    	
    	Movie m5 = new Movie();
    	m5.setName("Your Name");
    	m5.setYear("2016");
    	m5.setGenre("Unknown");
    	m5.setWatched("no");
    	
    	// added preset books
    	movies.add(m1);
    	movies.add(m2);
    	movies.add(m3);
    	movies.add(m4);
    	movies.add(m5);
    	
    	getServletContext().setAttribute("movies", movies);
    	getServletContext().setAttribute("shelves", shelves);
    	
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/HomePage.jsp").forward(request, response);
	
	}



}
