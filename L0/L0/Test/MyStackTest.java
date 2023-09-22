import static org.junit.Assert.*;
import org.junit.Before;
import org.junit.Test;

import javax.swing.text.html.InlineView;

public class MyStackTest {
    @Test
    public void stackIsEmptyOnConstruction() {
        MyStack s = new MyStack();
        assertTrue(s.isEmpty());
    }

    @Test
    public void stackIsSizeZeroOnConstruction() {
        MyStack s = new MyStack();
        assertEquals(s.size(), 0);
    }

    @Test
    public void stackIsSizeNAfterNPushes() throws InvalidOperationException {
        MyStack s = new MyStack();
        s.push(1);
        s.push(2);
        s.push(3);
        assertFalse(s.isEmpty());
        assertEquals(s.size(), 3);
    }

    @Test
    public void stackPushesXAndPops() throws InvalidOperationException{
        MyStack s = new MyStack();
        s.push(1);
        s.push(2);
        s.push(3);

        int originalSize = s.size();
        s.push(4);
        assertEquals(s.pop(), 4);
        assertEquals(s.size(), originalSize);
    }

    @Test
    public void stackPushesXAndPeeks() throws InvalidOperationException{
        MyStack s = new MyStack();
        s.push(1);
        s.push(2);
        s.push(3);
        s.push(4);

        int originalSize = s.size();
        int peekedElement = s.peek();
        assertEquals(peekedElement, 4);
        assertEquals(s.size(), originalSize);
    }

    @Test
    public void stackNPushesAndNPops() throws InvalidOperationException{
        MyStack s = new MyStack();
        int n = 5;
        for (int i = 0; i < n; i++){
            s.push(1);
        }
        for (int i = 0; i < n; i++){
            s.pop();
        }

        assertTrue(s.isEmpty());
        assertEquals(s.size(), 0);
    }

    @Test(expected=InvalidOperationException.class)
    public void stackPopsFromEmptyArray() throws InvalidOperationException{
        MyStack s = new MyStack();
        s.pop();
    }

    @Test(expected=InvalidOperationException.class)
    public void stackPeekIntoEmptyArray() throws InvalidOperationException{
        MyStack s = new MyStack();
        s.peek();
    }

    @Test(expected=InvalidOperationException.class)
    public void pushTooManyElementsToStack() throws InvalidOperationException{
        MyStack s = new MyStack();
        for(int i = 0; i < 20; i++){
            s.push(1);
        }
    }

}