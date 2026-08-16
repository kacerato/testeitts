package org.apache.commons.math3.fraction;

import E2.d;
import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;
import org.apache.commons.math3.Field;
import org.apache.commons.math3.FieldElement;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.ZeroException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.ArithmeticUtils;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathUtils;

public class BigFraction extends Number implements FieldElement<BigFraction>, Comparable<BigFraction>, Serializable {
    private static final long serialVersionUID = -5630213147331578515L;
    private final BigInteger denominator;
    private final BigInteger numerator;
    public static final BigFraction TWO = new BigFraction(2);
    public static final BigFraction ONE = new BigFraction(1);
    public static final BigFraction ZERO = new BigFraction(0);
    public static final BigFraction MINUS_ONE = new BigFraction(-1);
    public static final BigFraction FOUR_FIFTHS = new BigFraction(4, 5);
    public static final BigFraction ONE_FIFTH = new BigFraction(1, 5);
    public static final BigFraction ONE_HALF = new BigFraction(1, 2);
    public static final BigFraction ONE_QUARTER = new BigFraction(1, 4);
    public static final BigFraction ONE_THIRD = new BigFraction(1, 3);
    public static final BigFraction THREE_FIFTHS = new BigFraction(3, 5);
    public static final BigFraction THREE_QUARTERS = new BigFraction(3, 4);
    public static final BigFraction TWO_FIFTHS = new BigFraction(2, 5);
    public static final BigFraction TWO_QUARTERS = new BigFraction(2, 4);
    public static final BigFraction TWO_THIRDS = new BigFraction(2, 3);
    private static final BigInteger ONE_HUNDRED = BigInteger.valueOf(100);

    public BigFraction(BigInteger bigInteger) {
        this(bigInteger, BigInteger.ONE);
    }

    public static BigFraction getReducedFraction(int i10, int i11) {
        return i10 == 0 ? ZERO : new BigFraction(i10, i11);
    }

    public BigFraction abs() {
        return this.numerator.signum() == 1 ? this : negate();
    }

    public BigDecimal bigDecimalValue() {
        return new BigDecimal(this.numerator).divide(new BigDecimal(this.denominator));
    }

