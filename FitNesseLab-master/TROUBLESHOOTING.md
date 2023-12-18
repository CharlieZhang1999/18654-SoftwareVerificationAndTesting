
## Running Fitnesse server (located inside `FitnesseDir`)	

After installing, run the Fitnesse server from console as (using port 8080):
`> java -jar fitnesse-standalone.jar -p 8080`

You may use another port, but don't use port `80`.
	
Open a browser window, go to:  

`http://localhost:8080/FitNesse.MyFitExamples.WeeklyTimesheet.TimesheetHeader?edit&redirectToReferer=true&redirectAction=`  

Then edit path files if necessary. Normally only one path, the one in the `System Property Fixture`, needs to be absolute and changed. The other classpaths should work if you retain the folder structure. 
	
Try that this works through a Maven build with goal `cobertura:cobertura`. This should generate coverage reports in `target/coverage-reports`.   

## Fitnesse server is not working. 

If the standalone server `fitnesse-standalone.jar` included in this repo is not working (e.g., running tests give an error), try downloading the newest version from http://docs.fitnesse.org/FitNesseDownload and substitute the existing one in the `FitNesseRoot directory`. This may solve the problem. Do not try to change the Java version installed on your computer or download an older version to rectify the problem. The latest version of the standalone should work with any reasoanbly up-to-date Java. 

## Downloading Fitnessse and Cobertura

Download fitnesse from `http://fitnesse.org` (if it doesn't exist under FitExample/FitnesseDir folder).

Download cobertura from `http://cobertura.github.io/cobertura/` , and unzip (if it doesn't exist under FitExample/FitnesseDir folder). 

Running cobertura with Fitnesse using Maven may require other dependencies. There are included with the lab package. 

## Fit documentation

Fitnesse is based on Fit - Ward Cunnigham's original Framework for Integration Testing. 
For detailed Fit documentation, see `http://fit.c2.com/`.

## Broken builds

If builds are broken, Maven is not working properly, or classpaths are not configured
right or if they are corrupted, try the following steps. Maven POM should normally work and will set up your dependencies correctly. You need Java 8, which is included in Maven POM.  

## Build path configuration... (Project -> Properties -> Java Build Path)

### Source folders

-- `FitExample/src/main/java` -> contains java source packages  
-- `FitExample/src/test/java` -> contains java test packages with JUnit and JUnit Fitnesse tests and suites   
Output folders (binaries)   
-- `FitExample/target/classes` -> contains java source class files  
-- `FitExample/target/test-classes` -> contains java test class files  

### To reconfigure source folders in build path

a. Remove present source folder  
b. Add source folders ending with `/java` suffix as above  
c. Define output folders for each as above (select "Allow output folders for source folders")  
 
  
## Rebuilding Maven project (command line: `mvn <goal>`)

- Maven build: use goal `compile` (should download all dependencies specified in `.pom` at first run)  
- Maven cobertura coverage analysis : use goal `cobertura:cobertura` (instruments source files, runs tests, and creates coverage reports) => output in `target/coverage-reports`  
- Maven test: use goal `test` (runs unit and fitnesse tests using sure-fire plugin; no coverage analysis) => output in `target/surefire-reports` and `target/fitnesse-reports`  
- Maven clean: use goal `clean` (deletes all reports folders)   
- If things look odd: perform Maven->Update Project after a run/build to update folders  
- If build state is corrupted: try Project->Clean and don't run Maven `clean`  

## Where are the examples shown in class and needed in lab (Date, Timesheet, Triangle)?

Make sure you are running the server from the `Fitnessedir` folder. Otherwise you won't see these pages.    
 
After you start Fitnesse server, when you go to localhost:8080, the server will take you to the `FrontPage`. To see the FitnesseRoot hierarchy, click on  `Fitnesse` in _Welcome to FitNesse!_
This will take you to the Contents page. Then click on MyFitExamples.

##  If not using Maven

Try including `cobertura-X.X.X.jar` and `fitnesse-X.X.X.jar` or `fitnesse-standalone.jar`  in the Java buildpath.   

For test converage reports:   
1) Run in console the `cobertura-instrument.sh` with the right arguments.    
2) Rerun all tests and suites in the browser from Fitnesse server.   
3) Run in console the `cobertura-report.sh` with the right arguments.   

## Running cobertura from command line

