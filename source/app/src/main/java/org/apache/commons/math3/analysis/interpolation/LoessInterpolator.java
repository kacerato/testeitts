package org.apache.commons.math3.analysis.interpolation;

import java.io.Serializable;
import java.util.Arrays;
import org.apache.commons.math3.analysis.polynomials.PolynomialSplineFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NonMonotonicSequenceException;
import org.apache.commons.math3.exception.NotFiniteNumberException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.MathUtils;

public class LoessInterpolator implements UnivariateInterpolator, Serializable {
    public static final double DEFAULT_ACCURACY = 1.0E-12d;
    public static final double DEFAULT_BANDWIDTH = 0.3d;
    public static final int DEFAULT_ROBUSTNESS_ITERS = 2;
    private static final long serialVersionUID = 5204927143605193821L;
    private final double accuracy;
    private final double bandwidth;
    private final int robustnessIters;

    public LoessInterpolator() {
        this.bandwidth = 0.3d;
        this.robustnessIters = 2;
        this.accuracy = 1.0E-12d;
    }

    private static void checkAllFiniteReal(double[] dArr) {
        for (double d10 : dArr) {
            MathUtils.checkFinite(d10);
        }
    }

    private static int nextNonzero(double[] dArr, int i10) {
        do {
            i10++;
            if (i10 >= dArr.length) {
                break;
            }
        } while (dArr[i10] == 0.0d);
        return i10;
    }

    private static double tricube(double d10) {
        double abs = FastMath.abs(d10);
        if (abs >= 1.0d) {
            return 0.0d;
        }
        double d11 = 1.0d - ((abs * abs) * abs);
        return d11 * d11 * d11;
    }

    private static void updateBandwidthInterval(double[] dArr, double[] dArr2, int i10, int[] iArr) {
        int i11 = iArr[0];
        int nextNonzero = nextNonzero(dArr2, iArr[1]);
        if (nextNonzero < dArr.length) {
            double d10 = dArr[nextNonzero];
            double d11 = dArr[i10];
            if (d10 - d11 < d11 - dArr[i11]) {
                iArr[0] = nextNonzero(dArr2, iArr[0]);
                iArr[1] = nextNonzero;
            }
        }
    }

