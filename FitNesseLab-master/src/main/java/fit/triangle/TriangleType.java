package fit.triangle;

import triangle.InvalidTriangleException;
import triangle.Triangle;
import fit.ColumnFixture;

public class TriangleType extends ColumnFixture{
	public int a; 
	public int b;
	public int c;
	
	public String classification() throws InvalidTriangleException {
		Triangle tri = new Triangle(a, b, c);
		return tri.classify();
	}
	
	public boolean isRightAngled() throws InvalidTriangleException {
		Triangle tri = new Triangle(a, b, c);
		return tri.isRightAngled();
	}
	
}
