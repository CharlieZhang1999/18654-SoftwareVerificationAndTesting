package fit.calculator;
import fit.ColumnFixture;
import calculator.Calculator;
public class CalculatorResult extends ColumnFixture{
    public int a;
    public int b;
    public int calculateSquare()  {
        Calculator calculator = new Calculator();
        return calculator.square(a);
    }

    public int calculatePower() {
        Calculator calculator = new Calculator();
        return calculator.power(a, b);
    }
}
