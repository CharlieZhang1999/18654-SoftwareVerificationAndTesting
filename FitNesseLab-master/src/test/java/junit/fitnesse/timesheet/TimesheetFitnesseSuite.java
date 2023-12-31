package junit.fitnesse.timesheet;

import org.junit.Test;
import org.junit.runner.RunWith;
import fitnesse.junit.FitNesseRunner.DebugMode;
import fitnesse.junit.FitNesseRunner.FitnesseDir;
import fitnesse.junit.FitNesseRunner;
import fitnesse.junit.FitNesseRunner.Suite;
import fitnesse.junit.FitNesseRunner.OutputDir;


@RunWith(FitNesseRunner.class)
@FitnesseDir("FitnesseDir") // relative to project directory, must be the parent of FitNesseRoot directory
@Suite("FitNesse.MyFitExamples.WeeklyTimesheet.TimesheetSuite") // defined relative to FitNesseRoot directory
@OutputDir("target/fitnesse-reports") // where fitnesse html reports will be located 
@DebugMode(false) // this must be set to false for FitNesseRunner to correctly launch 

/*
 * Fitnesse directory structure in this project
 * 
 * FitExample
 * |
 * |----FitnesseDir
 *      |----fitnesse-standalone.jar
 *      |----cobertura-x.y.z
 *      |       |----cobertura-x.y.z.jar
 *      |----FitNesseRoot
 *      |       |----FitNesse
 *      |       |      |----MyFitExamples
*/



public class TimesheetFitnesseSuite {

  @Test
  public void dummy(){
  }
  
}