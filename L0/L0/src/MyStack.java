public class MyStack {
    private int maxSize = 10;
    private int[] stackArray;
    private int top;

    public MyStack() {
        stackArray = new int[maxSize];
        top = -1;
    }

    public void push(int j) throws InvalidOperationException{
        if(top >= maxSize - 1){
            throw new InvalidOperationException("Maximum capacity of stack is exceeded");
        }
        stackArray[++top] = j;
    }

    public int pop() throws InvalidOperationException{
        if(top < 0){
            throw new InvalidOperationException("Popping from an empty stack!");
        }
        return stackArray[top--];
    }

    public int peek() throws InvalidOperationException{
        if(top < 0){
            throw new InvalidOperationException("Peeking into an empty stack!");
        }
        return stackArray[top];
    }

    public int size() {
        return top + 1;
    }

    public boolean isEmpty() {
        return (top == -1);
    }
}



