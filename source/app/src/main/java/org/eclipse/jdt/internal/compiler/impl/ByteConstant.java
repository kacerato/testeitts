package org.eclipse.jdt.internal.compiler.impl;

public class ByteConstant extends Constant {
    private byte value;

    private ByteConstant(byte b10) {
        this.value = b10;
    }

    public static Constant fromValue(byte b10) {
        return new ByteConstant(b10);
    }

    @Override
    public byte byteValue() {
        return this.value;
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
        return obj != null && getClass() == obj.getClass() && this.value == ((ByteConstant) obj).value;
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
        return "(byte)" + ((int) this.value);
    }

    @Override
    public int typeID() {
        return 3;
    }
}
