package filmshelf.model;

public class shelf {
	static int sidSeed = 1;
	
	private String genre;
	private int ID;
	
	public shelf() {
		this.ID = sidSeed++;

	}

	public String getGenre() {
		return genre;
	}

	public int getID() {
		return ID;
	}

	public void setID(int ID) {
		this.ID = ID;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	

}
