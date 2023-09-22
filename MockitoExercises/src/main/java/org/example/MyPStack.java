package org.example;

public class MyPStack {

    private int maxSize = 10;
    private int[] stackArray;
    private int top;
    private IDataBase db;
    private String id;
    private static int nextId = 1;

    public MyPStack() {
        stackArray = new int[maxSize];
        top = -1;
    }

    public MyPStack(IDataBase stackDB){
        db = stackDB;
        stackArray = new int[maxSize];
        top = -1;
        id = String.valueOf(nextId);
        nextId++;

    }
    public MyPStack(int capacity) {
        maxSize = capacity;
        stackArray = new int[maxSize];
        top = -1;
    }

    public void push(int j) throws OverflowException {
        if (isFull()) throw new OverflowException();
        if(size() == 0){
            db.create(id, j);
        }
        else{
            db.update(id, j);
        }
        stackArray[++top] = j;
    }

    public int pop() throws InvalidOperationException {
        if (isEmpty()) throw new InvalidOperationException();
        int returnValue = stackArray[top--];
        if (size() == 0){
            db.delete(id);
            stackArray = new int[maxSize];
            top = -1;
            id = String.valueOf(nextId);
            nextId++;
        }
        else{
            db.update(id, stackArray[top]);
        }
        return returnValue;
    }

    public int peek() throws InvalidOperationException {
        if (isEmpty()) throw new InvalidOperationException();
        return stackArray[top];
    }

    public int size() {
        return top + 1;
    }

    public boolean isEmpty() {
        return (top == -1);
    }

    public boolean isFull() {
        return (top == maxSize - 1);
    }

    public int maxSize() { // added for visibility to test overflow
        return maxSize;
    }

    public String getId(){
        return id;
    }

    public void reset() {
        if(size() == 0) {
            return;
        }
        int lastElement = db.read(id);
        top = 0;
        stackArray[top] = lastElement;
    }
}