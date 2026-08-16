package org.apache.commons.lang3.math;

import java.math.BigInteger;
import org.apache.commons.lang3.Validate;

public final class Fraction extends Number implements Comparable<Fraction> {
    private static final long serialVersionUID = 65382027393090L;
    private final int denominator;
    private final int numerator;
    public static final Fraction ZERO = new Fraction(0, 1);
    public static final Fraction ONE = new Fraction(1, 1);
    public static final Fraction ONE_HALF = new Fraction(1, 2);
    public static final Fraction ONE_THIRD = new Fraction(1, 3);
    public static final Fraction TWO_THIRDS = new Fraction(2, 3);
    public static final Fraction ONE_QUARTER = new Fraction(1, 4);
    public static final Fraction TWO_QUARTERS = new Fraction(2, 4);
    public static final Fraction THREE_QUARTERS = new Fraction(3, 4);
    public static final Fraction ONE_FIFTH = new Fraction(1, 5);
    public static final Fraction TWO_FIFTHS = new Fraction(2, 5);
    public static final Fraction THREE_FIFTHS = new Fraction(3, 5);
    public static final Fraction FOUR_FIFTHS = new Fraction(4, 5);
    private transient int hashCode = 0;
    private transient String toString = null;
    private transient String toProperString = null;

    private Fraction(int i10, int i11) {
        this.numerator = i10;
        this.denominator = i11;
    }

    private static int addAndCheck(int i10, int i11) {
        long j10 = i10 + i11;
        if (j10 < -2147483648L || j10 > 2147483647L) {
            throw new ArithmeticException("overflow: add");
        }
        return (int) j10;
    }

    private Fraction addSub(Fraction fraction, boolean z10) {
        Validate.isTrue(fraction != null, "The fraction must not be null", new Object[0]);
        if (this.numerator == 0) {
            return z10 ? fraction : fraction.negate();
        }
        if (fraction.numerator == 0) {
            return this;
        }
        int greatestCommonDivisor = greatestCommonDivisor(this.denominator, fraction.denominator);
        if (greatestCommonDivisor == 1) {
            int mulAndCheck = mulAndCheck(this.numerator, fraction.denominator);
            int mulAndCheck2 = mulAndCheck(fraction.numerator, this.denominator);
            return new Fraction(z10 ? addAndCheck(mulAndCheck, mulAndCheck2) : subAndCheck(mulAndCheck, mulAndCheck2), mulPosAndCheck(this.denominator, fraction.denominator));
        }
        BigInteger multiply = BigInteger.valueOf(this.numerator).multiply(BigInteger.valueOf(fraction.denominator / greatestCommonDivisor));
        BigInteger multiply2 = BigInteger.valueOf(fraction.numerator).multiply(BigInteger.valueOf(this.denominator / greatestCommonDivisor));
        BigInteger add = z10 ? multiply.add(multiply2) : multiply.subtract(multiply2);
        int intValue = add.mod(BigInteger.valueOf(greatestCommonDivisor)).intValue();
        int greatestCommonDivisor2 = intValue == 0 ? greatestCommonDivisor : greatestCommonDivisor(intValue, greatestCommonDivisor);
        BigInteger divide = add.divide(BigInteger.valueOf(greatestCommonDivisor2));
        if (divide.bitLength() <= 31) {
            return new Fraction(divide.intValue(), mulPosAndCheck(this.denominator / greatestCommonDivisor, fraction.denominator / greatestCommonDivisor2));
        }
        throw new ArithmeticException("overflow: numerator too large after multiply");
    }

    public static Fraction getFraction(int i10, int i11) {
        if (i11 != 0) {
            if (i11 < 0) {
                if (i10 == Integer.MIN_VALUE || i11 == Integer.MIN_VALUE) {
                    throw new ArithmeticException("overflow: can't negate");
                }
                i10 = -i10;
                i11 = -i11;
            }
            return new Fraction(i10, i11);
        }
        throw new ArithmeticException("The denominator must not be zero");
    }

    public static Fraction getReducedFraction(int i10, int i11) {
        if (i11 == 0) {
            throw new ArithmeticException("The denominator must not be zero");
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
                throw new ArithmeticException("overflow: can't negate");
            }
            i10 = -i10;
            i11 = -i11;
        }
        int greatestCommonDivisor = greatestCommonDivisor(i10, i11);
        return new Fraction(i10 / greatestCommonDivisor, i11 / greatestCommonDivisor);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0031, code lost:
    
        if (r3 != 1) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0033, code lost:
    
        r0 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x003a, code lost:
    
        if ((r0 & 1) != 0) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x003f, code lost:
    
        if (r0 <= 0) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0041, code lost:
    
        r6 = -r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0044, code lost:
    
        r0 = (r7 - r6) / 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0048, code lost:
    
        if (r0 != 0) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x004e, code lost:
    