Here is how you run cobertura instrumentation and report generation scripts from the cobertura folder if you haven't changed the folder structure provided with the lab package:  
`> sh cobertura-instrument.sh --destination ../../target/generated-classes/cobertura`   
`     --datafile ../../target/cobertura/cobertura.ser ../../target/classes`    
_... run desired fitnesse tests from browser here..._    
`> sh cobertura-report.sh --format html --datafile ../../target/cobertura/cobertura.ser`   
`     --destination ../../target/coverage-reports ../../src/main/java`   

## Problems with running cobertura command line scripts

Cobertura console (command-line) documentation is here:   
https://github.com/cobertura/cobertura/wiki/Command-Line-Reference

### On *Nix and Mac OS

You may get the error:   
`Error: Could not find or load main class net.sourceforge.cobertura.instrument.InstrumentMain`  

Original scripts use DOS format in recent releases. If you get the above error or something that looks like it, convert the shell scripts (`.sh` files) to Unix format using a conversion utility. For Mac OS, download Homebrew and then do `brew install tofrodos`. Then convert the scripts like this:  
`> fromdos cobertura-instrument.sh`

If you pulled the latest FitExample project from github, the Linux shell scripts should be in the right format. 

### On Windows

Windows (`.bat`) scripts may need to be updated in some cobertura releases since they use stale libraries in the classpath options. The Linux (`.sh`) scripts should be correct.  Perhaps this is no longer a problem in latest Maven version. You should check and suspect this problem if the Windows scripts are not working. 

Check that cobertura command-line scripts (ending with `.bat`) in cobertura-x.y.z (x.y.z is latest version) folder use the latest libraries and have all the libraries in the `lib` subfolder. In each cobertura release, libraries are replaced by new versions and new libraries are substituted for old ones.

Cobertura console (command-line) documentation is here: https://github.com/cobertura/cobertura/wiki/Command-Line-Reference
If not, modify the `cobertura-instrument.bat` and `cobertura.report.bat` files to use the latest libraries in the `lib` subfolder. Example:

`cobertura-instrument.sh` should look something like this (substituting x.y.z and x.y below with latest version numbers for the libraries and adding missing libraries)...
```
java -cp `dirname $0`/cobertura-x.y.z.jar:`dirname $0`/lib/asm-analysis-x.y.jar:`dirname $0`/lib/asm-x.y.jar:
    `dirname $0`/lib/asm-util-x.y.jar:`dirname $0`/lib/asm-tree-x.y.jar:`dirname $0`/lib/asm-commons-x.y.jar:
    `dirname $0`/lib/log4j-x.y.z.jar:`dirname $0`/lib/oro-x.y.z.jar net.sourceforge.cobertura.instrument.Main $*
```

`cobertura-report.sh` should look something like this (substituting x.y.z and x.y below with latest version numbers for the libraries and adding missing libraries)...   
```
cobertura-report.sh
java -cp `dirname $0`/cobertura-x.y.z.jar:`dirname $0`/lib/asm-x.y.jar:`dirname $0`/lib/asm-tree-x.y.jar:
     `dirname $0`/lib/asm-commons-x.y.jar:`dirname $0`/lib/asm-analysis-x.y.jar:`dirname $0`/lib/asm-util-x.y.jar:
     `dirname $0`/lib/log4j-x.y.z.jar:`dirname $0`/lib/oro-x.y.z.jar net.sourceforge.cobertura.reporting.Main $*
```

## Cobertura coverage reports are all red or empty

Make sure that the environment variable `net.sourceforge.cobertura.datafile` in the header file of the Fitnesse test pages is defined correctly. Update Maven dependencies (in Eclipse, Maven -> Update Project) and perform a Maven clean (and Project -> Clean in Eclipse). 

## To view reports

To view test run and coverage reports, check `*.html` files in `target/coverage-reports`, `target/surefire-reports` and `target/fitnesse-reports`. The root, if it exists, is the `index.html` in each case.   

## Naming Fitnesse pages

For Fitnesse to recoginize and find Fitnesse test or wiki pages, page names should be wiki words. `Triangle` is not a wiki word, whereas `TriangleExample` is. 

## Nothing is working, Fitnesse server is not finding class files, builds are not completing

If you have deleted and re-imported a project in Eclipse, make sure that Eclipse is pointing to the right directory. When you run Fitnesse tests from Junit or using Maven, look at the console output of the build and any pathnames that are listed therein, and make sure they are the right pathnames. The build might be looking elsewhere to find things that it needs, or might be dumping class files in a different directory structure than that of the current Eclipse project. Make sure to delete all old project files if you're re-importing and re-installing the project. 

