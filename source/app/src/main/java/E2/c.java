package E2;

import B0.C2324i;
import com.google.common.primitives.C12598a;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.util.Iterator;
import w2.H;

@e
@v2.b(emulated = true)
public final class c {

    public static final double f5367a = -2.147483648E9d;

    public static final double f5368b = 2.147483647E9d;

    public static final double f5369c = -9.223372036854776E18d;

    public static final double f5370d = 9.223372036854776E18d;

    @v2.d
    public static final int f5372f = 170;

    public static final double f5371e = Math.log(2.0d);

    @v2.d
    public static final double[] f5373g = {1.0d, 2.0922789888E13d, 2.631308369336935E35d, 1.2413915592536073E61d, 1.2688693218588417E89d, 7.156945704626381E118d, 9.916779348709496E149d, 1.974506857221074E182d, 3.856204823625804E215d, 5.5502938327393044E249d, 4.7147236359920616E284d};

    public static class a {

        public static final int[] f5374a;

        static {
            int[] iArr = new int[RoundingMode.values().length];
            f5374a = iArr;
            try {
                iArr[RoundingMode.UNNECESSARY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f5374a[RoundingMode.FLOOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f5374a[RoundingMode.CEILING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f5374a[RoundingMode.DOWN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f5374a[RoundingMode.UP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f5374a[RoundingMode.HALF_EVEN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f5374a[RoundingMode.HALF_UP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f5374a[RoundingMode.HALF_DOWN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    @I2.a
    @v2.c
    public static double a(double d10) {
        H.d(d.d(d10));
        return d10;
    }

    public static double b(int i10) {
        i.e(C2324i.f1246e, i10);
        if (i10 > 170) {
            return Double.POSITIVE_INFINITY;
        }
        double d10 = 1.0d;
        for (int i11 = (i10 & (-16)) + 1; i11 <= i10; i11++) {
            d10 *= i11;
        }
        return d10 * f5373g[i10 >> 4];
    }

    public static int c(double d10, double d11, double d12) {
        if (d(d10, d11, d12)) {
            return 0;
        }
        if (d10 < d11) {
            return -1;
        }
        if (d10 > d11) {
            return 1;
        }
        return C12598a.d(Double.isNaN(d10), Double.isNaN(d11));
    }

    public static boolean d(double d10, double d11, double d12) {
        i.d("tolerance", d12);
        return Math.copySign(d10 - d11, 1.0d) <= d12 || d10 == d11 || (Double.isNaN(d10) && Double.isNaN(d11));
    }

    @v2.c
    public static boolean e(double d10) {
        return d.d(d10) && (d10 == 0.0d || 52 - Long.numberOfTrailingZeros(d.c(d10)) <= Math.getExponent(d10));
    }

    @v2.c
    public static boolean f(double d10) {
        if (d10 <= 0.0d || !d.d(d10)) {
            return false;
        }
        long c10 = d.c(d10);
        return (c10 & (c10 - 1)) == 0;
    }

    public static double g(double d10) {
        return Math.log(d10) / f5371e;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:12:0x0032. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:28:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:30:? A[RETURN, SYNTHETIC] */
    @v2.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int h(double d10, RoundingMode roundingMode) {
        boolean f10;
        H.e(d10 > 0.0d && d.d(d10), "x must be positive and finite");
        int exponent = Math.getExponent(d10);
        if (!d.e(d10)) {
            return h(d10 * 4.503599627370496E15d, roundingMode) - 52;
        }
        switch (a.f5374a[roundingMode.ordinal()]) {
            case 1:
                i.k(f(d10));
                return !r1 ? exponent + 1 : exponent;
            case 2:
                if (!r1) {
                }
                break;
            case 3:
                r1 = !f(d10);
                if (!r1) {
                }
                break;
            case 4:
                r1 = exponent < 0;
                f10 = f(d10);
                r1 &= !f10;
                if (!r1) {
                }
                break;
            case 5:
                r1 = exponent >= 0;
                f10 = f(d10);
                r1 &= !f10;
                if (!r1) {
                }
                break;
            case 6:
            case 7:
            case 8:
                double g10 = d.g(d10);
                if (g10 * g10 > 2.0d) {
                    r1 = true;
                }
                if (!r1) {
                }
                break;
            default:
                throw new AssertionError();
        }
    }

    @v2.c
    @Deprecated
    public static double i(Iterable<? extends Number> iterable) {
        return j(iterable.iterator());
    }

    @v2.c
    @Deprecated
    public static double j(Iterator<? extends Number> it) {
        H.e(it.hasNext(), "Cannot take mean of 0 values");
        double a10 = a(it.next().doubleValue());
        long j10 = 1;
        while (it.hasNext()) {
            j10++;
            a10 += (a(it.next().doubleValue()) - a10) / j10;
        }
        return a10;
    }

    @v2.c
    @Deprecated
    public static double k(double... dArr) {
        H.e(dArr.length > 0, "Cannot take mean of 0 values");
        double a10 = a(dArr[0]);
        long j10 = 1;
        for (int i10 = 1; i10 < dArr.length; i10++) {
            a(dArr[i10]);
            j10++;
            a10 += (dArr[i10] - a10) / j10;
        }
        return a10;
    }

    @Deprecated
    public static double l(int... iArr) {
        H.e(iArr.length > 0, "Cannot take mean of 0 values");
        long j10 = 0;
        for (int i10 : iArr) {
            j10 += i10;
        }
        return j10 / iArr.length;
    }

    @Deprecated
    public static double m(long... jArr) {
        H.e(jArr.length > 0, "Cannot take mean of 0 values");
        double d10 = jArr[0];
        long j10 = 1;
        for (int i10 = 1; i10 < jArr.length; i10++) {
            j10++;
            d10 += (jArr[i10] - d10) / j10;
        }
        return d10;
    }

    @v2.c
    public static double n(double d10, RoundingMode roundingMode) {
        if (!d.d(d10)) {
            throw new ArithmeticException("input is infinite or NaN");
        }
        switch (a.f5374a[roundingMode.ordinal()]) {
            case 1:
                i.k(e(d10));
                return d10;
            case 2:
                return (d10 >= 0.0d || e(d10)) ? d10 : ((long) d10) - 1;
            case 3:
                return (d10 <= 0.0d || e(d10)) ? d10 : ((long) d10) + 1;
            case 4:
                return d10;
            case 5:
                if (e(d10)) {
                    return d10;
                }
                return ((long) d10) + (d10 > 0.0d ? 1 : -1);
            case 6:
                return Math.rint(d10);
            case 7:
                double rint = Math.rint(d10);
                return Math.abs(d10 - rint) == 0.5d ? d10 + Math.copySign(0.5d, d10) : rint;
            case 8:
                double rint2 = Math.rint(d10);
                return Math.abs(d10 - rint2) == 0.5d ? d10 : rint2;
            default:
                throw new AssertionError();
        }
    }

    @v2.c
    public static BigInteger o(double d10, RoundingMode roundingMode) {
        double n10 = n(d10, roundingMode);
        if (((-9.223372036854776E18d) - n10 < 1.0d) && (n10 < 9.223372036854776E18d)) {
            return BigInteger.valueOf((long) n10);
        }
        BigInteger shiftLeft = BigInteger.valueOf(d.c(n10)).shiftLeft(Math.getExponent(n10) - 52);
        return n10 < 0.0d ? shiftLeft.negate() : shiftLeft;
    }

    @v2.c
    public static int p(double d10, RoundingMode roundingMode) {
        double n10 = n(d10, roundingMode);
        i.a((n10 > -2.147483649E9d) & (n10 < 2.147483648E9d), d10, roundingMode);
        return (int) n10;
    }

    @v2.c
    public static long q(double d10, RoundingMode roundingMode) {
        double n10 = n(d10, roundingMode);
        i.a(((-9.223372036854776E18d) - n10 < 1.0d) & (n10 < 9.223372036854776E18d), d10, roundingMode);
        return (long) n10;
    }
}
