package edu.cvtc.web.comparators;

import java.util.Comparator;

import edu.cvtc.web.model.Movie;


public class DirectorComparator implements Comparator<Movie> {

	@Override
	public int compare(final Movie firstMovie, final Movie secondMovie) {
		
		return firstMovie.getDirector().compareTo(secondMovie.getDirector());
		
	}
	
	

}
