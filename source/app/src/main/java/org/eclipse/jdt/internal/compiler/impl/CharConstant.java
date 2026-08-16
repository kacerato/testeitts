package org.eclipse.jdt.internal.compiler.impl;

public class CharConstant extends Constant {
    private char value;

    private CharConstant(char c10) {
        this.value = c10;
    }

    public static Constant fromValue(char c10) {
        return new CharConstant(c10);
    }

    @Override
    public byte byteValue() {
        return (byte) this.value;
    }

    @Override
    public char charValue() {
        return this.value;
    }

    @Override
    public double doubleValue() {
        return this.value;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.value == ((CharConstant) obj).value;
    }

    @Override
    public float floatValue() {
        return this.value;
    }

    public int hashCode() {
        return this.value;
    }

    @Override
    public int intValue() {
        return this.value;
    }

    @Override
    public long longValue() {
        return this.value;
    }

    @Override
    public short shortValue() {
        return (short) this.value;
    }

    @Override
    public String stringValue() {
        return String.valueOf(this.value);
    }

    @Override
    public String toString() {
        return "(char)" + this.value;
    }

    @Override
    public int typeID() {
        return 2;
    }
}
