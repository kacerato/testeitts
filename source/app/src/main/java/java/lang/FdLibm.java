package java.lang;

import com.google.common.collect.C12510d2;

public final class FdLibm {
    private static final double INFINITY = Double.POSITIVE_INFINITY;
    private static final double TWO24 = 1.6777216E7d;
    private static final double TWO54 = 1.8014398509481984E16d;
    private static final double HUGE = 1.0E300d;
    private static final int SIGN_BIT = Integer.MIN_VALUE;
    private static final int EXP_BITS = 2146435072;
    private static final int EXP_SIGNIF_BITS = Integer.MAX_VALUE;

    private FdLibm() {
        throw new UnsupportedOperationException("No FdLibm instances for you.");
    }

    private static int __LO(double x10) {
        long transducer = Double.doubleToRawLongBits(x10);
        return (int) transducer;
    }

    private static double __LO(double x10, int low) {
        long transX = Double.doubleToRawLongBits(x10);
        return Double.longBitsToDouble((transX & C12510d2.f66536l) | (low & 4294967295L));
    }

    private static int __HI(double x10) {
        long transducer = Double.doubleToRawLongBits(x10);
        return (int) (transducer >> 32);
    }

    private static double __HI(double x10, int high) {
        long transX = Double.doubleToRawLongBits(x10);
        return Double.longBitsToDouble((transX & 4294967295L) | (high << 32));
    }

    private static double __HI_LO(int high, int low) {
        return Double.longBitsToDouble((high << 32) | (low & 4294967295L));
    }

    public static final class Sin {

        private static final double f92779S1 = -0.16666666666666632d;

        private static final double f92780S2 = 0.00833333333332249d;

        private static final double f92781S3 = -1.984126982985795E-4d;

        private static final double f92782S4 = 2.7557313707070068E-6d;

        private static final double f92783S5 = -2.5050760253406863E-8d;

        private static final double f92784S6 = 1.58969099521155E-10d;

        private Sin() {
            throw new UnsupportedOperationException();
        }

        public static double compute(double x10) {
            double[] y10 = new double[2];
            int ix = FdLibm.__HI(x10) & Integer.MAX_VALUE;
            if (ix <= 1072243195) {
                return __kernel_sin(x10, 0.0d, 0);
            }
            if (ix >= FdLibm.EXP_BITS) {
                return x10 - x10;
            }
            int n10 = RemPio2.__ieee754_rem_pio2(x10, y10);
            switch (n10 & 3) {
                case 0:
                    return __kernel_sin(y10[0], y10[1], 1);
                case 1:
                    return Cos.__kernel_cos(y10[0], y10[1]);
                case 2:
                    return -__kernel_sin(y10[0], y10[1], 1);
                default:
                    return -Cos.__kernel_cos(y10[0], y10[1]);
            }
        }

        static double __kernel_sin(double x10, double y10, int iy) {
            int ix = FdLibm.__HI(x10) & Integer.MAX_VALUE;
            if (ix < 1044381696 && ((int) x10) == 0) {
                return x10;
            }
            double z10 = x10 * x10;
            double v10 = z10 * x10;
            double r10 = f92780S2 + (z10 * (f92781S3 + (z10 * (f92782S4 + (z10 * (f92783S5 + (z10 * f92784S6)))))));
            if (iy == 0) {
                return x10 + (v10 * (f92779S1 + (z10 * r10)));
            }
            return x10 - (((z10 * ((0.5d * y10) - (v10 * r10))) - y10) - (v10 * f92779S1));
        }
    }

    public static final class Cos {

        private static final double f92763C1 = 0.0416666666666666d;

        private static final double f92764C2 = -0.001388888888887411d;

        private static final double f92765C3 = 2.480158728947673E-5d;

        private static final double f92766C4 = -2.7557314351390663E-7d;

        private static final double f92767C5 = 2.087572321298175E-9d;

        private static final double f92768C6 = -1.1359647557788195E-11d;

        private Cos() {
            throw new UnsupportedOperationException();
        }

        public static double compute(double x10) {
            double[] y10 = new double[2];
            int ix = FdLibm.__HI(x10) & Integer.MAX_VALUE;
            if (ix <= 1072243195) {
                return __kernel_cos(x10, 0.0d);
            }
            if (ix >= FdLibm.EXP_BITS) {
                return x10 - x10;
            }
            int n10 = RemPio2.__ieee754_rem_pio2(x10, y10);
            switch (n10 & 3) {
                case 0:
                    return __kernel_cos(y10[0], y10[1]);
                case 1:
                    return -Sin.__kernel_sin(y10[0], y10[1], 1);
                case 2:
                    return -__kernel_cos(y10[0], y10[1]);
                default:
                    return Sin.__kernel_sin(y10[0], y10[1], 1);
            }
        }

        static double __kernel_cos(double x10, double y10) {
            double qx;
            int ix = FdLibm.__HI(x10) & Integer.MAX_VALUE;
            if (ix < 1044381696 && ((int) x10) == 0) {
                return 1.0d;
            }
            double z10 = x10 * x10;
            double r10 = z10 * (f92763C1 + (z10 * (f92764C2 + (z10 * (f92765C3 + (z10 * (f92766C4 + (z10 * (f92767C5 + (z10 * f92768C6))))))))));
            if (ix < 1070805811) {
                return 1.0d - ((0.5d * z10) - ((z10 * r10) - (x10 * y10)));
            }
            if (ix > 1072234496) {
                qx = 0.28125d;
            } else {
                qx = FdLibm.__HI_LO(ix - 2097152, 0);
            }
            double hz = (0.5d * z10) - qx;
            double a10 = 1.0d - qx;
            return a10 - (hz - ((z10 * r10) - (x10 * y10)));
        }
    }

    public static final class Tan {
        private static final double pio4 = 0.7853981633974483d;
        private static final double pio4lo = 3.061616997868383E-17d;

        private static final double[] f92785T = {0.3333333333333341d, 0.13333333333320124d, 0.05396825397622605d, 0.021869488294859542d, 0.0088632398235993d, 0.0035920791075913124d, 0.0014562094543252903d, 5.880412408202641E-4d, 2.464631348184699E-4d, 7.817944429395571E-5d, 7.140724913826082E-5d, -1.8558637485527546E-5d, 2.590730518636337E-5d};

        private Tan() {
            throw new UnsupportedOperationException();
        }

        public static double compute(double x10) {
            double[] y10 = new double[2];
            int ix = FdLibm.__HI(x10) & Integer.MAX_VALUE;
            if (ix <= 1072243195) {
                return __kernel_tan(x10, 0.0d, 1);
            }
            if (ix >= FdLibm.EXP_BITS) {
                return x10 - x10;
            }
            int n10 = RemPio2.__ieee754_rem_pio2(x10, y10);
            return __kernel_tan(y10[0], y10[1], 1 - ((n10 & 1) << 1));
        }

        static double __kernel_tan(double x10, double y10, int iy) {
            int hx = FdLibm.__HI(x10);
            int ix = hx & Integer.MAX_VALUE;
            if (ix < 1043333120 && ((int) x10) == 0) {
                if ((ix | FdLibm.__LO(x10) | (iy + 1)) == 0) {
                    return 1.0d / Math.abs(x10);
                }
                if (iy == 1) {
                    return x10;
                }
                double z10 = x10 + y10;
                double z11 = FdLibm.__LO(z10, 0);
                double v10 = y10 - (z11 - x10);
                double t10 = (-1.0d) / z10;
                double t11 = FdLibm.__LO(t10, 0);
                return t11 + (t10 * (1.0d + (t11 * z11) + (t11 * v10)));
            }
            if (ix >= 1072010280) {
                if (hx < 0) {
                    x10 = -x10;
                    y10 = -y10;
                }
                x10 = (0.7853981633974483d - x10) + (pio4lo - y10);
                y10 = 0.0d;
            }
            double z12 = x10 * x10;
            double w10 = z12 * z12;
            double r10 = f92785T[1] + (w10 * (f92785T[3] + (w10 * (f92785T[5] + (w10 * (f92785T[7] + (w10 * (f92785T[9] + (w10 * f92785T[11])))))))));
            double v11 = z12 * (f92785T[2] + (w10 * (f92785T[4] + (w10 * (f92785T[6] + (w10 * (f92785T[8] + (w10 * (f92785T[10] + (w10 * f92785T[12]))))))))));
            double s10 = z12 * x10;
            double r11 = y10 + (z12 * ((s10 * (r10 + v11)) + y10)) + (f92785T[0] * s10);
            double w11 = x10 + r11;
            if (ix >= 1072010280) {
                double v12 = iy;
                return (1 - ((hx >> 30) & 2)) * (v12 - (2.0d * (x10 - (((w11 * w11) / (w11 + v12)) - r11))));
            }
            if (iy == 1) {
                return w11;
            }
            double z13 = FdLibm.__LO(w11, 0);
            double v13 = r11 - (z13 - x10);
            double t12 = (-1.0d) / w11;
            double t13 = FdLibm.__LO(t12, 0);
            return t13 + (t12 * (1.0d + (t13 * z13) + (t13 * v13)));
        }
    }

