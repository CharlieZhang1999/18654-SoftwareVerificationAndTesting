package timesheet;

public class WeeklyTimesheet {
	private double standardHours = 0;
	private double holidayHours = 0; 

	public WeeklyTimesheet(double standardHours, double holidayHours) {
		this.holidayHours  = holidayHours;
		this.standardHours = standardHours;
	}

	public double calculatePay(double wage) throws FunnyHoursException {
		return wage*getTotalHours();
	}

	public double getTotalHours() throws FunnyHoursException {
		if (holidayHours > standardHours) throw new FunnyHoursException();
		return standardHours + holidayHours;
	}
}
