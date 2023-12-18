package fit.date;

import date.Date;
import date.InvalidDateException;
import fit.ColumnFixture;

public class NextDate extends ColumnFixture{
	
	public int day; 
	public int month;
	public int year;
	
	public String nextDate() throws InvalidDateException {
		Date date = new Date(year, month, day);
		return date.nextDate().toString();
	}
	
	public boolean isLeapYear() throws InvalidDateException {
      		// add your fixture code for isLeapYear
			Date date = new Date(year, month, day);
      		return date.isLeapYear();
	}
	
}