    public static final class RemPio2 {
        private static final int[] two_over_pi = {10680707, 7228996, 1387004, 2578385, 16069853, 12639074, 9804092, 4427841, 16666979, 11263675, 12935607, 2387514, 4345298, 14681673, 3074569, 13734428, 16653803, 1880361, 10960616, 8533493, 3062596, 8710556, 7349940, 6258241, 3772886, 3769171, 3798172, 8675211, 12450088, 3874808, 9961438, 366607, 15675153, 9132554, 7151469, 3571407, 2607881, 12013382, 4155038, 6285869, 7677882, 13102053, 15825725, 473591, 9065106, 15363067, 6271263, 9264392, 5636912, 4652155, 7056368, 13614112, 10155062, 1944035, 9527646, 15080200, 6658437, 6231200, 6832269, 16767104, 5075751, 3212806, 1398474, 7579849, 6349435, 12618859};
        private static final int[] npio2_hw = {1073291771, 1074340347, 1074977148, 1075388923, 1075800698, 1076025724, 1076231611, 1076437499, 1076643386, 1076849274, 1076971356, 1077074300, 1077177244, 1077280187, 1077383131, 1077486075, 1077589019, 1077691962, 1077794906, 1077897850, 1077968460, 1078019932, 1078071404, 1078122876, 1078174348, 1078225820, 1078277292, 1078328763, 1078380235, 1078431707, 1078483179, 1078534651};
        private static final double invpio2 = 0.6366197723675814d;
        private static final double pio2_1 = 1.5707963267341256d;
        private static final double pio2_1t = 6.077100506506192E-11d;
        private static final double pio2_2 = 6.077100506303966E-11d;
        private static final double pio2_2t = 2.0222662487959506E-21d;
        private static final double pio2_3 = 2.0222662487111665E-21d;
        private static final double pio2_3t = 8.4784276603689E-32d;

        RemPio2() {
        }

        static int __ieee754_rem_pio2(double x10, double[] y10) {
            double[] tx = new double[3];
            int hx = FdLibm.__HI(x10);
            int ix = hx & Integer.MAX_VALUE;
            if (ix <= 1072243195) {
                y10[0] = x10;
                y10[1] = 0.0d;
                return 0;
            }
            if (ix < 1073928572) {
                if (hx > 0) {
                    double z10 = x10 - pio2_1;
                    if (ix != 1073291771) {
                        y10[0] = z10 - pio2_1t;
                        y10[1] = (z10 - y10[0]) - pio2_1t;
                        return 1;
                    }
                    double z11 = z10 - pio2_2;
                    y10[0] = z11 - pio2_2t;
                    y10[1] = (z11 - y10[0]) - pio2_2t;
                    return 1;
                }
                double z12 = x10 + pio2_1;
                if (ix != 1073291771) {
                    y10[0] = z12 + pio2_1t;
                    y10[1] = (z12 - y10[0]) + pio2_1t;
                    return -1;
                }
                double z13 = z12 + pio2_2;
                y10[0] = z13 + pio2_2t;
                y10[1] = (z13 - y10[0]) + pio2_2t;
                return -1;
            }
            if (ix <= 1094263291) {
                double t10 = Math.abs(x10);
                int n10 = (int) ((t10 * invpio2) + 0.5d);
                double fn2 = n10;
                double r10 = t10 - (fn2 * pio2_1);
                double w10 = fn2 * pio2_1t;
                if (n10 < 32 && ix != npio2_hw[n10 - 1]) {
                    y10[0] = r10 - w10;
                } else {
                    int j10 = ix >> 20;
                    y10[0] = r10 - w10;
                    int i10 = j10 - ((FdLibm.__HI(y10[0]) >> 20) & 2047);
                    if (i10 > 16) {
                        double w11 = fn2 * pio2_2;
                        r10 -= w11;
                        w10 = (fn2 * pio2_2t) - ((r10 - r10) - w11);
                        y10[0] = r10 - w10;
                        int i11 = j10 - ((FdLibm.__HI(y10[0]) >> 20) & 2047);
                        if (i11 > 49) {
                            double w12 = fn2 * pio2_3;
                            r10 -= w12;
                            w10 = (fn2 * pio2_3t) - ((r10 - r10) - w12);
                            y10[0] = r10 - w10;
                        }
                    }
                }
                y10[1] = (r10 - y10[0]) - w10;
                if (hx < 0) {
                    y10[0] = -y10[0];
                    y10[1] = -y10[1];
                    return -n10;
                }
                return n10;
            }
            if (ix >= FdLibm.EXP_BITS) {
                double d10 = x10 - x10;
                y10[1] = d10;
                y10[0] = d10;
                return 0;
            }
            double z14 = FdLibm.__LO(0.0d, FdLibm.__LO(x10));
            int e02 = (ix >> 20) - 1046;
            double z15 = FdLibm.__HI(z14, ix - (e02 << 20));
            for (int i12 = 0; i12 < 2; i12++) {
                tx[i12] = (int) z15;
                z15 = (z15 - tx[i12]) * FdLibm.TWO24;
            }
            tx[2] = z15;
            int nx = 3;
            while (tx[nx - 1] == 0.0d) {
                nx--;
            }
            int n11 = KernelRemPio2.__kernel_rem_pio2(tx, y10, e02, nx, 2, two_over_pi);
            if (hx < 0) {
                y10[0] = -y10[0];
                y10[1] = -y10[1];
                return -n11;
            }
            return n11;
        }
    }

    public static final class KernelRemPio2 {
        private static final int[] init_jk = {2, 3, 4, 6};
        private static final double[] PIo2 = {1.570796251296997d, 7.549789415861596E-8d, 5.390302529957765E-15d, 3.282003415807913E-22d, 1.270655753080676E-29d, 1.2293330898111133E-36d, 2.7337005381646456E-44d, 2.1674168387780482E-51d};
        static final double twon24 = 5.960464477539063E-8d;

        KernelRemPio2() {
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:53:0x01d4. Please report as an issue. */
        static int __kernel_rem_pio2(double[] x10, double[] y10, int e02, int nx, int prec, int[] ipio2) {
            int jz;
            int n10;
            double z10;
            int ih2;
            int[] iq = new int[20];
            double[] f10 = new double[20];
            double[] fq = new double[20];
            double[] q10 = new double[20];
            int jk2 = init_jk[prec];
            int jx = nx - 1;
            int jv = (e02 - 3) / 24;
            if (jv < 0) {
                jv = 0;
            }
            int q02 = e02 - (24 * (jv + 1));
            int j10 = jv - jx;
            int m10 = jx + jk2;
            int i10 = 0;
            while (i10 <= m10) {
                f10[i10] = j10 < 0 ? 0.0d : ipio2[j10];
                i10++;
                j10++;
            }
            for (int i11 = 0; i11 <= jk2; i11++) {
                double fw = 0.0d;
                for (int j11 = 0; j11 <= jx; j11++) {
                    fw += x10[j11] * f10[(jx + i11) - j11];
                }
                q10[i11] = fw;
            }
            int i12 = jk2;
            while (true) {
                jz = i12;
                int i13 = 0;
                double z11 = q10[jz];
                for (int j12 = jz; j12 > 0; j12--) {
                    double fw2 = (int) (5.960464477539063E-8d * z11);
                    iq[i13] = (int) (z11 - (FdLibm.TWO24 * fw2));
                    z11 = q10[j12 - 1] + fw2;
                    i13++;
                }
                double z12 = Math.scalb(z11, q02);
                double z13 = z12 - (8.0d * Math.floor(z12 * 0.125d));
                n10 = (int) z13;
                z10 = z13 - n10;
                ih2 = 0;
                if (q02 > 0) {
                    int i14 = iq[jz - 1] >> (24 - q02);
                    n10 += i14;
                    int i15 = jz - 1;
                    iq[i15] = iq[i15] - (i14 << (24 - q02));
                    ih2 = iq[jz - 1] >> (23 - q02);
                } else if (q02 == 0) {
                    ih2 = iq[jz - 1] >> 23;
                } else if (z10 >= 0.5d) {
                    ih2 = 2;
                }
                if (ih2 > 0) {
                    n10++;
                    int carry = 0;
                    for (int i16 = 0; i16 < jz; i16++) {
                        int j13 = iq[i16];
                        if (carry == 0) {
                            if (j13 != 0) {
                                carry = 1;
                                iq[i16] = 16777216 - j13;
                            }
                        } else {
                            iq[i16] = 16777215 - j13;
                        }
                    }
                    if (q02 > 0) {
                        switch (q02) {
                            case 1:
                                int i17 = jz - 1;
                                iq[i17] = iq[i17] & 8388607;
                                break;
                            case 2:
                                int i18 = jz - 1;
                                iq[i18] = iq[i18] & 4194303;
                                break;
                        }
                    }
                    if (ih2 == 2) {
                        z10 = 1.0d - z10;
                        if (carry != 0) {
                            z10 -= Math.scalb(1.0d, q02);
                        }
                    }
                }
                if (z10 == 0.0d) {
                    int j14 = 0;
                    for (int i19 = jz - 1; i19 >= jk2; i19--) {
                        j14 |= iq[i19];
                    }
                    if (j14 == 0) {
                        int k10 = 1;
                        while (iq[jk2 - k10] == 0) {
                            k10++;
                        }
                        for (int i20 = jz + 1; i20 <= jz + k10; i20++) {
                            f10[jx + i20] = ipio2[jv + i20];
                            double fw3 = 0.0d;
                            for (int j15 = 0; j15 <= jx; j15++) {
                                fw3 += x10[j15] * f10[(jx + i20) - j15];
                            }
                            q10[i20] = fw3;
                        }
                        i12 = jz + k10;
                    }
                }
            }
            if (z10 == 0.0d) {
                do {
                    jz--;
                    q02 -= 24;
                } while (iq[jz] == 0);
            } else {
                double z14 = Math.scalb(z10, -q02);
                if (z14 >= FdLibm.TWO24) {
                    double fw4 = (int) (5.960464477539063E-8d * z14);
                    iq[jz] = (int) (z14 - (FdLibm.TWO24 * fw4));
                    jz++;
                    q02 += 24;
                    iq[jz] = (int) fw4;
                } else {
                    iq[jz] = (int) z14;
                }
            }
            double fw5 = Math.scalb(1.0d, q02);
            for (int i21 = jz; i21 >= 0; i21--) {
                q10[i21] = fw5 * iq[i21];
                fw5 *= 5.960464477539063E-8d;
            }
            for (int i22 = jz; i22 >= 0; i22--) {
                double fw6 = 0.0d;
                for (int k11 = 0; k11 <= jk2 && k11 <= jz - i22; k11++) {
                    fw6 += PIo2[k11] * q10[i22 + k11];
                }
                fq[jz - i22] = fw6;
            }
            switch (prec) {
                case 0:
                    double fw7 = 0.0d;
                    for (int i23 = jz; i23 >= 0; i23--) {
                        fw7 += fq[i23];
                    }
                    y10[0] = ih2 == 0 ? fw7 : -fw7;
                    break;
                case 1:
                case 2:
                    double fw8 = 0.0d;
                    for (int i24 = jz; i24 >= 0; i24--) {
                        fw8 += fq[i24];
                    }
                    y10[0] = ih2 == 0 ? fw8 : -fw8;
                    double fw9 = fq[0] - fw8;
                    for (int i25 = 1; i25 <= jz; i25++) {
                        fw9 += fq[i25];
                    }
                    y10[1] = ih2 == 0 ? fw9 : -fw9;
                    break;
                case 3:
                    for (int i26 = jz; i26 > 0; i26--) {
                        double fw10 = fq[i26 - 1] + fq[i26];
                        int i27 = i26;
                        fq[i27] = fq[i27] + (fq[i26 - 1] - fw10);
                        fq[i26 - 1] = fw10;
                    }
                    for (int i28 = jz; i28 > 1; i28--) {
                        double fw11 = fq[i28 - 1] + fq[i28];
                        int i29 = i28;
                        fq[i29] = fq[i29] + (fq[i28 - 1] - fw11);
                        fq[i28 - 1] = fw11;
                    }
                    double fw12 = 0.0d;
                    for (int i30 = jz; i30 >= 2; i30--) {
                        fw12 += fq[i30];
                    }
                    if (ih2 == 0) {
                        y10[0] = fq[0];
                        y10[1] = fq[1];
                        y10[2] = fw12;
                        break;
                    } else {
                        y10[0] = -fq[0];
                        y10[1] = -fq[1];
                        y10[2] = -fw12;
                        break;
                    }
            }
            return n10 & 7;
        }
    }

