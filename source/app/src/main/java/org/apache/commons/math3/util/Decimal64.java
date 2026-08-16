package org.apache.commons.math3.util;

import org.apache.commons.math3.Field;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.exception.DimensionMismatchException;

public class Decimal64 extends Number implements RealFieldElement<Decimal64>, Comparable<Decimal64> {
    private static final long serialVersionUID = 20120227;
    private final double value;
    public static final Decimal64 ZERO = new Decimal64(0.0d);
    public static final Decimal64 ONE = new Decimal64(1.0d);
    public static final Decimal64 NEGATIVE_INFINITY = new Decimal64(Double.NEGATIVE_INFINITY);
    public static final Decimal64 POSITIVE_INFINITY = new Decimal64(Double.POSITIVE_INFINITY);
    public static final Decimal64 NAN = new Decimal64(Double.NaN);

    public Decimal64(double d10) {
        this.value = d10;
    }

    @Override
    public byte byteValue() {
        return (byte) this.value;
    }

    @Override
    public double doubleValue() {
        return this.value;
    }

    public boolean equals(Object obj) {
        return (obj instanceof Decimal64) && Double.doubleToLongBits(this.value) == Double.doubleToLongBits(((Decimal64) obj).value);
    }

    @Override
    public float floatValue() {
        return (float) this.value;
    }

    @Override
    public Field<Decimal64> getField() {
        return Decimal64Field.getInstance();
    }

    @Override
    public double getReal() {
        return this.value;
    }

