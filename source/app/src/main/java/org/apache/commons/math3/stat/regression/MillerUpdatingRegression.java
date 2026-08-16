package org.apache.commons.math3.stat.regression;

import java.util.Arrays;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.Precision;

public class MillerUpdatingRegression implements UpdatingMultipleLinearRegression {

    private final double[] f100355d;
    private final double epsilon;
    private boolean hasIntercept;
    private final boolean[] lindep;
    private long nobs;
    private final int nvars;

    private final double[] f100356r;
    private final double[] rhs;
    private final double[] rss;
    private boolean rss_set;
    private double sserr;
    private double sumsqy;
    private double sumy;
    private final double[] tol;
    private boolean tol_set;
    private final int[] vorder;
    private final double[] work_sing;
    private final double[] work_tolset;
    private final double[] x_sing;

    private MillerUpdatingRegression() {
        this(-1, false, Double.NaN);
    }

    private double[] cov(int i10) {
        double d10;
        if (this.nobs <= i10) {
            return null;
        }
        int i11 = 0;
        double d11 = 0.0d;
        int i12 = 0;
        while (true) {
            d10 = 1.0d;
            if (i12 >= i10) {
                break;
            }
            if (!this.lindep[i12]) {
                d11 += 1.0d;
            }
            i12++;
        }
        int i13 = i10 - 1;
        double d12 = this.rss[i13] / (this.nobs - d11);
        double[] dArr = new double[(i10 * i13) / 2];
        inverse(dArr, i10);
        double[] dArr2 = new double[((i10 + 1) * i10) / 2];
        Arrays.fill(dArr2, Double.NaN);
        int i14 = 0;
        while (i11 < i10) {
            if (!this.lindep[i11]) {
                int i15 = i11;
                int i16 = i14;
                while (i15 < i10) {
                    if (this.lindep[i15]) {
                        i16 += (i10 - i15) - 1;
                    } else {
                        int i17 = (i14 + i15) - i11;
                        double d13 = i11 == i15 ? d10 / this.f100355d[i15] : dArr[i17 - 1] / this.f100355d[i15];
                        int i18 = i15 + 1;
                        for (int i19 = i18; i19 < i10; i19++) {
                            if (!this.lindep[i19]) {
                                d13 += (dArr[i17] * dArr[i16]) / this.f100355d[i19];
                            }
                            i17++;
                            i16++;
                        }
                        dArr2[((i18 * i15) / 2) + i11] = d13 * d12;
                    }
                    i15++;
                    d10 = 1.0d;
                }
            }
            i14 += (i10 - i11) - 1;
            i11++;
            d10 = 1.0d;
        }
        return dArr2;
    }

    private void include(double[] dArr, double d10, double d11) {
        double d12;
        this.rss_set = false;
        this.sumy = smartAdd(d11, this.sumy);
        this.sumsqy = smartAdd(this.sumsqy, d11 * d11);
        int i10 = 0;
        double d13 = d11;
        double d14 = d10;
        for (int i11 = 0; i11 < dArr.length; i11++) {
            double d15 = 0.0d;
            if (d14 == 0.0d) {
                return;
            }
            double d16 = dArr[i11];
            if (d16 == 0.0d) {
                i10 += (this.nvars - i11) - 1;
            } else {
                double d17 = this.f100355d[i11];
                double d18 = d14 * d16;
                if (d17 != 0.0d) {
                    double d19 = d18 * d16;
                    d12 = smartAdd(d17, d19);
                    if (FastMath.abs(d19 / d17) > Precision.EPSILON) {
                        d14 = (d14 * d17) / d12;
                    }
                    d15 = d14;
                } else {
                    d12 = d18 * d16;
                }
                this.f100355d[i11] = d12;
                int i12 = i11 + 1;
                while (i12 < this.nvars) {
                    double d20 = d15;
                    double d21 = dArr[i12];
                    double d22 = d13;
                    dArr[i12] = smartAdd(d21, (-d16) * this.f100356r[i10]);
                    if (d17 != 0.0d) {
                        double[] dArr2 = this.f100356r;
                        dArr2[i10] = smartAdd(dArr2[i10] * d17, d21 * d18) / d12;
                    } else {
                        this.f100356r[i10] = d21 / d16;
                    }
                    i10++;
                    i12++;
                    d15 = d20;
                    d13 = d22;
                }
                double d23 = d13;
                double d24 = d15;
                double smartAdd = smartAdd(d23, (-d16) * this.rhs[i11]);
                if (d17 != 0.0d) {
                    double[] dArr3 = this.rhs;
                    dArr3[i11] = smartAdd(d17 * dArr3[i11], d23 * d18) / d12;
                } else {
                    this.rhs[i11] = d23 / d16;
                }
                d13 = smartAdd;
                d14 = d24;
            }
        }
        this.sserr = smartAdd(this.sserr, d14 * d13 * d13);
    }