    public static final class Asin {
        private static final double pio2_hi = 1.5707963267948966d;
        private static final double pio2_lo = 6.123233995736766E-17d;
        private static final double pio4_hi = 0.7853981633974483d;
        private static final double pS0 = 0.16666666666666666d;
        private static final double pS1 = -0.3255658186224009d;
        private static final double pS2 = 0.20121253213486293d;
        private static final double pS3 = -0.04005553450067941d;
        private static final double pS4 = 7.915349942898145E-4d;
        private static final double pS5 = 3.479331075960212E-5d;
        private static final double qS1 = -2.403394911734414d;
        private static final double qS2 = 2.0209457602335057d;
        private static final double qS3 = -0.6882839716054533d;
        private static final double qS4 = 0.07703815055590194d;

        private Asin() {
            throw new UnsupportedOperationException();
        }

        public static double compute(double x10) {
            double t10;
            double t11 = 0.0d;
            int hx = FdLibm.__HI(x10);
            int ix = hx & Integer.MAX_VALUE;
            if (ix >= 1072693248) {
                if (((ix - 1072693248) | FdLibm.__LO(x10)) == 0) {
                    return (x10 * 1.5707963267948966d) + (x10 * pio2_lo);
                }
                return (x10 - x10) / (x10 - x10);
            }
            if (ix < 1071644672) {
                if (ix >= 1044381696) {
                    t11 = x10 * x10;
                } else if (FdLibm.HUGE + x10 > 1.0d) {
                    return x10;
                }
                return x10 + (x10 * ((t11 * (0.16666666666666666d + (t11 * (pS1 + (t11 * (pS2 + (t11 * (pS3 + (t11 * (pS4 + (t11 * pS5))))))))))) / (1.0d + (t11 * (qS1 + (t11 * (qS2 + (t11 * (qS3 + (t11 * qS4))))))))));
            }
            double t12 = (1.0d - Math.abs(x10)) * 0.5d;
            double p10 = t12 * (0.16666666666666666d + (t12 * (pS1 + (t12 * (pS2 + (t12 * (pS3 + (t12 * (pS4 + (t12 * pS5))))))))));
            double q10 = 1.0d + (t12 * (qS1 + (t12 * (qS2 + (t12 * (qS3 + (t12 * qS4)))))));
            double s10 = Math.sqrt(t12);
            if (ix >= 1072640819) {
                t10 = 1.5707963267948966d - ((2.0d * (s10 + (s10 * (p10 / q10)))) - pio2_lo);
            } else {
                double w10 = FdLibm.__LO(s10, 0);
                double c10 = (t12 - (w10 * w10)) / (s10 + w10);
                double r10 = p10 / q10;
                t10 = 0.7853981633974483d - ((((2.0d * s10) * r10) - (pio2_lo - (2.0d * c10))) - (0.7853981633974483d - (2.0d * w10)));
            }
            return hx > 0 ? t10 : -t10;
        }
    }

    public static final class Acos {
        private static final double pio2_hi = 1.5707963267948966d;
        private static final double pio2_lo = 6.123233995736766E-17d;
        private static final double pS0 = 0.16666666666666666d;
        private static final double pS1 = -0.3255658186224009d;
        private static final double pS2 = 0.20121253213486293d;
        private static final double pS3 = -0.04005553450067941d;
        private static final double pS4 = 7.915349942898145E-4d;
        private static final double pS5 = 3.479331075960212E-5d;
        private static final double qS1 = -2.403394911734414d;
        private static final double qS2 = 2.0209457602335057d;
        private static final double qS3 = -0.6882839716054533d;
        private static final double qS4 = 0.07703815055590194d;

        private Acos() {
            throw new UnsupportedOperationException();
        }

        public static double compute(double x10) {
            int hx = FdLibm.__HI(x10);
            int ix = hx & Integer.MAX_VALUE;
            if (ix >= 1072693248) {
                if (((ix - 1072693248) | FdLibm.__LO(x10)) == 0) {
                    if (hx > 0) {
                        return 0.0d;
                    }
                    return 3.141592653589793d;
                }
                return (x10 - x10) / (x10 - x10);
            }
            if (ix < 1071644672) {
                if (ix <= 1012924416) {
                    return 1.5707963267948966d;
                }
                double z10 = x10 * x10;
                double p10 = z10 * (0.16666666666666666d + (z10 * (pS1 + (z10 * (pS2 + (z10 * (pS3 + (z10 * (pS4 + (z10 * pS5))))))))));
                double q10 = 1.0d + (z10 * (qS1 + (z10 * (qS2 + (z10 * (qS3 + (z10 * qS4)))))));
                double r10 = p10 / q10;
                return 1.5707963267948966d - (x10 - (pio2_lo - (x10 * r10)));
            }
            if (hx < 0) {
                double z11 = (1.0d + x10) * 0.5d;
                double p11 = z11 * (0.16666666666666666d + (z11 * (pS1 + (z11 * (pS2 + (z11 * (pS3 + (z11 * (pS4 + (z11 * pS5))))))))));
                double q11 = 1.0d + (z11 * (qS1 + (z11 * (qS2 + (z11 * (qS3 + (z11 * qS4)))))));
                double s10 = Math.sqrt(z11);
                double r11 = p11 / q11;
                double w10 = (r11 * s10) - pio2_lo;
                return 3.141592653589793d - (2.0d * (s10 + w10));
            }
            double z12 = (1.0d - x10) * 0.5d;
            double s11 = Math.sqrt(z12);
            double df2 = FdLibm.__LO(s11, 0);
            double c10 = (z12 - (df2 * df2)) / (s11 + df2);
            double p12 = z12 * (0.16666666666666666d + (z12 * (pS1 + (z12 * (pS2 + (z12 * (pS3 + (z12 * (pS4 + (z12 * pS5))))))))));
            double q12 = 1.0d + (z12 * (qS1 + (z12 * (qS2 + (z12 * (qS3 + (z12 * qS4)))))));
            double r12 = p12 / q12;
            double w11 = (r12 * s11) + c10;
            return 2.0d * (df2 + w11);
        }
    }