    public int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.value);
        return (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
    }

    @Override
    public int intValue() {
        return (int) this.value;
    }

    public boolean isInfinite() {
        return Double.isInfinite(this.value);
    }

    public boolean isNaN() {
        return Double.isNaN(this.value);
    }

    public Decimal64 log10() {
        return new Decimal64(FastMath.log10(this.value));
    }

    @Override
    public long longValue() {
        return (long) this.value;
    }

    @Override
    public long round() {
        return FastMath.round(this.value);
    }

    @Override
    public short shortValue() {
        return (short) this.value;
    }

    public String toString() {
        return Double.toString(this.value);
    }

    @Override
    public Decimal64 abs() {
        return new Decimal64(FastMath.abs(this.value));
    }

    @Override
    public Decimal64 acos() {
        return new Decimal64(FastMath.acos(this.value));
    }

    @Override
    public Decimal64 acosh() {
        return new Decimal64(FastMath.acosh(this.value));
    }

    @Override
    public Decimal64 asin() {
        return new Decimal64(FastMath.asin(this.value));
    }

    @Override
    public Decimal64 asinh() {
        return new Decimal64(FastMath.asinh(this.value));
    }

    @Override
    public Decimal64 atan() {
        return new Decimal64(FastMath.atan(this.value));
    }

    @Override
    public Decimal64 atan2(Decimal64 decimal64) {
        return new Decimal64(FastMath.atan2(this.value, decimal64.value));
    }

    @Override
    public Decimal64 atanh() {
        return new Decimal64(FastMath.atanh(this.value));
    }

    @Override
    public Decimal64 cbrt() {
        return new Decimal64(FastMath.cbrt(this.value));
    }

    @Override
    public Decimal64 ceil() {
        return new Decimal64(FastMath.ceil(this.value));
    }

    @Override
    public int compareTo(Decimal64 decimal64) {
        return Double.compare(this.value, decimal64.value);
    }

    @Override
    public Decimal64 cos() {
        return new Decimal64(FastMath.cos(this.value));
    }

    @Override
    public Decimal64 cosh() {
        return new Decimal64(FastMath.cosh(this.value));
    }

    @Override
    public Decimal64 exp() {
        return new Decimal64(FastMath.exp(this.value));
    }

    @Override
    public Decimal64 expm1() {
        return new Decimal64(FastMath.expm1(this.value));
    }

    @Override
    public Decimal64 floor() {
        return new Decimal64(FastMath.floor(this.value));
    }

    @Override
    public Decimal64 hypot(Decimal64 decimal64) {
        return new Decimal64(FastMath.hypot(this.value, decimal64.value));
    }

    @Override
    public Decimal64 log() {
        return new Decimal64(FastMath.log(this.value));
    }

    @Override
    public Decimal64 log1p() {
        return new Decimal64(FastMath.log1p(this.value));
    }

    @Override
    public Decimal64 negate() {
        return new Decimal64(-this.value);
    }

    @Override
    public Decimal64 reciprocal() {
        return new Decimal64(1.0d / this.value);
    }

    @Override
    public Decimal64 rint() {
        return new Decimal64(FastMath.rint(this.value));
    }

    @Override
    public Decimal64 rootN(int i10) {
        double d10 = this.value;
        if (d10 < 0.0d) {
            return new Decimal64(-FastMath.pow(-d10, 1.0d / i10));
        }
        return new Decimal64(FastMath.pow(d10, 1.0d / i10));
    }

    @Override
    public Decimal64 scalb(int i10) {
        return new Decimal64(FastMath.scalb(this.value, i10));
    }

    @Override
    public Decimal64 signum() {
        return new Decimal64(FastMath.signum(this.value));
    }

    @Override
    public Decimal64 sin() {
        return new Decimal64(FastMath.sin(this.value));
    }

    @Override
    public Decimal64 sinh() {
        return new Decimal64(FastMath.sinh(this.value));
    }

    @Override
    public Decimal64 sqrt() {
        return new Decimal64(FastMath.sqrt(this.value));
    }

    @Override
    public Decimal64 tan() {
        return new Decimal64(FastMath.tan(this.value));
    }

    @Override
    public Decimal64 tanh() {
        return new Decimal64(FastMath.tanh(this.value));
    }

    @Override
    public Decimal64 add(Decimal64 decimal64) {
        return new Decimal64(this.value + decimal64.value);
    }

    @Override
    public Decimal64 copySign(Decimal64 decimal64) {
        return new Decimal64(FastMath.copySign(this.value, decimal64.value));
    }

    @Override
    public Decimal64 divide(Decimal64 decimal64) {
        return new Decimal64(this.value / decimal64.value);
    }

    @Override
    public Decimal64 remainder(double d10) {
        return new Decimal64(FastMath.IEEEremainder(this.value, d10));
    }

    @Override
    public Decimal64 subtract(Decimal64 decimal64) {
        return new Decimal64(this.value - decimal64.value);
    }

    @Override
    public Decimal64 add(double d10) {
        return new Decimal64(this.value + d10);
    }

    @Override
    public Decimal64 copySign(double d10) {
        return new Decimal64(FastMath.copySign(this.value, d10));
    }

    @Override
    public Decimal64 divide(double d10) {
        return new Decimal64(this.value / d10);
    }

    @Override
    public Decimal64 multiply(Decimal64 decimal64) {
        return new Decimal64(this.value * decimal64.value);
    }

    @Override
    public Decimal64 pow(double d10) {
        return new Decimal64(FastMath.pow(this.value, d10));
    }

    @Override
    public Decimal64 remainder(Decimal64 decimal64) {
        return new Decimal64(FastMath.IEEEremainder(this.value, decimal64.value));
    }

    @Override
    public Decimal64 subtract(double d10) {
        return new Decimal64(this.value - d10);
    }

    @Override
    public Decimal64 multiply(int i10) {
        return new Decimal64(i10 * this.value);
    }

    @Override
    public Decimal64 pow(int i10) {
        return new Decimal64(FastMath.pow(this.value, i10));
    }

    @Override
    public Decimal64 multiply(double d10) {
        return new Decimal64(this.value * d10);
    }

    @Override
    public Decimal64 pow(Decimal64 decimal64) {
        return new Decimal64(FastMath.pow(this.value, decimal64.value));
    }

    @Override
    public Decimal64 linearCombination(Decimal64[] decimal64Arr, Decimal64[] decimal64Arr2) throws DimensionMismatchException {
        if (decimal64Arr.length == decimal64Arr2.length) {
            double[] dArr = new double[decimal64Arr.length];
            double[] dArr2 = new double[decimal64Arr2.length];
            for (int i10 = 0; i10 < decimal64Arr.length; i10++) {
                dArr[i10] = decimal64Arr[i10].value;
                dArr2[i10] = decimal64Arr2[i10].value;
            }
            return new Decimal64(MathArrays.linearCombination(dArr, dArr2));
        }
        throw new DimensionMismatchException(decimal64Arr.length, decimal64Arr2.length);
    }

    @Override
    public Decimal64 linearCombination(double[] dArr, Decimal64[] decimal64Arr) throws DimensionMismatchException {
        if (dArr.length == decimal64Arr.length) {
            double[] dArr2 = new double[decimal64Arr.length];
            for (int i10 = 0; i10 < dArr.length; i10++) {
                dArr2[i10] = decimal64Arr[i10].value;
            }
            return new Decimal64(MathArrays.linearCombination(dArr, dArr2));
        }
        throw new DimensionMismatchException(dArr.length, decimal64Arr.length);
    }

    @Override
    public Decimal64 linearCombination(Decimal64 decimal64, Decimal64 decimal642, Decimal64 decimal643, Decimal64 decimal644) {
        return new Decimal64(MathArrays.linearCombination(decimal64.value, decimal642.value, decimal643.value, decimal644.value));
    }

    @Override
    public Decimal64 linearCombination(double d10, Decimal64 decimal64, double d11, Decimal64 decimal642) {
        return new Decimal64(MathArrays.linearCombination(d10, decimal64.value, d11, decimal642.value));
    }

    @Override
    public Decimal64 linearCombination(Decimal64 decimal64, Decimal64 decimal642, Decimal64 decimal643, Decimal64 decimal644, Decimal64 decimal645, Decimal64 decimal646) {
        return new Decimal64(MathArrays.linearCombination(decimal64.value, decimal642.value, decimal643.value, decimal644.value, decimal645.value, decimal646.value));
    }

    @Override
    public Decimal64 linearCombination(double d10, Decimal64 decimal64, double d11, Decimal64 decimal642, double d12, Decimal64 decimal643) {
        return new Decimal64(MathArrays.linearCombination(d10, decimal64.value, d11, decimal642.value, d12, decimal643.value));
    }

    @Override
    public Decimal64 linearCombination(Decimal64 decimal64, Decimal64 decimal642, Decimal64 decimal643, Decimal64 decimal644, Decimal64 decimal645, Decimal64 decimal646, Decimal64 decimal647, Decimal64 decimal648) {
        return new Decimal64(MathArrays.linearCombination(decimal64.value, decimal642.value, decimal643.value, decimal644.value, decimal645.value, decimal646.value, decimal647.value, decimal648.value));
    }

    @Override
    public Decimal64 linearCombination(double d10, Decimal64 decimal64, double d11, Decimal64 decimal642, double d12, Decimal64 decimal643, double d13, Decimal64 decimal644) {
        return new Decimal64(MathArrays.linearCombination(d10, decimal64.value, d11, decimal642.value, d12, decimal643.value, d13, decimal644.value));
    }
}
