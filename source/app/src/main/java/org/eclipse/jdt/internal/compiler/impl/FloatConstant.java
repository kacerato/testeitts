package org.eclipse.jdt.internal.compiler.impl;

public class FloatConstant extends Constant {
    float value;

    private FloatConstant(float f10) {
        this.value = f10;
    }

    public static Constant fromValue(float f10) {
        return new FloatConstant(f10);
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
        return obj != null && getClass() == obj.getClass() && Float.floatToIntBits(this.value) == Float.floatToIntBits(((FloatConstant) obj).value);
    }

    @Override
    public float floatValue() {
        return this.value;
    }

    public int hashCode() {
        return Float.floatToIntBits(this.value);
    }

    @Override
    public int intValue() {
        return (int) this.value;
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
        return "(float)" + this.value;
    }

    @Override
    public int typeID() {
        return 9;
    }
}
