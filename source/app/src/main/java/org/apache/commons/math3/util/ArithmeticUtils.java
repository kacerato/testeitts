package org.apache.commons.math3.util;

import java.math.BigInteger;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.util.Localizable;
import org.apache.commons.math3.exception.util.LocalizedFormats;

public final class ArithmeticUtils {
    private ArithmeticUtils() {
    }

    public static int addAndCheck(int i10, int i11) throws MathArithmeticException {
        long j10 = i10 + i11;
        if (j10 < -2147483648L || j10 > 2147483647L) {
            throw new MathArithmeticException(LocalizedFormats.OVERFLOW_IN_ADDITION, Integer.valueOf(i10), Integer.valueOf(i11));
        }
        return (int) j10;
    }

    @Deprecated
    public static long binomialCoefficient(int i10, int i11) throws NotPositiveException, NumberIsTooLargeException, MathArithmeticException {
        return CombinatoricsUtils.binomialCoefficient(i10, i11);
    }

    @Deprecated
    public static double binomialCoefficientDouble(int i10, int i11) throws NotPositiveException, NumberIsTooLargeException, MathArithmeticException {
        return CombinatoricsUtils.binomialCoefficientDouble(i10, i11);
    }

    @Deprecated
    public static double binomialCoefficientLog(int i10, int i11) throws NotPositiveException, NumberIsTooLargeException, MathArithmeticException {
        return CombinatoricsUtils.binomialCoefficientLog(i10, i11);
    }

    @Deprecated
    public static long factorial(int i10) throws NotPositiveException, MathArithmeticException {
        return CombinatoricsUtils.factorial(i10);
    }

    @Deprecated
    public static double factorialDouble(int i10) throws NotPositiveException {
        return CombinatoricsUtils.factorialDouble(i10);
    }

    @Deprecated
    public static double factorialLog(int i10) throws NotPositiveException {
        return CombinatoricsUtils.factorialLog(i10);
    }

    public static int gcd(int i10, int i11) throws MathArithmeticException {
        int i12;
        int i13;
        if (i10 == 0 || i11 == 0) {
            if (i10 != Integer.MIN_VALUE && i11 != Integer.MIN_VALUE) {
                return FastMath.abs(i10 + i11);
            }
            throw new MathArithmeticException(LocalizedFormats.GCD_OVERFLOW_32_BITS, Integer.valueOf(i10), Integer.valueOf(i11));
        }
        long j10 = i10;
        long j11 = i11;
        boolean z10 = true;
        boolean z11 = false;
        if (i10 < 0) {
            if (Integer.MIN_VALUE == i10) {
                i12 = i10;
                z11 = true;
            } else {
                i12 = -i10;
            }
            j10 = -j10;
        } else {
            i12 = i10;
        }
        if (i11 < 0) {
            if (Integer.MIN_VALUE == i11) {
                i13 = i11;
            } else {
                i13 = -i11;
                z10 = z11;
            }
            j11 = -j11;
            z11 = z10;
        } else {
            i13 = i11;
        }
        if (z11) {
            if (j10 != j11) {
                long j12 = j11 % j10;
                if (j12 == 0) {
                    if (j10 <= 2147483647L) {
                        return (int) j10;
                    }
                    throw new MathArithmeticException(LocalizedFormats.GCD_OVERFLOW_32_BITS, Integer.valueOf(i10), Integer.valueOf(i11));
                }
                i13 = (int) j12;
                i12 = (int) (j10 % j12);
            } else {
                throw new MathArithmeticException(LocalizedFormats.GCD_OVERFLOW_32_BITS, Integer.valueOf(i10), Integer.valueOf(i11));
            }
        }
        return gcdPositive(i12, i13);
    }

    private static int gcdPositive(int i10, int i11) {
        if (i10 == 0) {
            return i11;
        }
        if (i11 == 0) {
            return i10;
        }
        int numberOfTrailingZeros = Integer.numberOfTrailingZeros(i10);
        int i12 = i10 >> numberOfTrailingZeros;
        int numberOfTrailingZeros2 = Integer.numberOfTrailingZeros(i11);
        int i13 = i11 >> numberOfTrailingZeros2;
        int min = FastMath.min(numberOfTrailingZeros, numberOfTrailingZeros2);
        while (i12 != i13) {
            int i14 = i12 - i13;
            i13 = Math.min(i12, i13);
            int abs = Math.abs(i14);
            i12 = abs >> Integer.numberOfTrailingZeros(abs);
        }
        return i12 << min;
    }

    public static boolean isPowerOfTwo(long j10) {
        return j10 > 0 && (j10 & (j10 - 1)) == 0;
    }

