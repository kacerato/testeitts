package org.apache.commons.math3.util;

import E2.d;
import android.bluetooth.le.AdvertisingSetParameters;
import java.io.PrintStream;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.util.LocalizedFormats;

public class FastMath {

    public static final double f100366E = 2.718281828459045d;
    static final int EXP_FRAC_TABLE_LEN = 1025;
    static final int EXP_INT_TABLE_LEN = 1500;
    static final int EXP_INT_TABLE_MAX_INDEX = 750;
    private static final double F_11_12 = 0.9166666666666666d;
    private static final double F_13_14 = 0.9285714285714286d;
    private static final double F_15_16 = 0.9375d;
    private static final double F_1_11 = 0.09090909090909091d;
    private static final double F_1_13 = 0.07692307692307693d;
    private static final double F_1_15 = 0.06666666666666667d;
    private static final double F_1_17 = 0.058823529411764705d;
    private static final double F_1_2 = 0.5d;
    private static final double F_1_3 = 0.3333333333333333d;
    private static final double F_1_5 = 0.2d;
    private static final double F_1_7 = 0.14285714285714285d;
    private static final double F_1_9 = 0.1111111111111111d;
    private static final double F_5_6 = 0.8333333333333334d;
    private static final double F_9_10 = 0.9d;
    private static final long HEX_40000000 = 1073741824;
    private static final long IMPLICIT_HIGH_BIT = 4503599627370496L;
    private static final double LN_2_A = 0.6931470632553101d;
    private static final double LN_2_B = 1.1730463525082348E-7d;
    static final int LN_MANT_LEN = 1024;
    private static final long MASK_30BITS = -1073741824;
    private static final long MASK_DOUBLE_EXPONENT = 9218868437227405312L;
    private static final long MASK_DOUBLE_MANTISSA = 4503599627370495L;
    private static final int MASK_NON_SIGN_INT = Integer.MAX_VALUE;
    private static final long MASK_NON_SIGN_LONG = Long.MAX_VALUE;
    public static final double PI = 3.141592653589793d;
    private static final boolean RECOMPUTE_TABLES_AT_RUNTIME = false;
    private static final int SINE_TABLE_LEN = 14;
    private static final double TWO_POWER_52 = 4.503599627370496E15d;
    private static final double LOG_MAX_VALUE = StrictMath.log(Double.MAX_VALUE);
    private static final double[][] LN_QUICK_COEF = {new double[]{1.0d, 5.669184079525E-24d}, new double[]{-0.25d, -0.25d}, new double[]{0.3333333134651184d, 1.986821492305628E-8d}, new double[]{-0.25d, -6.663542893624021E-14d}, new double[]{0.19999998807907104d, 1.1921056801463227E-8d}, new double[]{-0.1666666567325592d, -7.800414592973399E-9d}, new double[]{0.1428571343421936d, 5.650007086920087E-9d}, new double[]{-0.12502530217170715d, -7.44321345601866E-11d}, new double[]{0.11113807559013367d, 9.219544613762692E-9d}};
    private static final double[][] LN_HI_PREC_COEF = {new double[]{1.0d, -6.032174644509064E-23d}, new double[]{-0.25d, -0.25d}, new double[]{0.3333333134651184d, 1.9868161777724352E-8d}, new double[]{-0.2499999701976776d, -2.957007209750105E-8d}, new double[]{0.19999954104423523d, 1.5830993332061267E-10d}, new double[]{-0.16624879837036133d, -2.6033824355191673E-8d}};
    private static final double[] SINE_TABLE_A = {0.0d, 0.1246747374534607d, 0.24740394949913025d, 0.366272509098053d, 0.4794255495071411d, 0.5850973129272461d, 0.6816387176513672d, 0.7675435543060303d, 0.8414709568023682d, 0.902267575263977d, 0.9489846229553223d, 0.9808930158615112d, 0.9974949359893799d, 0.9985313415527344d};
    private static final double[] SINE_TABLE_B = {0.0d, -4.068233003401932E-9d, 9.755392680573412E-9d, 1.9987994582857286E-8d, -1.0902938113007961E-8d, -3.9986783938944604E-8d, 4.23719669792332E-8d, -5.207000323380292E-8d, 2.800552834259E-8d, 1.883511811213715E-8d, -3.5997360512765566E-9d, 4.116164446561962E-8d, 5.0614674548127384E-8d, -1.0129027912496858E-9d};
    private static final double[] COSINE_TABLE_A = {1.0d, 0.9921976327896118d, 0.9689123630523682d, 0.9305076599121094d, 0.8775825500488281d, 0.8109631538391113d, 0.7316888570785522d, 0.6409968137741089d, 0.5403022766113281d, 0.4311765432357788d, 0.3153223395347595d, 0.19454771280288696d, 0.07073719799518585d, -0.05417713522911072d};
    private static final double[] COSINE_TABLE_B = {0.0d, 3.4439717236742845E-8d, 5.865827662008209E-8d, -3.7999795083850525E-8d, 1.184154459111628E-8d, -3.43338934259355E-8d, 1.1795268640216787E-8d, 4.438921624363781E-8d, 2.925681159240093E-8d, -2.6437112632041807E-8d, 2.2860509143963117E-8d, -4.813899778443457E-9d, 3.6725170580355583E-9d, 2.0217439756338078E-10d};
    private static final double[] TANGENT_TABLE_A = {0.0d, 0.1256551444530487d, 0.25534194707870483d, 0.3936265707015991d, 0.5463024377822876d, 0.7214844226837158d, 0.9315965175628662d, 1.1974215507507324d, 1.5574076175689697d, 2.092571258544922d, 3.0095696449279785d, 5.041914939880371d, 14.101419448852539d, -18.430862426757812d};
    private static final double[] TANGENT_TABLE_B = {0.0d, -7.877917738262007E-9d, -2.5857668567479893E-8d, 5.2240336371356666E-9d, 5.206150291559893E-8d, 1.8307188599677033E-8d, -5.7618793749770706E-8d, 7.848361555046424E-8d, 1.0708593250394448E-7d, 1.7827257129423813E-8d, 2.893485277253286E-8d, 3.1660099222737955E-7d, 4.983191803254889E-7d, -3.356118100840571E-7d};
    private static final long[] RECIP_2PI = {2935890503282001226L, 9154082963658192752L, 3952090531849364496L, 9193070505571053912L, 7910884519577875640L, 113236205062349959L, 4577762542105553359L, -5034868814120038111L, 4208363204685324176L, 5648769086999809661L, 2819561105158720014L, -4035746434778044925L, -302932621132653753L, -2644281811660520851L, -3183605296591799669L, 6722166367014452318L, -3512299194304650054L, -7278142539171889152L};
    private static final long[] PI_O_4_BITS = {-3958705157555305932L, -4267615245585081135L};
    private static final double F_1_4 = 0.25d;
    private static final double F_3_4 = 0.75d;
    private static final double F_7_8 = 0.875d;
    private static final double[] EIGHTHS = {0.0d, 0.125d, F_1_4, 0.375d, 0.5d, 0.625d, F_3_4, F_7_8, 1.0d, 1.125d, 1.25d, 1.375d, 1.5d, 1.625d};
    private static final double[] CBRTTWO = {0.6299605249474366d, 0.7937005259840998d, 1.0d, 1.2599210498948732d, 1.5874010519681994d};

    public static class CodyWaite {
        private final int finalK;
        private final double finalRemA;
        private final double finalRemB;

        public CodyWaite(double d10) {
            int i10 = (int) (0.6366197723675814d * d10);
            while (true) {
                double d11 = -i10;
                double d12 = 1.570796251296997d * d11;
                double d13 = d10 + d12;
                double d14 = 7.549789948768648E-8d * d11;
                double d15 = d14 + d13;
                double d16 = (-((d13 - d10) - d12)) + (-((d15 - d13) - d14));
                double d17 = d11 * 6.123233995736766E-17d;
                double d18 = d17 + d15;
                double d19 = d16 + (-((d18 - d15) - d17));
                if (d18 > 0.0d) {
                    this.finalK = i10;
                    this.finalRemA = d18;
                    this.finalRemB = d19;
                    return;
                }
                i10--;
            }
        }

        public int getK() {
            return this.finalK;
        }

        public double getRemA() {
            return this.finalRemA;
        }

        public double getRemB() {
            return this.finalRemB;
        }
    }

    public static class ExpFracTable {
        private static final double[] EXP_FRAC_TABLE_A = FastMathLiteralArrays.loadExpFracA();
        private static final double[] EXP_FRAC_TABLE_B = FastMathLiteralArrays.loadExpFracB();

        private ExpFracTable() {
        }
    }

    public static class ExpIntTable {
        private static final double[] EXP_INT_TABLE_A = FastMathLiteralArrays.loadExpIntA();
        private static final double[] EXP_INT_TABLE_B = FastMathLiteralArrays.loadExpIntB();

        private ExpIntTable() {
        }
    }

    public static class lnMant {
        private static final double[][] LN_MANT = FastMathLiteralArrays.loadLnMant();

        private lnMant() {
        }
    }

    private FastMath() {
    }

    public static double IEEEremainder(double d10, double d11) {
        return StrictMath.IEEEremainder(d10, d11);
    }

    public static int abs(int i10) {
        int i11 = i10 >>> 31;
        return (i10 ^ ((~i11) + 1)) + i11;
    }

    public static double acos(double d10) {
        if (d10 != d10 || d10 > 1.0d || d10 < -1.0d) {
            return Double.NaN;
        }
        if (d10 == -1.0d) {
            return 3.141592653589793d;
        }
        if (d10 == 1.0d) {
            return 0.0d;
        }
        if (d10 == 0.0d) {
            return 1.5707963267948966d;
        }
        double d11 = d10 * 1.073741824E9d;
        double d12 = (d10 + d11) - d11;
        double d13 = d10 - d12;
        double d14 = -(d12 * d12);
        double d15 = -((d12 * d13 * 2.0d) + (d13 * d13));
        double d16 = d14 + 1.0d;
        double d17 = -((d16 - 1.0d) - d14);
        double d18 = d16 + d15;
        double d19 = d17 + (-((d18 - d16) - d15));
        double sqrt = sqrt(d18);
        double d20 = 1.073741824E9d * sqrt;
        double d21 = (sqrt + d20) - d20;
        double d22 = sqrt - d21;
        double d23 = sqrt * 2.0d;
        double d24 = d22 + ((((d18 - (d21 * d21)) - ((d21 * 2.0d) * d22)) - (d22 * d22)) / d23) + (d19 / d23);
        double d25 = d21 + d24;
        double d26 = -((d25 - d21) - d24);
        double d27 = d25 / d10;
        if (Double.isInfinite(d27)) {
            return 1.5707963267948966d;
        }
        double doubleHighPart = doubleHighPart(d27);
        double d28 = d27 - doubleHighPart;
        double d29 = d28 + (((((d25 - (doubleHighPart * d12)) - (doubleHighPart * d13)) - (d12 * d28)) - (d13 * d28)) / d10) + (d26 / d10);
        double d30 = doubleHighPart + d29;
        return atan(d30, -((d30 - doubleHighPart) - d29), d10 < 0.0d);
    }