    public static final class Atan {
        private static final double[] atanhi = {0.4636476090008061d, 0.7853981633974483d, 0.982793723247329d, 1.5707963267948966d};
        private static final double[] atanlo = {2.2698777452961687E-17d, 3.061616997868383E-17d, 1.3903311031230998E-17d, 6.123233995736766E-17d};
        private static final double[] aT = {0.3333333333333293d, -0.19999999999876483d, 0.14285714272503466d, -0.11111110405462356d, 0.09090887133436507d, -0.0769187620504483d, 0.06661073137387531d, -0.058335701337905735d, 0.049768779946159324d, -0.036531572744216916d, 0.016285820115365782d};

        private Atan() {
            throw new UnsupportedOperationException();
        }

        public static double compute(double x10) {
            int id2;
            int hx = FdLibm.__HI(x10);
            int ix = hx & Integer.MAX_VALUE;
            if (ix >= 1141899264) {
                if (ix > FdLibm.EXP_BITS || (ix == FdLibm.EXP_BITS && FdLibm.__LO(x10) != 0)) {
                    return x10 + x10;
                }
                if (hx > 0) {
                    return atanhi[3] + atanlo[3];
                }
                return (-atanhi[3]) - atanlo[3];
            }
            if (ix < 1071382528) {
                if (ix < 1042284544 && FdLibm.HUGE + x10 > 1.0d) {
                    return x10;
                }
                id2 = -1;
            } else {
                double x11 = Math.abs(x10);
                if (ix < 1072889856) {
                    if (ix < 1072037888) {
                        id2 = 0;
                        x10 = ((2.0d * x11) - 1.0d) / (2.0d + x11);
                    } else {
                        id2 = 1;
                        x10 = (x11 - 1.0d) / (x11 + 1.0d);
                    }
                } else if (ix < 1073971200) {
                    id2 = 2;
                    x10 = (x11 - 1.5d) / (1.0d + (1.5d * x11));
                } else {
                    id2 = 3;
                    x10 = (-1.0d) / x11;
                }
            }
            double z10 = x10 * x10;
            double w10 = z10 * z10;
            double s12 = z10 * (aT[0] + (w10 * (aT[2] + (w10 * (aT[4] + (w10 * (aT[6] + (w10 * (aT[8] + (w10 * aT[10]))))))))));
            double s22 = w10 * (aT[1] + (w10 * (aT[3] + (w10 * (aT[5] + (w10 * (aT[7] + (w10 * aT[9]))))))));
            if (id2 < 0) {
                return x10 - (x10 * (s12 + s22));
            }
            double z11 = atanhi[id2] - (((x10 * (s12 + s22)) - atanlo[id2]) - x10);
            return hx < 0 ? -z11 : z11;
        }
    }

    public static final class Atan2 {
        private static final double tiny = 1.0E-300d;
        private static final double pi_o_4 = 0.7853981633974483d;
        private static final double pi_o_2 = 1.5707963267948966d;
        private static final double pi_lo = 1.2246467991473532E-16d;

        private Atan2() {
            throw new UnsupportedOperationException();
        }

        public static double compute(double y10, double x10) {
            double z10;
            int hx = FdLibm.__HI(x10);
            int ix = hx & Integer.MAX_VALUE;
            int lx = FdLibm.__LO(x10);
            int hy = FdLibm.__HI(y10);
            int iy = hy & Integer.MAX_VALUE;
            int ly = FdLibm.__LO(y10);
            if (Double.isNaN(x10) || Double.isNaN(y10)) {
                return x10 + y10;
            }
            if (((hx - 1072693248) | lx) == 0) {
                return StrictMath.atan(y10);
            }
            int m10 = ((hy >> 31) & 1) | ((hx >> 30) & 2);
            if ((iy | ly) == 0) {
                switch (m10) {
                    case 0:
                    case 1:
                        return y10;
                    case 2:
                        return 3.141592653589793d;
                    case 3:
                        return -3.141592653589793d;
                }
            }
            if ((ix | lx) == 0) {
                return hy < 0 ? -1.5707963267948966d : 1.5707963267948966d;
            }
            if (ix == FdLibm.EXP_BITS) {
                if (iy == FdLibm.EXP_BITS) {
                    switch (m10) {
                        case 0:
                            return 0.7853981633974483d;
                        case 1:
                            return -0.7853981633974483d;
                        case 2:
                            return 2.356194490192345d;
                        case 3:
                            return -2.356194490192345d;
                    }
                }
                switch (m10) {
                    case 0:
                        return 0.0d;
                    case 1:
                        return -0.0d;
                    case 2:
                        return 3.141592653589793d;
                    case 3:
                        return -3.141592653589793d;
                }
            }
            if (iy == FdLibm.EXP_BITS) {
                return hy < 0 ? -1.5707963267948966d : 1.5707963267948966d;
            }
            int k10 = (iy - ix) >> 20;
            if (k10 > 60) {
                z10 = 1.5707963267948966d;
            } else if (hx < 0 && k10 < -60) {
                z10 = 0.0d;
            } else {
                z10 = StrictMath.atan(Math.abs(y10 / x10));
            }
            switch (m10) {
                case 0:
                    return z10;
                case 1:
                    return -z10;
                case 2:
                    return 3.141592653589793d - (z10 - pi_lo);
                default:
                    return (z10 - pi_lo) - 3.141592653589793d;
            }
        }
    }

    public static final class Sqrt {
        private static final double tiny = 1.0E-300d;

        private Sqrt() {
            throw new UnsupportedOperationException();
        }

        public static double compute(double x10) {
            int ix0 = FdLibm.__HI(x10);
            int ix1 = FdLibm.__LO(x10);
            if ((ix0 & FdLibm.EXP_BITS) == FdLibm.EXP_BITS) {
                return (x10 * x10) + x10;
            }
            if (ix0 <= 0) {
                if (((ix0 & (Integer.MIN_VALUE ^ (-1))) | ix1) == 0) {
                    return x10;
                }
                if (ix0 < 0) {
                    return (x10 - x10) / (x10 - x10);
                }
            }
            int m10 = ix0 >> 20;
            if (m10 == 0) {
                while (ix0 == 0) {
                    m10 -= 21;
                    ix0 |= ix1 >>> 11;
                    ix1 <<= 21;
                }
                int i10 = 0;
                while ((ix0 & 1048576) == 0) {
                    ix0 <<= 1;
                    i10++;
                }
                m10 -= i10 - 1;
                ix0 |= ix1 >>> (32 - i10);
                ix1 <<= i10;
            }
            int m11 = m10 - 1023;
            int ix02 = (ix0 & 1048575) | 1048576;
            if ((m11 & 1) != 0) {
                ix02 += ix02 + ((ix1 & Integer.MIN_VALUE) >>> 31);
                ix1 += ix1;
            }
            int m12 = m11 >> 1;
            int ix03 = ix02 + ix02 + ((ix1 & Integer.MIN_VALUE) >>> 31);
            int ix12 = ix1 + ix1;
            int s12 = 0;
            int s02 = 0;
            int q12 = 0;
            int q10 = 0;
            int i11 = 2097152;
            while (true) {
                int r10 = i11;
                if (r10 == 0) {
                    break;
                }
                int t10 = s02 + r10;
                if (t10 <= ix03) {
                    s02 = t10 + r10;
                    ix03 -= t10;
                    q10 += r10;
                }
                ix03 += ix03 + ((ix12 & Integer.MIN_VALUE) >>> 31);
                ix12 += ix12;
                i11 = r10 >>> 1;
            }
            int i12 = Integer.MIN_VALUE;
            while (true) {
                int r11 = i12;
                if (r11 == 0) {
                    break;
                }
                int t12 = s12 + r11;
                int t11 = s02;
                if (t11 < ix03 || (t11 == ix03 && Integer.compareUnsigned(t12, ix12) <= 0)) {
                    s12 = t12 + r11;
                    if ((t12 & Integer.MIN_VALUE) == Integer.MIN_VALUE && (s12 & Integer.MIN_VALUE) == 0) {
                        s02++;
                    }
                    ix03 -= t11;
                    if (Integer.compareUnsigned(ix12, t12) < 0) {
                        ix03--;
                    }
                    ix12 -= t12;
                    q12 += r11;
                }
                ix03 += ix03 + ((ix12 & Integer.MIN_VALUE) >>> 31);
                ix12 += ix12;
                i12 = r11 >>> 1;
            }
            if ((ix03 | ix12) != 0 && 1.0d >= 1.0d) {
                if (q12 == -1) {
                    q12 = 0;
                    q10++;
                } else if (1.0d > 1.0d) {
                    if (q12 == -2) {
                        q10++;
                    }
                    q12 += 2;
                } else {
                    q12 += q12 & 1;
                }
            }
            int ix04 = (q10 >> 1) + 1071644672;
            int ix13 = q12 >>> 1;
            if ((q10 & 1) == 1) {
                ix13 |= Integer.MIN_VALUE;
            }
            return FdLibm.__HI_LO(ix04 + (m12 << 20), ix13);
        }
    }

    public static final class Cbrt {

        private static final int f92756B1 = 715094163;

        private static final int f92757B2 = 696219795;

        private static final double f92758C = 0.5428571428571428d;

        private static final double f92759D = -0.7053061224489796d;

        private static final double f92760E = 1.4142857142857144d;

        private static final double f92761F = 1.6071428571428572d;

        private static final double f92762G = 0.35714285714285715d;

        private Cbrt() {
            throw new UnsupportedOperationException();
        }