    private void inverse(double[] dArr, int i10) {
        int i11 = i10 - 1;
        int i12 = ((i10 * i11) / 2) - 1;
        Arrays.fill(dArr, Double.NaN);
        while (i11 > 0) {
            if (this.lindep[i11]) {
                i12 -= i10 - i11;
            } else {
                int i13 = this.nvars;
                int i14 = ((i11 - 1) * ((i13 + i13) - i11)) / 2;
                for (int i15 = i10; i15 > i11; i15--) {
                    double d10 = 0.0d;
                    int i16 = i12;
                    int i17 = i14;
                    for (int i18 = i11; i18 < i15 - 1; i18++) {
                        i16 += (i10 - i18) - 1;
                        if (!this.lindep[i18]) {
                            d10 += (-this.f100356r[i17]) * dArr[i16];
                        }
                        i17++;
                    }
                    dArr[i12] = d10 - this.f100356r[i17];
                    i12--;
                }
            }
            i11--;
        }
    }

    private double[] regcf(int i10) throws ModelSpecificationException {
        if (i10 < 1) {
            throw new ModelSpecificationException(LocalizedFormats.NO_REGRESSORS, new Object[0]);
        }
        if (i10 > this.nvars) {
            throw new ModelSpecificationException(LocalizedFormats.TOO_MANY_REGRESSORS, Integer.valueOf(i10), Integer.valueOf(this.nvars));
        }
        if (!this.tol_set) {
            tolset();
        }
        double[] dArr = new double[i10];
        boolean z10 = false;
        for (int i11 = i10 - 1; i11 > -1; i11--) {
            if (FastMath.sqrt(this.f100355d[i11]) < this.tol[i11]) {
                dArr[i11] = 0.0d;
                this.f100355d[i11] = 0.0d;
                z10 = true;
            } else {
                dArr[i11] = this.rhs[i11];
                int i12 = this.nvars;
                int i13 = ((((i12 + i12) - i11) - 1) * i11) / 2;
                for (int i14 = i11 + 1; i14 < i10; i14++) {
                    dArr[i11] = smartAdd(dArr[i11], (-this.f100356r[i13]) * dArr[i14]);
                    i13++;
                }
            }
        }
        if (z10) {
            for (int i15 = 0; i15 < i10; i15++) {
                if (this.lindep[i15]) {
                    dArr[i15] = Double.NaN;
                }
            }
        }
        return dArr;
    }

    private int reorderRegressors(int[] iArr, int i10) {
        if (iArr.length < 1 || iArr.length > (this.nvars + 1) - i10) {
            return -1;
        }
        int i11 = i10;
        int i12 = i11;
        while (i11 < this.nvars) {
            int i13 = this.vorder[i11];
            int i14 = 0;
            while (true) {
                if (i14 >= iArr.length) {
                    break;
                }
                if (i13 != iArr[i14] || i11 <= i12) {
                    i14++;
                } else {
                    vmove(i11, i12);
                    i12++;
                    if (i12 >= iArr.length + i10) {
                        return 0;
                    }
                }
            }
            i11++;
        }
        return 0;
    }

