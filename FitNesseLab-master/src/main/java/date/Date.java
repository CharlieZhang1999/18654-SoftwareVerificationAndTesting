package date;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;


public class Date {
	int year, month, day;
	
	private static final Integer[] M31 = new Integer[] { 1, 3, 5, 7, 8, 10, 12};
	private final static Set<Integer> MONTHS_WITH_31_DAYS = new HashSet<Integer> (Arrays.asList(M31));
	
	private static final Integer[] M30 = new Integer[] {4, 6, 9, 11};
	private final static Set<Integer> MONTHS_WITH_30_DAYS = new HashSet<Integer> (Arrays.asList(M30));
	
	private static final int YEAR_MIN = 1900;
	private static final int YEAR_MAX = 2200;
	private static final int MONTH_MAX = 12;
	private static final int FEBRUARY = 2;
	private static final int DAY_MIN = 1;
	private static final int MONTH_MIN = 1; 
	
	public Date(int year, int month, int day) throws InvalidDateException {
		this.year = year;
		this.month = month;
		this.day = day;
		if (!valid()) throw new InvalidDateException(); 
	}
	
	public static boolean has31Days(int month) {
		if (MONTHS_WITH_31_DAYS.contains(month)) return true;
		return false;
	}
	
	public static boolean has30Days(int month) {
		if (MONTHS_WITH_30_DAYS.contains(month)) return true;
		return false;
	}
	
	public static boolean isFebruary(int month) {
		if (month == FEBRUARY) return true;
		return false;
	}
	
	public static boolean isLeapYear(int year) {
		if (year % 100 == 0) {
			return (year/100 % 4 == 0);
		}
		else {
			return (year % 4 == 0);
		}
	}
	
	public boolean isLeapYear() {
		return isLeapYear(year);
	}
	
	public int lastDayOfMonth() {
		if (has30Days(month)) return 30;
		if (has31Days(month)) return 31;
		if (isFebruary(month) && isLeapYear(year)) return 29;
		return 28;
	}
	
	public boolean valid() {
		if (day < DAY_MIN) return false;
		if (month < MONTH_MIN) return false;
		if (year < YEAR_MIN) return false;
		if (year > YEAR_MAX) return false;
		if (day > lastDayOfMonth()) return false;
		if (month > MONTH_MAX) return false;
		return true;
	}
	
	public Date nextDate() throws InvalidDateException {
		Date date = new Date(year, month, day); 
		if (day == lastDayOfMonth()) {
			date.day = DAY_MIN;
			if (month == MONTH_MAX) {
				date.month = MONTH_MIN;
				date.year++; 
			} else {
				date.month++;
			}
		} else {
			date.day++;
		}
		return date;
	}
	
	@Override
	public String toString() {
		return day + "/" + month + "/" + year;
	}
	
	@Override
	public boolean equals(Object date) {
		if (month == ((Date)date).month && day == ((Date)date).day && year == ((Date)date).year) return true;
		return false;
	}

}
