/*
 We strongly suggest that you use a dependency management tool
 such as Maven or Gradle to add Hamcrest and Mockito dependencies
*/


import org.example.IDataBase;
import org.example.InvalidOperationException;
import org.example.MyPStack;
import org.example.OverflowException;
import org.junit.Before;
import org.junit.Test;

/* these import statements are for latest versions of Hamcrest */
import static org.junit.Assert.assertTrue;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.fail;
import static org.hamcrest.Matchers.*;
import static org.hamcrest.MatcherAssert.*;


import static org.mockito.Mockito.*;
import org.mockito.InOrder;


public class MyPStackTest {

    private MyPStack s;
    private IDataBase db;

    @Before
    public void setUp() throws Exception {
        db = mock(IDataBase.class);
        s = new MyPStack(db);
    }

    @Test
    public void stackIsEmptyOnConstruction() {
        assertTrue(s.isEmpty());
    }

    @Test
    public void stackHasId(){
        assertThat(s.getId(), is(notNullValue()));
    }

    @Test
    public void canCreateStackWithoutSpecifyingCapacity() {
        MyPStack s = new MyPStack();
        assertThat(s, is(notNullValue()));
        assertThat(s.size(), is(equalTo(0)));
        assertThat(s.maxSize(), is(equalTo(10)));

    }
    @Test
    public void canSetTheCapacityOfStack() {
        MyPStack s = new MyPStack(100);
        assertThat(s.maxSize(), is(equalTo(100)));
    }

    @Test
    public void stackHasSizeZeroOnConstruction() {
        assertThat(s.size(), is(equalTo(0)));
    }

    @Test /* testing boundary behavior */
    public void after1PushStackIsNonEmptyAndSizeIs1() throws OverflowException {
        s.push(1);
        assertFalse(s.isEmpty());
        assertThat(s.size(), is(equalTo(1)));
    }

    @Test /* testing nominal behavior */
    public void afterNPushesStackSizeIsN() throws OverflowException {
        int n = 3;
        for (int i = 1; i <= n; i++) {
            s.push(i*100);
        }
        assertFalse(s.isEmpty());
        assertThat(s.size(), is(equalTo(n)));
    }

    @Test
    public void popAfterPushReturnsPushedValueAndRestoresStackSize()
            throws OverflowException, InvalidOperationException {
        int pushValue = 200;
        int oldSize = s.size();
        s.push(pushValue);
        assertThat(s.pop(), is(equalTo(pushValue)));
        assertThat(s.size(), is(equalTo(oldSize)));
    }

    @Test
    public void peekAfterPushReturnsPushedValueAndMaintainsStackSize()
            throws OverflowException, InvalidOperationException {
        int pushValue = 300;
        s.push(pushValue);
        int size = s.size();
        assertThat(s.peek(), is(equalTo(pushValue)));
        assertThat(s.size(), is(equalTo(size)));
    }

    @Test
    public void poppingAllValuesLeavesAnEmptyStack()
            throws OverflowException, InvalidOperationException {
        int size = 5;
        for (int v = 1; v <= size; v++) {
            s.push(v);
        }
        for (int v = 1; v <= size; v++) {
            s.pop();
        }
        assertTrue(s.isEmpty());
    }

    @Test (expected = InvalidOperationException.class)
    public void poppingFromEmptyStackThrowsException() throws InvalidOperationException {
        /* this will fail... naturally */
        s.pop();
    }

    @Test (expected = InvalidOperationException.class)
    public void peekingIntoEmptyStackThrowsException() throws InvalidOperationException {
        /* this will fail... naturally */
        s.peek();
    }

    @Test (expected = OverflowException.class)
    public void pushingTooManyElementsToStackThrowsException() throws OverflowException {
        for (int v = 1; v <= s.maxSize() + 1; v++) {
            s.push(v);
        }
    }

    @Test
    public void pushingTooManyElementsToStackThrowsExceptionSaferVersion() throws OverflowException {
        int lastDrop = 10;
        for (int v = 1; v <= s.maxSize(); v++) {
            s.push(v);
        }
        try {
            s.push(lastDrop);
            fail(); // hmmm, this should never happen
        } catch (OverflowException e) {
            // success: do nothing
        }
    }

    @Test
    public void canInstantiateWithMockIDataBase() {
        assertThat(s, is(notNullValue()));
    }

    @Test
    public void initiallyThereIsNoEntryInDB() throws OverflowException, InvalidOperationException {
        verify(db, never()).create(anyString(), anyInt());
    }

    @Test
    public void pushSavesTopInDBDuringFirstPush() throws OverflowException, InvalidOperationException {
        s.push(1);
        verify(db, times(1)).create(s.getId(), s.peek());
    }

    @Test
    public void pushUpdatesTopInDBInConsecutivePush() throws OverflowException, InvalidOperationException {
        s.push(1);
        s.push(2);
        s.push(3);
        InOrder inOrder = inOrder(db);
        inOrder.verify(db).update(s.getId(), 2);
        inOrder.verify(db).update(s.getId(), 3);
    }

    @Test
    public void popUpdatesTopInDB() throws OverflowException, InvalidOperationException{
        s.push(1);
        s.push(2);
        s.push(3);
        s.pop();
        s.pop();
//        InOrder inOrder = inOrder(db);
//        inOrder.verify(db).update(s.getId(), 2);
        verify(db).update(s.getId(), s.peek());
    }

    @Test
    public void resetReadsRightValueFromDB() throws OverflowException, InvalidOperationException {
        s.push(100);
        when(db.read(s.getId())).thenReturn(s.peek());
        s.reset();
        assertThat(s.peek(), is(equalTo(100)));
    }

    @Test
    public void afterResetStackHasOnlyLastElement() throws OverflowException, InvalidOperationException {
        s.push(100);
        s.push(200);
        s.push(300);
        when(db.read(s.getId())).thenReturn(s.peek());
        s.reset();
        verify(db).read(s.getId());
        assertThat(s.size(), is(equalTo(1)));
        assertThat(s.peek(), is(equalTo(300)));

    }

    @Test
    public void resetEmptyStackHasNoEffect() throws OverflowException, InvalidOperationException {
        s.reset();
        verify(db, never()).read(s.getId());
        assertThat(s.size(), is(equalTo(0)));
    }

    @Test
    public void whenStackBecomesEmptyDBEntryIsDeleted() throws OverflowException, InvalidOperationException {
        String id = s.getId();
        s.push(100);
        s.push(200);
        s.push(300);
        s.pop();
        s.pop();
        s.pop();
        assertThat(s.size(), is(equalTo(0)));
        verify(db).delete(id);

    }

    @Test
    public void canSaveMultipleStacksInDb() throws OverflowException, InvalidOperationException{
        s.push(100);
        s.push(200);
        String id1 = s.getId();
        s.pop();
        s.pop();

        s.push(300);
        String id2 = s.getId();
        verify(db).create(id2, 300);
        assertFalse(id1.equals(id2));

    }





}
