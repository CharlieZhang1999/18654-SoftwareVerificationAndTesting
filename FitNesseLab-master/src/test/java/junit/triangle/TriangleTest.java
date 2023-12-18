package junit.triangle;
import triangle.Triangle;
import triangle.InvalidTriangleException;

import static org.junit.Assert.*;

import org.junit.Test;

public class TriangleTest {

	@Test
	public void canIdentifyEquilateral() throws InvalidTriangleException {
		Triangle tri = new Triangle(10, 10, 10);
		assertEquals(Triangle.EQUILATERAL, tri.classify());
	}
	
	@Test
	public void canIdentifyScalene() throws InvalidTriangleException {
		Triangle tri = new Triangle(10, 5, 7);
		assertEquals(Triangle.SCALENE, tri.classify());
	}
	
	@Test
	public void canIdentifyIsosceles() throws InvalidTriangleException {
		Triangle tri = new Triangle(10, 10, 8);
		assertEquals(Triangle.ISOSCELES, tri.classify());
	}
	
	@Test (expected = InvalidTriangleException.class)
	public void canIdentifyInvalid1() throws InvalidTriangleException {
		Triangle tri = new Triangle(0, 0, 0);
		tri.classify();
	}
	

	@Test (expected = InvalidTriangleException.class)
	public void canIdentifyInvalid2() throws InvalidTriangleException {
		Triangle tri = new Triangle(10, 9, 20);
		tri.classify();
	}
	
	@Test (expected = InvalidTriangleException.class)
	public void canIdentifyInvalid3() throws InvalidTriangleException {
		Triangle tri = new Triangle(-1, 9, 20);
		tri.classify();
	}
	
	@Test (expected = InvalidTriangleException.class)
	public void canIdentifyInvalid4() throws InvalidTriangleException {
		Triangle tri = new Triangle(10, 20, 9);
		tri.classify();
	}
	
	@Test (expected = InvalidTriangleException.class)
	public void canIdentifyInvalid5() throws InvalidTriangleException {
		Triangle tri = new Triangle(9, 20, 10);
		tri.classify();
	}
	
	@Test 
	public void canIdentifyRightAngled() throws InvalidTriangleException {
		Triangle tri = new Triangle(3, 5, 4);
		assertTrue(tri.isRightAngled());
	}
	
}