    public static double acosh(double d10) {
        return log(d10 + sqrt((d10 * d10) - 1.0d));
    }

    public static int addExact(int i10, int i11) throws MathArithmeticException {
        int i12 = i10 + i11;
        if ((i10 ^ i11) < 0 || (i12 ^ i11) >= 0) {
            return i12;
        }
        throw new MathArithmeticException(LocalizedFormats.OVERFLOW_IN_ADDITION, Integer.valueOf(i10), Integer.valueOf(i11));
    }

    public static double asin(double d10) {
        if (d10 != d10 || d10 > 1.0d || d10 < -1.0d) {
            return Double.NaN;
        }
        if (d10 == 1.0d) {
            return 1.5707963267948966d;
        }
        if (d10 == -1.0d) {
            return -1.5707963267948966d;
        }
        if (d10 == 0.0d) {
            return d10;
        }
        double d11 = d10 * 1.073741824E9d;
        double d12 = (d10 + d11) - d11;
        double d13 = d10 - d12;
        double d14 = d12 * d12;
        double d15 = (d12 * d13 * 2.0d) + (d13 * d13);
        double d16 = -d14;
        double d17 = -d15;
        double d18 = d16 + 1.0d;
        double d19 = d18 + d17;
        double d20 = (-((d18 - 1.0d) - d16)) + (-((d19 - d18) - d17));
        double sqrt = sqrt(d19);
        double d21 = sqrt * 1.073741824E9d;
        double d22 = (sqrt + d21) - d21;
        double d23 = sqrt - d22;
        double d24 = 2.0d * sqrt;
        double d25 = d23 + ((((d19 - (d22 * d22)) - ((d22 * 2.0d) * d23)) - (d23 * d23)) / d24);
        double d26 = d10 / sqrt;
        double d27 = 1.073741824E9d * d26;
        double d28 = (d26 + d27) - d27;
        double d29 = d26 - d28;
        double d30 = d29 + (((((d10 - (d28 * d22)) - (d28 * d25)) - (d22 * d29)) - (d25 * d29)) / sqrt) + ((((-d10) * (d20 / d24)) / sqrt) / sqrt);
        double d31 = d28 + d30;
        return atan(d31, -((d31 - d28) - d30), false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00b1, code lost:
    
        if (r0 > 0.0036d) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static double asinh(double d10) {
        boolean z10;
        double d11;
        double d12 = d10;
        if (d12 < 0.0d) {
            d12 = -d12;
            z10 = true;
        } else {
            z10 = false;
        }
        if (d12 > 0.167d) {
            d11 = log(sqrt((d12 * d12) + 1.0d) + d12);
        } else {
            double d13 = d12 * d12;
            double d14 = F_1_13;
            double d15 = F_1_9;
            double d16 = F_1_5;
            if (d12 > 0.097d) {
                d14 = F_1_13 - (((F_1_15 - ((F_1_17 * d13) * F_15_16)) * d13) * F_13_14);
            } else if (d12 <= 0.036d) {
            }
            d15 = F_1_9 - (((F_1_11 - ((d14 * d13) * F_11_12)) * d13) * F_9_10);
            d16 = F_1_5 - (((F_1_7 - ((d15 * d13) * F_7_8)) * d13) * F_5_6);
            d11 = d12 * (1.0d - ((d13 * (0.3333333333333333d - ((d16 * d13) * F_3_4))) * 0.5d));
        }
        return z10 ? -d11 : d11;
    }

    public static double atan(double d10) {
        return atan(d10, 0.0d, false);
    }

    public static double atan2(double d10, double d11) {
        if (d11 != d11 || d10 != d10) {
            return Double.NaN;
        }
        if (d10 == 0.0d) {
            double d12 = 1.0d / d11;
            return d12 == 0.0d ? d11 > 0.0d ? d10 : copySign(3.141592653589793d, d10) : (d11 < 0.0d || d12 < 0.0d) ? (d10 < 0.0d || 1.0d / d10 < 0.0d) ? -3.141592653589793d : 3.141592653589793d : d11 * d10;
        }
        if (d10 == Double.POSITIVE_INFINITY) {
            if (d11 == Double.POSITIVE_INFINITY) {
                return 0.7853981633974483d;
            }
            return d11 == Double.NEGATIVE_INFINITY ? 2.356194490192345d : 1.5707963267948966d;
        }
        if (d10 == Double.NEGATIVE_INFINITY) {
            if (d11 == Double.POSITIVE_INFINITY) {
                return -0.7853981633974483d;
            }
            return d11 == Double.NEGATIVE_INFINITY ? -2.356194490192345d : -1.5707963267948966d;
        }
        if (d11 == Double.POSITIVE_INFINITY) {
            if (d10 <= 0.0d) {
                double d13 = 1.0d / d10;
                if (d13 <= 0.0d) {
                    if (d10 < 0.0d || d13 < 0.0d) {
                        return -0.0d;
                    }
                }
            }
            return 0.0d;
        }
        if (d11 == Double.NEGATIVE_INFINITY) {
            if (d10 <= 0.0d) {
                double d14 = 1.0d / d10;
                if (d14 <= 0.0d) {
                    if (d10 < 0.0d || d14 < 0.0d) {
                        return -3.141592653589793d;
                    }
                }
            }
            return 3.141592653589793d;
        }
        if (d11 == 0.0d) {
            if (d10 <= 0.0d) {
                double d15 = 1.0d / d10;
                if (d15 <= 0.0d) {
                    if (d10 < 0.0d || d15 < 0.0d) {
                        return -1.5707963267948966d;
                    }
                }
            }
            return 1.5707963267948966d;
        }
        double d16 = d10 / d11;
        if (Double.isInfinite(d16)) {
            return atan(d16, 0.0d, d11 < 0.0d);
        }
        double doubleHighPart = doubleHighPart(d16);
        double d17 = d16 - doubleHighPart;
        double doubleHighPart2 = doubleHighPart(d11);
        double d18 = d11 - doubleHighPart2;
        double d19 = d17 + (((((d10 - (doubleHighPart * doubleHighPart2)) - (doubleHighPart * d18)) - (doubleHighPart2 * d17)) - (d18 * d17)) / d11);
        double d20 = doubleHighPart + d19;
        double d21 = -((d20 - doubleHighPart) - d19);
        if (d20 == 0.0d) {
            d20 = copySign(0.0d, d10);
        }
        return atan(d20, d21, d11 < 0.0d);
    }

    public static double atanh(double d10) {
        boolean z10;
        double d11;
        double d12 = d10;
        if (d12 < 0.0d) {
            d12 = -d12;
            z10 = true;
        } else {
            z10 = false;
        }
        if (d12 > 0.15d) {
            d11 = log((d12 + 1.0d) / (1.0d - d12)) * 0.5d;
        } else {
            double d13 = d12 * d12;
            d11 = d12 * ((d12 > 0.087d ? d13 * ((((((((((((((F_1_17 * d13) + F_1_15) * d13) + F_1_13) * d13) + F_1_11) * d13) + F_1_9) * d13) + F_1_7) * d13) + F_1_5) * d13) + 0.3333333333333333d) : d12 > 0.031d ? d13 * ((((((((((F_1_13 * d13) + F_1_11) * d13) + F_1_9) * d13) + F_1_7) * d13) + F_1_5) * d13) + 0.3333333333333333d) : d12 > 0.003d ? d13 * ((((((F_1_9 * d13) + F_1_7) * d13) + F_1_5) * d13) + 0.3333333333333333d) : d13 * ((F_1_5 * d13) + 0.3333333333333333d)) + 1.0d);
        }
        return z10 ? -d11 : d11;
    }

    public static double cbrt(double d10) {
        boolean z10;
        int i10;
        long j10;
        double d11;
        long doubleToRawLongBits = Double.doubleToRawLongBits(d10);
        int i11 = ((int) ((doubleToRawLongBits >> 52) & 2047)) - 1023;
        if (i11 != -1023) {
            z10 = false;
            i10 = i11;
            j10 = doubleToRawLongBits;
            d11 = d10;
        } else {
            if (d10 == 0.0d) {
                return d10;
            }
            d11 = 1.8014398509481984E16d * d10;
            j10 = Double.doubleToRawLongBits(d11);
            i10 = ((int) (2047 & (j10 >> 52))) - 1023;
            z10 = true;
        }
        if (i10 == 1024) {
            return d11;
        }
        double longBitsToDouble = Double.longBitsToDouble((Long.MIN_VALUE & j10) | ((((i10 / 3) + 1023) & 2047) << 52));
        double longBitsToDouble2 = Double.longBitsToDouble((j10 & 4503599627370495L) | d.f5381g);
        double d12 = (((((((((-0.010714690733195933d) * longBitsToDouble2) + 0.0875862700108075d) * longBitsToDouble2) - 0.3058015757857271d) * longBitsToDouble2) + 0.7249995199969751d) * longBitsToDouble2) + 0.5039018405998233d) * CBRTTWO[(i10 % 3) + 2];
        double d13 = d11 / ((longBitsToDouble * longBitsToDouble) * longBitsToDouble);
        double d14 = d12 + ((d13 - ((d12 * d12) * d12)) / ((d12 * 3.0d) * d12));
        double d15 = d14 + ((d13 - ((d14 * d14) * d14)) / ((d14 * 3.0d) * d14));
        double d16 = d15 * 1.073741824E9d;
        double d17 = (d15 + d16) - d16;
        double d18 = d15 - d17;
        double d19 = d17 * d17;
        double d20 = 1.073741824E9d * d19;
        double d21 = (d19 + d20) - d20;
        double d22 = (d17 * d18 * 2.0d) + (d18 * d18) + (d19 - d21);
        double d23 = (d21 * d18) + (d17 * d22) + (d22 * d18);
        double d24 = d21 * d17;
        double d25 = d13 - d24;
        double d26 = (d15 + ((d25 + ((-((d25 - d13) + d24)) - d23)) / ((3.0d * d15) * d15))) * longBitsToDouble;
        return z10 ? d26 * 3.814697265625E-6d : d26;
    }

    public static double ceil(double d10) {
        if (d10 != d10) {
            return d10;
        }
        double floor = floor(d10);
        if (floor == d10) {
            return floor;
        }
        double d11 = floor + 1.0d;
        return d11 == 0.0d ? d10 * d11 : d11;
    }

    public static double copySign(double d10, double d11) {
        return (Double.doubleToRawLongBits(d11) ^ Double.doubleToRawLongBits(d10)) >= 0 ? d10 : -d10;
    }

    public static double cos(double d10) {
        double sinQ;
        double d11 = 0.0d;
        if (d10 < 0.0d) {
            d10 = -d10;
        }
        if (d10 != d10 || d10 == Double.POSITIVE_INFINITY) {
            return Double.NaN;
        }
        int i10 = 0;
        if (d10 > 3294198.0d) {
            double[] dArr = new double[3];
            reducePayneHanek(d10, dArr);
            i10 = ((int) dArr[0]) & 3;
            d10 = dArr[1];
            d11 = dArr[2];
        } else if (d10 > 1.5707963267948966d) {
            CodyWaite codyWaite = new CodyWaite(d10);
            i10 = codyWaite.getK() & 3;
            d10 = codyWaite.getRemA();
            d11 = codyWaite.getRemB();
        }
        if (i10 == 0) {
            return cosQ(d10, d11);
        }
        if (i10 == 1) {
            sinQ = sinQ(d10, d11);
        } else {
            if (i10 != 2) {
                if (i10 != 3) {
                    return Double.NaN;
                }
                return sinQ(d10, d11);
            }
            sinQ = cosQ(d10, d11);
        }
        return -sinQ;
    }

    private static double cosQ(double d10, double d11) {
        double d12 = 1.5707963267948966d - d10;
        return sinQ(d12, (-((d12 - 1.5707963267948966d) + d10)) + (6.123233995736766E-17d - d11));
    }

    public static double cosh(double d10) {
        double exp;
        double exp2;
        double d11 = d10;
        if (d11 != d11) {
            return d11;
        }
        if (d11 > 20.0d) {
            if (d11 >= LOG_MAX_VALUE) {
                exp2 = exp(d11 * 0.5d);
                return 0.5d * exp2 * exp2;
            }
            exp = exp(d10);
            return exp * 0.5d;
        }
        if (d11 < -20.0d) {
            if (d11 <= (-LOG_MAX_VALUE)) {
                exp2 = exp(d11 * (-0.5d));
                return 0.5d * exp2 * exp2;
            }
            exp = exp(-d11);
            return exp * 0.5d;
        }
        double[] dArr = new double[2];
        if (d11 < 0.0d) {
            d11 = -d11;
        }
        exp(d11, 0.0d, dArr);
        double d12 = dArr[0];
        double d13 = dArr[1];
        double d14 = d12 + d13;
        double d15 = -((d14 - d12) - d13);
        double d16 = d14 * 1.073741824E9d;
        double d17 = (d14 + d16) - d16;
        double d18 = d14 - d17;
        double d19 = 1.0d / d14;
        double d20 = 1.073741824E9d * d19;
        double d21 = (d19 + d20) - d20;
        double d22 = d19 - d21;
        double d23 = d22 + (((((1.0d - (d17 * d21)) - (d17 * d22)) - (d18 * d21)) - (d18 * d22)) * d19) + ((-d15) * d19 * d19);
        double d24 = d14 + d21;
        double d25 = d15 + (-((d24 - d14) - d21));
        double d26 = d24 + d23;
        return (d26 + d25 + (-((d26 - d24) - d23))) * 0.5d;
    }

    public static int decrementExact(int i10) throws MathArithmeticException {
        if (i10 != Integer.MIN_VALUE) {
            return i10 - 1;
        }
        throw new MathArithmeticException(LocalizedFormats.OVERFLOW_IN_SUBTRACTION, Integer.valueOf(i10), 1);
    }

    private static double doubleHighPart(double d10) {
        double d11 = Precision.SAFE_MIN;
        return (d10 <= (-d11) || d10 >= d11) ? Double.longBitsToDouble(Double.doubleToRawLongBits(d10) & MASK_30BITS) : d10;
    }

    public static double exp(double d10) {
        return exp(d10, 0.0d, null);
    }

    public static double expm1(double d10) {
        return expm1(d10, null);
    }

    public static double floor(double d10) {
        if (d10 != d10 || d10 >= TWO_POWER_52 || d10 <= -4.503599627370496E15d) {
            return d10;
        }
        long j10 = (long) d10;
        if (d10 < 0.0d && j10 != d10) {
            j10--;
        }
        return j10 == 0 ? d10 * j10 : j10;
    }

    public static int floorDiv(int i10, int i11) throws MathArithmeticException {
        if (i11 != 0) {
            int i12 = i10 % i11;
            if ((i10 ^ i11) < 0 && i12 != 0) {
                return (i10 / i11) - 1;
            }
            return i10 / i11;
        }
        throw new MathArithmeticException(LocalizedFormats.ZERO_DENOMINATOR, new Object[0]);
    }

    public static int floorMod(int i10, int i11) throws MathArithmeticException {
        if (i11 != 0) {
            int i12 = i10 % i11;
            return ((i10 ^ i11) >= 0 || i12 == 0) ? i12 : i11 + i12;
        }
        throw new MathArithmeticException(LocalizedFormats.ZERO_DENOMINATOR, new Object[0]);
    }

    public static int getExponent(double d10) {
        return ((int) ((Double.doubleToRawLongBits(d10) >>> 52) & 2047)) - 1023;
    }

    public static double hypot(double d10, double d11) {
        if (Double.isInfinite(d10) || Double.isInfinite(d11)) {
            return Double.POSITIVE_INFINITY;
        }
        if (Double.isNaN(d10) || Double.isNaN(d11)) {
            return Double.NaN;
        }
        int exponent = getExponent(d10);
        int exponent2 = getExponent(d11);
        if (exponent > exponent2 + 27) {
            return abs(d10);
        }
        if (exponent2 > exponent + 27) {
            return abs(d11);
        }
        int i10 = (exponent + exponent2) / 2;
        int i11 = -i10;
        double scalb = scalb(d10, i11);
        double scalb2 = scalb(d11, i11);
        return scalb(sqrt((scalb * scalb) + (scalb2 * scalb2)), i10);
    }

    public static int incrementExact(int i10) throws MathArithmeticException {
        if (i10 != Integer.MAX_VALUE) {
            return i10 + 1;
        }
        throw new MathArithmeticException(LocalizedFormats.OVERFLOW_IN_ADDITION, Integer.valueOf(i10), 1);
    }

    public static double log(double d10) {
        return log(d10, (double[]) null);
    }

    public static double log10(double d10) {
        double[] dArr = new double[2];
        double log = log(d10, dArr);
        if (Double.isInfinite(log)) {
            return log;
        }
        double d11 = dArr[0];
        double d12 = 1.073741824E9d * d11;
        double d13 = (d11 + d12) - d12;
        double d14 = (d11 - d13) + dArr[1];
        return (d14 * 1.9699272335463627E-8d) + (1.9699272335463627E-8d * d13) + (d14 * 0.4342944622039795d) + (d13 * 0.4342944622039795d);
    }

    public static double log1p(double d10) {
        if (d10 == -1.0d) {
            return Double.NEGATIVE_INFINITY;
        }
        if (d10 == Double.POSITIVE_INFINITY) {
            return Double.POSITIVE_INFINITY;
        }
        if (d10 <= 1.0E-6d && d10 >= -1.0E-6d) {
            return ((((0.3333333333333333d * d10) - 0.5d) * d10) + 1.0d) * d10;
        }
        double d11 = d10 + 1.0d;
        double d12 = -((d11 - 1.0d) - d10);
        double[] dArr = new double[2];
        double log = log(d11, dArr);
        if (Double.isInfinite(log)) {
            return log;
        }
        double d13 = d12 / d11;
        return (((0.5d * d13) + 1.0d) * d13) + dArr[1] + dArr[0];
    }

    public static void main(String[] strArr) {
        PrintStream printStream = System.out;
        FastMathCalc.printarray(printStream, "EXP_INT_TABLE_A", 1500, ExpIntTable.EXP_INT_TABLE_A);
        FastMathCalc.printarray(printStream, "EXP_INT_TABLE_B", 1500, ExpIntTable.EXP_INT_TABLE_B);
        FastMathCalc.printarray(printStream, "EXP_FRAC_TABLE_A", 1025, ExpFracTable.EXP_FRAC_TABLE_A);
        FastMathCalc.printarray(printStream, "EXP_FRAC_TABLE_B", 1025, ExpFracTable.EXP_FRAC_TABLE_B);
        FastMathCalc.printarray(printStream, "LN_MANT", 1024, lnMant.LN_MANT);
        FastMathCalc.printarray(printStream, "SINE_TABLE_A", 14, SINE_TABLE_A);
        FastMathCalc.printarray(printStream, "SINE_TABLE_B", 14, SINE_TABLE_B);
        FastMathCalc.printarray(printStream, "COSINE_TABLE_A", 14, COSINE_TABLE_A);
        FastMathCalc.printarray(printStream, "COSINE_TABLE_B", 14, COSINE_TABLE_B);
        FastMathCalc.printarray(printStream, "TANGENT_TABLE_A", 14, TANGENT_TABLE_A);
        FastMathCalc.printarray(printStream, "TANGENT_TABLE_B", 14, TANGENT_TABLE_B);
    }

    public static int max(int i10, int i11) {
        return i10 <= i11 ? i11 : i10;
    }

    public static int min(int i10, int i11) {
        return i10 <= i11 ? i10 : i11;
    }

    public static int multiplyExact(int i10, int i11) {
        if ((i11 <= 0 || (i10 <= Integer.MAX_VALUE / i11 && i10 >= Integer.MIN_VALUE / i11)) && ((i11 >= -1 || (i10 <= Integer.MIN_VALUE / i11 && i10 >= Integer.MAX_VALUE / i11)) && !(i11 == -1 && i10 == Integer.MIN_VALUE))) {
            return i10 * i11;
        }
        throw new MathArithmeticException(LocalizedFormats.OVERFLOW_IN_MULTIPLICATION, Integer.valueOf(i10), Integer.valueOf(i11));
    }

    public static double nextAfter(double d10, double d11) {
        if (Double.isNaN(d10) || Double.isNaN(d11)) {
            return Double.NaN;
        }
        if (d10 == d11) {
            return d11;
        }
        if (Double.isInfinite(d10)) {
            return d10 < 0.0d ? -1.7976931348623157E308d : Double.MAX_VALUE;
        }
        if (d10 == 0.0d) {
            return d11 < 0.0d ? -4.9E-324d : Double.MIN_VALUE;
        }
        long doubleToRawLongBits = Double.doubleToRawLongBits(d10);
        long j10 = Long.MIN_VALUE & doubleToRawLongBits;
        if ((d11 < d10) ^ (j10 == 0)) {
            return Double.longBitsToDouble(j10 | ((doubleToRawLongBits & Long.MAX_VALUE) + 1));
        }
        return Double.longBitsToDouble(j10 | ((doubleToRawLongBits & Long.MAX_VALUE) - 1));
    }

    public static double nextDown(double d10) {
        return nextAfter(d10, Double.NEGATIVE_INFINITY);
    }

    public static double nextUp(double d10) {
        return nextAfter(d10, Double.POSITIVE_INFINITY);
    }

    private static double polyCosine(double d10) {
        return ((((((2.479773539153719E-5d * r4) - 0.0013888888689039883d) * r4) + 0.041666666666621166d) * r4) - 0.49999999999999994d) * d10 * d10;
    }

    private static double polySine(double d10) {
        return ((((((2.7553817452272217E-6d * r0) - 1.9841269659586505E-4d) * r0) + 0.008333333333329196d) * r0) - 0.16666666666666666d) * d10 * d10 * d10;
    }

    public static double pow(double d10, double d11) {
        if (d11 == 0.0d) {
            return 1.0d;
        }
        long doubleToRawLongBits = Double.doubleToRawLongBits(d11);
        int i10 = (int) ((doubleToRawLongBits & 9218868437227405312L) >> 52);
        long j10 = doubleToRawLongBits & 4503599627370495L;
        long doubleToRawLongBits2 = Double.doubleToRawLongBits(d10);
        int i11 = (int) ((doubleToRawLongBits2 & 9218868437227405312L) >> 52);
        long j11 = doubleToRawLongBits2 & 4503599627370495L;
        if (i10 > 1085) {
            if ((i10 == 2047 && j10 != 0) || (i11 == 2047 && j11 != 0)) {
                return Double.NaN;
            }
            if (i11 == 1023 && j11 == 0) {
                return i10 == 2047 ? Double.NaN : 1.0d;
            }
            return ((d11 > 0.0d ? 1 : (d11 == 0.0d ? 0 : -1)) > 0) ^ (i11 < 1023) ? Double.POSITIVE_INFINITY : 0.0d;
        }
        if (i10 >= 1023) {
            long j12 = j10 | 4503599627370496L;
            if (i10 >= 1075) {
                long j13 = j12 << (i10 - 1075);
                if (d11 < 0.0d) {
                    j13 = -j13;
                }
                return pow(d10, j13);
            }
            int i12 = 1075 - i10;
            if ((((-1) << i12) & j12) == j12) {
                long j14 = j12 >> i12;
                if (d11 < 0.0d) {
                    j14 = -j14;
                }
                return pow(d10, j14);
            }
        }
        if (d10 == 0.0d) {
            return d11 < 0.0d ? Double.POSITIVE_INFINITY : 0.0d;
        }
        if (i11 == 2047) {
            if (j11 == 0) {
                return d11 < 0.0d ? 0.0d : Double.POSITIVE_INFINITY;
            }
            return Double.NaN;
        }
        if (d10 < 0.0d) {
            return Double.NaN;
        }
        double d12 = d11 * 1.073741824E9d;
        double d13 = (d11 + d12) - d12;
        double d14 = d11 - d13;
        double[] dArr = new double[2];
        double log = log(d10, dArr);
        if (Double.isInfinite(log)) {
            return log;
        }
        double d15 = dArr[0];
        double d16 = 1.073741824E9d * d15;
        double d17 = (d15 + d16) - d16;
        double d18 = dArr[1] + (d15 - d17);
        double d19 = d17 * d13;
        double d20 = (d17 * d14) + (d13 * d18) + (d18 * d14);
        double d21 = d19 + d20;
        double d22 = -((d21 - d19) - d20);
        return exp(d21, ((((((((0.008333333333333333d * d22) + 0.041666666666666664d) * d22) + 0.16666666666666666d) * d22) + 0.5d) * d22) + 1.0d) * d22, null);
    }

    public static double random() {
        return Math.random();
    }

    private static void reducePayneHanek(double d10, double[] dArr) {
        long j10;
        long j11;
        long j12;
        long doubleToRawLongBits = Double.doubleToRawLongBits(d10);
        int i10 = ((int) ((doubleToRawLongBits >> 52) & 2047)) + Double.MIN_EXPONENT;
        long j13 = ((doubleToRawLongBits & 4503599627370495L) | 4503599627370496L) << 11;
        int i11 = i10 >> 6;
        int i12 = i10 - (i11 << 6);
        if (i12 != 0) {
            long j14 = i11 == 0 ? 0L : RECIP_2PI[i11 - 1] << i12;
            long[] jArr = RECIP_2PI;
            long j15 = jArr[i11];
            int i13 = 64 - i12;
            j10 = j14 | (j15 >>> i13);
            long j16 = jArr[i11 + 1];
            j11 = (j15 << i12) | (j16 >>> i13);
            j12 = (jArr[i11 + 2] >>> i13) | (j16 << i12);
        } else {
            j10 = i11 == 0 ? 0L : RECIP_2PI[i11 - 1];
            long[] jArr2 = RECIP_2PI;
            j11 = jArr2[i11];
            j12 = jArr2[i11 + 1];
        }
        long j17 = j13 >>> 32;
        long j18 = j13 & 4294967295L;
        long j19 = j11 >>> 32;
        long j20 = j11 & 4294967295L;
        long j21 = j17 * j19;
        long j22 = j18 * j20;
        long j23 = j19 * j18;
        long j24 = j20 * j17;
        long j25 = j22 + (j24 << 32);
        long j26 = j21 + (j24 >>> 32);
        boolean z10 = (j22 & Long.MIN_VALUE) != 0;
        boolean z11 = (j24 & 2147483648L) != 0;
        long j27 = j25 & Long.MIN_VALUE;
        boolean z12 = j27 != 0;
        if ((z10 && z11) || ((z10 || z11) && !z12)) {
            j26++;
        }
        boolean z13 = j27 != 0;
        boolean z14 = (j23 & 2147483648L) != 0;
        long j28 = j25 + (j23 << 32);
        long j29 = j26 + (j23 >>> 32);
        long j30 = j28 & Long.MIN_VALUE;
        boolean z15 = j30 != 0;
        if ((z13 && z14) || ((z13 || z14) && !z15)) {
            j29++;
        }
        long j31 = j12 >>> 32;
        long j32 = (j17 * j31) + (((j31 * j18) + ((j12 & 4294967295L) * j17)) >>> 32);
        boolean z16 = j30 != 0;
        boolean z17 = (j32 & Long.MIN_VALUE) != 0;
        long j33 = j28 + j32;
        boolean z18 = (j33 & Long.MIN_VALUE) != 0;
        if ((z16 && z17) || ((z16 || z17) && !z18)) {
            j29++;
        }
        long j34 = j10 >>> 32;
        long j35 = j10 & 4294967295L;
        long j36 = j29 + (j18 * j35) + (((j18 * j34) + (j17 * j35)) << 32);
        int i14 = (int) (j36 >>> 62);
        long j37 = (j36 << 2) | (j33 >>> 62);
        long j38 = j33 << 2;
        long j39 = j37 >>> 32;
        long j40 = j37 & 4294967295L;
        long[] jArr3 = PI_O_4_BITS;
        long j41 = jArr3[0];
        long j42 = j41 >>> 32;
        long j43 = j41 & 4294967295L;
        long j44 = j39 * j42;
        long j45 = j40 * j43;
        long j46 = j42 * j40;
        long j47 = j43 * j39;
        long j48 = j45 + (j47 << 32);
        long j49 = j44 + (j47 >>> 32);
        boolean z19 = (j45 & Long.MIN_VALUE) != 0;
        boolean z20 = (j47 & 2147483648L) != 0;
        long j50 = j48 & Long.MIN_VALUE;
        boolean z21 = j50 != 0;
        if ((z19 && z20) || ((z19 || z20) && !z21)) {
            j49++;
        }
        boolean z22 = j50 != 0;
        boolean z23 = (j46 & 2147483648L) != 0;
        long j51 = j48 + (j46 << 32);
        long j52 = j49 + (j46 >>> 32);
        long j53 = j51 & Long.MIN_VALUE;
        boolean z24 = j53 != 0;
        if ((z22 && z23) || ((z22 || z23) && !z24)) {
            j52++;
        }
        long j54 = jArr3[1];
        long j55 = j54 >>> 32;
        long j56 = (j39 * j55) + (((j40 * j55) + (j39 * (j54 & 4294967295L))) >>> 32);
        boolean z25 = j53 != 0;
        boolean z26 = (j56 & Long.MIN_VALUE) != 0;
        long j57 = j51 + j56;
        long j58 = j57 & Long.MIN_VALUE;
        boolean z27 = j58 != 0;
        if ((z25 && z26) || ((z25 || z26) && !z27)) {
            j52++;
        }
        long j59 = j38 >>> 32;
        long j60 = j41 >>> 32;
        long j61 = (j59 * j60) + ((((j38 & 4294967295L) * j60) + (j59 * (j41 & 4294967295L))) >>> 32);
        boolean z28 = j58 != 0;
        boolean z29 = (j61 & Long.MIN_VALUE) != 0;
        boolean z30 = ((j57 + j61) & Long.MIN_VALUE) != 0;
        if ((z28 && z29) || ((z28 || z29) && !z30)) {
            j52++;
        }
        double d11 = (j52 >>> 12) / TWO_POWER_52;
        double d12 = ((((j52 & 4095) << 40) + (r34 >>> 24)) / TWO_POWER_52) / TWO_POWER_52;
        double d13 = d11 + d12;
        dArr[0] = i14;
        dArr[1] = d13 * 2.0d;
        dArr[2] = (-((d13 - d11) - d12)) * 2.0d;
    }

    public static double rint(double d10) {
        double floor = floor(d10);
        double d11 = d10 - floor;
        if (d11 <= 0.5d) {
            return (d11 >= 0.5d && (((long) floor) & 1) != 0) ? floor + 1.0d : floor;
        }
        if (floor == -1.0d) {
            return -0.0d;
        }
        return floor + 1.0d;
    }

    public static long round(double d10) {
        return (long) floor(d10 + 0.5d);
    }

    public static double scalb(double d10, int i10) {
        if (i10 > -1023 && i10 < 1024) {
            return Double.longBitsToDouble((i10 + 1023) << 52) * d10;
        }
        if (Double.isNaN(d10) || Double.isInfinite(d10) || d10 == 0.0d) {
            return d10;
        }
        if (i10 < -2098) {
            return d10 > 0.0d ? 0.0d : -0.0d;
        }
        if (i10 > 2097) {
            return d10 > 0.0d ? Double.POSITIVE_INFINITY : Double.NEGATIVE_INFINITY;
        }
        long doubleToRawLongBits = Double.doubleToRawLongBits(d10);
        long j10 = Long.MIN_VALUE & doubleToRawLongBits;
        int i11 = ((int) (doubleToRawLongBits >>> 52)) & 2047;
        long j11 = doubleToRawLongBits & 4503599627370495L;
        int i12 = i11 + i10;
        if (i10 < 0) {
            if (i12 > 0) {
                return Double.longBitsToDouble((i12 << 52) | j10 | j11);
            }
            if (i12 <= -53) {
                return j10 == 0 ? 0.0d : -0.0d;
            }
            long j12 = 4503599627370496L | j11;
            long j13 = (1 << (-i12)) & j12;
            long j14 = j12 >>> (1 - i12);
            if (j13 != 0) {
                j14++;
            }
            return Double.longBitsToDouble(j14 | j10);
        }
        if (i11 != 0) {
            if (i12 < 2047) {
                return Double.longBitsToDouble((i12 << 52) | j10 | j11);
            }
            return j10 == 0 ? Double.POSITIVE_INFINITY : Double.NEGATIVE_INFINITY;
        }
        while ((j11 >>> 52) != 1) {
            j11 <<= 1;
            i12--;
        }
        int i13 = i12 + 1;
        long j15 = j11 & 4503599627370495L;
        if (i13 < 2047) {
            return Double.longBitsToDouble(j15 | (i13 << 52) | j10);
        }
        return j10 == 0 ? Double.POSITIVE_INFINITY : Double.NEGATIVE_INFINITY;
    }

    public static double signum(double d10) {
        if (d10 < 0.0d) {
            return -1.0d;
        }
        if (d10 > 0.0d) {
            return 1.0d;
        }
        return d10;
    }

    public static double sin(double d10) {
        double d11;
        boolean z10;
        double sinQ;
        double d12 = 0.0d;
        int i10 = 0;
        if (d10 < 0.0d) {
            d11 = -d10;
            z10 = true;
        } else {
            d11 = d10;
            z10 = false;
        }
        if (d11 == 0.0d) {
            return Double.doubleToRawLongBits(d10) < 0 ? -0.0d : 0.0d;
        }
        if (d11 != d11 || d11 == Double.POSITIVE_INFINITY) {
            return Double.NaN;
        }
        if (d11 > 3294198.0d) {
            double[] dArr = new double[3];
            reducePayneHanek(d11, dArr);
            i10 = ((int) dArr[0]) & 3;
            d11 = dArr[1];
            d12 = dArr[2];
        } else if (d11 > 1.5707963267948966d) {
            CodyWaite codyWaite = new CodyWaite(d11);
            i10 = codyWaite.getK() & 3;
            d11 = codyWaite.getRemA();
            d12 = codyWaite.getRemB();
        }
        if (z10) {
            i10 ^= 2;
        }
        if (i10 == 0) {
            return sinQ(d11, d12);
        }
        if (i10 == 1) {
            return cosQ(d11, d12);
        }
        if (i10 == 2) {
            sinQ = sinQ(d11, d12);
        } else {
            if (i10 != 3) {
                return Double.NaN;
            }
            sinQ = cosQ(d11, d12);
        }
        return -sinQ;
    }

    private static double sinQ(double d10, double d11) {
        int i10 = (int) ((8.0d * d10) + 0.5d);
        double d12 = d10 - EIGHTHS[i10];
        double d13 = SINE_TABLE_A[i10];
        double d14 = SINE_TABLE_B[i10];
        double d15 = COSINE_TABLE_A[i10];
        double d16 = COSINE_TABLE_B[i10];
        double polySine = polySine(d12);
        double polyCosine = polyCosine(d12);
        double d17 = 1.073741824E9d * d12;
        double d18 = (d12 + d17) - d17;
        double d19 = polySine + (d12 - d18);
        double d20 = d13 + 0.0d;
        double d21 = d15 * d18;
        double d22 = d20 + d21;
        double d23 = (-((d20 - 0.0d) - d13)) + 0.0d + (-((d22 - d20) - d21)) + (d13 * polyCosine) + (d15 * d19) + d14 + (d16 * d18) + (d14 * polyCosine) + (d16 * d19);
        if (d11 != 0.0d) {
            double d24 = (((d15 + d16) * (polyCosine + 1.0d)) - ((d13 + d14) * (d18 + d19))) * d11;
            double d25 = d22 + d24;
            d23 += -((d25 - d22) - d24);
            d22 = d25;
        }
        return d22 + d23;
    }

    public static double sinh(double d10) {
        boolean z10;
        double d11;
        double d12;
        double d13;
        double exp;
        double exp2;
        double d14 = d10;
        if (d14 != d14) {
            return d14;
        }
        double d15 = 0.5d;
        if (d14 > 20.0d) {
            if (d14 >= LOG_MAX_VALUE) {
                exp2 = exp(d14 * 0.5d);
                return d15 * exp2 * exp2;
            }
            exp = exp(d10);
            return exp * d15;
        }
        if (d14 < -20.0d) {
            d15 = -0.5d;
            if (d14 <= (-LOG_MAX_VALUE)) {
                exp2 = exp(d14 * (-0.5d));
                return d15 * exp2 * exp2;
            }
            exp = exp(-d14);
            return exp * d15;
        }
        if (d14 == 0.0d) {
            return d14;
        }
        if (d14 < 0.0d) {
            d14 = -d14;
            z10 = true;
        } else {
            z10 = false;
        }
        if (d14 > F_1_4) {
            double[] dArr = new double[2];
            exp(d14, 0.0d, dArr);
            double d16 = dArr[0];
            double d17 = dArr[1];
            double d18 = d16 + d17;
            double d19 = -((d18 - d16) - d17);
            double d20 = d18 * 1.073741824E9d;
            double d21 = (d18 + d20) - d20;
            double d22 = d18 - d21;
            double d23 = 1.0d / d18;
            double d24 = 1.073741824E9d * d23;
            double d25 = (d23 + d24) - d24;
            double d26 = d23 - d25;
            double d27 = d26 + (((((1.0d - (d21 * d25)) - (d21 * d26)) - (d22 * d25)) - (d22 * d26)) * d23) + ((-d19) * d23 * d23);
            double d28 = -d25;
            double d29 = -d27;
            double d30 = d18 + d28;
            d11 = d19 + (-((d30 - d18) - d28));
            d12 = d30 + d29;
            d13 = -((d12 - d30) - d29);
        } else {
            double[] dArr2 = new double[2];
            expm1(d14, dArr2);
            double d31 = dArr2[0];
            double d32 = dArr2[1];
            double d33 = d31 + d32;
            double d34 = -((d33 - d31) - d32);
            double d35 = d33 + 1.0d;
            double d36 = 1.0d / d35;
            double d37 = (-((d35 - 1.0d) - d33)) + d34;
            double d38 = d33 * d36;
            double d39 = d38 * 1.073741824E9d;
            double d40 = (d38 + d39) - d39;
            double d41 = d38 - d40;
            double d42 = 1.073741824E9d * d35;
            double d43 = (d35 + d42) - d42;
            double d44 = d35 - d43;
            double d45 = d41 + (((((d33 - (d43 * d40)) - (d43 * d41)) - (d44 * d40)) - (d44 * d41)) * d36) + (d34 * d36) + ((-d33) * d37 * d36 * d36);
            double d46 = d33 + d40;
            d11 = d34 + (-((d46 - d33) - d40));
            d12 = d46 + d45;
            d13 = -((d12 - d46) - d45);
        }
        double d47 = (d12 + d11 + d13) * 0.5d;
        return z10 ? -d47 : d47;
    }

    public static double sqrt(double d10) {
        return Math.sqrt(d10);
    }

    public static int subtractExact(int i10, int i11) {
        int i12 = i10 - i11;
        if ((i10 ^ i11) >= 0 || (i12 ^ i11) < 0) {
            return i12;
        }
        throw new MathArithmeticException(LocalizedFormats.OVERFLOW_IN_SUBTRACTION, Integer.valueOf(i10), Integer.valueOf(i11));
    }

    public static double tan(double d10) {
        double d11;
        boolean z10;
        int i10;
        double d12 = 0.0d;
        if (d10 < 0.0d) {
            d11 = -d10;
            z10 = true;
        } else {
            d11 = d10;
            z10 = false;
        }
        if (d11 == 0.0d) {
            return Double.doubleToRawLongBits(d10) < 0 ? -0.0d : 0.0d;
        }
        if (d11 != d11 || d11 == Double.POSITIVE_INFINITY) {
            return Double.NaN;
        }
        if (d11 > 3294198.0d) {
            double[] dArr = new double[3];
            reducePayneHanek(d11, dArr);
            i10 = 3 & ((int) dArr[0]);
            d11 = dArr[1];
            d12 = dArr[2];
        } else if (d11 > 1.5707963267948966d) {
            CodyWaite codyWaite = new CodyWaite(d11);
            i10 = 3 & codyWaite.getK();
            d11 = codyWaite.getRemA();
            d12 = codyWaite.getRemB();
        } else {
            i10 = 0;
        }
        if (d11 > 1.5d) {
            double d13 = 1.5707963267948966d - d11;
            double d14 = (-((d13 - 1.5707963267948966d) + d11)) + (6.123233995736766E-17d - d12);
            double d15 = d13 + d14;
            i10 ^= 1;
            z10 = !z10;
            d12 = -((d15 - d13) - d14);
            d11 = d15;
        }
        double tanQ = (i10 & 1) == 0 ? tanQ(d11, d12, false) : -tanQ(d11, d12, true);
        return z10 ? -tanQ : tanQ;
    }

    private static double tanQ(double d10, double d11, boolean z10) {
        double d12;
        double d13;
        int i10 = (int) ((8.0d * d10) + 0.5d);
        double d14 = d10 - EIGHTHS[i10];
        double d15 = SINE_TABLE_A[i10];
        double d16 = SINE_TABLE_B[i10];
        double d17 = COSINE_TABLE_A[i10];
        double d18 = COSINE_TABLE_B[i10];
        double polySine = polySine(d14);
        double polyCosine = polyCosine(d14);
        double d19 = d14 * 1.073741824E9d;
        double d20 = (d14 + d19) - d19;
        double d21 = polySine + (d14 - d20);
        double d22 = d15 + 0.0d;
        double d23 = d17 * d20;
        double d24 = d22 + d23;
        double d25 = (-((d22 - 0.0d) - d15)) + 0.0d + (-((d24 - d22) - d23)) + (d15 * polyCosine) + (d17 * d21) + d16 + (d18 * d20) + (d16 * polyCosine) + (d18 * d21);
        double d26 = d24 + d25;
        double d27 = -((d26 - d24) - d25);
        double d28 = d17 * 1.0d;
        double d29 = d28 + 0.0d;
        double d30 = (-d15) * d20;
        double d31 = d29 + d30;
        double d32 = ((((-((d29 - 0.0d) - d28)) + 0.0d) + (-((d31 - d29) - d30))) + (((1.0d * d18) + (d17 * polyCosine)) + (d18 * polyCosine))) - (((d16 * d20) + (d15 * d21)) + (d16 * d21));
        double d33 = d31 + d32;
        double d34 = -((d33 - d31) - d32);
        if (z10) {
            d12 = d27;
            d27 = d34;
            d13 = d33;
            d33 = d26;
        } else {
            d12 = d34;
            d13 = d26;
        }
        double d35 = d13 / d33;
        double d36 = d35 * 1.073741824E9d;
        double d37 = (d35 + d36) - d36;
        double d38 = d35 - d37;
        double d39 = 1.073741824E9d * d33;
        double d40 = (d33 + d39) - d39;
        double d41 = d33 - d40;
        double d42 = (((((d13 - (d37 * d40)) - (d37 * d41)) - (d40 * d38)) - (d38 * d41)) / d33) + (d27 / d33) + ((((-d13) * d12) / d33) / d33);
        if (d11 != 0.0d) {
            double d43 = d11 + (d35 * d35 * d11);
            if (z10) {
                d43 = -d43;
            }
            d42 += d43;
        }
        return d35 + d42;
    }

    public static double tanh(double d10) {
        boolean z10;
        double d11;
        double d12 = d10;
        if (d12 != d12) {
            return d12;
        }
        if (d12 > 20.0d) {
            return 1.0d;
        }
        if (d12 < -20.0d) {
            return -1.0d;
        }
        if (d12 == 0.0d) {
            return d12;
        }
        if (d12 < 0.0d) {
            d12 = -d12;
            z10 = true;
        } else {
            z10 = false;
        }
        if (d12 >= 0.5d) {
            double[] dArr = new double[2];
            exp(d12 * 2.0d, 0.0d, dArr);
            double d13 = dArr[0];
            double d14 = dArr[1];
            double d15 = d13 + d14;
            double d16 = -((d15 - d13) - d14);
            double d17 = (-1.0d) + d15;
            double d18 = d17 + d16;
            double d19 = (-((d17 + 1.0d) - d15)) + (-((d18 - d17) - d16));
            double d20 = d15 + 1.0d;
            double d21 = -((d20 - 1.0d) - d15);
            double d22 = d20 + d16;
            double d23 = d21 + (-((d22 - d20) - d16));
            double d24 = d22 * 1.073741824E9d;
            double d25 = (d22 + d24) - d24;
            double d26 = d22 - d25;
            double d27 = d18 / d22;
            double d28 = 1.073741824E9d * d27;
            double d29 = (d27 + d28) - d28;
            double d30 = d27 - d29;
            d11 = d29 + d30 + (((((d18 - (d25 * d29)) - (d25 * d30)) - (d26 * d29)) - (d26 * d30)) / d22) + (d19 / d22) + ((((-d23) * d18) / d22) / d22);
        } else {
            double[] dArr2 = new double[2];
            expm1(d12 * 2.0d, dArr2);
            double d31 = dArr2[0];
            double d32 = dArr2[1];
            double d33 = d31 + d32;
            double d34 = -((d33 - d31) - d32);
            double d35 = d33 + 2.0d;
            double d36 = d35 + d34;
            double d37 = (-((d35 - 2.0d) - d33)) + (-((d36 - d35) - d34));
            double d38 = d36 * 1.073741824E9d;
            double d39 = (d36 + d38) - d38;
            double d40 = d36 - d39;
            double d41 = d33 / d36;
            double d42 = 1.073741824E9d * d41;
            double d43 = (d41 + d42) - d42;
            double d44 = d41 - d43;
            d11 = d43 + d44 + (((((d33 - (d39 * d43)) - (d39 * d44)) - (d40 * d43)) - (d40 * d44)) / d36) + (d34 / d36) + ((((-d37) * d33) / d36) / d36);
        }
        double d45 = d11;
        return z10 ? -d45 : d45;
    }

    public static double toDegrees(double d10) {
        if (Double.isInfinite(d10) || d10 == 0.0d) {
            return d10;
        }
        double doubleHighPart = doubleHighPart(d10);
        double d11 = d10 - doubleHighPart;
        return (d11 * 3.145894820876798E-6d) + (d11 * 57.2957763671875d) + (3.145894820876798E-6d * doubleHighPart) + (doubleHighPart * 57.2957763671875d);
    }

    public static int toIntExact(long j10) throws MathArithmeticException {
        if (j10 < -2147483648L || j10 > 2147483647L) {
            throw new MathArithmeticException(LocalizedFormats.OVERFLOW, new Object[0]);
        }
        return (int) j10;
    }

    public static double toRadians(double d10) {
        if (Double.isInfinite(d10) || d10 == 0.0d) {
            return d10;
        }
        double doubleHighPart = doubleHighPart(d10);
        double d11 = d10 - doubleHighPart;
        double d12 = (d11 * 1.997844754509471E-9d) + (d11 * 0.01745329052209854d) + (1.997844754509471E-9d * doubleHighPart) + (doubleHighPart * 0.01745329052209854d);
        return d12 == 0.0d ? d12 * d10 : d12;
    }

    public static double ulp(double d10) {
        if (Double.isInfinite(d10)) {
            return Double.POSITIVE_INFINITY;
        }
        return abs(d10 - Double.longBitsToDouble(Double.doubleToRawLongBits(d10) ^ 1));
    }

    public static long abs(long j10) {
        long j11 = j10 >>> 63;
        return (j10 ^ ((~j11) + 1)) + j11;
    }

    public static long addExact(long j10, long j11) throws MathArithmeticException {
        long j12 = j10 + j11;
        if ((j10 ^ j11) < 0 || (j12 ^ j11) >= 0) {
            return j12;
        }
        throw new MathArithmeticException(LocalizedFormats.OVERFLOW_IN_ADDITION, Long.valueOf(j10), Long.valueOf(j11));
    }

    private static double atan(double d10, double d11, boolean z10) {
        double d12;
        boolean z11;
        int i10;
        double d13;
        double d14;
        double d15 = d10;
        if (d15 == 0.0d) {
            return z10 ? copySign(3.141592653589793d, d15) : d15;
        }
        if (d15 < 0.0d) {
            d15 = -d15;
            d12 = -d11;
            z11 = true;
        } else {
            d12 = d11;
            z11 = false;
        }
        if (d15 > 1.633123935319537E16d) {
            return z11 ^ z10 ? -1.5707963267948966d : 1.5707963267948966d;
        }
        if (d15 < 1.0d) {
            i10 = (int) (((((-1.7168146928204135d) * d15 * d15) + 8.0d) * d15) + 0.5d);
        } else {
            double d16 = 1.0d / d15;
            i10 = (int) ((-((((-1.7168146928204135d) * d16 * d16) + 8.0d) * d16)) + 13.07d);
        }
        double d17 = TANGENT_TABLE_A[i10];
        double d18 = TANGENT_TABLE_B[i10];
        double d19 = d15 - d17;
        double d20 = (-((d19 - d15) + d17)) + (d12 - d18);
        double d21 = d19 + d20;
        double d22 = -((d21 - d19) - d20);
        double d23 = d15 * 1.073741824E9d;
        double d24 = (d15 + d23) - d23;
        double d25 = d12 + ((d15 + d12) - d24);
        if (i10 == 0) {
            double d26 = 1.0d / (((d24 + d25) * (d17 + d18)) + 1.0d);
            d14 = d21 * d26;
            d13 = d22 * d26;
        } else {
            double d27 = d24 * d17;
            double d28 = d27 + 1.0d;
            double d29 = -((d28 - 1.0d) - d27);
            double d30 = (d17 * d25) + (d24 * d18);
            double d31 = d28 + d30;
            double d32 = d29 + (-((d31 - d28) - d30)) + (d25 * d18);
            double d33 = d21 / d31;
            double d34 = d33 * 1.073741824E9d;
            double d35 = (d33 + d34) - d34;
            double d36 = d33 - d35;
            double d37 = 1.073741824E9d * d31;
            double d38 = (d31 + d37) - d37;
            double d39 = d31 - d38;
            d13 = (((((d21 - (d35 * d38)) - (d35 * d39)) - (d38 * d36)) - (d36 * d39)) / d31) + ((((-d21) * d32) / d31) / d31) + (d22 / d31);
            d14 = d33;
        }
        double d40 = d14 * d14;
        double d41 = ((((((((((0.07490822288864472d * d40) - 0.09088450866185192d) * d40) + 0.11111095942313305d) * d40) - 0.1428571423679182d) * d40) + 0.19999999999923582d) * d40) - 0.33333333333333287d) * d40 * d14;
        double d42 = d14 + d41;
        double d43 = (-((d42 - d14) - d41)) + (d13 / (d40 + 1.0d));
        double d44 = EIGHTHS[i10];
        double d45 = d44 + d42;
        double d46 = d45 + d43;
        double d47 = (-((d45 - d44) - d42)) + (-((d46 - d45) - d43));
        double d48 = d46 + d47;
        if (z10) {
            double d49 = -((d48 - d46) - d47);
            double d50 = 3.141592653589793d - d48;
            d48 = (-((d50 - 3.141592653589793d) + d48)) + (1.2246467991473532E-16d - d49) + d50;
        }
        return z11 ^ z10 ? -d48 : d48;
    }

    public static long decrementExact(long j10) throws MathArithmeticException {
        if (j10 != Long.MIN_VALUE) {
            return j10 - 1;
        }
        throw new MathArithmeticException(LocalizedFormats.OVERFLOW_IN_SUBTRACTION, Long.valueOf(j10), 1);
    }

    private static double exp(double d10, double d11, double[] dArr) {
        double d12;
        int i10 = (int) d10;
        if (d10 < 0.0d) {
            if (d10 < -746.0d) {
                if (dArr != null) {
                    dArr[0] = 0.0d;
                    dArr[1] = 0.0d;
                }
                return 0.0d;
            }
            if (i10 < -709) {
                double exp = exp(d10 + 40.19140625d, d11, dArr) / 2.8504009514401178E17d;
                if (dArr != null) {
                    dArr[0] = dArr[0] / 2.8504009514401178E17d;
                    dArr[1] = dArr[1] / 2.8504009514401178E17d;
                }
                return exp;
            }
            if (i10 == -709) {
                double exp2 = exp(d10 + 1.494140625d, d11, dArr) / 4.455505956692757d;
                if (dArr != null) {
                    dArr[0] = dArr[0] / 4.455505956692757d;
                    dArr[1] = dArr[1] / 4.455505956692757d;
                }
                return exp2;
            }
            i10--;
        } else if (i10 > 709) {
            if (dArr != null) {
                dArr[0] = Double.POSITIVE_INFINITY;
                dArr[1] = 0.0d;
            }
            return Double.POSITIVE_INFINITY;
        }
        double[] dArr2 = ExpIntTable.EXP_INT_TABLE_A;
        int i11 = i10 + EXP_INT_TABLE_MAX_INDEX;
        double d13 = dArr2[i11];
        double d14 = ExpIntTable.EXP_INT_TABLE_B[i11];
        double d15 = i10;
        int i12 = (int) ((d10 - d15) * 1024.0d);
        double d16 = ExpFracTable.EXP_FRAC_TABLE_A[i12];
        double d17 = ExpFracTable.EXP_FRAC_TABLE_B[i12];
        double d18 = d10 - (d15 + (i12 / 1024.0d));
        double d19 = (((((((0.04168701738764507d * d18) + 0.1666666505023083d) * d18) + 0.5000000000042687d) * d18) + 1.0d) * d18) - 3.940510424527919E-20d;
        double d20 = d13 * d16;
        double d21 = (d13 * d17) + (d16 * d14) + (d14 * d17);
        double d22 = d21 + d20;
        if (d22 == Double.POSITIVE_INFINITY) {
            return Double.POSITIVE_INFINITY;
        }
        if (d11 != 0.0d) {
            double d23 = d22 * d11;
            d12 = (d23 * d19) + d23 + (d22 * d19) + d21 + d20;
        } else {
            d12 = (d22 * d19) + d21 + d20;
        }
        if (dArr != null) {
            dArr[0] = d20;
            double d24 = d22 * d11;
            dArr[1] = (d24 * d19) + d24 + (d22 * d19) + d21;
        }
        return d12;
    }

    private static double expm1(double d10, double[] dArr) {
        boolean z10;
        double d11 = d10;
        if (d11 != d11 || d11 == 0.0d) {
            return d11;
        }
        if (d11 > -1.0d && d11 < 1.0d) {
            if (d11 < 0.0d) {
                d11 = -d11;
                z10 = true;
            } else {
                z10 = false;
            }
            int i10 = (int) (d11 * 1024.0d);
            double d12 = ExpFracTable.EXP_FRAC_TABLE_A[i10] - 1.0d;
            double d13 = ExpFracTable.EXP_FRAC_TABLE_B[i10];
            double d14 = d12 + d13;
            double d15 = d14 * 1.073741824E9d;
            double d16 = (d14 + d15) - d15;
            double d17 = (-((d14 - d12) - d13)) + (d14 - d16);
            double d18 = d11 - (i10 / 1024.0d);
            double d19 = ((((((0.008336750013465571d * d18) + 0.041666663879186654d) * d18) + 0.16666666666745392d) * d18) + 0.49999999999999994d) * d18 * d18;
            double d20 = d18 + d19;
            double d21 = -((d20 - d18) - d19);
            double d22 = d20 * 1.073741824E9d;
            double d23 = (d20 + d22) - d22;
            double d24 = d21 + (d20 - d23);
            double d25 = d23 * d16;
            double d26 = d23 * d17;
            double d27 = d25 + d26;
            double d28 = -((d27 - d25) - d26);
            double d29 = d24 * d16;
            double d30 = d27 + d29;
            double d31 = d28 + (-((d30 - d27) - d29));
            double d32 = d24 * d17;
            double d33 = d30 + d32;
            double d34 = d31 + (-((d33 - d30) - d32));
            double d35 = d33 + d16;
            double d36 = d35 + d23;
            double d37 = d34 + (-((d35 - d16) - d33)) + (-((d36 - d35) - d23));
            double d38 = d36 + d17;
            double d39 = d37 + (-((d38 - d36) - d17));
            double d40 = d38 + d24;
            double d41 = d39 + (-((d40 - d38) - d24));
            if (z10) {
                double d42 = d40 + 1.0d;
                double d43 = 1.0d / d42;
                double d44 = (-((d42 - 1.0d) - d40)) + d41;
                double d45 = d40 * d43;
                double d46 = d45 * 1.073741824E9d;
                double d47 = (d45 + d46) - d46;
                double d48 = d45 - d47;
                double d49 = 1.073741824E9d * d42;
                double d50 = (d42 + d49) - d49;
                double d51 = d42 - d50;
                double d52 = d48 + (((((d40 - (d50 * d47)) - (d50 * d48)) - (d51 * d47)) - (d51 * d48)) * d43) + (d41 * d43) + ((-d40) * d44 * d43 * d43);
                d40 = -d47;
                d41 = -d52;
            }
            if (dArr != null) {
                dArr[0] = d40;
                dArr[1] = d41;
            }
            return d40 + d41;
        }
        double[] dArr2 = new double[2];
        exp(d11, 0.0d, dArr2);
        if (d11 > 0.0d) {
            return (dArr2[0] - 1.0d) + dArr2[1];
        }
        double d53 = dArr2[0];
        double d54 = (-1.0d) + d53;
        return d54 + (-((1.0d + d54) - d53)) + dArr2[1];
    }

    public static int getExponent(float f10) {
        return ((Float.floatToRawIntBits(f10) >>> 23) & 255) + AdvertisingSetParameters.TX_POWER_MIN;
    }

    public static long incrementExact(long j10) throws MathArithmeticException {
        if (j10 != Long.MAX_VALUE) {
            return j10 + 1;
        }
        throw new MathArithmeticException(LocalizedFormats.OVERFLOW_IN_ADDITION, Long.valueOf(j10), 1);
    }

    private static double log(double d10, double[] dArr) {
        double d11;
        double d12;
        if (d10 == 0.0d) {
            return Double.NEGATIVE_INFINITY;
        }
        long doubleToRawLongBits = Double.doubleToRawLongBits(d10);
        if (((Long.MIN_VALUE & doubleToRawLongBits) != 0 || d10 != d10) && d10 != 0.0d) {
            if (dArr != null) {
                dArr[0] = Double.NaN;
            }
            return Double.NaN;
        }
        if (d10 == Double.POSITIVE_INFINITY) {
            if (dArr != null) {
                dArr[0] = Double.POSITIVE_INFINITY;
            }
            return Double.POSITIVE_INFINITY;
        }
        int i10 = ((int) (doubleToRawLongBits >> 52)) - 1023;
        if ((9218868437227405312L & doubleToRawLongBits) == 0) {
            if (d10 == 0.0d) {
                if (dArr != null) {
                    dArr[0] = Double.NEGATIVE_INFINITY;
                }
                return Double.NEGATIVE_INFINITY;
            }
            doubleToRawLongBits <<= 1;
            while ((4503599627370496L & doubleToRawLongBits) == 0) {
                i10--;
                doubleToRawLongBits <<= 1;
            }
        }
        if ((i10 == -1 || i10 == 0) && d10 < 1.01d && d10 > 0.99d && dArr == null) {
            double d13 = d10 - 1.0d;
            double d14 = d13 * 1.073741824E9d;
            double d15 = (d13 + d14) - d14;
            double d16 = d13 - d15;
            double[][] dArr2 = LN_QUICK_COEF;
            double[] dArr3 = dArr2[dArr2.length - 1];
            double d17 = dArr3[0];
            double d18 = dArr3[1];
            for (int length = dArr2.length - 2; length >= 0; length--) {
                double d19 = d17 * d15;
                double d20 = (d17 * d16) + (d18 * d15) + (d18 * d16);
                double d21 = d19 * 1.073741824E9d;
                double d22 = (d19 + d21) - d21;
                double d23 = (d19 - d22) + d20;
                double[] dArr4 = LN_QUICK_COEF[length];
                double d24 = d22 + dArr4[0];
                double d25 = d24 * 1.073741824E9d;
                d17 = (d24 + d25) - d25;
                d18 = (d24 - d17) + d23 + dArr4[1];
            }
            double d26 = d17 * d15;
            double d27 = (d17 * d16) + (d15 * d18) + (d18 * d16);
            double d28 = 1.073741824E9d * d26;
            double d29 = (d26 + d28) - d28;
            return d29 + (d26 - d29) + d27;
        }
        long j10 = 4499201580859392L & doubleToRawLongBits;
        double[] dArr5 = lnMant.LN_MANT[(int) (j10 >> 42)];
        double d30 = doubleToRawLongBits & 4398046511103L;
        double d31 = j10 + TWO_POWER_52;
        double d32 = d30 / d31;
        if (dArr != null) {
            double d33 = d32 * 1.073741824E9d;
            double d34 = (d32 + d33) - d33;
            double d35 = d32 - d34;
            double d36 = d35 + (((d30 - (d34 * d31)) - (d35 * d31)) / d31);
            double[][] dArr6 = LN_HI_PREC_COEF;
            double[] dArr7 = dArr6[dArr6.length - 1];
            double d37 = dArr7[0];
            double d38 = dArr7[1];
            for (int length2 = dArr6.length - 2; length2 >= 0; length2--) {
                double d39 = d37 * d34;
                double d40 = (d37 * d36) + (d38 * d34) + (d38 * d36);
                double d41 = d39 * 1.073741824E9d;
                double d42 = (d39 + d41) - d41;
                double d43 = (d39 - d42) + d40;
                double[] dArr8 = LN_HI_PREC_COEF[length2];
                double d44 = d42 + dArr8[0];
                double d45 = d43 + dArr8[1];
                double d46 = d44 * 1.073741824E9d;
                d37 = (d44 + d46) - d46;
                d38 = (d44 - d37) + d45;
            }
            double d47 = d37 * d34;
            double d48 = (d37 * d36) + (d34 * d38) + (d38 * d36);
            d11 = d47 + d48;
            d12 = -((d11 - d47) - d48);
        } else {
            d11 = (((((((((((-0.16624882440418567d) * d32) + 0.19999954120254515d) * d32) - 0.2499999997677497d) * d32) + 0.3333333333332802d) * d32) - 0.5d) * d32) + 1.0d) * d32;
            d12 = 0.0d;
        }
        double d49 = i10;
        double d50 = LN_2_A * d49;
        double d51 = dArr5[0];
        double d52 = d50 + d51;
        double d53 = (-((d52 - d50) - d51)) + 0.0d;
        double d54 = d52 + d11;
        double d55 = d53 + (-((d54 - d52) - d11));
        double d56 = d49 * LN_2_B;
        double d57 = d54 + d56;
        double d58 = d55 + (-((d57 - d54) - d56));
        double d59 = dArr5[1];
        double d60 = d57 + d59;
        double d61 = d58 + (-((d60 - d57) - d59));
        double d62 = d60 + d12;
        double d63 = d61 + (-((d62 - d60) - d12));
        if (dArr != null) {
            dArr[0] = d62;
            dArr[1] = d63;
        }
        return d62 + d63;
    }

    public static long max(long j10, long j11) {
        return j10 <= j11 ? j11 : j10;
    }

    public static long min(long j10, long j11) {
        return j10 <= j11 ? j10 : j11;
    }

    public static float nextDown(float f10) {
        return nextAfter(f10, Double.NEGATIVE_INFINITY);
    }

    public static float nextUp(float f10) {
        return nextAfter(f10, Double.POSITIVE_INFINITY);
    }

    public static int round(float f10) {
        return (int) floor(f10 + 0.5f);
    }

    public static float signum(float f10) {
        if (f10 < 0.0f) {
            return -1.0f;
        }
        if (f10 > 0.0f) {
            return 1.0f;
        }
        return f10;
    }

    public static long subtractExact(long j10, long j11) {
        long j12 = j10 - j11;
        if ((j10 ^ j11) >= 0 || (j12 ^ j11) < 0) {
            return j12;
        }
        throw new MathArithmeticException(LocalizedFormats.OVERFLOW_IN_SUBTRACTION, Long.valueOf(j10), Long.valueOf(j11));
    }

    public static float abs(float f10) {
        return Float.intBitsToFloat(Float.floatToRawIntBits(f10) & Integer.MAX_VALUE);
    }

    public static float copySign(float f10, float f11) {
        return (Float.floatToRawIntBits(f11) ^ Float.floatToRawIntBits(f10)) >= 0 ? f10 : -f10;
    }

    public static long floorMod(long j10, long j11) {
        if (j11 != 0) {
            long j12 = j10 % j11;
            return ((j10 ^ j11) >= 0 || j12 == 0) ? j12 : j11 + j12;
        }
        throw new MathArithmeticException(LocalizedFormats.ZERO_DENOMINATOR, new Object[0]);
    }

    public static float max(float f10, float f11) {
        if (f10 > f11) {
            return f10;
        }
        if (f10 < f11) {
            return f11;
        }
        if (f10 != f11) {
            return Float.NaN;
        }
        return Float.floatToRawIntBits(f10) == Integer.MIN_VALUE ? f11 : f10;
    }

    public static float min(float f10, float f11) {
        if (f10 > f11) {
            return f11;
        }
        if (f10 < f11) {
            return f10;
        }
        if (f10 != f11) {
            return Float.NaN;
        }
        return Float.floatToRawIntBits(f10) == Integer.MIN_VALUE ? f10 : f11;
    }

    public static long multiplyExact(long j10, long j11) {
        if ((j11 <= 0 || (j10 <= Long.MAX_VALUE / j11 && j10 >= Long.MIN_VALUE / j11)) && ((j11 >= -1 || (j10 <= Long.MIN_VALUE / j11 && j10 >= Long.MAX_VALUE / j11)) && !(j11 == -1 && j10 == Long.MIN_VALUE))) {
            return j10 * j11;
        }
        throw new MathArithmeticException(LocalizedFormats.OVERFLOW_IN_MULTIPLICATION, Long.valueOf(j10), Long.valueOf(j11));
    }

    public static float ulp(float f10) {
        if (Float.isInfinite(f10)) {
            return Float.POSITIVE_INFINITY;
        }
        return abs(f10 - Float.intBitsToFloat(Float.floatToIntBits(f10) ^ 1));
    }

    public static class Split {
        private final double full;
        private final double high;
        private final double low;
        public static final Split NAN = new Split(Double.NaN, 0.0d);
        public static final Split POSITIVE_INFINITY = new Split(Double.POSITIVE_INFINITY, 0.0d);
        public static final Split NEGATIVE_INFINITY = new Split(Double.NEGATIVE_INFINITY, 0.0d);

        public Split(double d10) {
            this.full = d10;
            double longBitsToDouble = Double.longBitsToDouble(Double.doubleToRawLongBits(d10) & (-134217728));
            this.high = longBitsToDouble;
            this.low = d10 - longBitsToDouble;
        }

        public Split pow(long j10) {
            Split split = new Split(1.0d);
            Split split2 = new Split(this.full, this.high, this.low);
            for (long j11 = j10; j11 != 0; j11 >>>= 1) {
                if ((j11 & 1) != 0) {
                    split = split.multiply(split2);
                }
                split2 = split2.multiply(split2);
            }
            return Double.isNaN(split.full) ? Double.isNaN(this.full) ? NAN : FastMath.abs(this.full) < 1.0d ? new Split(FastMath.copySign(0.0d, this.full), 0.0d) : (this.full >= 0.0d || (j10 & 1) != 1) ? POSITIVE_INFINITY : NEGATIVE_INFINITY : split;
        }

        public Split multiply(Split split) {
            Split split2 = new Split(this.full * split.full);
            double d10 = this.low;
            double d11 = split.low;
            double d12 = split2.full;
            double d13 = this.high;
            double d14 = split.high;
            return new Split(split2.high, split2.low + ((d10 * d11) - (((d12 - (d13 * d14)) - (d10 * d14)) - (d13 * d11))));
        }

        public Split reciprocal() {
            Split split = new Split(1.0d / this.full);
            Split multiply = multiply(split);
            double d10 = (multiply.high - 1.0d) + multiply.low;
            return Double.isNaN(d10) ? split : new Split(split.high, split.low - (d10 / this.full));
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Split(double d10, double d11) {
            this(r3, d10, d11);
            double d12;
            double d13;
            if (d10 != 0.0d) {
                d12 = d10 + d11;
            } else {
                if (d11 != 0.0d || Double.doubleToRawLongBits(d10) != Long.MIN_VALUE) {
                    d13 = d11;
                }
                d12 = -0.0d;
            }
            d13 = d12;
        }

        public Split(double d10, double d11, double d12) {
            this.full = d10;
            this.high = d11;
            this.low = d12;
        }
    }

    public static double abs(double d10) {
        return Double.longBitsToDouble(Double.doubleToRawLongBits(d10) & Long.MAX_VALUE);
    }

    public static double max(double d10, double d11) {
        if (d10 > d11) {
            return d10;
        }
        if (d10 < d11) {
            return d11;
        }
        if (d10 != d11) {
            return Double.NaN;
        }
        return Double.doubleToRawLongBits(d10) == Long.MIN_VALUE ? d11 : d10;
    }

    public static double min(double d10, double d11) {
        if (d10 > d11) {
            return d11;
        }
        if (d10 < d11) {
            return d10;
        }
        if (d10 != d11) {
            return Double.NaN;
        }
        return Double.doubleToRawLongBits(d10) == Long.MIN_VALUE ? d10 : d11;
    }

    public static long floorDiv(long j10, long j11) throws MathArithmeticException {
        if (j11 != 0) {
            long j12 = j10 % j11;
            if ((j10 ^ j11) < 0 && j12 != 0) {
                return (j10 / j11) - 1;
            }
            return j10 / j11;
        }
        throw new MathArithmeticException(LocalizedFormats.ZERO_DENOMINATOR, new Object[0]);
    }

    public static float nextAfter(float f10, double d10) {
        double d11 = f10;
        if (Double.isNaN(d11) || Double.isNaN(d10)) {
            return Float.NaN;
        }
        if (d11 == d10) {
            return (float) d10;
        }
        if (Float.isInfinite(f10)) {
            return f10 < 0.0f ? -3.4028235E38f : Float.MAX_VALUE;
        }
        if (f10 == 0.0f) {
            return d10 < 0.0d ? -1.4E-45f : Float.MIN_VALUE;
        }
        int floatToIntBits = Float.floatToIntBits(f10);
        int i10 = Integer.MIN_VALUE & floatToIntBits;
        if ((d10 < d11) ^ (i10 == 0)) {
            return Float.intBitsToFloat(((floatToIntBits & Integer.MAX_VALUE) + 1) | i10);
        }
        return Float.intBitsToFloat(((floatToIntBits & Integer.MAX_VALUE) - 1) | i10);
    }

    public static float scalb(float f10, int i10) {
        if (i10 > -127 && i10 < 128) {
            return f10 * Float.intBitsToFloat((i10 + 127) << 23);
        }
        if (Float.isNaN(f10) || Float.isInfinite(f10) || f10 == 0.0f) {
            return f10;
        }
        if (i10 < -277) {
            return f10 > 0.0f ? 0.0f : -0.0f;
        }
        if (i10 > 276) {
            return f10 > 0.0f ? Float.POSITIVE_INFINITY : Float.NEGATIVE_INFINITY;
        }
        int floatToIntBits = Float.floatToIntBits(f10);
        int i11 = Integer.MIN_VALUE & floatToIntBits;
        int i12 = (floatToIntBits >>> 23) & 255;
        int i13 = floatToIntBits & 8388607;
        int i14 = i12 + i10;
        if (i10 < 0) {
            if (i14 > 0) {
                return Float.intBitsToFloat(i13 | (i14 << 23) | i11);
            }
            if (i14 <= -24) {
                return i11 == 0 ? 0.0f : -0.0f;
            }
            int i15 = i13 | 8388608;
            int i16 = (1 << (-i14)) & i15;
            int i17 = i15 >>> (1 - i14);
            if (i16 != 0) {
                i17++;
            }
            return Float.intBitsToFloat(i17 | i11);
        }
        if (i12 != 0) {
            if (i14 < 255) {
                return Float.intBitsToFloat(i13 | (i14 << 23) | i11);
            }
            return i11 == 0 ? Float.POSITIVE_INFINITY : Float.NEGATIVE_INFINITY;
        }
        while ((i13 >>> 23) != 1) {
            i13 <<= 1;
            i14--;
        }
        int i18 = i14 + 1;
        int i19 = i13 & 8388607;
        if (i18 < 255) {
            return Float.intBitsToFloat(i19 | (i18 << 23) | i11);
        }
        return i11 == 0 ? Float.POSITIVE_INFINITY : Float.NEGATIVE_INFINITY;
    }

    public static double pow(double d10, int i10) {
        return pow(d10, i10);
    }

    public static double pow(double d10, long j10) {
        if (j10 == 0) {
            return 1.0d;
        }
        if (j10 > 0) {
            return new Split(d10).pow(j10).full;
        }
        return new Split(d10).reciprocal().pow(-j10).full;
    }

    public static double log(double d10, double d11) {
        return log(d11) / log(d10);
    }
}
