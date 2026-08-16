package org.eclipse.jdt.internal.compiler.impl;

public class LongConstant extends Constant {
    private long value;
    private static final LongConstant ZERO = new LongConstant(0);
    private static final LongConstant MIN_VALUE = new LongConstant(Long.MIN_VALUE);

    private LongConstant(long j10) {
        this.value = j10;
    }

    public static Constant fromValue(long j10) {
        return j10 == 0 ? ZERO : j10 == Long.MIN_VALUE ? MIN_VALUE : new LongConstant(j10);
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
        return obj != null && getClass() == obj.getClass() && this.value == ((LongConstant) obj).value;
    }

    @Override
    public float floatValue() {
        return (float) this.value;
    }

    public int hashCode() {
        long j10 = this.value;
        return (int) (j10 ^ (j10 >>> 32));
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
        return "(long)" + this.value;
    }

    @Override
    public int typeID() {
        return 7;
    }
}
