package org.eclipse.jdt.internal.compiler.impl;

public class DoubleConstant extends Constant {
    private double value;

    private DoubleConstant(double d10) {
        this.value = d10;
    }

    public static Constant fromValue(double d10) {
        return new DoubleConstant(d10);
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
        return obj != null && getClass() == obj.getClass() && Double.doubleToLongBits(this.value) == Double.doubleToLongBits(((DoubleConstant) obj).value);
    }

    @Override
    public float floatValue() {
        return (float) this.value;
    }

    public int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.value);
        return (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
    }

    @Override
    public int intValue() {
        return (int) this.value;
    }

    @Override
    public long longValue() {
        return (long) this.value;
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
        if (this == Constant.NotAConstant) {
            return "(Constant) NotAConstant";
        }
        return "(double)" + this.value;
    }

    @Override
    public int typeID() {
        return 8;
    }
}
