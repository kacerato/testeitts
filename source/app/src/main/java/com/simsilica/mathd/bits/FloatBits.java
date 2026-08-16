package com.simsilica.mathd.bits;

public final class FloatBits {
    private final int bits;
    private final float invMult;
    private final long mask;
    private final float maxValue;
    private final float minValue;
    private final float mult;
    private final int resolution;

    public FloatBits(float f10, float f11, int i10) {
        if (f10 > f11) {
            throw new IllegalArgumentException("Min value must be less than max value.");
        }
        if (i10 == 0 || i10 >= 64) {
            throw new IllegalArgumentException("Bits must be in the range 0 - 63");
        }
        this.minValue = f10;
        this.maxValue = f11;
        this.bits = i10;
        this.resolution = (int) Math.pow(2.0d, i10);
        this.mask = (-1) >>> (64 - i10);
        float f12 = f11 - f10;
        this.mult = (r1 - 1) / f12;
        this.invMult = f12 / (r1 - 1);
    }

    public static void main(String... strArr) {
        FloatBits floatBits = new FloatBits(-35.6f, 35.6f, 8);
        FloatBits floatBits2 = new FloatBits(-35.6f, 35.6f, 16);
        for (float f10 = 0.0f; f10 <= 10.0f; f10 += 0.001f) {
            long bits = floatBits.toBits(f10);
            long bits2 = floatBits2.toBits(f10);
            System.out.println("f:" + f10 + "  bits1:" + Long.toHexString(bits) + "  rev1:" + floatBits.fromBits(bits) + "  bits2:" + Long.toHexString(bits2) + "  rev2:" + floatBits2.fromBits(bits2));
        }
        long bits3 = floatBits.toBits(10.0f);
        long bits4 = floatBits2.toBits(10.0f);
        System.out.println("f:10.0  bits1:" + Long.toHexString(bits3) + "  rev1:" + floatBits.fromBits(bits3) + "  bits2:" + Long.toHexString(bits4) + "  rev2:" + floatBits2.fromBits(bits4));
    }

    public float fromBits(long j10) {
        return (((float) (j10 & this.mask)) * this.invMult) + this.minValue;
    }

    public int getBitSize() {
        return this.bits;
    }

    public float getFloatResolution() {
        return this.invMult;
    }

    public long getMask() {
        return this.mask;
    }

    public float getMaxValue() {
        return this.maxValue;
    }

    public float getMinValue() {
        return this.minValue;
    }

    public long toBits(float f10) {
        if (f10 < this.minValue) {
            System.out.println("!!!! FloatBits *** underflow:" + f10 + "  under:" + this.minValue);
            return 0L;
        }
        if (f10 <= this.maxValue) {
            return Math.round((f10 - r0) * this.mult);
        }
        System.out.println("!!!! FloatBits *** overflow:" + f10 + "  over:" + this.maxValue);
        return this.resolution - 1;
    }
}