        public static double compute(double x10) {
            double t10;
            if (x10 == 0.0d || !Double.isFinite(x10)) {
                return x10;
            }
            double sign = x10 < 0.0d ? -1.0d : 1.0d;
            double x11 = Math.abs(x10);
            if (x11 < Double.MIN_NORMAL) {
                double t11 = FdLibm.TWO54 * x11;
                t10 = FdLibm.__HI(t11, (FdLibm.__HI(t11) / 3) + f92757B2);
            } else {
                int hx = FdLibm.__HI(x11);
                t10 = FdLibm.__HI(0.0d, (hx / 3) + f92756B1);
            }
            double s10 = f92758C + (((t10 * t10) / x11) * t10);
            double t12 = FdLibm.__LO(t10 * (f92762G + (f92761F / ((s10 + f92760E) + (f92759D / s10)))), 0);
            double t13 = FdLibm.__HI(t12, FdLibm.__HI(t12) + 1);
            double r10 = x11 / (t13 * t13);
            double w10 = t13 + t13;
            return sign * (t13 + (t13 * ((r10 - t13) / (w10 + r10))));
        }
    }

    public static final class Hypot {
        public static final double TWO_MINUS_600 = 2.409919865102884E-181d;
        public static final double TWO_PLUS_600 = 4.149515568880993E180d;
        static final boolean $assertionsDisabled;

        static {
            $assertionsDisabled = !FdLibm.class.desiredAssertionStatus();
        }

        private Hypot() {
            throw new UnsupportedOperationException();
        }

        public static double compute(double x10, double y10) {
            double w10;
            double a10 = Math.abs(x10);
            double b10 = Math.abs(y10);
            if (!Double.isFinite(a10) || !Double.isFinite(b10)) {
                if (a10 == Double.POSITIVE_INFINITY || b10 == Double.POSITIVE_INFINITY) {
                    return Double.POSITIVE_INFINITY;
                }
                return a10 + b10;
            }
            if (b10 > a10) {
                a10 = b10;
                b10 = a10;
            }
            if (!$assertionsDisabled && a10 < b10) {
                throw new AssertionError();
            }
            int ha2 = FdLibm.__HI(a10);
            int hb2 = FdLibm.__HI(b10);
            if (ha2 - hb2 > 62914560) {
                return a10 + b10;
            }
            int k10 = 0;
            if (a10 > 3.2733937296446915E150d) {
                ha2 -= 629145600;
                hb2 -= 629145600;
                a10 *= 2.409919865102884E-181d;
                b10 *= 2.409919865102884E-181d;
                k10 = 0 + 600;
            }
            if (b10 < 3.054936363499605E-151d) {
                if (b10 >= Double.MIN_NORMAL) {
                    ha2 += 629145600;
                    hb2 += 629145600;
                    a10 *= 4.149515568880993E180d;
                    b10 *= 4.149515568880993E180d;
                    k10 -= 600;
                } else {
                    if (b10 == 0.0d) {
                        return a10;
                    }
                    b10 *= 4.49423283715579E307d;
                    a10 *= 4.49423283715579E307d;
                    k10 += Double.MIN_EXPONENT;
                }
            }
            double w11 = a10 - b10;
            if (w11 > b10) {
                double t12 = FdLibm.__HI(0.0d, ha2);
                double t22 = a10 - t12;
                w10 = Math.sqrt((t12 * t12) - ((b10 * (-b10)) - (t22 * (a10 + t12))));
            } else {
                double y12 = FdLibm.__HI(0.0d, hb2);
                double y22 = b10 - y12;
                double t13 = FdLibm.__HI(0.0d, ha2 + 1048576);
                double t23 = (a10 + a10) - t13;
                w10 = Math.sqrt((t13 * y12) - ((w11 * (-w11)) - ((t13 * y22) + (t23 * b10))));
            }
            if (k10 != 0) {
                return Math.powerOfTwoD(k10) * w10;
            }
            return w10;
        }
    }

    public static final class Pow {
        private Pow() {
            throw new UnsupportedOperationException();
        }

        public static double compute(double x10, double y10) {
            int k10;
            double t12;
            double t22;
            double z10;
            if (y10 == 0.0d) {
                return 1.0d;
            }
            if (Double.isNaN(x10) || Double.isNaN(y10)) {
                return x10 + y10;
            }
            double y_abs = Math.abs(y10);
            double x_abs = Math.abs(x10);
            if (y10 == 2.0d) {
                return x10 * x10;
            }
            if (y10 == 0.5d) {
                if (x10 >= -1.7976931348623157E308d) {
                    return Math.sqrt(x10 + 0.0d);
                }
            } else {
                if (y_abs == 1.0d) {
                    return y10 == 1.0d ? x10 : 1.0d / x10;
                }
                if (y_abs == Double.POSITIVE_INFINITY) {
                    if (x_abs == 1.0d) {
                        return y10 - y10;
                    }
                    if (x_abs > 1.0d) {
                        if (y10 >= 0.0d) {
                            return y10;
                        }
                        return 0.0d;
                    }
                    if (y10 < 0.0d) {
                        return -y10;
                    }
                    return 0.0d;
                }
            }
            int hx = FdLibm.__HI(x10);
            int ix = hx & Integer.MAX_VALUE;
            int y_is_int = 0;
            if (hx < 0) {
                if (y_abs >= 9.007199254740992E15d) {
                    y_is_int = 2;
                } else if (y_abs >= 1.0d) {
                    long y_abs_as_long = (long) y_abs;
                    if (y_abs_as_long == y_abs) {
                        y_is_int = 2 - ((int) (y_abs_as_long & 1));
                    }
                }
            }
            if (x_abs == 0.0d || x_abs == Double.POSITIVE_INFINITY || x_abs == 1.0d) {
                double z11 = x_abs;
                if (y10 < 0.0d) {
                    z11 = 1.0d / z11;
                }
                if (hx < 0) {
                    if (((ix - 1072693248) | y_is_int) == 0) {
                        z11 = (z11 - z11) / (z11 - z11);
                    } else if (y_is_int == 1) {
                        z11 = (-1.0d) * z11;
                    }
                }
                return z11;
            }
            int n10 = (hx >> 31) + 1;
            if ((n10 | y_is_int) == 0) {
                return (x10 - x10) / (x10 - x10);
            }
            double s10 = 1.0d;
            if ((n10 | (y_is_int - 1)) == 0) {
                s10 = -1.0d;
            }
            if (y_abs <= 2.1474856959999995E9d) {
                int n11 = 0;
                if (ix < 1048576) {
                    x_abs *= 9.007199254740992E15d;
                    n11 = 0 - 53;
                    ix = FdLibm.__HI(x_abs);
                }
                int n12 = n11 + ((ix >> 20) - 1023);
                int j10 = ix & 1048575;
                int ix2 = j10 | 1072693248;
                if (j10 <= 235662) {
                    k10 = 0;
                } else if (j10 < 767610) {
                    k10 = 1;
                } else {
                    k10 = 0;
                    n12++;
                    ix2 -= 1048576;
                }
                double x_abs2 = FdLibm.__HI(x_abs, ix2);
                double[] BP = {1.0d, 1.5d};
                double[] DP_H = {0.0d, 0.5849624872207642d};
                double[] DP_L = {0.0d, 1.350039202129749E-8d};
                double u10 = x_abs2 - BP[k10];
                double v10 = 1.0d / (x_abs2 + BP[k10]);
                double ss = u10 * v10;
                double s_h = FdLibm.__LO(ss, 0);
                double t_h = FdLibm.__HI(0.0d, ((ix2 >> 1) | 536870912) + 524288 + (k10 << 18));
                double t_l = x_abs2 - (t_h - BP[k10]);
                double s_l = v10 * ((u10 - (s_h * t_h)) - (s_h * t_l));
                double s22 = ss * ss;
                double r10 = (s22 * s22 * (0.5999999999999946d + (s22 * (0.4285714285785502d + (s22 * (0.33333332981837743d + (s22 * (0.272728123808534d + (s22 * (0.23066074577556175d + (s22 * 0.20697501780033842d))))))))))) + (s_l * (s_h + ss));
                double s23 = s_h * s_h;
                double t_h2 = FdLibm.__LO(3.0d + s23 + r10, 0);
                double t_l2 = r10 - ((t_h2 - 3.0d) - s23);
                double u11 = s_h * t_h2;
                double v11 = (s_l * t_h2) + (t_l2 * ss);
                double p_h = FdLibm.__LO(u11 + v11, 0);
                double p_l = v11 - (p_h - u11);
                double z_h = 0.9617967009544373d * p_h;
                double z_l = ((-7.028461650952758E-9d) * p_h) + (p_l * 0.9617966939259756d) + DP_L[k10];
                double t10 = n12;
                t12 = FdLibm.__LO(z_h + z_l + DP_H[k10] + t10, 0);
                t22 = z_l - (((t12 - t10) - DP_H[k10]) - z_h);
            } else {
                if (x_abs < 0.9999995231628418d) {
                    return y10 < 0.0d ? s10 * Double.POSITIVE_INFINITY : s10 * 0.0d;
                }
                if (x_abs > 1.0000009536743162d) {
                    return y10 > 0.0d ? s10 * Double.POSITIVE_INFINITY : s10 * 0.0d;
                }
                double t11 = x_abs - 1.0d;
                double w10 = t11 * t11 * (0.5d - (t11 * (0.3333333333333333d - (t11 * 0.25d))));
                double u12 = 1.4426950216293335d * t11;
                double v12 = (t11 * 1.9259629911266175E-8d) - (w10 * 1.4426950408889634d);
                t12 = FdLibm.__LO(u12 + v12, 0);
                t22 = v12 - (t12 - u12);
            }
            double y12 = FdLibm.__LO(y10, 0);
            double p_l2 = ((y10 - y12) * t12) + (y10 * t22);
            double p_h2 = y12 * t12;
            double z12 = p_l2 + p_h2;
            int j11 = FdLibm.__HI(z12);
            int i10 = FdLibm.__LO(z12);
            if (j11 >= 1083179008) {
                if (((j11 - 1083179008) | i10) != 0) {
                    return s10 * Double.POSITIVE_INFINITY;
                }
                if (p_l2 + 8.008566259537294E-17d > z12 - p_h2) {
                    return s10 * Double.POSITIVE_INFINITY;
                }
            } else if ((j11 & Integer.MAX_VALUE) >= 1083231232) {
                if (((j11 - (-1064252416)) | i10) != 0) {
                    return s10 * 0.0d;
                }
                if (p_l2 <= z12 - p_h2) {
                    return s10 * 0.0d;
                }
            }
            int i11 = j11 & Integer.MAX_VALUE;
            int k11 = (i11 >> 20) - 1023;
            int n13 = 0;
            if (i11 > 1071644672) {
                int n14 = j11 + (1048576 >> (k11 + 1));
                int k12 = ((n14 & Integer.MAX_VALUE) >> 20) - 1023;
                double t13 = FdLibm.__HI(0.0d, n14 & ((1048575 >> k12) ^ (-1)));
                n13 = ((n14 & 1048575) | 1048576) >> (20 - k12);
                if (j11 < 0) {
                    n13 = -n13;
                }
                p_h2 -= t13;
            }
            double t14 = FdLibm.__LO(p_l2 + p_h2, 0);
            double u13 = t14 * 0.6931471824645996d;
            double v13 = ((p_l2 - (t14 - p_h2)) * 0.6931471805599453d) + (t14 * (-1.904654299957768E-9d));
            double z13 = u13 + v13;
            double w11 = v13 - (z13 - u13);
            double t15 = z13 * z13;
            double t16 = z13 - (t15 * (0.16666666666666602d + (t15 * ((-0.0027777777777015593d) + (t15 * (6.613756321437934E-5d + (t15 * ((-1.6533902205465252E-6d) + (t15 * 4.1381367970572385E-8d)))))))));
            double z14 = 1.0d - ((((z13 * t16) / (t16 - 2.0d)) - (w11 + (z13 * w11))) - z13);
            if (((FdLibm.__HI(z14) + (n13 << 20)) >> 20) <= 0) {
                z10 = Math.scalb(z14, n13);
            } else {
                int z_hi = FdLibm.__HI(z14);
                z10 = FdLibm.__HI(z14, z_hi + (n13 << 20));
            }
            return s10 * z10;
        }
    }