        return (-r6) * (1 << r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0043, code lost:
    
        r7 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x003c, code lost:
    
        r0 = r0 / 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0035, code lost:
    
        r0 = -(r6 / 2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int greatestCommonDivisor(int i10, int i11) {
        if (i10 == 0 || i11 == 0) {
            if (i10 == Integer.MIN_VALUE || i11 == Integer.MIN_VALUE) {
                throw new ArithmeticException("overflow: gcd is 2^31");
            }
            return Math.abs(i10) + Math.abs(i11);
        }
        if (Math.abs(i10) == 1 || Math.abs(i11) == 1) {
            return 1;
        }
        if (i10 > 0) {
            i10 = -i10;
        }
        if (i11 > 0) {
            i11 = -i11;
        }
        int i12 = 0;
        while (true) {
            int i13 = i10 & 1;
            if (i13 != 0 || (i11 & 1) != 0 || i12 >= 31) {
                break;
            }
            i10 /= 2;
            i11 /= 2;
            i12++;
        }
        throw new ArithmeticException("overflow: gcd is 2^31");
    }

    private static int mulAndCheck(int i10, int i11) {
        long j10 = i10 * i11;
        if (j10 < -2147483648L || j10 > 2147483647L) {
            throw new ArithmeticException("overflow: mul");
        }
        return (int) j10;
    }

    private static int mulPosAndCheck(int i10, int i11) {
        long j10 = i10 * i11;
        if (j10 <= 2147483647L) {
            return (int) j10;
        }
        throw new ArithmeticException("overflow: mulPos");
    }

    private static int subAndCheck(int i10, int i11) {
        long j10 = i10 - i11;
        if (j10 < -2147483648L || j10 > 2147483647L) {
            throw new ArithmeticException("overflow: add");
        }
        return (int) j10;
    }

    public Fraction abs() {
        return this.numerator >= 0 ? this : negate();
    }

    public Fraction add(Fraction fraction) {
        return addSub(fraction, true);
    }

    public Fraction divideBy(Fraction fraction) {
        Validate.isTrue(fraction != null, "The fraction must not be null", new Object[0]);
        if (fraction.numerator != 0) {
            return multiplyBy(fraction.invert());
        }
        throw new ArithmeticException("The fraction to divide by must not be zero");
    }

    @Override
    public double doubleValue() {
        return this.numerator / this.denominator;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Fraction)) {
            return false;
        }
        Fraction fraction = (Fraction) obj;
        return getNumerator() == fraction.getNumerator() && getDenominator() == fraction.getDenominator();
    }

    @Override
    public float floatValue() {
        return this.numerator / this.denominator;
    }

    public int getDenominator() {
        return this.denominator;
    }

    public int getNumerator() {
        return this.numerator;
    }

    public int getProperNumerator() {
        return Math.abs(this.numerator % this.denominator);
    }

    public int getProperWhole() {
        return this.numerator / this.denominator;
    }

    public int hashCode() {
        if (this.hashCode == 0) {
            this.hashCode = ((getNumerator() + 629) * 37) + getDenominator();
        }
        return this.hashCode;
    }

    @Override
    public int intValue() {
        return this.numerator / this.denominator;
    }

    public Fraction invert() {
        int i10 = this.numerator;
        if (i10 == 0) {
            throw new ArithmeticException("Unable to invert zero.");
        }
        if (i10 != Integer.MIN_VALUE) {
            return i10 < 0 ? new Fraction(-this.denominator, -i10) : new Fraction(this.denominator, i10);
        }
        throw new ArithmeticException("overflow: can't negate numerator");
    }

    @Override
    public long longValue() {
        return this.numerator / this.denominator;
    }

    public Fraction multiplyBy(Fraction fraction) {
        Validate.isTrue(fraction != null, "The fraction must not be null", new Object[0]);
        int i10 = this.numerator;
        if (i10 == 0 || fraction.numerator == 0) {
            return ZERO;
        }
        int greatestCommonDivisor = greatestCommonDivisor(i10, fraction.denominator);
        int greatestCommonDivisor2 = greatestCommonDivisor(fraction.numerator, this.denominator);
        return getReducedFraction(mulAndCheck(this.numerator / greatestCommonDivisor, fraction.numerator / greatestCommonDivisor2), mulPosAndCheck(this.denominator / greatestCommonDivisor2, fraction.denominator / greatestCommonDivisor));
    }

    public Fraction negate() {
        int i10 = this.numerator;
        if (i10 != Integer.MIN_VALUE) {
            return new Fraction(-i10, this.denominator);
        }
        throw new ArithmeticException("overflow: too large to negate");
    }

    public Fraction pow(int i10) {
        if (i10 == 1) {
            return this;
        }
        if (i10 == 0) {
            return ONE;
        }
        if (i10 < 0) {
            return i10 == Integer.MIN_VALUE ? invert().pow(2).pow(-(i10 / 2)) : invert().pow(-i10);
        }
        Fraction multiplyBy = multiplyBy(this);
        return i10 % 2 == 0 ? multiplyBy.pow(i10 / 2) : multiplyBy.pow(i10 / 2).multiplyBy(this);
    }

