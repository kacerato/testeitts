package org.apache.commons.math3.special;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;

public class BesselJ implements UnivariateFunction {
    private static final double ENMTEN = 8.9E-308d;
    private static final double ENSIG = 1.0E16d;
    private static final double ENTEN = 1.0E308d;
    private static final double[] FACT = {1.0d, 1.0d, 2.0d, 6.0d, 24.0d, 120.0d, 720.0d, 5040.0d, 40320.0d, 362880.0d, 3628800.0d, 3.99168E7d, 4.790016E8d, 6.2270208E9d, 8.71782912E10d, 1.307674368E12d, 2.0922789888E13d, 3.55687428096E14d, 6.402373705728E15d, 1.21645100408832E17d, 2.43290200817664E18d, 5.109094217170944E19d, 1.1240007277776077E21d, 2.585201673888498E22d, 6.204484017332394E23d};
    private static final double PI2 = 0.6366197723675814d;
    private static final double RTNSIG = 1.0E-4d;
    private static final double TOWPI1 = 6.28125d;
    private static final double TWOPI = 6.283185307179586d;
    private static final double TWOPI2 = 0.001935307179586477d;
    private static final double X_MAX = 10000.0d;
    private static final double X_MIN = 0.0d;
    private final double order;

    public static class BesselJResult {
        private final int nVals;
        private final double[] vals;

        public BesselJResult(double[] dArr, int i10) {
            this.vals = MathArrays.copyOf(dArr, dArr.length);
            this.nVals = i10;
        }

        public double[] getVals() {
            double[] dArr = this.vals;
            return MathArrays.copyOf(dArr, dArr.length);
        }

        public int getnVals() {
            return this.nVals;
        }
    }