    public static final class Exp {
        private static final double huge = 1.0E300d;
        private static final double twom1000 = 9.332636185032189E-302d;
        private static final double o_threshold = 709.782712893384d;
        private static final double u_threshold = -745.1332191019411d;
        private static final double invln2 = 1.4426950408889634d;

        private static final double f92769P1 = 0.16666666666666602d;

        private static final double f92770P2 = -0.0027777777777015593d;

        private static final double f92771P3 = 6.613756321437934E-5d;

        private static final double f92772P4 = -1.6533902205465252E-6d;

        private static final double f92773P5 = 4.1381367970572385E-8d;
        private static final double[] half = {0.5d, -0.5d};
        private static final double[] ln2HI = {0.6931471803691238d, -0.6931471803691238d};
        private static final double[] ln2LO = {1.9082149292705877E-10d, -1.9082149292705877E-10d};

        private Exp() {
            throw new UnsupportedOperationException();
        }

        public static double compute(double x10) {
            double hi2 = 0.0d;
            double lo = 0.0d;
            int k10 = 0;
            int hx = FdLibm.__HI(x10);
            int xsb = (hx >> 31) & 1;
            int hx2 = hx & Integer.MAX_VALUE;
            if (hx2 >= 1082535490) {
                if (hx2 >= FdLibm.EXP_BITS) {
                    if (((hx2 & 1048575) | FdLibm.__LO(x10)) != 0) {
                        return x10 + x10;
                    }
                    if (xsb == 0) {
                        return x10;
                    }
                    return 0.0d;
                }
                if (x10 > o_threshold) {
                    return Double.POSITIVE_INFINITY;
                }
                if (x10 < u_threshold) {
                    return 0.0d;
                }
            }
            if (hx2 > 1071001154) {
                if (hx2 < 1072734898) {
                    hi2 = x10 - ln2HI[xsb];
                    lo = ln2LO[xsb];
                    k10 = (1 - xsb) - xsb;
                } else {
                    k10 = (int) ((invln2 * x10) + half[xsb]);
                    double t10 = k10;
                    hi2 = x10 - (t10 * ln2HI[0]);
                    lo = t10 * ln2LO[0];
                }
                x10 = hi2 - lo;
            } else if (hx2 >= 1043333120) {
                k10 = 0;
            } else if (huge + x10 > 1.0d) {
                return 1.0d + x10;
            }
            double t11 = x10 * x10;
            double c10 = x10 - (t11 * (f92769P1 + (t11 * (f92770P2 + (t11 * (f92771P3 + (t11 * (f92772P4 + (t11 * f92773P5)))))))));
            if (k10 == 0) {
                return 1.0d - (((x10 * c10) / (c10 - 2.0d)) - x10);
            }
            double y10 = 1.0d - ((lo - ((x10 * c10) / (2.0d - c10))) - hi2);
            if (k10 >= -1021) {
                return FdLibm.__HI(y10, FdLibm.__HI(y10) + (k10 << 20));
            }
            return FdLibm.__HI(y10, FdLibm.__HI(y10) + ((k10 + 1000) << 20)) * twom1000;
        }
    }

    public static final class Log {
        private static final double ln2_hi = 0.6931471803691238d;
        private static final double ln2_lo = 1.9082149292705877E-10d;
        private static final double Lg1 = 0.6666666666666735d;
        private static final double Lg2 = 0.3999999999940942d;
        private static final double Lg3 = 0.2857142874366239d;
        private static final double Lg4 = 0.22222198432149784d;
        private static final double Lg5 = 0.1818357216161805d;
        private static final double Lg6 = 0.15313837699209373d;
        private static final double Lg7 = 0.14798198605116586d;

        private Log() {
            throw new UnsupportedOperationException();
        }

        public static double compute(double x10) {
            int hx = FdLibm.__HI(x10);
            int lx = FdLibm.__LO(x10);
            int k10 = 0;
            if (hx < 1048576) {
                if (((hx & Integer.MAX_VALUE) | lx) == 0) {
                    return Double.NEGATIVE_INFINITY;
                }
                if (hx < 0) {
                    return (x10 - x10) / 0.0d;
                }
                k10 = 0 - 54;
                x10 *= FdLibm.TWO54;
                hx = FdLibm.__HI(x10);
            }
            if (hx >= FdLibm.EXP_BITS) {
                return x10 + x10;
            }
            int hx2 = hx & 1048575;
            int i10 = (hx2 + 614244) & 1048576;
            double x11 = FdLibm.__HI(x10, hx2 | (i10 ^ 1072693248));
            int k11 = k10 + ((hx >> 20) - 1023) + (i10 >> 20);
            double f10 = x11 - 1.0d;
            if ((1048575 & (2 + hx2)) < 3) {
                if (f10 == 0.0d) {
                    if (k11 == 0) {
                        return 0.0d;
                    }
                    double dk2 = k11;
                    return (dk2 * ln2_hi) + (dk2 * ln2_lo);
                }
                double R10 = f10 * f10 * (0.5d - (0.3333333333333333d * f10));
                if (k11 == 0) {
                    return f10 - R10;
                }
                double dk3 = k11;
                return (dk3 * ln2_hi) - ((R10 - (dk3 * ln2_lo)) - f10);
            }
            double s10 = f10 / (2.0d + f10);
            double dk4 = k11;
            double z10 = s10 * s10;
            int i11 = hx2 - 398458;
            double w10 = z10 * z10;
            int j10 = 440401 - hx2;
            double t12 = w10 * (Lg2 + (w10 * (Lg4 + (w10 * Lg6))));
            double t22 = z10 * (Lg1 + (w10 * (Lg3 + (w10 * (Lg5 + (w10 * Lg7))))));
            int i12 = i11 | j10;
            double R11 = t22 + t12;
            if (i12 > 0) {
                double hfsq = 0.5d * f10 * f10;
                if (k11 == 0) {
                    return f10 - (hfsq - (s10 * (hfsq + R11)));
                }
                return (dk4 * ln2_hi) - ((hfsq - ((s10 * (hfsq + R11)) + (dk4 * ln2_lo))) - f10);
            }
            if (k11 == 0) {
                return f10 - (s10 * (f10 - R11));
            }
            return (dk4 * ln2_hi) - (((s10 * (f10 - R11)) - (dk4 * ln2_lo)) - f10);
        }
    }