    public static int lcm(int i10, int i11) throws MathArithmeticException {
        if (i10 == 0 || i11 == 0) {
            return 0;
        }
        int abs = FastMath.abs(mulAndCheck(i10 / gcd(i10, i11), i11));
        if (abs != Integer.MIN_VALUE) {
            return abs;
        }
        throw new MathArithmeticException(LocalizedFormats.LCM_OVERFLOW_32_BITS, Integer.valueOf(i10), Integer.valueOf(i11));
    }

    public static int mulAndCheck(int i10, int i11) throws MathArithmeticException {
        long j10 = i10 * i11;
        if (j10 < -2147483648L || j10 > 2147483647L) {
            throw new MathArithmeticException();
        }
        return (int) j10;
    }

    public static int pow(int i10, int i11) throws NotPositiveException, MathArithmeticException {
        if (i11 < 0) {
            throw new NotPositiveException(LocalizedFormats.EXPONENT, Integer.valueOf(i11));
        }
        int i12 = 1;
        int i13 = i10;
        int i14 = i11;
        while (true) {
            if ((i14 & 1) != 0) {
                try {
                    i12 = mulAndCheck(i12, i13);
                } catch (MathArithmeticException e10) {
                    e10.getContext().addMessage(LocalizedFormats.OVERFLOW, new Object[0]);
                    e10.getContext().addMessage(LocalizedFormats.BASE, Integer.valueOf(i10));
                    e10.getContext().addMessage(LocalizedFormats.EXPONENT, Integer.valueOf(i11));
                    throw e10;
                }
            }
            i14 >>= 1;
            if (i14 == 0) {
                return i12;
            }
            i13 = mulAndCheck(i13, i13);
        }
    }

    @Deprecated
    public static long stirlingS2(int i10, int i11) throws NotPositiveException, NumberIsTooLargeException, MathArithmeticException {
        return CombinatoricsUtils.stirlingS2(i10, i11);
    }

    public static int subAndCheck(int i10, int i11) throws MathArithmeticException {
        long j10 = i10 - i11;
        if (j10 < -2147483648L || j10 > 2147483647L) {
            throw new MathArithmeticException(LocalizedFormats.OVERFLOW_IN_SUBTRACTION, Integer.valueOf(i10), Integer.valueOf(i11));
        }
        return (int) j10;
    }

    public static long addAndCheck(long j10, long j11) throws MathArithmeticException {
        return addAndCheck(j10, j11, LocalizedFormats.OVERFLOW_IN_ADDITION);
    }

    public static long mulAndCheck(long j10, long j11) throws MathArithmeticException {
        if (j10 > j11) {
            return mulAndCheck(j11, j10);
        }
        if (j10 >= 0) {
            if (j10 > 0) {
                if (j10 > Long.MAX_VALUE / j11) {
                    throw new MathArithmeticException();
                }
                return j10 * j11;
            }
            return 0L;
        }
        if (j11 >= 0) {
            if (j11 > 0) {
                if (Long.MIN_VALUE / j11 > j10) {
                    throw new MathArithmeticException();
                }
            }
            return 0L;
        }
        if (j10 < Long.MAX_VALUE / j11) {
            throw new MathArithmeticException();
        }
        return j10 * j11;
    }

    public static long subAndCheck(long j10, long j11) throws MathArithmeticException {
        if (j11 != Long.MIN_VALUE) {
            return addAndCheck(j10, -j11, LocalizedFormats.OVERFLOW_IN_ADDITION);
        }
        if (j10 < 0) {
            return j10 - j11;
        }
        throw new MathArithmeticException(LocalizedFormats.OVERFLOW_IN_ADDITION, Long.valueOf(j10), Long.valueOf(-j11));
    }

    private static long addAndCheck(long j10, long j11, Localizable localizable) throws MathArithmeticException {
        long j12 = j10 + j11;
        if (((j10 ^ j11) < 0) || ((j10 ^ j12) >= 0)) {
            return j12;
        }
        throw new MathArithmeticException(localizable, Long.valueOf(j10), Long.valueOf(j11));
    }