## Expected exceptions and errors in Fit tables

Use the keyword `error` to specify expected failures in table cells. 
For other keywords that can be used in Fit table output cells, see:   http://www.fitnesse.org/FitNesse.UserGuide.WritingAcceptanceTests.FitFramework.KeywordsInTestTables

## Printing results in Fit tables

Use blank cells to print actual results in Fit cells. See:   
http://www.fitnesse.org/FitNesse.UserGuide.WritingAcceptanceTests.FitFramework.KeywordsInTestTables

## Fitnesse Eclipse Plugin

__This plugin is not tested.__

An alternative to the suggested setup for Eclipse users is to use the Fitnesse Eclipse Plugin. 
Check http://marketplace.eclipse.org/content/fitnesse-eclipse

## Maven and Eclipse

This video (although a bit old) might be helpful: https://www.youtube.com/watch?v=j-hTZmrvGbI

## When I update the source code, nothing changes when running Fitnesse (Fitnesse test pages give the same results)

Run Maven with `cobertura:cobertura` goal or run `cobertura-instrument` script. 

Explanation: Fitnesse finds the old bytecode for the sources because the instrumented classes are not automatically regenerated. Fitnesse will use the first classpath in which it finds the bytecode for the project sources it needs. Because of the ordering of the classpath definitions in the `CommonHeader` file, Fitnesse will first find them in the instrumented classes folder (`\target\generated-classes`) and won't use the normal class files in  `target\classes`.  This behavior is to allow cobertura code coverage analysis. You must update the instrumented bytecode by running Maven with `cobertura:cobertura` goal (or by running the `cobertura-instrument` script from console) each time you update the source code that is tested. This replaces the bytecode in `target/generated-classes` subfolder. See the warning in the `CommonHeader`, which is included at the top of each Fitness test page. 

You may also have to  run Maven with the `clean` goal (`mvn clean`) and do "Project -> Clean" in Eclipse to get rid of any stale project state before re-running instrumentation. 

To disable coverage analysis entirely and avoid having to run Maven instrumentation each time you change the source code, in `CommonHeader`, comment out the corresponding `path` statements  for `target\generated-classes` and just leave the ones for `\target\classes`. Or simply delete instrumented classes in `\target\generated-classes` (you can do `mvn clean` to remove these classes). 
 
## Java unsupported version error

When you run Fitnesse tests from the browser, you get

`java.lang.UnsupportedClassVersionError: .....: Unsupported major.minor version 5X.X`

This implies a Java compile-time/runtime mismatch. It's happening because the runtime version of Java with which you run the Fitnesse server and the JRE version that compiles the tested project's sources and Fitnesse tests are different (the latter is probably higher than the former). The solution is to update your runtime Java on your system to the latest version, which should match the version used in the POM file (currently Java 8 = 1.8). 

Check Java runtime version on your system from console:

`> java -version`

You should get something like the following:

`java version "1.8.0_101"`

Check that the major version number (`1.8` in above example) is the same as the `<configuration>` tag specified in the POM file's Maven compiler plugin section. 

## Java and Maven plugin versions in POM

Make sure that you are using Java 8. This is specified in the maven compiler plugin configuration (source version = 1.8 for version of Java supported in source code, and target version = 1.8 for JVM version for compiled classes). Check that this is reflected in your IDE/editor build path. If JRE is not working, switch to JDK. If Maven compiler plugin version 3.8.0 is not working, try downgrading to to 3.7.0. 

## Printing your test page in color with all background graphics for your deliverable

This works in Chrome (provided by Joey Pinto):

1) Open the Developer Tools (Windows: F12 or Ctrl+Shift+I; Mac: Cmd+Opt+I).     
2) Click the Customize and control DevTools hamburger menu button and choose More tools > Rendering settings (or Rendering in newer versions).   
3) Check the Emulate print media checkbox at the Rendering tab and select the Screen media type.   

Source: https://superuser.com/a/1271790

This also works in Chrome (provided by Chun-Wei Chen)

Install the Chrome plugin "Full Page Screen Capture":
https://chrome.google.com/webstore/detail/full-page-screen-capture/fdpohaocaechififmbbbbbknoalclacl
This renders the html page as a PDF perfectly. 

Another way is to use the EverNote clipper, which can render them in color. 

## Javas security manager problems 

(provided by Herbie Rand)

Try running Fitnesse server as: `java -Djava.security.manager=allow -jar fitnesse-standalone.jar -p 8080`




