/**
 * 
 */
package edu.cvtc.web.model;

import java.io.Serializable;

/**
 * @author dootbin
 *
 */
public class Movie implements Serializable {

	private static final long serialVersionUID = 5673311258524176246L;

	private String director; 
	private String title; 
	private Integer lengthInMinutes;
	private String imgURL;
	
	
	public Movie() {
	}
	
	public Movie(final String director, final String title, final Integer lengthInMinutes, final String imgURL) {
		
		this.director = director;
		this.title = title;
		this.lengthInMinutes = lengthInMinutes;
		this.imgURL = imgURL;
	}

	public String getDirector() {
		return director;
	}

	public void setDirector(String director) {
		this.director = director;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Integer getLengthInMinutes() {
		return lengthInMinutes;
	}

	public void setLengthInMinutes(Integer lengthInMinutes) {
		this.lengthInMinutes = lengthInMinutes;
	}
	
	public String getImgURL() {
		return imgURL;
	}

	public void setImgURL(String imgURL) {
		this.imgURL = imgURL;
	}

	@Override
	public String toString() {
		return "Movie [director=" + director + ", title=" + title + ", lengthInMinutes=" + lengthInMinutes + "]";
	}

}