    private void singcheck() {
        for (int i10 = 0; i10 < this.nvars; i10++) {
            this.work_sing[i10] = FastMath.sqrt(this.f100355d[i10]);
        }
        for (int i11 = 0; i11 < this.nvars; i11++) {
            double d10 = this.tol[i11];
            int i12 = i11 - 1;
            int i13 = i12;
            for (int i14 = 0; i14 < i12; i14++) {
                if (FastMath.abs(this.f100356r[i13]) * this.work_sing[i14] < d10) {
                    this.f100356r[i13] = 0.0d;
                }
                i13 += (this.nvars - i14) - 2;
            }
            boolean[] zArr = this.lindep;
            zArr[i11] = false;
            if (this.work_sing[i11] < d10) {
                zArr[i11] = true;
                if (i11 < this.nvars - 1) {
                    Arrays.fill(this.x_sing, 0.0d);
                    int i15 = this.nvars;
                    int i16 = ((((i15 + i15) - i11) - 1) * i11) / 2;
                    int i17 = i11 + 1;
                    while (i17 < this.nvars) {
                        double[] dArr = this.x_sing;
                        double[] dArr2 = this.f100356r;
                        dArr[i17] = dArr2[i16];
                        dArr2[i16] = 0.0d;
                        i17++;
                        i16++;
                    }
                    double[] dArr3 = this.rhs;
                    double d11 = dArr3[i11];
                    double[] dArr4 = this.f100355d;
                    double d12 = dArr4[i11];
                    dArr4[i11] = 0.0d;
                    dArr3[i11] = 0.0d;
                    include(this.x_sing, d12, d11);
                } else {
                    double d13 = this.sserr;
                    double d14 = this.f100355d[i11];
                    double d15 = this.rhs[i11];
                    this.sserr = d13 + (d14 * d15 * d15);
                }
            }
        }
    }

    private double smartAdd(double d10, double d11) {
        double abs = FastMath.abs(d10);
        double abs2 = FastMath.abs(d11);
        return abs > abs2 ? abs2 > abs * Precision.EPSILON ? d10 + d11 : d10 : abs > abs2 * Precision.EPSILON ? d10 + d11 : d11;
    }

    private void ss() {
        double d10 = this.sserr;
        double[] dArr = this.rss;
        int i10 = this.nvars;
        dArr[i10 - 1] = d10;
        for (int i11 = i10 - 1; i11 > 0; i11--) {
            double d11 = this.f100355d[i11];
            double d12 = this.rhs[i11];
            d10 += d11 * d12 * d12;
            this.rss[i11 - 1] = d10;
        }
        this.rss_set = true;
    }

