package edu.cvtc.web.comparators;

import java.util.Comparator;

import edu.cvtc.web.model.Movie;

public class TitleComparator implements Comparator<Movie> {

	@Override
	public int compare(final Movie firstMovie, final Movie secondMovie) {
		
		return firstMovie.getTitle().compareTo(secondMovie.getTitle());	
		
	}
	
}
