package junit.timesheet;
import timesheet.FunnyHoursException;
import timesheet.WeeklyTimesheet;
import static org.junit.Assert.*;

import org.junit.Test;

public class WeeklyTimesheetTest {

	@Test
	public void testHoursAndPay() throws FunnyHoursException {
		WeeklyTimesheet timesheet = new WeeklyTimesheet(10, 10);
		assertEquals(20, timesheet.getTotalHours(), 0.001);
		assertEquals(200, timesheet.calculatePay(10), 0.001);
	}
	
	@Test (expected = FunnyHoursException.class)
	public void testFunnyHours() throws FunnyHoursException  {
		WeeklyTimesheet timesheet = new WeeklyTimesheet(10, 100);
		timesheet.getTotalHours();
	}

}
