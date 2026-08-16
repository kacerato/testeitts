package com.jme3.util.struct;

public abstract class StructField<T> {
    private String name;
    private int position;
    protected T value;
    protected boolean isUpdateNeeded = true;
    private int depth = 0;
    private int group = 0;

    public StructField(int i10, String str, T t10) {
        this.position = i10;
        this.value = t10;
        this.name = str;
    }

    public void clearUpdateNeeded() {
        this.isUpdateNeeded = false;
    }

    public int getDepth() {
        return this.depth;
    }

    public int getGroup() {
        return this.group;
    }

    public String getName() {
        String str = this.name;
        return str != null ? str : this.value.getClass().getSimpleName();
    }

    public int getPosition() {
        return this.position;
    }

    public T getValue() {
        return this.value;
    }

    public boolean isUpdateNeeded() {
        return this.isUpdateNeeded;
    }

    public void setDepth(int i10) {
        this.depth = i10;
    }

    public void setGroup(int i10) {
        this.group = i10;
    }

    public void setPosition(int i10) {
        this.position = i10;
    }

    public String toString() {
        return "StructField[" + getName() + "] = " + this.value.toString();
    }
}