    public static final class Log10 {
        private static final double ivln10 = 0.4342944819032518d;
        private static final double log10_2hi = 0.30102999566361177d;
        private static final double log10_2lo = 3.694239077158931E-13d;

        private Log10() {
            throw new UnsupportedOperationException();
        }

        public static double compute(double x10) {
            int hx = FdLibm.__HI(x10);
            int lx = FdLibm.__LO(x10);
            int k10 = 0;
            if (hx < 1048576) {
                if (((hx & Integer.MAX_VALUE) | lx) == 0) {
                    return Double.NEGATIVE_INFINITY;
                }
                if (hx < 0) {
                    return (x10 - x10) / 0.0d;
                }
                k10 = 0 - 54;
                x10 *= FdLibm.TWO54;
                hx = FdLibm.__HI(x10);
            }
            if (hx >= FdLibm.EXP_BITS) {
                return x10 + x10;
            }
            int k11 = k10 + ((hx >> 20) - 1023);
            int i10 = (k11 & Integer.MIN_VALUE) >>> 31;
            int hx2 = (hx & 1048575) | ((1023 - i10) << 20);
            double y10 = k11 + i10;
            double z10 = (y10 * log10_2lo) + (ivln10 * StrictMath.log(FdLibm.__HI(x10, hx2)));
            return z10 + (y10 * log10_2hi);
        }
    }

    public static final class Log1p {
        private static final double ln2_hi = 0.6931471803691238d;
        private static final double ln2_lo = 1.9082149292705877E-10d;
        private static final double Lp1 = 0.6666666666666735d;
        private static final double Lp2 = 0.3999999999940942d;
        private static final double Lp3 = 0.2857142874366239d;
        private static final double Lp4 = 0.22222198432149784d;
        private static final double Lp5 = 0.1818357216161805d;
        private static final double Lp6 = 0.15313837699209373d;
        private static final double Lp7 = 0.14798198605116586d;

        Log1p() {
        }

        public static double compute(double x10) {
            double u10;
            int hu;
            double u11;
            double f10 = 0.0d;
            double c10 = 0.0d;
            int hu2 = 0;
            int hx = FdLibm.__HI(x10);
            int ax = hx & Integer.MAX_VALUE;
            int k10 = 1;
            if (hx < 1071284858) {
                if (ax >= 1072693248) {
                    if (x10 == -1.0d) {
                        return Double.NEGATIVE_INFINITY;
                    }
                    return Double.NaN;
                }
                if (ax < 1042284544) {
                    if (FdLibm.TWO54 + x10 > 0.0d && ax < 1016070144) {
                        return x10;
                    }
                    return x10 - ((x10 * x10) * 0.5d);
                }
                if (hx > 0 || hx <= -1076707645) {
                    k10 = 0;
                    f10 = x10;
                    hu2 = 1;
                }
            }
            if (hx >= FdLibm.EXP_BITS) {
                return x10 + x10;
            }
            if (k10 != 0) {
                if (hx < 1128267776) {
                    u10 = 1.0d + x10;
                    hu = FdLibm.__HI(u10);
                    k10 = (hu >> 20) - 1023;
                    double c11 = k10 > 0 ? 1.0d - (u10 - x10) : x10 - (u10 - 1.0d);
                    c10 = c11 / u10;
                } else {
                    u10 = x10;
                    hu = FdLibm.__HI(u10);
                    k10 = (hu >> 20) - 1023;
                    c10 = 0.0d;
                }
                hu2 = hu & 1048575;
                if (hu2 < 434334) {
                    u11 = FdLibm.__HI(u10, hu2 | 1072693248);
                } else {
                    k10++;
                    u11 = FdLibm.__HI(u10, hu2 | 1071644672);
                    hu2 = (1048576 - hu2) >> 2;
                }
                f10 = u11 - 1.0d;
            }
            double hfsq = 0.5d * f10 * f10;
            if (hu2 != 0) {
                double s10 = f10 / (2.0d + f10);
                double z10 = s10 * s10;
                double R10 = z10 * (Lp1 + (z10 * (Lp2 + (z10 * (Lp3 + (z10 * (Lp4 + (z10 * (Lp5 + (z10 * (Lp6 + (z10 * Lp7))))))))))));
                if (k10 == 0) {
                    return f10 - (hfsq - (s10 * (hfsq + R10)));
                }
                return (k10 * ln2_hi) - ((hfsq - ((s10 * (hfsq + R10)) + ((k10 * ln2_lo) + c10))) - f10);
            }
            if (f10 == 0.0d) {
                if (k10 == 0) {
                    return 0.0d;
                }
                return (k10 * ln2_hi) + c10 + (k10 * ln2_lo);
            }
            double R11 = hfsq * (1.0d - (0.6666666666666666d * f10));
            if (k10 == 0) {
                return f10 - R11;
            }
            return (k10 * ln2_hi) - ((R11 - ((k10 * ln2_lo) + c10)) - f10);
        }
    }

    public static final class Expm1 {
        private static final double huge = 1.0E300d;
        private static final double tiny = 1.0E-300d;
        private static final double o_threshold = 709.782712893384d;
        private static final double ln2_hi = 0.6931471803691238d;
        private static final double ln2_lo = 1.9082149292705877E-10d;
        private static final double invln2 = 1.4426950408889634d;

        private static final double f92774Q1 = -0.03333333333333313d;

        private static final double f92775Q2 = 0.0015873015872548146d;

        private static final double f92776Q3 = -7.93650757867488E-5d;

        private static final double f92777Q4 = 4.008217827329362E-6d;

        private static final double f92778Q5 = -2.0109921818362437E-7d;

        Expm1() {
        }

        public static double compute(double x10) {
            int k10;
            double y10;
            double hi2;
            double lo;
            double c10 = 0.0d;
            int hx = FdLibm.__HI(x10);
            int xsb = hx & Integer.MIN_VALUE;
            int hx2 = hx & Integer.MAX_VALUE;
            if (hx2 >= 1078159482) {
                if (hx2 >= 1082535490) {
                    if (hx2 >= FdLibm.EXP_BITS) {
                        if (((hx2 & 1048575) | FdLibm.__LO(x10)) != 0) {
                            return x10 + x10;
                        }
                        if (xsb == 0) {
                            return x10;
                        }
                        return -1.0d;
                    }
                    if (x10 > o_threshold) {
                        return Double.POSITIVE_INFINITY;
                    }
                }
                if (xsb != 0 && x10 + tiny < 0.0d) {
                    return -1.0d;
                }
            }
            if (hx2 > 1071001154) {
                if (hx2 < 1072734898) {
                    if (xsb == 0) {
                        hi2 = x10 - ln2_hi;
                        lo = 1.9082149292705877E-10d;
                        k10 = 1;
                    } else {
                        hi2 = x10 + ln2_hi;
                        lo = -1.9082149292705877E-10d;
                        k10 = -1;
                    }
                } else {
                    k10 = (int) ((invln2 * x10) + (xsb == 0 ? 0.5d : -0.5d));
                    double t10 = k10;
                    hi2 = x10 - (t10 * ln2_hi);
                    lo = t10 * ln2_lo;
                }
                x10 = hi2 - lo;
                c10 = (hi2 - x10) - lo;
            } else {
                if (hx2 < 1016070144) {
                    return x10 - ((huge + x10) - (huge + x10));
                }
                k10 = 0;
            }
            double hfx = 0.5d * x10;
            double hxs = x10 * hfx;
            double r12 = 1.0d + (hxs * (f92774Q1 + (hxs * (f92775Q2 + (hxs * (f92776Q3 + (hxs * (f92777Q4 + (hxs * f92778Q5)))))))));
            double t11 = 3.0d - (r12 * hfx);
            double e10 = hxs * ((r12 - t11) / (6.0d - (x10 * t11)));
            if (k10 == 0) {
                return x10 - ((x10 * e10) - hxs);
            }
            double e11 = ((x10 * (e10 - c10)) - c10) - hxs;
            if (k10 == -1) {
                return (0.5d * (x10 - e11)) - 0.5d;
            }
            if (k10 == 1) {
                if (x10 < -0.25d) {
                    return (-2.0d) * (e11 - (x10 + 0.5d));
                }
                return 1.0d + (2.0d * (x10 - e11));
            }
            if (k10 <= -2 || k10 > 56) {
                double y11 = 1.0d - (e11 - x10);
                return FdLibm.__HI(y11, FdLibm.__HI(y11) + (k10 << 20)) - 1.0d;
            }
            if (k10 < 20) {
                double y12 = FdLibm.__HI(1.0d, 1072693248 - (2097152 >> k10)) - (e11 - x10);
                y10 = FdLibm.__HI(y12, FdLibm.__HI(y12) + (k10 << 20));
            } else {
                double y13 = (x10 - (e11 + FdLibm.__HI(1.0d, (1023 - k10) << 20))) + 1.0d;
                y10 = FdLibm.__HI(y13, FdLibm.__HI(y13) + (k10 << 20));
            }
            return y10;
        }
    }

    public static final class Sinh {
        private static final double shuge = 1.0E307d;

        private Sinh() {
            throw new UnsupportedOperationException();
        }