    private void tolset() {
        double d10 = this.epsilon;
        for (int i10 = 0; i10 < this.nvars; i10++) {
            this.work_tolset[i10] = FastMath.sqrt(this.f100355d[i10]);
        }
        this.tol[0] = this.work_tolset[0] * d10;
        for (int i11 = 1; i11 < this.nvars; i11++) {
            int i12 = i11 - 1;
            double d11 = this.work_tolset[i11];
            for (int i13 = 0; i13 < i11; i13++) {
                d11 += FastMath.abs(this.f100356r[i12]) * this.work_tolset[i13];
                i12 += (this.nvars - i13) - 2;
            }
            this.tol[i11] = d11 * d10;
        }
        this.tol_set = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0127  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void vmove(int i10, int i11) {
        int i12;
        int i13;
        int i14;
        boolean z10;
        int i15;
        int i16 = i10;
        if (i16 == i11) {
            return;
        }
        if (!this.rss_set) {
            ss();
        }
        int i17 = 1;
        if (i16 < i11) {
            i13 = i11 - i16;
            i12 = 1;
        } else {
            int i18 = i16 - i11;
            i12 = -1;
            i16--;
            i13 = i18;
        }
        int i19 = 0;
        boolean z11 = false;
        while (i19 < i13) {
            int i20 = this.nvars;
            int i21 = ((((i20 + i20) - i16) - i17) * i16) / 2;
            int i22 = ((i20 + i21) - i16) - i17;
            int i23 = i16 + 1;
            double[] dArr = this.f100355d;
            double d10 = dArr[i16];
            double d11 = dArr[i23];
            int i24 = i19;
            double d12 = this.epsilon;
            if (d10 > d12 || d11 > d12) {
                double d13 = this.f100356r[i21];
                if (FastMath.abs(d13) * FastMath.sqrt(d10) < this.tol[i23]) {
                    d13 = 0.0d;
                }
                if (d10 >= this.epsilon) {
                    double abs = FastMath.abs(d13);
                    i14 = i13;
                    double d14 = this.epsilon;
                    if (abs >= d14) {
                        if (d11 < d14) {
                            this.f100355d[i16] = d10 * d13 * d13;
                            this.f100356r[i21] = 1.0d / d13;
                            for (int i25 = i21 + 1; i25 < ((this.nvars + i21) - i16) - 1; i25++) {
                                double[] dArr2 = this.f100356r;
                                dArr2[i25] = dArr2[i25] / d13;
                            }
                            double[] dArr3 = this.rhs;
                            dArr3[i16] = dArr3[i16] / d13;
                            z11 = true;
                        }
                        if (z11) {
                            double d15 = d10 * d13;
                            double d16 = (d15 * d13) + d11;
                            double d17 = d11 / d16;
                            double d18 = d15 / d16;
                            z10 = z11;
                            double[] dArr4 = this.f100355d;
                            dArr4[i16] = d16;
                            dArr4[i23] = d10 * d17;
                            this.f100356r[i21] = d18;
                            for (int i26 = i16 + 2; i26 < this.nvars; i26++) {
                                i21++;
                                double[] dArr5 = this.f100356r;
                                double d19 = dArr5[i21];
                                dArr5[i21] = (dArr5[i22] * d17) + (d18 * d19);
                                dArr5[i22] = d19 - (dArr5[i22] * d13);
                                i22++;
                            }
                            i15 = 1;
                            double[] dArr6 = this.rhs;
                            double d20 = dArr6[i16];
                            dArr6[i16] = (d17 * dArr6[i23]) + (d18 * d20);
                            dArr6[i23] = d20 - (d13 * dArr6[i23]);
                        } else {
                            z10 = z11;
                            i15 = 1;
                        }
                        z11 = z10;
                    }
                } else {
                    i14 = i13;
                }
                double[] dArr7 = this.f100355d;
                dArr7[i16] = d11;
                dArr7[i23] = d10;
                this.f100356r[i21] = 0.0d;
                for (int i27 = i16 + 2; i27 < this.nvars; i27++) {
                    i21++;
                    double[] dArr8 = this.f100356r;
                    double d21 = dArr8[i21];
                    dArr8[i21] = dArr8[i22];
                    dArr8[i22] = d21;
                    i22++;
                }
                double[] dArr9 = this.rhs;
                d13 = dArr9[i16];
                dArr9[i16] = dArr9[i23];
                dArr9[i23] = d13;
                z11 = true;
                if (z11) {
                }
                z11 = z10;
            } else {
                i15 = i17;
                i14 = i13;
            }
            if (i16 > 0) {
                int i28 = i16;
                for (int i29 = 0; i29 < i16; i29++) {
                    double[] dArr10 = this.f100356r;
                    double d22 = dArr10[i28];
                    int i30 = i28 - 1;
                    dArr10[i28] = dArr10[i30];
                    dArr10[i30] = d22;
                    i28 += (this.nvars - i29) - 2;
                }
            }
            int[] iArr = this.vorder;
            int i31 = iArr[i16];
            iArr[i16] = iArr[i23];
            iArr[i23] = i31;
            double[] dArr11 = this.tol;
            double d23 = dArr11[i16];
            dArr11[i16] = dArr11[i23];
            dArr11[i23] = d23;
            double[] dArr12 = this.rss;
            double d24 = dArr12[i23];
            double d25 = this.f100355d[i23];
            double d26 = this.rhs[i23];
            dArr12[i16] = d24 + (d25 * d26 * d26);
            i16 += i12;
            i13 = i14;
            int i32 = i15;
            i19 = i24 + 1;
            i17 = i32;
        }
    }

    @Override
    public void addObservation(double[] dArr, double d10) throws ModelSpecificationException {
        boolean z10 = this.hasIntercept;
        if ((!z10 && dArr.length != this.nvars) || (z10 && dArr.length + 1 != this.nvars)) {
            throw new ModelSpecificationException(LocalizedFormats.INVALID_REGRESSION_OBSERVATION, Integer.valueOf(dArr.length), Integer.valueOf(this.nvars));
        }
        if (z10) {
            double[] dArr2 = new double[dArr.length + 1];
            System.arraycopy(dArr, 0, dArr2, 1, dArr.length);
            dArr2[0] = 1.0d;
            include(dArr2, 1.0d, d10);
        } else {
            include(MathArrays.copyOf(dArr, dArr.length), 1.0d, d10);
        }
        this.nobs++;
    }

    @Override
    public void addObservations(double[][] dArr, double[] dArr2) throws ModelSpecificationException {
        if (dArr == null || dArr2 == null || dArr.length != dArr2.length) {
            throw new ModelSpecificationException(LocalizedFormats.DIMENSIONS_MISMATCH_SIMPLE, Integer.valueOf(dArr == null ? 0 : dArr.length), Integer.valueOf(dArr2 != null ? dArr2.length : 0));
        }
        if (dArr.length == 0) {
            throw new ModelSpecificationException(LocalizedFormats.NO_DATA, new Object[0]);
        }
        if (dArr[0].length + 1 > dArr.length) {
            throw new ModelSpecificationException(LocalizedFormats.NOT_ENOUGH_DATA_FOR_NUMBER_OF_PREDICTORS, Integer.valueOf(dArr.length), Integer.valueOf(dArr[0].length));
        }
        while (r0 < dArr.length) {
            addObservation(dArr[r0], dArr2[r0]);
            r0++;
        }
    }

    @Override
    public void clear() {
        Arrays.fill(this.f100355d, 0.0d);
        Arrays.fill(this.rhs, 0.0d);
        Arrays.fill(this.f100356r, 0.0d);
        Arrays.fill(this.tol, 0.0d);
        Arrays.fill(this.rss, 0.0d);
        Arrays.fill(this.work_tolset, 0.0d);
        Arrays.fill(this.work_sing, 0.0d);
        Arrays.fill(this.x_sing, 0.0d);
        Arrays.fill(this.lindep, false);
        for (int i10 = 0; i10 < this.nvars; i10++) {
            this.vorder[i10] = i10;
        }
        this.nobs = 0L;
        this.sserr = 0.0d;
        this.sumy = 0.0d;
        this.sumsqy = 0.0d;
        this.rss_set = false;
        this.tol_set = false;
    }

    public double getDiagonalOfHatMatrix(double[] dArr) {
        double[] dArr2 = dArr;
        int i10 = this.nvars;
        double[] dArr3 = new double[i10];
        if (dArr2.length > i10) {
            return Double.NaN;
        }
        if (this.hasIntercept) {
            double[] dArr4 = new double[dArr2.length + 1];
            dArr4[0] = 1.0d;
            System.arraycopy(dArr2, 0, dArr4, 1, dArr2.length);
            dArr2 = dArr4;
        }
        double d10 = 0.0d;
        for (int i11 = 0; i11 < dArr2.length; i11++) {
            if (FastMath.sqrt(this.f100355d[i11]) < this.tol[i11]) {
                dArr3[i11] = 0.0d;
            } else {
                int i12 = i11 - 1;
                double d11 = dArr2[i11];
                for (int i13 = 0; i13 < i11; i13++) {
                    d11 = smartAdd(d11, (-dArr3[i13]) * this.f100356r[i12]);
                    i12 += (this.nvars - i13) - 2;
                }
                dArr3[i11] = d11;
                d10 = smartAdd(d10, (d11 * d11) / this.f100355d[i11]);
            }
        }
        return d10;
    }

    @Override
    public long getN() {
        return this.nobs;
    }

    public int[] getOrderOfRegressors() {
        return MathArrays.copyOf(this.vorder);
    }

    public double[] getPartialCorrelations(int i10) {
        int i11 = this.nvars;
        double[] dArr = new double[(((i11 - i10) + 1) * (i11 - i10)) / 2];
        int i12 = -i10;
        int i13 = i10 + 1;
        int i14 = -i13;
        double[] dArr2 = new double[i11 - i10];
        double[] dArr3 = new double[(i11 - i10) - 1];
        int i15 = ((i11 - i10) * ((i11 - i10) - 1)) / 2;
        if (i10 < -1 || i10 >= i11) {
            return null;
        }
        int i16 = (i11 - 1) - i10;
        int length = this.f100356r.length - ((i16 * (i16 + 1)) / 2);
        double d10 = this.f100355d[i10];
        double d11 = 0.0d;
        if (d10 > 0.0d) {
            dArr2[i10 + i12] = 1.0d / FastMath.sqrt(d10);
        }
        while (i13 < this.nvars) {
            int i17 = ((length + i13) - 1) - i10;
            double d12 = this.f100355d[i13];
            for (int i18 = i10; i18 < i13; i18++) {
                double d13 = this.f100355d[i18];
                double d14 = this.f100356r[i17];
                d12 += d13 * d14 * d14;
                i17 += (this.nvars - i18) - 2;
            }
            if (d12 > 0.0d) {
                dArr2[i13 + i12] = 1.0d / FastMath.sqrt(d12);
            } else {
                dArr2[i13 + i12] = 0.0d;
            }
            i13++;
        }
        double d15 = this.sserr;
        for (int i19 = i10; i19 < this.nvars; i19++) {
            double d16 = this.f100355d[i19];
            double d17 = this.rhs[i19];
            d15 += d16 * d17 * d17;
        }
        if (d15 > 0.0d) {
            d15 = 1.0d / FastMath.sqrt(d15);
        }
        int i20 = i10;
        while (i20 < this.nvars) {
            Arrays.fill(dArr3, d11);
            int i21 = ((length + i20) - i10) - 1;
            int i22 = i10;
            double d18 = d11;
            while (i22 < i20) {
                int i23 = i21 + 1;
                int i24 = i20 + 1;
                while (true) {
                    if (i24 < this.nvars) {
                        int i25 = i24 + i14;
                        double d19 = dArr3[i25];
                        int i26 = length;
                        double d20 = this.f100355d[i22];
                        double[] dArr4 = this.f100356r;
                        dArr3[i25] = d19 + (d20 * dArr4[i21] * dArr4[i23]);
                        i23++;
                        i24++;
                        length = i26;
                    }
                }
                d18 += this.f100355d[i22] * this.f100356r[i21] * this.rhs[i22];
                i21 += (r14 - i22) - 2;
                i22++;
                length = length;
            }
            int i27 = length;
            int i28 = i21 + 1;
            int i29 = i20 + 1;
            for (int i30 = i29; i30 < this.nvars; i30++) {
                int i31 = i30 + i14;
                double d21 = dArr3[i31] + (this.f100355d[i20] * this.f100356r[i28]);
                dArr3[i31] = d21;
                i28++;
                dArr[(((((i30 - 1) - i10) * (i30 - i10)) / 2) + i20) - i10] = d21 * dArr2[i20 + i12] * dArr2[i30 + i12];
            }
            double d22 = d18 + (this.f100355d[i20] * this.rhs[i20]);
            int i32 = i20 + i12;
            dArr[i32 + i15] = d22 * dArr2[i32] * d15;
            i20 = i29;
            length = i27;
            d11 = 0.0d;
        }
        return dArr;
    }

    @Override
    public boolean hasIntercept() {
        return this.hasIntercept;
    }

    @Override
    public RegressionResults regress() throws ModelSpecificationException {
        return regress(this.nvars);
    }

    public MillerUpdatingRegression(int i10, boolean z10, double d10) throws ModelSpecificationException {
        this.nobs = 0L;
        this.sserr = 0.0d;
        this.rss_set = false;
        this.tol_set = false;
        this.sumy = 0.0d;
        this.sumsqy = 0.0d;
        if (i10 >= 1) {
            if (z10) {
                this.nvars = i10 + 1;
            } else {
                this.nvars = i10;
            }
            this.hasIntercept = z10;
            this.nobs = 0L;
            int i11 = this.nvars;
            this.f100355d = new double[i11];
            this.rhs = new double[i11];
            this.f100356r = new double[((i11 - 1) * i11) / 2];
            this.tol = new double[i11];
            this.rss = new double[i11];
            this.vorder = new int[i11];
            this.x_sing = new double[i11];
            this.work_sing = new double[i11];
            this.work_tolset = new double[i11];
            this.lindep = new boolean[i11];
            for (int i12 = 0; i12 < this.nvars; i12++) {
                this.vorder[i12] = i12;
            }
            if (d10 > 0.0d) {
                this.epsilon = d10;
                return;
            } else {
                this.epsilon = -d10;
                return;
            }
        }
        throw new ModelSpecificationException(LocalizedFormats.NO_REGRESSORS, new Object[0]);
    }

    public RegressionResults regress(int i10) throws ModelSpecificationException {
        int i11;
        if (this.nobs > i10) {
            if (i10 <= this.nvars) {
                tolset();
                singcheck();
                double[] regcf = regcf(i10);
                ss();
                double[] cov = cov(i10);
                int i12 = 0;
                int i13 = 0;
                while (true) {
                    boolean[] zArr = this.lindep;
                    if (i12 >= zArr.length) {
                        break;
                    }
                    if (!zArr[i12]) {
                        i13++;
                    }
                    i12++;
                }
                for (int i14 = 0; i14 < i10; i14++) {
                    if (this.vorder[i14] != i14) {
                        double[] dArr = new double[regcf.length];
                        double[] dArr2 = new double[cov.length];
                        int[] iArr = new int[regcf.length];
                        for (int i15 = 0; i15 < this.nvars; i15++) {
                            for (int i16 = 0; i16 < i10; i16++) {
                                if (this.vorder[i16] == i15) {
                                    dArr[i15] = regcf[i16];
                                    iArr[i15] = i16;
                                }
                            }
                        }
                        int i17 = 0;
                        for (int i18 = 0; i18 < regcf.length; i18++) {
                            int i19 = iArr[i18];
                            int i20 = 0;
                            while (i20 <= i18) {
                                int i21 = iArr[i20];
                                if (i19 > i21) {
                                    i11 = (((i19 + 1) * i19) / 2) + i21;
                                } else {
                                    i11 = ((i21 * (i21 + 1)) / 2) + i19;
                                }
                                dArr2[i17] = cov[i11];
                                i20++;
                                i17++;
                            }
                        }
                        return new RegressionResults(dArr, new double[][]{dArr2}, true, this.nobs, i13, this.sumy, this.sumsqy, this.sserr, this.hasIntercept, false);
                    }
                }
                return new RegressionResults(regcf, new double[][]{cov}, true, this.nobs, i13, this.sumy, this.sumsqy, this.sserr, this.hasIntercept, false);
            }
            throw new ModelSpecificationException(LocalizedFormats.TOO_MANY_REGRESSORS, Integer.valueOf(i10), Integer.valueOf(this.nvars));
        }
        throw new ModelSpecificationException(LocalizedFormats.NOT_ENOUGH_DATA_FOR_NUMBER_OF_PREDICTORS, Long.valueOf(this.nobs), Integer.valueOf(i10));
    }

    public MillerUpdatingRegression(int i10, boolean z10) throws ModelSpecificationException {
        this(i10, z10, Precision.EPSILON);
    }

    @Override
    public RegressionResults regress(int[] iArr) throws ModelSpecificationException {
        int i10;
        int[] iArr2 = iArr;
        int length = iArr2.length;
        int i11 = this.nvars;
        if (length > i11) {
            throw new ModelSpecificationException(LocalizedFormats.TOO_MANY_REGRESSORS, Integer.valueOf(iArr2.length), Integer.valueOf(this.nvars));
        }
        if (this.nobs > i11) {
            Arrays.sort(iArr);
            int i12 = 0;
            for (int i13 = 0; i13 < iArr2.length; i13++) {
                if (i13 < this.nvars) {
                    if (i13 > 0 && iArr2[i13] == iArr2[i13 - 1]) {
                        iArr2[i13] = -1;
                        i12++;
                    }
                } else {
                    throw new ModelSpecificationException(LocalizedFormats.INDEX_LARGER_THAN_MAX, Integer.valueOf(i13), Integer.valueOf(this.nvars));
                }
            }
            if (i12 > 0) {
                int[] iArr3 = new int[iArr2.length - i12];
                int i14 = 0;
                for (int i15 : iArr2) {
                    if (i15 > -1) {
                        iArr3[i14] = i15;
                        i14++;
                    }
                }
                iArr2 = iArr3;
            }
            reorderRegressors(iArr2, 0);
            tolset();
            singcheck();
            double[] regcf = regcf(iArr2.length);
            ss();
            double[] cov = cov(iArr2.length);
            int i16 = 0;
            int i17 = 0;
            while (true) {
                boolean[] zArr = this.lindep;
                if (i16 >= zArr.length) {
                    break;
                }
                if (!zArr[i16]) {
                    i17++;
                }
                i16++;
            }
            for (int i18 = 0; i18 < this.nvars; i18++) {
                if (this.vorder[i18] != iArr2[i18]) {
                    double[] dArr = new double[regcf.length];
                    int[] iArr4 = new int[regcf.length];
                    for (int i19 = 0; i19 < iArr2.length; i19++) {
                        int i20 = 0;
                        while (true) {
                            int[] iArr5 = this.vorder;
                            if (i20 < iArr5.length) {
                                if (iArr5[i20] == iArr2[i19]) {
                                    dArr[i19] = regcf[i20];
                                    iArr4[i19] = i20;
                                }
                                i20++;
                            }
                        }
                    }
                    double[] dArr2 = new double[cov.length];
                    int i21 = 0;
                    for (int i22 = 0; i22 < regcf.length; i22++) {
                        int i23 = iArr4[i22];
                        int i24 = 0;
                        while (i24 <= i22) {
                            int i25 = iArr4[i24];
                            if (i23 > i25) {
                                i10 = (((i23 + 1) * i23) / 2) + i25;
                            } else {
                                i10 = ((i25 * (i25 + 1)) / 2) + i23;
                            }
                            dArr2[i21] = cov[i10];
                            i24++;
                            i21++;
                        }
                    }
                    return new RegressionResults(dArr, new double[][]{dArr2}, true, this.nobs, i17, this.sumy, this.sumsqy, this.sserr, this.hasIntercept, false);
                }
            }
            return new RegressionResults(regcf, new double[][]{cov}, true, this.nobs, i17, this.sumy, this.sumsqy, this.sserr, this.hasIntercept, false);
        }
        throw new ModelSpecificationException(LocalizedFormats.NOT_ENOUGH_DATA_FOR_NUMBER_OF_PREDICTORS, Long.valueOf(this.nobs), Integer.valueOf(this.nvars));
    }
}