    public static long lcm(long j10, long j11) throws MathArithmeticException {
        if (j10 == 0 || j11 == 0) {
            return 0L;
        }
        long abs = FastMath.abs(mulAndCheck(j10 / gcd(j10, j11), j11));
        if (abs != Long.MIN_VALUE) {
            return abs;
        }
        throw new MathArithmeticException(LocalizedFormats.LCM_OVERFLOW_64_BITS, Long.valueOf(j10), Long.valueOf(j11));
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x003e, code lost:
    
        if (r13 != 1) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0040, code lost:
    
        r0 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x004b, code lost:
    
        if ((r0 & 1) != 0) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0052, code lost:
    
        if (r0 <= 0) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0054, code lost:
    
        r8 = -r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0058, code lost:
    
        r0 = (r6 - r8) / 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x005e, code lost:
    
        if (r0 != 0) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0064, code lost:
    
        return (-r8) * (1 << r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0057, code lost:
    
        r6 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x004d, code lost:
    
        r0 = r0 / 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0042, code lost:
    
        r0 = -(r8 / 2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static long gcd(long j10, long j11) throws MathArithmeticException {
        long j12 = 0;
        if (j10 == 0 || j11 == 0) {
            if (j10 != Long.MIN_VALUE && j11 != Long.MIN_VALUE) {
                return FastMath.abs(j10) + FastMath.abs(j11);
            }
            throw new MathArithmeticException(LocalizedFormats.GCD_OVERFLOW_64_BITS, Long.valueOf(j10), Long.valueOf(j11));
        }
        long j13 = j10 > 0 ? -j10 : j10;
        long j14 = j11 > 0 ? -j11 : j11;
        int i10 = 0;
        while (true) {
            long j15 = j13 & 1;
            if (j15 != j12 || (j14 & 1) != 0 || i10 >= 63) {
                break;
            }
            j13 /= 2;
            j14 /= 2;
            i10++;
            j12 = 0;
        }
        throw new MathArithmeticException(LocalizedFormats.GCD_OVERFLOW_64_BITS, Long.valueOf(j10), Long.valueOf(j11));
    }

    @Deprecated
    public static int pow(int i10, long j10) throws NotPositiveException {
        if (j10 < 0) {
            throw new NotPositiveException(LocalizedFormats.EXPONENT, Long.valueOf(j10));
        }
        int i11 = 1;
        while (j10 != 0) {
            if ((1 & j10) != 0) {
                i11 *= i10;
            }
            i10 *= i10;
            j10 >>= 1;
        }
        return i11;
    }

    public static long pow(long j10, int i10) throws NotPositiveException, MathArithmeticException {
        if (i10 < 0) {
            throw new NotPositiveException(LocalizedFormats.EXPONENT, Integer.valueOf(i10));
        }
        long j11 = 1;
        long j12 = j10;
        int i11 = i10;
        while (true) {
            if ((i11 & 1) != 0) {
                try {
                    j11 = mulAndCheck(j11, j12);
                } catch (MathArithmeticException e10) {
                    e10.getContext().addMessage(LocalizedFormats.OVERFLOW, new Object[0]);
                    e10.getContext().addMessage(LocalizedFormats.BASE, Long.valueOf(j10));
                    e10.getContext().addMessage(LocalizedFormats.EXPONENT, Integer.valueOf(i10));
                    throw e10;
                }
            }
            i11 >>= 1;
            if (i11 == 0) {
                return j11;
            }
            j12 = mulAndCheck(j12, j12);
        }
    }

    @Deprecated
    public static long pow(long j10, long j11) throws NotPositiveException {
        if (j11 < 0) {
            throw new NotPositiveException(LocalizedFormats.EXPONENT, Long.valueOf(j11));
        }
        long j12 = 1;
        while (j11 != 0) {
            if ((j11 & 1) != 0) {
                j12 *= j10;
            }
            j10 *= j10;
            j11 >>= 1;
        }
        return j12;
    }

    public static BigInteger pow(BigInteger bigInteger, int i10) throws NotPositiveException {
        if (i10 >= 0) {
            return bigInteger.pow(i10);
        }
        throw new NotPositiveException(LocalizedFormats.EXPONENT, Integer.valueOf(i10));
    }

    public static BigInteger pow(BigInteger bigInteger, long j10) throws NotPositiveException {
        if (j10 >= 0) {
            BigInteger bigInteger2 = BigInteger.ONE;
            while (j10 != 0) {
                if ((1 & j10) != 0) {
                    bigInteger2 = bigInteger2.multiply(bigInteger);
                }
                bigInteger = bigInteger.multiply(bigInteger);
                j10 >>= 1;
            }
            return bigInteger2;
        }
        throw new NotPositiveException(LocalizedFormats.EXPONENT, Long.valueOf(j10));
    }

    public static BigInteger pow(BigInteger bigInteger, BigInteger bigInteger2) throws NotPositiveException {
        if (bigInteger2.compareTo(BigInteger.ZERO) >= 0) {
            BigInteger bigInteger3 = BigInteger.ONE;
            while (!BigInteger.ZERO.equals(bigInteger2)) {
                if (bigInteger2.testBit(0)) {
                    bigInteger3 = bigInteger3.multiply(bigInteger);
                }
                bigInteger = bigInteger.multiply(bigInteger);
                bigInteger2 = bigInteger2.shiftRight(1);
            }
            return bigInteger3;
        }
        throw new NotPositiveException(LocalizedFormats.EXPONENT, bigInteger2);
    }
}
