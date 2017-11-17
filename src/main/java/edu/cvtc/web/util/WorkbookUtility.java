/**
 * 
 */
package edu.cvtc.web.util;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;

import edu.cvtc.web.model.Movie;


/**
 * @author Benjamin L. Miles
 *
 */
public class WorkbookUtility {
	
	public static final String INPUT_FILE = "/assets/movies.xlsx";
	
	public static List<Movie> retrieveMoviesFromWorkBook(final File inputFile) throws InvalidFormatException, IOException {
		
		final List<Movie> movies = new ArrayList<>();
				
		final Workbook workBook = WorkbookFactory.create(inputFile);
		
		final Sheet sheet = workBook.getSheetAt(0);
				
		for (final Row row : sheet) {
			
			final Cell title = row.getCell(0);
			final Cell director = row.getCell(1);
			final Cell lengthInMinutes = row.getCell(2);
			final Cell imgURL = row.getCell(3);
			
			final Movie movie = new Movie(
											director.getStringCellValue().trim(),
											title.getStringCellValue().trim(), 
											(int) lengthInMinutes.getNumericCellValue(),
											imgURL.getStringCellValue().trim());
			
			movies.add(movie);
			
		}
		
		return movies;
		
	}

}