    public final double[] smooth(double[] dArr, double[] dArr2, double[] dArr3) throws NonMonotonicSequenceException, DimensionMismatchException, NoDataException, NotFiniteNumberException, NumberIsTooSmallException {
        int i10 = 0;
        int i11 = 1;
        if (dArr.length == dArr2.length) {
            int length = dArr.length;
            if (length != 0) {
                checkAllFiniteReal(dArr);
                checkAllFiniteReal(dArr2);
                checkAllFiniteReal(dArr3);
                MathArrays.checkOrder(dArr);
                if (length == 1) {
                    return new double[]{dArr2[0]};
                }
                if (length == 2) {
                    return new double[]{dArr2[0], dArr2[1]};
                }
                int i12 = (int) (this.bandwidth * length);
                if (i12 >= 2) {
                    double[] dArr4 = new double[length];
                    double[] dArr5 = new double[length];
                    double[] dArr6 = new double[length];
                    double[] dArr7 = new double[length];
                    Arrays.fill(dArr7, 1.0d);
                    int i13 = 0;
                    while (i13 <= this.robustnessIters) {
                        int[] iArr = {i10, i12 - 1};
                        int i14 = i10;
                        while (true) {
                            double d10 = 0.0d;
                            if (i14 >= length) {
                                break;
                            }
                            double d11 = dArr[i14];
                            if (i14 > 0) {
                                updateBandwidthInterval(dArr, dArr3, i14, iArr);
                            }
                            int i15 = iArr[i10];
                            int i16 = iArr[i11];
                            double d12 = dArr[i14];
                            double abs = FastMath.abs(1.0d / (dArr[d12 - dArr[i15] > dArr[i16] - d12 ? i15 : i16] - d11));
                            double d13 = 0.0d;
                            double d14 = 0.0d;
                            double d15 = 0.0d;
                            double d16 = 0.0d;
                            double d17 = 0.0d;
                            while (i15 <= i16) {
                                double d18 = dArr[i15];
                                double d19 = dArr2[i15];
                                double tricube = tricube((i15 < i14 ? d11 - d18 : d18 - d11) * abs) * dArr7[i15] * dArr3[i15];
                                double d20 = d18 * tricube;
                                d14 += tricube;
                                d13 += d20;
                                d17 += d18 * d20;
                                d15 += tricube * d19;
                                d16 += d19 * d20;
                                i15 += i11;
                            }
                            double d21 = d13 / d14;
                            double d22 = d15 / d14;
                            double d23 = d16 / d14;
                            double d24 = (d17 / d14) - (d21 * d21);
                            int i17 = length;
                            if (FastMath.sqrt(FastMath.abs(d24)) >= this.accuracy) {
                                d10 = (d23 - (d21 * d22)) / d24;
                            }
                            double d25 = (d10 * d11) + (d22 - (d21 * d10));
                            dArr4[i14] = d25;
                            dArr5[i14] = FastMath.abs(dArr2[i14] - d25);
                            i14++;
                            length = i17;
                            i10 = 0;
                            i11 = 1;
                        }
                        int i18 = length;
                        if (i13 == this.robustnessIters) {
                            break;
                        }
                        System.arraycopy(dArr5, 0, dArr6, 0, i18);
                        Arrays.sort(dArr6);
                        double d26 = dArr6[i18 / 2];
                        if (FastMath.abs(d26) < this.accuracy) {
                            break;
                        }
                        for (int i19 = 0; i19 < i18; i19++) {
                            double d27 = dArr5[i19] / (6.0d * d26);
                            if (d27 >= 1.0d) {
                                dArr7[i19] = 0.0d;
                            } else {
                                double d28 = 1.0d - (d27 * d27);
                                dArr7[i19] = d28 * d28;
                            }
                        }
                        i11 = 1;
                        i13++;
                        length = i18;
                        i10 = 0;
                    }
                    return dArr4;
                }
                throw new NumberIsTooSmallException(LocalizedFormats.BANDWIDTH, Integer.valueOf(i12), 2, true);
            }
            throw new NoDataException();
        }
        throw new DimensionMismatchException(dArr.length, dArr2.length);
    }

    @Override
    public final PolynomialSplineFunction interpolate(double[] dArr, double[] dArr2) throws NonMonotonicSequenceException, DimensionMismatchException, NoDataException, NotFiniteNumberException, NumberIsTooSmallException {
        return new SplineInterpolator().interpolate(dArr, smooth(dArr, dArr2));
    }

    public LoessInterpolator(double d10, int i10) {
        this(d10, i10, 1.0E-12d);
    }

    public LoessInterpolator(double d10, int i10, double d11) throws OutOfRangeException, NotPositiveException {
        if (d10 >= 0.0d && d10 <= 1.0d) {
            this.bandwidth = d10;
            if (i10 >= 0) {
                this.robustnessIters = i10;
                this.accuracy = d11;
                return;
            }
            throw new NotPositiveException(LocalizedFormats.ROBUSTNESS_ITERATIONS, Integer.valueOf(i10));
        }
        throw new OutOfRangeException(LocalizedFormats.BANDWIDTH, Double.valueOf(d10), 0, 1);
    }

    public final double[] smooth(double[] dArr, double[] dArr2) throws NonMonotonicSequenceException, DimensionMismatchException, NoDataException, NotFiniteNumberException, NumberIsTooSmallException {
        if (dArr.length == dArr2.length) {
            double[] dArr3 = new double[dArr.length];
            Arrays.fill(dArr3, 1.0d);
            return smooth(dArr, dArr2, dArr3);
        }
        throw new DimensionMismatchException(dArr.length, dArr2.length);
    }
}
