package filmshelf.model;

public class Movie {
	static int midSeed = 1;

	private String name;
	private String director;
	private String year;
	private String genre;
	private int ID;
	private String watched;

	
	public Movie() {
		this.ID = midSeed++;

	}
	
	
	public String getYear() {
		return year;
	}



	public void setYear(String year) {
		this.year = year;
	}



	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getDirector() {
		return director;
	}


	public void setDirector(String director) {
		this.director = director;
	}


	public String getGenre() {
		return genre;
	}


	public void setGenre(String genre) {
		this.genre = genre;
	}


	public int getID() {
		return ID;
	}


	public void setID(int ID) {
		this.ID = ID;
	}


	public String getWatched() {
		return watched;
	}


	public void setWatched(String watched) {
		this.watched = watched;
	}
	
	

}