    public Fraction reduce() {
        int i10 = this.numerator;
        if (i10 == 0) {
            Fraction fraction = ZERO;
            return equals(fraction) ? this : fraction;
        }
        int greatestCommonDivisor = greatestCommonDivisor(Math.abs(i10), this.denominator);
        return greatestCommonDivisor == 1 ? this : getFraction(this.numerator / greatestCommonDivisor, this.denominator / greatestCommonDivisor);
    }

    public Fraction subtract(Fraction fraction) {
        return addSub(fraction, false);
    }

    public String toProperString() {
        if (this.toProperString == null) {
            int i10 = this.numerator;
            if (i10 == 0) {
                this.toProperString = "0";
            } else {
                int i11 = this.denominator;
                if (i10 == i11) {
                    this.toProperString = "1";
                } else if (i10 == i11 * (-1)) {
                    this.toProperString = "-1";
                } else {
                    if (i10 > 0) {
                        i10 = -i10;
                    }
                    if (i10 < (-i11)) {
                        int properNumerator = getProperNumerator();
                        if (properNumerator == 0) {
                            this.toProperString = Integer.toString(getProperWhole());
                        } else {
                            this.toProperString = getProperWhole() + " " + properNumerator + "/" + getDenominator();
                        }
                    } else {
                        this.toProperString = getNumerator() + "/" + getDenominator();
                    }
                }
            }
        }
        return this.toProperString;
    }

    public String toString() {
        if (this.toString == null) {
            this.toString = getNumerator() + "/" + getDenominator();
        }
        return this.toString;
    }

    @Override
    public int compareTo(Fraction fraction) {
        if (this == fraction) {
            return 0;
        }
        int i10 = this.numerator;
        int i11 = fraction.numerator;
        if (i10 == i11 && this.denominator == fraction.denominator) {
            return 0;
        }
        long j10 = i10 * fraction.denominator;
        long j11 = i11 * this.denominator;
        if (j10 == j11) {
            return 0;
        }
        return j10 < j11 ? -1 : 1;
    }

    public static Fraction getFraction(int i10, int i11, int i12) {
        if (i12 == 0) {
            throw new ArithmeticException("The denominator must not be zero");
        }
        if (i12 < 0) {
            throw new ArithmeticException("The denominator must not be negative");
        }
        if (i11 < 0) {
            throw new ArithmeticException("The numerator must not be negative");
        }
        long j10 = i10 < 0 ? (i10 * i12) - i11 : (i10 * i12) + i11;
        if (j10 >= -2147483648L && j10 <= 2147483647L) {
            return new Fraction((int) j10, i12);
        }
        throw new ArithmeticException("Numerator too large to represent as an Integer.");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x007b, code lost:
    
        return getReducedFraction((r8 + (r4 * r10)) * r0, r10);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Fraction getFraction(double d10) {
        int i10 = d10 < 0.0d ? -1 : 1;
        double abs = Math.abs(d10);
        if (abs <= 2.147483647E9d && !Double.isNaN(abs)) {
            int i11 = (int) abs;
            double d11 = abs - i11;
            int i12 = (int) d11;
            double d12 = d11 - i12;
            double d13 = d11;
            double d14 = Double.MAX_VALUE;
            int i13 = 1;
            int i14 = 1;
            double d15 = 1.0d;
            int i15 = 0;
            int i16 = 0;
            int i17 = 1;
            while (true) {
                int i18 = (int) (d15 / d12);
                double d16 = d15 - (i18 * d12);
                int i19 = (i12 * i17) + i15;
                int i20 = (i12 * i16) + i13;
                double d17 = d12;
                double d18 = d13;
                double abs2 = Math.abs(d18 - (i19 / i20));
                int i21 = i14 + 1;
                if (d14 <= abs2 || i20 > 10000 || i20 <= 0 || i21 >= 25) {
                    break;
                }
                d14 = abs2;
                d13 = d18;
                i13 = i16;
                i14 = i21;
                d12 = d16;
                i16 = i20;
                i12 = i18;
                i15 = i17;
                i17 = i19;
                d15 = d17;
            }
            throw new ArithmeticException("Unable to convert double to fraction");
        }
        throw new ArithmeticException("The value must not be greater than Integer.MAX_VALUE or NaN");
    }

    public static Fraction getFraction(String str) {
        Validate.isTrue(str != null, "The string must not be null", new Object[0]);
        if (str.indexOf(46) >= 0) {
            return getFraction(Double.parseDouble(str));
        }
        int indexOf = str.indexOf(32);
        if (indexOf > 0) {
            int parseInt = Integer.parseInt(str.substring(0, indexOf));
            String substring = str.substring(indexOf + 1);
            int indexOf2 = substring.indexOf(47);
            if (indexOf2 >= 0) {
                return getFraction(parseInt, Integer.parseInt(substring.substring(0, indexOf2)), Integer.parseInt(substring.substring(indexOf2 + 1)));
            }
            throw new NumberFormatException("The fraction could not be parsed as the format X Y/Z");
        }
        int indexOf3 = str.indexOf(47);
        if (indexOf3 < 0) {
            return getFraction(Integer.parseInt(str), 1);
        }
        return getFraction(Integer.parseInt(str.substring(0, indexOf3)), Integer.parseInt(str.substring(indexOf3 + 1)));
    }
}
