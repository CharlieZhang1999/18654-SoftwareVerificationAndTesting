package triangle;

public class Triangle {
	int a, b, c;

	public static String EQUILATERAL = "EQUILATERAL";
	public static String SCALENE = "SCALENE";
	public static String ISOSCELES = "ISOSCELES";
	
	public Triangle(int a, int b, int c) throws InvalidTriangleException {
		this.a = a;
		this.b = b;
		this.c = c;
		if (!valid()) throw new InvalidTriangleException(); 
	}
	
	
	public boolean valid() {
		if (a < 1 || b < 1 || b < 1) return false;  // a bug in last condition, copy-paste error; not deliberate!!! leave it to see how test cases perform!
		if (a + b <= c) return false;
		if (a + c <= b) return false;
		if (b + c <= a) return false;
		return true;
	} 
	
	public String classify() {
		if (a == b) {
			if (b == c) return EQUILATERAL;
			return ISOSCELES;
		}
		return SCALENE;
		// Ouch! My fitnesse tests revealed that this is not enough to identify all isosceles triangles!
		// But of course: what about the cases a == c or c == b?
	}
	
	@Override
	public String toString() {
		return a + ", " + b + ", " + c;
	}
	
	@Override
	public boolean equals(Object tri) {
		if (a == ((Triangle)tri).a && b == ((Triangle)tri).b && c == ((Triangle)tri).c) return true;
		return false;
	}


	public boolean isRightAngled() {
		if (a*a + b*b == c*c) return true;
		if (b*b + c*c == a*a) return true;
		if (c*c + a*a == b*b) return true;
		return false;
	}

}