        public static double compute(double x10) {
            int jx = FdLibm.__HI(x10);
            int ix = jx & Integer.MAX_VALUE;
            if (ix >= FdLibm.EXP_BITS) {
                return x10 + x10;
            }
            double h10 = 0.5d;
            if (jx < 0) {
                h10 = -0.5d;
            }
            if (ix < 1077280768) {
                if (ix < 1043333120 && shuge + x10 > 1.0d) {
                    return x10;
                }
                double t10 = StrictMath.expm1(Math.abs(x10));
                if (ix < 1072693248) {
                    return h10 * ((2.0d * t10) - ((t10 * t10) / (t10 + 1.0d)));
                }
                return h10 * (t10 + (t10 / (t10 + 1.0d)));
            }
            if (ix < 1082535490) {
                return h10 * StrictMath.exp(Math.abs(x10));
            }
            int lx = FdLibm.__LO(x10);
            if (ix < 1082536910 || (ix == 1082536910 && Long.compareUnsigned(lx, -1883637635L) <= 0)) {
                double w10 = StrictMath.exp(0.5d * Math.abs(x10));
                return h10 * w10 * w10;
            }
            return x10 * shuge;
        }
    }

    public static final class Cosh {
        private static final double huge = 1.0E300d;

        private Cosh() {
            throw new UnsupportedOperationException();
        }

        public static double compute(double x10) {
            int ix = FdLibm.__HI(x10) & Integer.MAX_VALUE;
            if (ix >= FdLibm.EXP_BITS) {
                return x10 * x10;
            }
            if (ix < 1071001155) {
                double t10 = StrictMath.expm1(Math.abs(x10));
                double w10 = 1.0d + t10;
                if (ix < 1015021568) {
                    return w10;
                }
                return 1.0d + ((t10 * t10) / (w10 + w10));
            }
            if (ix < 1077280768) {
                double t11 = StrictMath.exp(Math.abs(x10));
                return (0.5d * t11) + (0.5d / t11);
            }
            if (ix < 1082535490) {
                return 0.5d * StrictMath.exp(Math.abs(x10));
            }
            int lx = FdLibm.__LO(x10);
            if (ix < 1082536910 || (ix == 1082536910 && Integer.compareUnsigned(lx, -1883637635) <= 0)) {
                double w11 = StrictMath.exp(0.5d * Math.abs(x10));
                return 0.5d * w11 * w11;
            }
            return Double.POSITIVE_INFINITY;
        }
    }

    public static final class Tanh {
        private static final double tiny = 1.0E-300d;

        private Tanh() {
            throw new UnsupportedOperationException();
        }

        public static double compute(double x10) {
            double z10;
            int jx = FdLibm.__HI(x10);
            int ix = jx & Integer.MAX_VALUE;
            if (ix >= FdLibm.EXP_BITS) {
                if (jx >= 0) {
                    return (1.0d / x10) + 1.0d;
                }
                return (1.0d / x10) - 1.0d;
            }
            if (ix < 1077280768) {
                if (ix < 1015021568) {
                    return x10 * (1.0d + x10);
                }
                if (ix >= 1072693248) {
                    z10 = 1.0d - (2.0d / (StrictMath.expm1(2.0d * Math.abs(x10)) + 2.0d));
                } else {
                    double t10 = StrictMath.expm1((-2.0d) * Math.abs(x10));
                    z10 = (-t10) / (t10 + 2.0d);
                }
            } else {
                z10 = 1.0d;
            }
            return jx >= 0 ? z10 : -z10;
        }
    }

    public static final class IEEEremainder {
        private IEEEremainder() {
            throw new UnsupportedOperationException();
        }

        public static double compute(double x10, double p10) {
            int hx = FdLibm.__HI(x10);
            int lx = FdLibm.__LO(x10);
            int hp = FdLibm.__HI(p10);
            int lp = FdLibm.__LO(p10);
            int sx = hx & Integer.MIN_VALUE;
            int hp2 = hp & Integer.MAX_VALUE;
            int hx2 = hx & Integer.MAX_VALUE;
            if ((hp2 | lp) == 0) {
                return (x10 * p10) / (x10 * p10);
            }
            if (hx2 >= FdLibm.EXP_BITS || (hp2 >= FdLibm.EXP_BITS && ((hp2 - FdLibm.EXP_BITS) | lp) != 0)) {
                return (x10 * p10) / (x10 * p10);
            }
            if (hp2 <= 2145386495) {
                x10 = __ieee754_fmod(x10, p10 + p10);
            }
            if (((hx2 - hp2) | (lx - lp)) == 0) {
                return 0.0d * x10;
            }
            double x11 = Math.abs(x10);
            double p11 = Math.abs(p10);
            if (hp2 >= 2097152) {
                double p_half = 0.5d * p11;
                if (x11 > p_half) {
                    x11 -= p11;
                    if (x11 >= p_half) {
                        x11 -= p11;
                    }
                }
            } else if (x11 + x11 > p11) {
                x11 -= p11;
                if (x11 + x11 >= p11) {
                    x11 -= p11;
                }
            }
            return FdLibm.__HI(x11, FdLibm.__HI(x11) ^ sx);
        }

        private static double __ieee754_fmod(double x10, double y10) {
            int hx;
            int hy;
            int lx;
            int hx2;
            double x11;
            int hx3 = FdLibm.__HI(x10);
            int lx2 = FdLibm.__LO(x10);
            int hy2 = FdLibm.__HI(y10);
            int ly = FdLibm.__LO(y10);
            int sx = hx3 & Integer.MIN_VALUE;
            int hx4 = hx3 ^ sx;
            int hy3 = hy2 & Integer.MAX_VALUE;
            if ((hy3 | ly) == 0 || hx4 >= FdLibm.EXP_BITS || (hy3 | ((ly | (-ly)) >>> 31)) > FdLibm.EXP_BITS) {
                return (x10 * y10) / (x10 * y10);
            }
            if (hx4 <= hy3) {
                if (hx4 < hy3 || Integer.compareUnsigned(lx2, ly) < 0) {
                    return x10;
                }
                if (lx2 == ly) {
                    return signedZero(sx);
                }
            }
            int ix = ilogb(hx4, lx2);
            int iy = ilogb(hy3, ly);
            if (ix >= -1022) {
                hx = 1048576 | (1048575 & hx4);
            } else {
                int n10 = Double.MIN_EXPONENT - ix;
                if (n10 <= 31) {
                    hx = (hx4 << n10) | (lx2 >>> (32 - n10));
                    lx2 <<= n10;
                } else {
                    hx = lx2 << (n10 - 32);
                    lx2 = 0;
                }
            }
            if (iy >= -1022) {
                hy = 1048576 | (1048575 & hy3);
            } else {
                int n11 = Double.MIN_EXPONENT - iy;
                if (n11 <= 31) {
                    hy = (hy3 << n11) | (ly >>> (32 - n11));
                    ly <<= n11;
                } else {
                    hy = ly << (n11 - 32);
                    ly = 0;
                }
            }
            int n12 = ix - iy;
            while (true) {
                int i10 = n12;
                n12--;
                if (i10 != 0) {
                    int hz = hx - hy;
                    int lz = lx2 - ly;
                    if (Integer.compareUnsigned(lx2, ly) < 0) {
                        hz--;
                    }
                    if (hz < 0) {
                        hx = hx + hx + (lx2 >>> 31);
                        lx2 += lx2;
                    } else {
                        if ((hz | lz) == 0) {
                            return signedZero(sx);
                        }
                        hx = hz + hz + (lz >>> 31);
                        lx2 = lz + lz;
                    }
                } else {
                    int hz2 = hx - hy;
                    int lz2 = lx2 - ly;
                    if (Integer.compareUnsigned(lx2, ly) < 0) {
                        hz2--;
                    }
                    if (hz2 >= 0) {
                        hx = hz2;
                        lx2 = lz2;
                    }
                    if ((hx | lx2) == 0) {
                        return signedZero(sx);
                    }
                    while (hx < 1048576) {
                        hx = hx + hx + (lx2 >>> 31);
                        lx2 += lx2;
                        iy--;
                    }
                    if (iy >= -1022) {
                        x11 = FdLibm.__HI_LO((hx - 1048576) | ((iy + 1023) << 20) | sx, lx2);
                    } else {
                        int n13 = Double.MIN_EXPONENT - iy;
                        if (n13 <= 20) {
                            lx = (lx2 >>> n13) | (hx << (32 - n13));
                            hx2 = hx >> n13;
                        } else if (n13 <= 31) {
                            lx = (hx << (32 - n13)) | (lx2 >>> n13);
                            hx2 = sx;
                        } else {
                            lx = hx >> (n13 - 32);
                            hx2 = sx;
                        }
                        x11 = FdLibm.__HI_LO(hx2 | sx, lx) * 1.0d;
                    }
                    return x11;
                }
            }
        }

        private static double signedZero(int sign) {
            return 0.0d * sign;
        }

        private static int ilogb(int hz, int lz) {
            int iz;
            if (hz < 1048576) {
                if (hz == 0) {
                    iz = -1043;
                    int i10 = lz;
                    while (true) {
                        int i11 = i10;
                        if (i11 <= 0) {
                            break;
                        }
                        iz--;
                        i10 = i11 << 1;
                    }
                } else {
                    iz = -1022;
                    int i12 = hz;
                    int i13 = 11;
                    while (true) {
                        int i14 = i12 << i13;
                        if (i14 <= 0) {
                            break;
                        }
                        iz--;
                        i12 = i14;
                        i13 = 1;
                    }
                }
            } else {
                iz = (hz >> 20) - 1023;
            }
            return iz;
        }
    }
}