    @Override
    public double doubleValue() {
        double doubleValue = this.numerator.doubleValue() / this.denominator.doubleValue();
        if (!Double.isNaN(doubleValue)) {
            return doubleValue;
        }
        int max = FastMath.max(this.numerator.bitLength(), this.denominator.bitLength()) - FastMath.getExponent(Double.MAX_VALUE);
        return this.numerator.shiftRight(max).doubleValue() / this.denominator.shiftRight(max).doubleValue();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BigFraction) {
            BigFraction reduce = ((BigFraction) obj).reduce();
            BigFraction reduce2 = reduce();
            if (reduce2.numerator.equals(reduce.numerator) && reduce2.denominator.equals(reduce.denominator)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public float floatValue() {
        float floatValue = this.numerator.floatValue() / this.denominator.floatValue();
        if (!Double.isNaN(floatValue)) {
            return floatValue;
        }
        int max = FastMath.max(this.numerator.bitLength(), this.denominator.bitLength()) - FastMath.getExponent(Float.MAX_VALUE);
        return this.numerator.shiftRight(max).floatValue() / this.denominator.shiftRight(max).floatValue();
    }

    public BigInteger getDenominator() {
        return this.denominator;
    }

    public int getDenominatorAsInt() {
        return this.denominator.intValue();
    }

    public long getDenominatorAsLong() {
        return this.denominator.longValue();
    }

    public BigInteger getNumerator() {
        return this.numerator;
    }

    public int getNumeratorAsInt() {
        return this.numerator.intValue();
    }

    public long getNumeratorAsLong() {
        return this.numerator.longValue();
    }

    public int hashCode() {
        return ((this.numerator.hashCode() + 629) * 37) + this.denominator.hashCode();
    }

    @Override
    public int intValue() {
        return this.numerator.divide(this.denominator).intValue();
    }

    @Override
    public long longValue() {
        return this.numerator.divide(this.denominator).longValue();
    }

    public double percentageValue() {
        return multiply(ONE_HUNDRED).doubleValue();
    }

    public BigFraction pow(int i10) {
        if (i10 == 0) {
            return ONE;
        }
        if (this.numerator.signum() == 0) {
            return this;
        }
        if (i10 < 0) {
            int i11 = -i10;
            return new BigFraction(this.denominator.pow(i11), this.numerator.pow(i11));
        }
        return new BigFraction(this.numerator.pow(i10), this.denominator.pow(i10));
    }

    public BigFraction reduce() {
        BigInteger gcd = this.numerator.gcd(this.denominator);
        return BigInteger.ONE.compareTo(gcd) < 0 ? new BigFraction(this.numerator.divide(gcd), this.denominator.divide(gcd)) : this;
    }

    public String toString() {
        if (BigInteger.ONE.equals(this.denominator)) {
            return this.numerator.toString();
        }
        if (BigInteger.ZERO.equals(this.numerator)) {
            return "0";
        }
        return ((Object) this.numerator) + " / " + ((Object) this.denominator);
    }

    public BigFraction(BigInteger bigInteger, BigInteger bigInteger2) {
        MathUtils.checkNotNull(bigInteger, LocalizedFormats.NUMERATOR, new Object[0]);
        MathUtils.checkNotNull(bigInteger2, LocalizedFormats.DENOMINATOR, new Object[0]);
        if (bigInteger2.signum() != 0) {
            if (bigInteger.signum() == 0) {
                this.numerator = BigInteger.ZERO;
                this.denominator = BigInteger.ONE;
                return;
            }
            BigInteger gcd = bigInteger.gcd(bigInteger2);
            if (BigInteger.ONE.compareTo(gcd) < 0) {
                bigInteger = bigInteger.divide(gcd);
                bigInteger2 = bigInteger2.divide(gcd);
            }
            if (bigInteger2.signum() == -1) {
                bigInteger = bigInteger.negate();
                bigInteger2 = bigInteger2.negate();
            }
            this.numerator = bigInteger;
            this.denominator = bigInteger2;
            return;
        }
        throw new ZeroException(LocalizedFormats.ZERO_DENOMINATOR, new Object[0]);
    }

    public BigFraction add(BigInteger bigInteger) throws NullArgumentException {
        MathUtils.checkNotNull(bigInteger);
        if (this.numerator.signum() == 0) {
            return new BigFraction(bigInteger);
        }
        return bigInteger.signum() == 0 ? this : new BigFraction(this.numerator.add(this.denominator.multiply(bigInteger)), this.denominator);
    }

    public BigDecimal bigDecimalValue(int i10) {
        return new BigDecimal(this.numerator).divide(new BigDecimal(this.denominator), i10);
    }

    @Override
    public int compareTo(BigFraction bigFraction) {
        int signum = this.numerator.signum();
        int signum2 = bigFraction.numerator.signum();
        if (signum != signum2) {
            return signum > signum2 ? 1 : -1;
        }
        if (signum == 0) {
            return 0;
        }
        return this.numerator.multiply(bigFraction.denominator).compareTo(this.denominator.multiply(bigFraction.numerator));
    }

    public BigFraction divide(BigInteger bigInteger) {
        if (bigInteger != null) {
            if (bigInteger.signum() != 0) {
                if (this.numerator.signum() == 0) {
                    return ZERO;
                }
                return new BigFraction(this.numerator, this.denominator.multiply(bigInteger));
            }
            throw new MathArithmeticException(LocalizedFormats.ZERO_DENOMINATOR, new Object[0]);
        }
        throw new NullArgumentException(LocalizedFormats.FRACTION, new Object[0]);
    }

    @Override
    public Field<BigFraction> getField() {
        return BigFractionField.getInstance();
    }

    @Override
    public BigFraction negate() {
        return new BigFraction(this.numerator.negate(), this.denominator);
    }

    @Override
    public BigFraction reciprocal() {
        return new BigFraction(this.denominator, this.numerator);
    }

    public BigFraction subtract(BigInteger bigInteger) {
        if (bigInteger != null) {
            if (bigInteger.signum() == 0) {
                return this;
            }
            if (this.numerator.signum() == 0) {
                return new BigFraction(bigInteger.negate());
            }
            return new BigFraction(this.numerator.subtract(this.denominator.multiply(bigInteger)), this.denominator);
        }
        throw new NullArgumentException();
    }

    public BigDecimal bigDecimalValue(int i10, int i11) {
        return new BigDecimal(this.numerator).divide(new BigDecimal(this.denominator), i10, i11);
    }

    public BigFraction multiply(BigInteger bigInteger) {
        if (bigInteger != null) {
            if (this.numerator.signum() != 0 && bigInteger.signum() != 0) {
                return new BigFraction(bigInteger.multiply(this.numerator), this.denominator);
            }
            return ZERO;
        }
        throw new NullArgumentException();
    }

    public BigFraction pow(long j10) {
        if (j10 == 0) {
            return ONE;
        }
        if (this.numerator.signum() == 0) {
            return this;
        }
        if (j10 < 0) {
            long j11 = -j10;
            return new BigFraction(ArithmeticUtils.pow(this.denominator, j11), ArithmeticUtils.pow(this.numerator, j11));
        }
        return new BigFraction(ArithmeticUtils.pow(this.numerator, j10), ArithmeticUtils.pow(this.denominator, j10));
    }

    public BigFraction add(int i10) {
        return add(BigInteger.valueOf(i10));
    }

    @Override
    public BigFraction multiply(int i10) {
        if (i10 != 0 && this.numerator.signum() != 0) {
            return multiply(BigInteger.valueOf(i10));
        }
        return ZERO;
    }

    public BigFraction subtract(int i10) {
        return subtract(BigInteger.valueOf(i10));
    }

    public BigFraction add(long j10) {
        return add(BigInteger.valueOf(j10));
    }

    public BigFraction divide(int i10) {
        return divide(BigInteger.valueOf(i10));
    }

    public BigFraction subtract(long j10) {
        return subtract(BigInteger.valueOf(j10));
    }

    @Override
    public BigFraction add(BigFraction bigFraction) {
        BigInteger multiply;
        BigInteger bigInteger;
        if (bigFraction != null) {
            if (bigFraction.numerator.signum() == 0) {
                return this;
            }
            if (this.numerator.signum() == 0) {
                return bigFraction;
            }
            if (this.denominator.equals(bigFraction.denominator)) {
                bigInteger = this.numerator.add(bigFraction.numerator);
                multiply = this.denominator;
            } else {
                BigInteger add = this.numerator.multiply(bigFraction.denominator).add(bigFraction.numerator.multiply(this.denominator));
                multiply = this.denominator.multiply(bigFraction.denominator);
                bigInteger = add;
            }
            if (bigInteger.signum() == 0) {
                return ZERO;
            }
            return new BigFraction(bigInteger, multiply);
        }
        throw new NullArgumentException(LocalizedFormats.FRACTION, new Object[0]);
    }

    public BigFraction divide(long j10) {
        return divide(BigInteger.valueOf(j10));
    }

    public BigFraction pow(BigInteger bigInteger) {
        if (bigInteger.signum() == 0) {
            return ONE;
        }
        if (this.numerator.signum() == 0) {
            return this;
        }
        if (bigInteger.signum() == -1) {
            BigInteger negate = bigInteger.negate();
            return new BigFraction(ArithmeticUtils.pow(this.denominator, negate), ArithmeticUtils.pow(this.numerator, negate));
        }
        return new BigFraction(ArithmeticUtils.pow(this.numerator, bigInteger), ArithmeticUtils.pow(this.denominator, bigInteger));
    }

    @Override
    public BigFraction subtract(BigFraction bigFraction) {
        BigInteger multiply;
        BigInteger bigInteger;
        if (bigFraction != null) {
            if (bigFraction.numerator.signum() == 0) {
                return this;
            }
            if (this.numerator.signum() == 0) {
                return bigFraction.negate();
            }
            if (this.denominator.equals(bigFraction.denominator)) {
                bigInteger = this.numerator.subtract(bigFraction.numerator);
                multiply = this.denominator;
            } else {
                BigInteger subtract = this.numerator.multiply(bigFraction.denominator).subtract(bigFraction.numerator.multiply(this.denominator));
                multiply = this.denominator.multiply(bigFraction.denominator);
                bigInteger = subtract;
            }
            return new BigFraction(bigInteger, multiply);
        }
        throw new NullArgumentException(LocalizedFormats.FRACTION, new Object[0]);
    }

    @Override
    public BigFraction divide(BigFraction bigFraction) {
        if (bigFraction != null) {
            if (bigFraction.numerator.signum() != 0) {
                if (this.numerator.signum() == 0) {
                    return ZERO;
                }
                return multiply(bigFraction.reciprocal());
            }
            throw new MathArithmeticException(LocalizedFormats.ZERO_DENOMINATOR, new Object[0]);
        }
        throw new NullArgumentException(LocalizedFormats.FRACTION, new Object[0]);
    }

    public BigFraction multiply(long j10) {
        if (j10 != 0 && this.numerator.signum() != 0) {
            return multiply(BigInteger.valueOf(j10));
        }
        return ZERO;
    }

    @Override
    public BigFraction multiply(BigFraction bigFraction) {
        if (bigFraction != null) {
            if (this.numerator.signum() != 0 && bigFraction.numerator.signum() != 0) {
                return new BigFraction(this.numerator.multiply(bigFraction.numerator), this.denominator.multiply(bigFraction.denominator));
            }
            return ZERO;
        }
        throw new NullArgumentException(LocalizedFormats.FRACTION, new Object[0]);
    }

    public double pow(double d10) {
        return FastMath.pow(this.numerator.doubleValue(), d10) / FastMath.pow(this.denominator.doubleValue(), d10);
    }

    public BigFraction(double d10) throws MathIllegalArgumentException {
        if (!Double.isNaN(d10)) {
            if (!Double.isInfinite(d10)) {
                long doubleToLongBits = Double.doubleToLongBits(d10);
                long j10 = Long.MIN_VALUE & doubleToLongBits;
                long j11 = d.f5376b & doubleToLongBits;
                long j12 = doubleToLongBits & d.f5375a;
                j12 = j11 != 0 ? j12 | 4503599627370496L : j12;
                j12 = j10 != 0 ? -j12 : j12;
                int i10 = ((int) (j11 >> 52)) - 1075;
                while ((9007199254740990L & j12) != 0 && (1 & j12) == 0) {
                    j12 >>= 1;
                    i10++;
                }
                if (i10 < 0) {
                    this.numerator = BigInteger.valueOf(j12);
                    this.denominator = BigInteger.ZERO.flipBit(-i10);
                    return;
                } else {
                    this.numerator = BigInteger.valueOf(j12).multiply(BigInteger.ZERO.flipBit(i10));
                    this.denominator = BigInteger.ONE;
                    return;
                }
            }
            throw new MathIllegalArgumentException(LocalizedFormats.INFINITE_VALUE_CONVERSION, new Object[0]);
        }
        throw new MathIllegalArgumentException(LocalizedFormats.NAN_VALUE_CONVERSION, new Object[0]);
    }

    public BigFraction(double d10, double d11, int i10) throws FractionConversionException {
        this(d10, d11, Integer.MAX_VALUE, i10);
    }

    private BigFraction(double d10, double d11, int i10, int i11) throws FractionConversionException {
        long j10;
        long j11;
        long j12;
        long floor = (long) FastMath.floor(d10);
        if (FastMath.abs(floor) > 2147483647L) {
            throw new FractionConversionException(d10, floor, 1L);
        }
        if (FastMath.abs(floor - d10) < d11) {
            this.numerator = BigInteger.valueOf(floor);
            this.denominator = BigInteger.ONE;
            return;
        }
        double d12 = d10;
        long j13 = 1;
        long j14 = 0;
        long j15 = 1;
        int i12 = 0;
        boolean z10 = false;
        long j16 = floor;
        while (true) {
            i12++;
            double d13 = 1.0d / (d12 - floor);
            long floor2 = (long) FastMath.floor(d13);
            long j17 = floor;
            j10 = (floor2 * j16) + j15;
            j11 = j16;
            j12 = (floor2 * j13) + j14;
            if (j10 > 2147483647L || j12 > 2147483647L) {
                break;
            }
            long j18 = floor2;
            boolean z11 = z10;
            long j19 = j15;
            double d14 = j10 / j12;
            if (i12 >= i11 || FastMath.abs(d14 - d10) <= d11 || j12 >= i10) {
                z10 = true;
                j18 = j17;
                j15 = j19;
            } else {
                j14 = j13;
                d12 = d13;
                j15 = j11;
                z10 = z11;
                j11 = j10;
                j13 = j12;
            }
            if (z10) {
                break;
            }
            floor = j18;
            j16 = j11;
        }
        if (d11 != 0.0d || FastMath.abs(j13) >= i10) {
            throw new FractionConversionException(d10, j10, j12);
        }
        if (i12 >= i11) {
            throw new FractionConversionException(d10, i11);
        }
        if (j12 < i10) {
            this.numerator = BigInteger.valueOf(j10);
            this.denominator = BigInteger.valueOf(j12);
        } else {
            this.numerator = BigInteger.valueOf(j11);
            this.denominator = BigInteger.valueOf(j13);
        }
    }

    public BigFraction(double d10, int i10) throws FractionConversionException {
        this(d10, 0.0d, i10, 100);
    }

    public BigFraction(int i10) {
        this(BigInteger.valueOf(i10), BigInteger.ONE);
    }

    public BigFraction(int i10, int i11) {
        this(BigInteger.valueOf(i10), BigInteger.valueOf(i11));
    }

    public BigFraction(long j10) {
        this(BigInteger.valueOf(j10), BigInteger.ONE);
    }

    public BigFraction(long j10, long j11) {
        this(BigInteger.valueOf(j10), BigInteger.valueOf(j11));
    }
}