    public BesselJ(double d10) {
        this.order = d10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0072, code lost:
    
        if (r24 == 0.0d) goto L34;
     */
    /* JADX WARN: Removed duplicated region for block: B:151:0x03bb A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:156:0x03c4  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0401  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x043d  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0450  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0457  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static BesselJResult rjBesl(double d10, double d11, int i10) {
        int i11;
        double d12;
        int i12;
        double d13;
        boolean z10;
        double d14;
        int i13;
        double d15;
        boolean z11;
        boolean z12;
        int i14;
        char c10;
        double d16;
        double d17;
        int i15;
        int i16;
        double d18;
        char c11;
        double d19;
        int i17;
        int i18;
        double d20;
        double[] dArr = new double[i10];
        int i19 = (int) d10;
        int i20 = 0;
        int i21 = 1;
        if (i10 <= 0 || d10 < 0.0d || d10 > X_MAX || d11 < 0.0d || d11 >= 1.0d) {
            i11 = i10;
            if (i11 > 0) {
                dArr[0] = 0.0d;
            }
            i20 = FastMath.min(i11, 0) - 1;
        } else {
            for (int i22 = 0; i22 < i10; i22++) {
                dArr[i22] = 0.0d;
            }
            double d21 = ENMTEN;
            if (d10 < 1.0E-4d) {
                double d22 = d11 + 1.0d;
                double d23 = d10 > ENMTEN ? 0.5d * d10 : 0.0d;
                double pow = d11 != 0.0d ? FastMath.pow(d23, d11) / (d11 * Gamma.gamma(d11)) : 1.0d;
                double d24 = d10 + 1.0d > 1.0d ? (-d23) * d23 : 0.0d;
                double d25 = pow + ((pow * d24) / d22);
                dArr[0] = d25;
                if (d10 != 0.0d) {
                    d20 = 0.0d;
                } else {
                    d20 = 0.0d;
                }
                i20 = i10;
                if (i10 != 1) {
                    if (d10 <= d20) {
                        while (i21 < i10) {
                            dArr[i21] = d20;
                            i21++;
                        }
                    } else {
                        double d26 = d24 != d20 ? ENMTEN / d24 : 1.78E-307d / d10;
                        while (i21 < i10) {
                            double d27 = pow / d22;
                            d22 += 1.0d;
                            double d28 = d27 * d23;
                            pow = d28 <= d26 * d22 ? 0.0d : d28;
                            double d29 = pow + ((pow * d24) / d22);
                            dArr[i21] = d29;
                            if (d29 == 0.0d && i20 > i21) {
                                i20 = i21;
                            }
                            i21++;
                        }
                    }
                }
                i11 = i10;
            } else if (d10 <= 25.0d || i10 > i19 + 1) {
                int i23 = i19 + 1;
                double d30 = (i23 + d11) * 2.0d;
                double d31 = d30 / d10;
                if (i10 - i19 >= 3) {
                    int i24 = i19 + 2;
                    int i25 = i10 - 1;
                    double d32 = 2.0d;
                    double d33 = (i19 + 1 + d11) * 2.0d;
                    int i26 = i23;
                    double d34 = d31;
                    double d35 = 1.0d;
                    int i27 = i24;
                    while (true) {
                        if (i27 > i25) {
                            i17 = i10;
                            i23 = i25;
                            d14 = d35;
                            d30 = d33;
                            d13 = 2.0E16d;
                            d31 = d34;
                            z10 = false;
                            break;
                        }
                        d33 += d32;
                        double d36 = ((d33 * d34) / d10) - d35;
                        if (d36 > 1.0E292d) {
                            double d37 = d36 / ENTEN;
                            double d38 = d34 / ENTEN;
                            int i28 = i27 + 1;
                            d14 = d37;
                            double d39 = d38;
                            while (true) {
                                int i29 = i27 + 1;
                                d33 += 2.0d;
                                double d40 = ((d33 * d14) / d10) - d39;
                                if (d40 > 1.0d) {
                                    break;
                                }
                                i27 = i29;
                                d39 = d14;
                                d14 = d40;
                            }
                            double d41 = d33 / d10;
                            double d42 = ((d39 * d14) * (0.5d - (0.5d / (d41 * d41)))) / ENSIG;
                            double d43 = ENTEN * d14;
                            double d44 = d33 - 2.0d;
                            i17 = FastMath.min(i10, i27);
                            while (i28 <= i17) {
                                double d45 = ((d44 * d37) / d10) - d38;
                                if (d45 * d37 > d42) {
                                    break;
                                }
                                i28++;
                                d38 = d37;
                                d37 = d45;
                            }
                            i26 = i27;
                            d31 = d43;
                            d30 = d44;
                            d13 = d42;
                            z10 = true;
                            i23 = i17;
                        } else {
                            d35 = d34;
                            d34 = d36;
                            d32 = 2.0d;
                            int i30 = i27;
                            i27++;
                            i26 = i30;
                        }
                    }
                    if (z10) {
                        i18 = i17;
                        d12 = 2.0d;
                        i23 = i26;
                    } else {
                        d12 = 2.0d;
                        d30 = (i23 + d11) * 2.0d;
                        i18 = i17;
                        d13 = FastMath.max(d13, FastMath.sqrt(ENSIG * d14) * FastMath.sqrt(d31 * 2.0d));
                    }
                    i12 = i18;
                } else {
                    d12 = 2.0d;
                    i12 = i10;
                    d13 = 2.0E16d;
                    z10 = false;
                    d14 = 1.0d;
                }
                if (!z10) {
                    while (true) {
                        i23++;
                        d30 += d12;
                        d19 = ((d30 * d31) / d10) - d14;
                        if (d19 >= d13) {
                            break;
                        }
                        d14 = d31;
                        d31 = d19;
                    }
                    d31 = d19;
                }
                int i31 = i23 + 1;
                double d46 = d30 + d12;
                double d47 = 1.0d / d31;
                int i32 = i31 / 2;
                int i33 = (i31 * 2) - (i32 * 4);
                int i34 = i12;
                double d48 = i32;
                double d49 = (d48 - 1.0d) + d11;
                double d50 = (d48 * 2.0d) + d11;
                if (i33 != 0) {
                    d15 = ((d49 * d47) * d50) / d48;
                    i13 = i33;
                } else {
                    i13 = i33;
                    d15 = 0.0d;
                }
                int i35 = i31 - i10;
                double d51 = d47;
                int i36 = 1;
                double d52 = 0.0d;
                while (true) {
                    if (i36 > i35) {
                        break;
                    }
                    i31--;
                    d46 -= 2.0d;
                    double d53 = ((d46 * d51) / d10) - d52;
                    i13 = 2 - i13;
                    if (i13 != 0) {
                        d48 -= 1.0d;
                        double d54 = (d48 * 2.0d) + d11;
                        if (i31 == 1) {
                            d52 = d51;
                            d51 = d53;
                            break;
                        }
                        double d55 = (d48 - 1.0d) + d11;
                        if (d55 == 0.0d) {
                            d55 = 1.0d;
                        }
                        d15 = ((d15 + (d54 * d53)) * d55) / d48;
                    }
                    i36++;
                    d52 = d51;
                    d51 = d53;
                }
                dArr[i31 - 1] = d51;
                if (i35 >= 0) {
                    if (i10 <= 1) {
                        if (d11 + 1.0d == 1.0d) {
                            c11 = 0;
                            d18 = 1.0d;
                        } else {
                            d18 = d11;
                            c11 = 0;
                        }
                        d15 += dArr[c11] * d18;
                        z11 = true;
                        z12 = false;
                        if (!z11 && !z12 && i31 - 2 != 0) {
                            i16 = 1;
                            while (i16 <= i15) {
                                int i37 = i31 - 1;
                                d46 -= 2.0d;
                                double d56 = ((dArr[i37] * d46) / d10) - dArr[i31];
                                dArr[i31 - 2] = d56;
                                i13 = 2 - i13;
                                if (i13 != 0) {
                                    d48 -= 1.0d;
                                    double d57 = (d48 * 2.0d) + d11;
                                    double d58 = (d48 - 1.0d) + d11;
                                    if (d58 == 0.0d) {
                                        d58 = 1.0d;
                                    }
                                    d15 = ((d15 + (d56 * d57)) * d58) / d48;
                                }
                                i16++;
                                i31 = i37;
                            }
                        }
                        if (!z11) {
                            if (z12) {
                                c10 = 0;
                                d16 = 1.0d;
                                d17 = 2.0d;
                            } else {
                                d16 = 1.0d;
                                d17 = 2.0d;
                                c10 = 0;
                                dArr[0] = ((((d11 + 1.0d) * 2.0d) * dArr[1]) / d10) - dArr[2];
                            }
                            double d59 = ((d48 - d16) * d17) + d11;
                            if (d59 == 0.0d) {
                                d59 = 1.0d;
                            }
                            d15 += dArr[c10] * d59;
                        }
                        if (FastMath.abs(d11) > 1.0E-16d) {
                            d15 *= Gamma.gamma(d11) * FastMath.pow(d10 * 0.5d, -d11);
                        }
                        if (d15 > 1.0d) {
                            d21 = ENMTEN * d15;
                        }
                        i11 = i10;
                        for (i14 = 0; i14 < i11; i14++) {
                            if (FastMath.abs(dArr[i14]) < d21) {
                                dArr[i14] = 0.0d;
                            }
                            dArr[i14] = dArr[i14] / d15;
                        }
                        i20 = i34;
                    } else {
                        int i38 = i31 - 1;
                        d46 -= 2.0d;
                        double d60 = ((d51 * d46) / d10) - d52;
                        dArr[i31 - 2] = d60;
                        if (i38 == 1) {
                            i31 = i38;
                            z11 = false;
                            z12 = true;
                            if (!z11) {
                                i16 = 1;
                                while (i16 <= i15) {
                                }
                            }
                            if (!z11) {
                            }
                            if (FastMath.abs(d11) > 1.0E-16d) {
                            }
                            if (d15 > 1.0d) {
                            }
                            i11 = i10;
                            while (i14 < i11) {
                            }
                            i20 = i34;
                        } else {
                            i13 = 2 - i13;
                            if (i13 != 0) {
                                d48 -= 1.0d;
                                double d61 = (d48 * 2.0d) + d11;
                                double d62 = (d48 - 1.0d) + d11;
                                if (d62 == 0.0d) {
                                    d62 = 1.0d;
                                }
                                d15 = ((d15 + (d60 * d61)) * d62) / d48;
                            }
                            i31 = i38;
                        }
                    }
                }
                z11 = false;
                z12 = false;
                if (!z11) {
                }
                if (!z11) {
                }
                if (FastMath.abs(d11) > 1.0E-16d) {
                }
                if (d15 > 1.0d) {
                }
                i11 = i10;
                while (i14 < i11) {
                }
                i20 = i34;
            } else {
                double sqrt = FastMath.sqrt(PI2 / d10);
                double d63 = 0.125d / d10;
                double d64 = d63 * d63;
                int i39 = d10 >= 130.0d ? 4 : d10 >= 35.0d ? 8 : 11;
                double d65 = i39 * 4.0d;
                double d66 = (int) ((d10 / 6.283185307179586d) + 0.5d);
                double d67 = ((d10 - (TOWPI1 * d66)) - (d66 * TWOPI2)) - ((d11 + 0.5d) / PI2);
                double sin = FastMath.sin(d67);
                double cos = FastMath.cos(d67);
                double d68 = d11 * 2.0d;
                double d69 = d68;
                int i40 = 1;
                int i41 = 2;
                while (i40 <= i41) {
                    double d70 = d65 - 1.0d;
                    double d71 = (d70 - d69) * (d70 + d69) * d64 * 0.5d;
                    double d72 = d65 - 3.0d;
                    double d73 = (d69 - d72) * (d69 + d72);
                    double[] dArr2 = FACT;
                    int i42 = i39 * 2;
                    double d74 = (d71 * d73) / dArr2[i42];
                    double d75 = d65 + 1.0d;
                    double d76 = (d71 * ((d69 - d75) * (d69 + d75))) / dArr2[i42 + 1];
                    double d77 = d65;
                    int i43 = 2;
                    while (i43 <= i39) {
                        d77 -= 4.0d;
                        double d78 = d77 - 1.0d;
                        double d79 = (d78 - d69) * (d78 + d69);
                        double d80 = d77 - 3.0d;
                        double d81 = (d69 + d80) * (d69 - d80);
                        double[] dArr3 = FACT;
                        d74 = (d74 + (1.0d / dArr3[i42 - 2])) * d79 * d81 * d64;
                        d76 = (d76 + (1.0d / dArr3[i42 - 1])) * d79 * d73 * d64;
                        i42 -= 2;
                        i43++;
                        d73 = d81;
                    }
                    dArr[i40 - 1] = (((d74 + 1.0d) * cos) - ((((d76 + 1.0d) * ((d69 * d69) - 1.0d)) * d63) * sin)) * sqrt;
                    if (i10 == 1) {
                        return new BesselJResult(MathArrays.copyOf(dArr, i10), i10);
                    }
                    d69 += 2.0d;
                    i40++;
                    i41 = 2;
                    double d82 = sin;
                    sin = -cos;
                    cos = d82;
                }
                if (i10 > i41) {
                    double d83 = d68 + 2.0d;
                    for (int i44 = 2; i44 < i10; i44++) {
                        dArr[i44] = ((dArr[i44 - 1] * d83) / d10) - dArr[i44 - 2];
                        d83 += 2.0d;
                    }
                }
                i11 = i10;
                i20 = i11;
            }
        }
        return new BesselJResult(MathArrays.copyOf(dArr, i11), i20);
    }

    @Override
    public double value(double d10) throws MathIllegalArgumentException, ConvergenceException {
        return value(this.order, d10);
    }

    public static double value(double d10, double d11) throws MathIllegalArgumentException, ConvergenceException {
        int i10 = (int) d10;
        int i11 = i10 + 1;
        BesselJResult rjBesl = rjBesl(d11, d10 - i10, i11);
        if (rjBesl.nVals >= i11) {
            return rjBesl.vals[i10];
        }
        if (rjBesl.nVals < 0) {
            throw new MathIllegalArgumentException(LocalizedFormats.BESSEL_FUNCTION_BAD_ARGUMENT, Double.valueOf(d10), Double.valueOf(d11));
        }
        if (FastMath.abs(rjBesl.vals[rjBesl.nVals - 1]) < 1.0E-100d) {
            return rjBesl.vals[i10];
        }
        throw new ConvergenceException(LocalizedFormats.BESSEL_FUNCTION_FAILED_CONVERGENCE, Double.valueOf(d10), Double.valueOf(d11));
    }
}
