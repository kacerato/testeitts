package org.eclipse.jdt.internal.compiler.impl;

public class ShortConstant extends Constant {
    private short value;

    private ShortConstant(short s10) {
        this.value = s10;
    }

    public static Constant fromValue(short s10) {
        return new ShortConstant(s10);
    }

    @Override
    public byte byteValue() {
        return (byte) this.value;
    }

    @Override
    public char charValue() {
        return (char) this.value;
    }

    @Override
    public double doubleValue() {
        return this.value;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.value == ((ShortConstant) obj).value;
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
        return this.value;
    }

    @Override
    public String stringValue() {
        return String.valueOf((int) this.value);
    }

    @Override
    public String toString() {
        return "(short)" + ((int) this.value);
    }

    @Override
    public int typeID() {
        return 4;
    }
}
