package org.apache.commons.math3.fraction;

import java.io.Serializable;
import java.math.BigInteger;
import org.apache.commons.math3.Field;
import org.apache.commons.math3.FieldElement;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.ArithmeticUtils;
import org.apache.commons.math3.util.FastMath;

public class Fraction extends Number implements FieldElement<Fraction>, Comparable<Fraction>, Serializable {
    private static final double DEFAULT_EPSILON = 1.0E-5d;
    private static final long serialVersionUID = 3698073679419233275L;
    private final int denominator;
    private final int numerator;
    public static final Fraction TWO = new Fraction(2, 1);
    public static final Fraction ONE = new Fraction(1, 1);
    public static final Fraction ZERO = new Fraction(0, 1);
    public static final Fraction FOUR_FIFTHS = new Fraction(4, 5);
    public static final Fraction ONE_FIFTH = new Fraction(1, 5);
    public static final Fraction ONE_HALF = new Fraction(1, 2);
    public static final Fraction ONE_QUARTER = new Fraction(1, 4);
    public static final Fraction ONE_THIRD = new Fraction(1, 3);
    public static final Fraction THREE_FIFTHS = new Fraction(3, 5);
    public static final Fraction THREE_QUARTERS = new Fraction(3, 4);
    public static final Fraction TWO_FIFTHS = new Fraction(2, 5);
    public static final Fraction TWO_QUARTERS = new Fraction(2, 4);
    public static final Fraction TWO_THIRDS = new Fraction(2, 3);
    public static final Fraction MINUS_ONE = new Fraction(-1, 1);

    public Fraction(double d10) throws FractionConversionException {
        this(d10, 1.0E-5d, 100);
    }

    private Fraction addSub(Fraction fraction, boolean z10) {
        if (fraction == null) {
            throw new NullArgumentException(LocalizedFormats.FRACTION, new Object[0]);
        }
        if (this.numerator == 0) {
            return z10 ? fraction : fraction.negate();
        }
        if (fraction.numerator == 0) {
            return this;
        }
        int gcd = ArithmeticUtils.gcd(this.denominator, fraction.denominator);
        if (gcd == 1) {
            int mulAndCheck = ArithmeticUtils.mulAndCheck(this.numerator, fraction.denominator);
            int mulAndCheck2 = ArithmeticUtils.mulAndCheck(fraction.numerator, this.denominator);
            return new Fraction(z10 ? ArithmeticUtils.addAndCheck(mulAndCheck, mulAndCheck2) : ArithmeticUtils.subAndCheck(mulAndCheck, mulAndCheck2), ArithmeticUtils.mulAndCheck(this.denominator, fraction.denominator));
        }
        BigInteger multiply = BigInteger.valueOf(this.numerator).multiply(BigInteger.valueOf(fraction.denominator / gcd));
        BigInteger multiply2 = BigInteger.valueOf(fraction.numerator).multiply(BigInteger.valueOf(this.denominator / gcd));
        BigInteger add = z10 ? multiply.add(multiply2) : multiply.subtract(multiply2);
        int intValue = add.mod(BigInteger.valueOf(gcd)).intValue();
        int gcd2 = intValue == 0 ? gcd : ArithmeticUtils.gcd(intValue, gcd);
        BigInteger divide = add.divide(BigInteger.valueOf(gcd2));
        if (divide.bitLength() <= 31) {
            return new Fraction(divide.intValue(), ArithmeticUtils.mulAndCheck(this.denominator / gcd, fraction.denominator / gcd2));
        }
        throw new MathArithmeticException(LocalizedFormats.NUMERATOR_OVERFLOW_AFTER_MULTIPLY, divide);
    }

