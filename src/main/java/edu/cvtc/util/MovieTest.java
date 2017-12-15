package edu.cvtc.util;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.apache.poi.openxml4j.exceptions.InvalidFormatException;

import edu.cvtc.web.model.Movie;
import edu.cvtc.web.util.WorkbookUtility;

/**
 * @author Benjamin L. Miles
 *
 */
public class MovieTest {
	
	private static final String INPUT_FILE = "./WebContent/assets/movies.xlsx";
	
	
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		
		//NOTE: Use an input file to produce output that is a list of people to the console!
		
		final File inputFile = new File(INPUT_FILE);
		
		try {
		
			final List<Movie> movies = WorkbookUtility.retrieveMoviesFromWorkBook(inputFile);
			
			for (final Movie movie : movies) {

					System.out.println(movie.toString());				

			}
			
		} catch (InvalidFormatException | IOException e) {
			e.printStackTrace();
		}	
		
	}

}