    public static Fraction getReducedFraction(int i10, int i11) {
        if (i11 == 0) {
            throw new MathArithmeticException(LocalizedFormats.ZERO_DENOMINATOR_IN_FRACTION, Integer.valueOf(i10), Integer.valueOf(i11));
        }
        if (i10 == 0) {
            return ZERO;
        }
        if (i11 == Integer.MIN_VALUE && (i10 & 1) == 0) {
            i10 /= 2;
            i11 /= 2;
        }
        if (i11 < 0) {
            if (i10 == Integer.MIN_VALUE || i11 == Integer.MIN_VALUE) {
                throw new MathArithmeticException(LocalizedFormats.OVERFLOW_IN_FRACTION, Integer.valueOf(i10), Integer.valueOf(i11));
            }
            i10 = -i10;
            i11 = -i11;
        }
        int gcd = ArithmeticUtils.gcd(i10, i11);
        return new Fraction(i10 / gcd, i11 / gcd);
    }

    public Fraction abs() {
        return this.numerator >= 0 ? this : negate();
    }

    @Override
    public double doubleValue() {
        return this.numerator / this.denominator;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Fraction)) {
            return false;
        }
        Fraction fraction = (Fraction) obj;
        return this.numerator == fraction.numerator && this.denominator == fraction.denominator;
    }

    @Override
    public float floatValue() {
        return (float) doubleValue();
    }

    public int getDenominator() {
        return this.denominator;
    }

    public int getNumerator() {
        return this.numerator;
    }

    public int hashCode() {
        return ((this.numerator + 629) * 37) + this.denominator;
    }

    @Override
    public int intValue() {
        return (int) doubleValue();
    }

    @Override
    public long longValue() {
        return (long) doubleValue();
    }

    public double percentageValue() {
        return doubleValue() * 100.0d;
    }

    public String toString() {
        if (this.denominator == 1) {
            return Integer.toString(this.numerator);
        }
        if (this.numerator == 0) {
            return "0";
        }
        return this.numerator + " / " + this.denominator;
    }

    public Fraction(double d10, double d11, int i10) throws FractionConversionException {
        this(d10, d11, Integer.MAX_VALUE, i10);
    }

    @Override
    public Fraction add(Fraction fraction) {
        return addSub(fraction, true);
    }

    @Override
    public int compareTo(Fraction fraction) {
        long j10 = this.numerator * fraction.denominator;
        long j11 = this.denominator * fraction.numerator;
        if (j10 < j11) {
            return -1;
        }
        return j10 > j11 ? 1 : 0;
    }

    @Override
    public Fraction divide(Fraction fraction) {
        if (fraction != null) {
            if (fraction.numerator != 0) {
                return multiply(fraction.reciprocal());
            }
            throw new MathArithmeticException(LocalizedFormats.ZERO_FRACTION_TO_DIVIDE_BY, Integer.valueOf(fraction.numerator), Integer.valueOf(fraction.denominator));
        }
        throw new NullArgumentException(LocalizedFormats.FRACTION, new Object[0]);
    }

    @Override
    public Field<Fraction> getField() {
        return FractionField.getInstance();
    }

    @Override
    public Fraction negate() {
        int i10 = this.numerator;
        if (i10 != Integer.MIN_VALUE) {
            return new Fraction(-i10, this.denominator);
        }
        throw new MathArithmeticException(LocalizedFormats.OVERFLOW_IN_FRACTION, Integer.valueOf(this.numerator), Integer.valueOf(this.denominator));
    }

    @Override
    public Fraction reciprocal() {
        return new Fraction(this.denominator, this.numerator);
    }

    @Override
    public Fraction subtract(Fraction fraction) {
        return addSub(fraction, false);
    }

    public Fraction(double d10, int i10) throws FractionConversionException {
        this(d10, 0.0d, i10, 100);
    }

    public Fraction add(int i10) {
        int i11 = this.numerator;
        int i12 = this.denominator;
        return new Fraction(i11 + (i10 * i12), i12);
    }

    @Override
    public Fraction multiply(Fraction fraction) {
        if (fraction != null) {
            int i10 = this.numerator;
            if (i10 != 0 && fraction.numerator != 0) {
                int gcd = ArithmeticUtils.gcd(i10, fraction.denominator);
                int gcd2 = ArithmeticUtils.gcd(fraction.numerator, this.denominator);
                return getReducedFraction(ArithmeticUtils.mulAndCheck(this.numerator / gcd, fraction.numerator / gcd2), ArithmeticUtils.mulAndCheck(this.denominator / gcd2, fraction.denominator / gcd));
            }
            return ZERO;
        }
        throw new NullArgumentException(LocalizedFormats.FRACTION, new Object[0]);
    }

    public Fraction subtract(int i10) {
        int i11 = this.numerator;
        int i12 = this.denominator;
        return new Fraction(i11 - (i10 * i12), i12);
    }

    private Fraction(double d10, double d11, int i10, int i11) throws FractionConversionException {
        long j10;
        long j11;
        long j12;
        long floor = (long) FastMath.floor(d10);
        if (FastMath.abs(floor) > 2147483647L) {
            throw new FractionConversionException(d10, floor, 1L);
        }
        int i12 = 1;
        if (FastMath.abs(floor - d10) < d11) {
            this.numerator = (int) floor;
            this.denominator = 1;
            return;
        }
        int i13 = 0;
        double d12 = d10;
        long j13 = 1;
        long j14 = 0;
        boolean z10 = false;
        long j15 = 1;
        long j16 = floor;
        while (true) {
            i13 += i12;
            double d13 = 1.0d / (d12 - floor);
            long floor2 = (long) FastMath.floor(d13);
            long j17 = floor;
            j10 = (floor2 * j16) + j15;
            j11 = (floor2 * j13) + j14;
            if (FastMath.abs(j10) > 2147483647L || FastMath.abs(j11) > 2147483647L) {
                break;
            }
            long j18 = j16;
            boolean z11 = z10;
            double d14 = j10 / j11;
            if (i13 >= i11 || FastMath.abs(d14 - d10) <= d11 || j11 >= i10) {
                j16 = j18;
                z10 = true;
            } else {
                j16 = j10;
                j14 = j13;
                d12 = d13;
                j15 = j18;
                j17 = floor2;
                z10 = z11;
                j13 = j11;
            }
            if (z10) {
                j12 = j13;
                break;
            } else {
                floor = j17;
                i12 = 1;
            }
        }
        long j19 = j16;
        if (d11 != 0.0d || FastMath.abs(j13) >= i10) {
            throw new FractionConversionException(d10, j10, j11);
        }
        j12 = j13;
        j16 = j19;
        if (i13 >= i11) {
            throw new FractionConversionException(d10, i11);
        }
        if (j11 < i10) {
            this.numerator = (int) j10;
            this.denominator = (int) j11;
        } else {
            this.numerator = (int) j16;
            this.denominator = (int) j12;
        }
    }

    public Fraction divide(int i10) {
        return divide(new Fraction(i10));
    }

    @Override
    public Fraction multiply(int i10) {
        return multiply(new Fraction(i10));
    }

    public Fraction(int i10) {
        this(i10, 1);
    }

    public Fraction(int i10, int i11) {
        if (i11 != 0) {
            if (i11 < 0) {
                if (i10 == Integer.MIN_VALUE || i11 == Integer.MIN_VALUE) {
                    throw new MathArithmeticException(LocalizedFormats.OVERFLOW_IN_FRACTION, Integer.valueOf(i10), Integer.valueOf(i11));
                }
                i10 = -i10;
                i11 = -i11;
            }
            int gcd = ArithmeticUtils.gcd(i10, i11);
            if (gcd > 1) {
                i10 /= gcd;
                i11 /= gcd;
            }
            if (i11 < 0) {
                i10 = -i10;
                i11 = -i11;
            }
            this.numerator = i10;
            this.denominator = i11;
            return;
        }
        throw new MathArithmeticException(LocalizedFormats.ZERO_DENOMINATOR_IN_FRACTION, Integer.valueOf(i10), Integer.valueOf(i11));
    }
}
