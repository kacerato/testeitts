package org.apache.commons.math3.optimization.general;

import java.util.Arrays;
import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.optimization.ConvergenceChecker;
import org.apache.commons.math3.optimization.PointVectorValuePair;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

@Deprecated
public class LevenbergMarquardtOptimizer extends AbstractLeastSquaresOptimizer {
    private double[] beta;
    private final double costRelativeTolerance;
    private double[] diagR;
    private final double initialStepBoundFactor;
    private double[] jacNorm;
    private double[] lmDir;
    private double lmPar;
    private final double orthoTolerance;
    private final double parRelativeTolerance;
    private int[] permutation;
    private final double qrRankingThreshold;
    private int rank;
    private int solvedCols;
    private double[][] weightedJacobian;
    private double[] weightedResidual;

    public LevenbergMarquardtOptimizer() {
        this(100.0d, 1.0E-10d, 1.0E-10d, 1.0E-10d, Precision.SAFE_MIN);
    }

    private void determineLMDirection(double[] dArr, double[] dArr2, double[] dArr3, double[] dArr4) {
        int i10;
        double d10;
        double d11;
        int i11 = 0;
        int i12 = 0;
        while (i12 < this.solvedCols) {
            int i13 = this.permutation[i12];
            int i14 = i12 + 1;
            for (int i15 = i14; i15 < this.solvedCols; i15++) {
                double[][] dArr5 = this.weightedJacobian;
                dArr5[i15][i13] = dArr5[i12][this.permutation[i15]];
            }
            this.lmDir[i12] = this.diagR[i13];
            dArr4[i12] = dArr[i12];
            i12 = i14;
        }
        int i16 = 0;
        while (true) {
            i10 = this.solvedCols;
            double d12 = 0.0d;
            if (i16 >= i10) {
                break;
            }
            double d13 = dArr2[this.permutation[i16]];
            if (d13 != 0.0d) {
                Arrays.fill(dArr3, i16 + 1, dArr3.length, 0.0d);
            }
            dArr3[i16] = d13;
            int i17 = i16;
            double d14 = 0.0d;
            while (i17 < this.solvedCols) {
                int i18 = this.permutation[i17];
                if (dArr3[i17] != d12) {
                    double d15 = this.weightedJacobian[i17][i18];
                    if (FastMath.abs(d15) < FastMath.abs(dArr3[i17])) {
                        double d16 = d15 / dArr3[i17];
                        d10 = 1.0d / FastMath.sqrt((d16 * d16) + 1.0d);
                        d11 = d16 * d10;
                    } else {
                        double d17 = dArr3[i17] / d15;
                        double sqrt = 1.0d / FastMath.sqrt((d17 * d17) + 1.0d);
                        d10 = d17 * sqrt;
                        d11 = sqrt;
                    }
                    this.weightedJacobian[i17][i18] = (d15 * d11) + (dArr3[i17] * d10);
                    double d18 = dArr4[i17];
                    double d19 = (d11 * d18) + (d10 * d14);
                    double d20 = -d10;
                    d14 = (d14 * d11) + (d18 * d20);
                    dArr4[i17] = d19;
                    for (int i19 = i17 + 1; i19 < this.solvedCols; i19++) {
                        double[] dArr6 = this.weightedJacobian[i19];
                        double d21 = dArr6[i18];
                        double d22 = dArr3[i19];
                        dArr3[i19] = (d21 * d20) + (d22 * d11);
                        dArr6[i18] = (d11 * d21) + (d10 * d22);
                    }
                }
                i17++;
                d12 = 0.0d;
            }
            double[] dArr7 = this.weightedJacobian[i16];
            int i20 = this.permutation[i16];
            dArr3[i16] = dArr7[i20];
            dArr7[i20] = this.lmDir[i16];
            i16++;
        }
        int i21 = 0;
        while (true) {
            int i22 = this.solvedCols;
            if (i21 >= i22) {
                break;
            }
            if (dArr3[i21] == 0.0d && i10 == i22) {
                i10 = i21;
            }
            if (i10 < i22) {
                dArr4[i21] = 0.0d;
            }
            i21++;
        }
        if (i10 > 0) {
            for (int i23 = i10 - 1; i23 >= 0; i23--) {
                int i24 = this.permutation[i23];
                double d23 = 0.0d;
                for (int i25 = i23 + 1; i25 < i10; i25++) {
                    d23 += this.weightedJacobian[i25][i24] * dArr4[i25];
                }
                dArr4[i23] = (dArr4[i23] - d23) / dArr3[i23];
            }
        }
        while (true) {
            double[] dArr8 = this.lmDir;
            if (i11 >= dArr8.length) {
                return;
            }
            dArr8[this.permutation[i11]] = dArr4[i11];
            i11++;
        }
    }

    private void determineLMParameter(double[] dArr, double d10, double[] dArr2, double[] dArr3, double[] dArr4, double[] dArr5) {
        int i10;
        double d11;
        double d12;
        int i11;
        double min;
        double[] dArr6 = dArr;
        double d13 = d10;
        int i12 = 0;
        int length = this.weightedJacobian[0].length;
        int i13 = 0;
        while (true) {
            i10 = this.rank;
            if (i13 >= i10) {
                break;
            }
            this.lmDir[this.permutation[i13]] = dArr6[i13];
            i13++;
        }
        while (i10 < length) {
            this.lmDir[this.permutation[i10]] = 0.0d;
            i10++;
        }
        int i14 = this.rank - 1;
        while (i14 >= 0) {
            int i15 = this.permutation[i14];
            double d14 = this.lmDir[i15] / this.diagR[i15];
            for (int i16 = i12; i16 < i14; i16++) {
                double[] dArr7 = this.lmDir;
                int i17 = this.permutation[i16];
                dArr7[i17] = dArr7[i17] - (this.weightedJacobian[i16][i15] * d14);
            }
            this.lmDir[i15] = d14;
            i14--;
            i12 = 0;
        }
        double d15 = 0.0d;
        for (int i18 = 0; i18 < this.solvedCols; i18++) {
            int i19 = this.permutation[i18];
            double d16 = dArr2[i19] * this.lmDir[i19];
            dArr3[i19] = d16;
            d15 += d16 * d16;
        }
        double sqrt = FastMath.sqrt(d15);
        double d17 = sqrt - d13;
        double d18 = d13 * 0.1d;
        if (d17 <= d18) {
            this.lmPar = 0.0d;
            return;
        }
        if (this.rank == this.solvedCols) {
            for (int i20 = 0; i20 < this.solvedCols; i20++) {
                int i21 = this.permutation[i20];
                dArr3[i21] = dArr3[i21] * (dArr2[i21] / sqrt);
            }
            d11 = d18;
            double d19 = 0.0d;
            for (int i22 = 0; i22 < this.solvedCols; i22++) {
                int i23 = this.permutation[i22];
                double d20 = 0.0d;
                for (int i24 = 0; i24 < i22; i24++) {
                    d20 += this.weightedJacobian[i24][i23] * dArr3[this.permutation[i24]];
                }
                double d21 = (dArr3[i23] - d20) / this.diagR[i23];
                dArr3[i23] = d21;
                d19 += d21 * d21;
            }
            d12 = d17 / (d19 * d13);
        } else {
            d11 = d18;
            d12 = 0.0d;
        }
        int i25 = 0;
        double d22 = 0.0d;
        while (i25 < this.solvedCols) {
            int i26 = this.permutation[i25];
            double d23 = d17;
            double d24 = 0.0d;
            for (int i27 = 0; i27 <= i25; i27++) {
                d24 += this.weightedJacobian[i27][i26] * dArr6[i27];
            }
            double d25 = d24 / dArr2[i26];
            d22 += d25 * d25;
            i25++;
            d17 = d23;
        }
        double d26 = d17;
        double sqrt2 = FastMath.sqrt(d22);
        double d27 = sqrt2 / d13;
        double d28 = 0.0d;
        double min2 = d27 == 0.0d ? 2.2251E-308d / FastMath.min(d13, 0.1d) : d27;
        double min3 = FastMath.min(min2, FastMath.max(this.lmPar, d12));
        this.lmPar = min3;
        if (min3 == 0.0d) {
            this.lmPar = sqrt2 / sqrt;
        }
        int i28 = 10;
        double d29 = d26;
        while (i28 >= 0) {
            if (this.lmPar == d28) {
                i11 = i28;
                this.lmPar = FastMath.max(2.2251E-308d, 0.001d * min2);
            } else {
                i11 = i28;
            }
            double sqrt3 = FastMath.sqrt(this.lmPar);
            for (int i29 = 0; i29 < this.solvedCols; i29++) {
                int i30 = this.permutation[i29];
                dArr3[i30] = dArr2[i30] * sqrt3;
            }
            determineLMDirection(dArr6, dArr3, dArr4, dArr5);
            int i31 = i11;
            int i32 = 0;
            double d30 = 0.0d;
            while (i32 < this.solvedCols) {
                int i33 = this.permutation[i32];
                double d31 = dArr2[i33] * this.lmDir[i33];
                dArr5[i33] = d31;
                d30 += d31 * d31;
                i32++;
                min2 = min2;
            }
            double d32 = min2;
            double sqrt4 = FastMath.sqrt(d30);
            double d33 = sqrt4 - d13;
            if (FastMath.abs(d33) <= d11) {
                return;
            }
            if (d12 == 0.0d && d33 <= d29 && d29 < 0.0d) {
                return;
            }
            for (int i34 = 0; i34 < this.solvedCols; i34++) {
                int i35 = this.permutation[i34];
                dArr3[i35] = (dArr5[i35] * dArr2[i35]) / sqrt4;
            }
            int i36 = 0;
            while (i36 < this.solvedCols) {
                int i37 = this.permutation[i36];
                double d34 = dArr3[i37] / dArr4[i36];
                dArr3[i37] = d34;
                i36++;
                int i38 = i36;
                while (i38 < this.solvedCols) {
                    int i39 = this.permutation[i38];
                    dArr3[i39] = dArr3[i39] - (this.weightedJacobian[i38][i37] * d34);
                    i38++;
                    i36 = i36;
                }
            }
            double d35 = 0.0d;
            for (int i40 = 0; i40 < this.solvedCols; i40++) {
                double d36 = dArr3[this.permutation[i40]];
                d35 += d36 * d36;
            }
            double d37 = d33 / (d35 * d13);
            if (d33 > 0.0d) {
                d12 = FastMath.max(d12, this.lmPar);
            } else if (d33 < 0.0d) {
                min = FastMath.min(d32, this.lmPar);
                this.lmPar = FastMath.max(d12, this.lmPar + d37);
                min2 = min;
                i28 = i31 - 1;
                d29 = d33;
                d28 = 0.0d;
                dArr6 = dArr;
                d13 = d10;
            }
            min = d32;
            this.lmPar = FastMath.max(d12, this.lmPar + d37);
            min2 = min;
            i28 = i31 - 1;
            d29 = d33;
            d28 = 0.0d;
            dArr6 = dArr;
            d13 = d10;
        }
    }

    private void qTy(double[] dArr) {
        double[][] dArr2 = this.weightedJacobian;
        int length = dArr2.length;
        int length2 = dArr2[0].length;
        for (int i10 = 0; i10 < length2; i10++) {
            int i11 = this.permutation[i10];
            double d10 = 0.0d;
            for (int i12 = i10; i12 < length; i12++) {
                d10 += this.weightedJacobian[i12][i11] * dArr[i12];
            }
            double d11 = d10 * this.beta[i11];
            for (int i13 = i10; i13 < length; i13++) {
                dArr[i13] = dArr[i13] - (this.weightedJacobian[i13][i11] * d11);
            }
        }
    }

    private void qrDecomposition(RealMatrix realMatrix) throws ConvergenceException {
        double d10;
        double[][] data = realMatrix.scalarMultiply(-1.0d).getData();
        this.weightedJacobian = data;
        int length = data.length;
        int i10 = 0;
        int length2 = data[0].length;
        int i11 = 0;
        while (true) {
            d10 = 0.0d;
            if (i11 >= length2) {
                break;
            }
            this.permutation[i11] = i11;
            for (int i12 = 0; i12 < length; i12++) {
                double d11 = this.weightedJacobian[i12][i11];
                d10 += d11 * d11;
            }
            this.jacNorm[i11] = FastMath.sqrt(d10);
            i11++;
        }
        while (i10 < length2) {
            int i13 = -1;
            double d12 = Double.NEGATIVE_INFINITY;
            for (int i14 = i10; i14 < length2; i14++) {
                double d13 = d10;
                for (int i15 = i10; i15 < length; i15++) {
                    double d14 = this.weightedJacobian[i15][this.permutation[i14]];
                    d13 += d14 * d14;
                }
                if (Double.isInfinite(d13) || Double.isNaN(d13)) {
                    throw new ConvergenceException(LocalizedFormats.UNABLE_TO_PERFORM_QR_DECOMPOSITION_ON_JACOBIAN, Integer.valueOf(length), Integer.valueOf(length2));
                }
                if (d13 > d12) {
                    i13 = i14;
                    d12 = d13;
                }
            }
            if (d12 <= this.qrRankingThreshold) {
                this.rank = i10;
                return;
            }
            int[] iArr = this.permutation;
            int i16 = iArr[i13];
            iArr[i13] = iArr[i10];
            iArr[i10] = i16;
            double d15 = this.weightedJacobian[i10][i16];
            double sqrt = FastMath.sqrt(d12);
            if (d15 > d10) {
                sqrt = -sqrt;
            }
            double d16 = 1.0d / (d12 - (d15 * sqrt));
            this.beta[i16] = d16;
            this.diagR[i16] = sqrt;
            double[] dArr = this.weightedJacobian[i10];
            dArr[i16] = dArr[i16] - sqrt;
            int i17 = (length2 - 1) - i10;
            while (i17 > 0) {
                double d17 = d10;
                for (int i18 = i10; i18 < length; i18++) {
                    double[] dArr2 = this.weightedJacobian[i18];
                    d17 += dArr2[i16] * dArr2[this.permutation[i10 + i17]];
                }
                double d18 = d17 * d16;
                for (int i19 = i10; i19 < length; i19++) {
                    double[] dArr3 = this.weightedJacobian[i19];
                    int i20 = this.permutation[i10 + i17];
                    dArr3[i20] = dArr3[i20] - (dArr3[i16] * d18);
                }
                i17--;
                d10 = 0.0d;
            }
            i10++;
            d10 = 0.0d;
        }
        this.rank = this.solvedCols;
    }

    /* JADX WARN: Code restructure failed: missing block: B:121:0x033f, code lost:
    
        setCost(r13);
        r61.point = r1.getPoint();
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0348, code lost:
    
        return r1;
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x02c7  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0377  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x03a8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:146:0x02fd  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public PointVectorValuePair doOptimize() {
        double d10;
        RealMatrix realMatrix;
        int i10;
        int i11;
        double d11;
        double d12;
        double d13;
        ConvergenceChecker<PointVectorValuePair> convergenceChecker;
        int i12;
        double d14;
        double abs;
        double d15;
        int i13;
        int length = getTarget().length;
        double[] startPoint = getStartPoint();
        int length2 = startPoint.length;
        this.solvedCols = FastMath.min(length, length2);
        this.diagR = new double[length2];
        this.jacNorm = new double[length2];
        this.beta = new double[length2];
        this.permutation = new int[length2];
        this.lmDir = new double[length2];
        double[] dArr = new double[length2];
        double[] dArr2 = new double[length2];
        double[] dArr3 = new double[length];
        double[] dArr4 = new double[length];
        double[] dArr5 = new double[length];
        double[] dArr6 = new double[length2];
        double[] dArr7 = new double[length2];
        RealMatrix weightSquareRoot = getWeightSquareRoot();
        double[] computeObjectiveValue = computeObjectiveValue(startPoint);
        double[] computeResiduals = computeResiduals(computeObjectiveValue);
        PointVectorValuePair pointVectorValuePair = new PointVectorValuePair(startPoint, computeObjectiveValue);
        double computeCost = computeCost(computeResiduals);
        double[] dArr8 = new double[length2];
        this.lmPar = 0.0d;
        ConvergenceChecker<PointVectorValuePair> convergenceChecker2 = getConvergenceChecker();
        double d16 = 0.0d;
        double d17 = 0.0d;
        double d18 = computeCost;
        boolean z10 = true;
        int i14 = 0;
        loop0: while (true) {
            int i15 = i14 + 1;
            qrDecomposition(computeWeightedJacobian(startPoint));
            this.weightedResidual = weightSquareRoot.operate(computeResiduals);
            int i16 = 0;
            while (i16 < length) {
                dArr5[i16] = this.weightedResidual[i16];
                i16++;
                dArr3 = dArr3;
            }
            double[] dArr9 = dArr3;
            qTy(dArr5);
            int i17 = 0;
            while (i17 < this.solvedCols) {
                int i18 = this.permutation[i17];
                this.weightedJacobian[i17][i18] = this.diagR[i18];
                i17++;
                computeObjectiveValue = computeObjectiveValue;
                computeResiduals = computeResiduals;
            }
            double[] dArr10 = computeObjectiveValue;
            double[] dArr11 = computeResiduals;
            if (z10) {
                double d19 = 0.0d;
                for (int i19 = 0; i19 < length2; i19++) {
                    double d20 = this.jacNorm[i19];
                    if (d20 == 0.0d) {
                        d20 = 1.0d;
                    }
                    double d21 = startPoint[i19] * d20;
                    d19 += d21 * d21;
                    dArr[i19] = d20;
                }
                d17 = FastMath.sqrt(d19);
                d10 = 0.0d;
                d16 = d17 == 0.0d ? this.initialStepBoundFactor : this.initialStepBoundFactor * d17;
            } else {
                d10 = 0.0d;
            }
            double d22 = d18;
            ConvergenceChecker<PointVectorValuePair> convergenceChecker3 = convergenceChecker2;
            if (d22 != d10) {
                RealMatrix realMatrix2 = weightSquareRoot;
                i10 = i15;
                int i20 = 0;
                double d23 = d10;
                while (i20 < this.solvedCols) {
                    int i21 = this.permutation[i20];
                    RealMatrix realMatrix3 = realMatrix2;
                    double d24 = this.jacNorm[i21];
                    if (d24 != d10) {
                        int i22 = 0;
                        double d25 = d10;
                        while (i22 <= i20) {
                            d25 += this.weightedJacobian[i22][i21] * dArr5[i22];
                            i22++;
                            length = length;
                        }
                        i13 = length;
                        d23 = FastMath.max(d23, FastMath.abs(d25) / (d24 * d22));
                    } else {
                        i13 = length;
                    }
                    i20++;
                    realMatrix2 = realMatrix3;
                    length = i13;
                }
                realMatrix = realMatrix2;
                i11 = length;
                d11 = d23;
            } else {
                realMatrix = weightSquareRoot;
                i10 = i15;
                i11 = length;
                d11 = d10;
            }
            if (d11 <= this.orthoTolerance) {
                setCost(d22);
                this.point = pointVectorValuePair.getPoint();
                return pointVectorValuePair;
            }
            int i23 = 0;
            while (i23 < length2) {
                dArr[i23] = FastMath.max(dArr[i23], this.jacNorm[i23]);
                i23++;
                d22 = d22;
            }
            double d26 = d22;
            PointVectorValuePair pointVectorValuePair2 = pointVectorValuePair;
            dArr3 = dArr9;
            double d27 = d16;
            double d28 = d17;
            double d29 = d10;
            double[] dArr12 = dArr10;
            computeResiduals = dArr11;
            while (d29 < 1.0E-4d) {
                for (int i24 = 0; i24 < this.solvedCols; i24++) {
                    int i25 = this.permutation[i24];
                    dArr2[i25] = startPoint[i25];
                }
                double[] dArr13 = this.weightedResidual;
                this.weightedResidual = dArr3;
                PointVectorValuePair pointVectorValuePair3 = pointVectorValuePair;
                double[] dArr14 = dArr5;
                ConvergenceChecker<PointVectorValuePair> convergenceChecker4 = convergenceChecker3;
                double[] dArr15 = dArr12;
                RealMatrix realMatrix4 = realMatrix;
                double d30 = d10;
                double[] dArr16 = dArr8;
                double[] dArr17 = dArr6;
                int i26 = i10;
                double d31 = d27;
                determineLMParameter(dArr5, d27, dArr, dArr6, dArr7, dArr16);
                double d32 = d30;
                for (int i27 = 0; i27 < this.solvedCols; i27++) {
                    int i28 = this.permutation[i27];
                    double[] dArr18 = this.lmDir;
                    double d33 = -dArr18[i28];
                    dArr18[i28] = d33;
                    startPoint[i28] = dArr2[i28] + d33;
                    double d34 = dArr[i28] * dArr18[i28];
                    d32 += d34 * d34;
                }
                double sqrt = FastMath.sqrt(d32);
                d27 = z10 ? FastMath.min(d31, sqrt) : d31;
                double[] computeObjectiveValue2 = computeObjectiveValue(startPoint);
                double[] computeResiduals2 = computeResiduals(computeObjectiveValue2);
                PointVectorValuePair pointVectorValuePair4 = new PointVectorValuePair(startPoint, computeObjectiveValue2);
                double computeCost2 = computeCost(computeResiduals2);
                double d35 = 0.1d;
                double d36 = computeCost2 * 0.1d;
                if (d36 < d26) {
                    double d37 = computeCost2 / d26;
                    d12 = 1.0d - (d37 * d37);
                } else {
                    d12 = -1.0d;
                }
                double[] dArr19 = computeObjectiveValue2;
                int i29 = 0;
                while (i29 < this.solvedCols) {
                    int i30 = this.permutation[i29];
                    double[] dArr20 = computeResiduals2;
                    double d38 = this.lmDir[i30];
                    dArr17[i29] = d30;
                    int i31 = 0;
                    while (i31 <= i29) {
                        dArr17[i31] = dArr17[i31] + (this.weightedJacobian[i31][i30] * d38);
                        i31++;
                        dArr2 = dArr2;
                    }
                    i29++;
                    computeResiduals2 = dArr20;
                }
                double[] dArr21 = computeResiduals2;
                double[] dArr22 = dArr2;
                double d39 = d30;
                for (int i32 = 0; i32 < this.solvedCols; i32++) {
                    double d40 = dArr17[i32];
                    d39 += d40 * d40;
                }
                double d41 = d26 * d26;
                double d42 = d39 / d41;
                double d43 = this.lmPar;
                double d44 = ((d43 * sqrt) * sqrt) / d41;
                double d45 = d42 + (d44 * 2.0d);
                double d46 = -(d42 + d44);
                double d47 = d45 == d30 ? d30 : d12 / d45;
                if (d47 <= 0.25d) {
                    double d48 = d12 < d30 ? (d46 * 0.5d) / (d46 + (0.5d * d12)) : 0.5d;
                    if (d36 < d26 && d48 >= 0.1d) {
                        d35 = d48;
                    }
                    d13 = FastMath.min(d27, sqrt * 10.0d) * d35;
                    this.lmPar /= d35;
                } else {
                    if (d43 == d30 || d47 >= 0.75d) {
                        d13 = sqrt * 2.0d;
                        this.lmPar = d43 * 0.5d;
                    }
                    if (d47 < 1.0E-4d) {
                        double d49 = d30;
                        for (int i33 = 0; i33 < length2; i33++) {
                            double d50 = dArr[i33] * startPoint[i33];
                            d49 += d50 * d50;
                        }
                        d28 = FastMath.sqrt(d49);
                        convergenceChecker = convergenceChecker4;
                        i12 = i26;
                        if (convergenceChecker4 != null && convergenceChecker.converged(i12, pointVectorValuePair3, pointVectorValuePair4)) {
                            setCost(computeCost2);
                            this.point = pointVectorValuePair4.getPoint();
                            return pointVectorValuePair4;
                        }
                        d14 = computeCost2;
                        pointVectorValuePair2 = pointVectorValuePair4;
                        z10 = false;
                        dArr3 = dArr13;
                    } else {
                        convergenceChecker = convergenceChecker4;
                        i12 = i26;
                        for (int i34 = 0; i34 < this.solvedCols; i34++) {
                            int i35 = this.permutation[i34];
                            startPoint[i35] = dArr22[i35];
                        }
                        dArr3 = this.weightedResidual;
                        this.weightedResidual = dArr13;
                        pointVectorValuePair2 = new PointVectorValuePair(startPoint, dArr15);
                        dArr19 = dArr15;
                        d14 = d26;
                    }
                    abs = FastMath.abs(d12);
                    ConvergenceChecker<PointVectorValuePair> convergenceChecker5 = convergenceChecker;
                    d15 = this.costRelativeTolerance;
                    if ((abs <= d15 || d45 > d15 || d47 > 2.0d) && d27 > this.parRelativeTolerance * d28) {
                        if (FastMath.abs(d12) > 2.2204E-16d && d45 <= 2.2204E-16d && d47 <= 2.0d) {
                            throw new ConvergenceException(LocalizedFormats.TOO_SMALL_COST_RELATIVE_TOLERANCE, Double.valueOf(this.costRelativeTolerance));
                        }
                        if (d27 > d28 * 2.2204E-16d) {
                            throw new ConvergenceException(LocalizedFormats.TOO_SMALL_PARAMETERS_RELATIVE_TOLERANCE, Double.valueOf(this.parRelativeTolerance));
                        }
                        if (d11 <= 2.2204E-16d) {
                            throw new ConvergenceException(LocalizedFormats.TOO_SMALL_ORTHOGONALITY_TOLERANCE, Double.valueOf(this.orthoTolerance));
                        }
                        i10 = i12;
                        pointVectorValuePair = pointVectorValuePair3;
                        d26 = d14;
                        dArr5 = dArr14;
                        dArr6 = dArr17;
                        dArr8 = dArr16;
                        convergenceChecker3 = convergenceChecker5;
                        dArr12 = dArr19;
                        computeResiduals = dArr21;
                        dArr2 = dArr22;
                        realMatrix = realMatrix4;
                        d10 = d30;
                        d29 = d47;
                    }
                }
                d27 = d13;
                if (d47 < 1.0E-4d) {
                }
                abs = FastMath.abs(d12);
                ConvergenceChecker<PointVectorValuePair> convergenceChecker52 = convergenceChecker;
                d15 = this.costRelativeTolerance;
                if (abs <= d15) {
                }
                if (FastMath.abs(d12) > 2.2204E-16d) {
                }
                if (d27 > d28 * 2.2204E-16d) {
                }
            }
            pointVectorValuePair = pointVectorValuePair2;
            computeObjectiveValue = dArr12;
            convergenceChecker2 = convergenceChecker3;
            d17 = d28;
            d18 = d26;
            length = i11;
            d16 = d27;
            dArr5 = dArr5;
            dArr6 = dArr6;
            dArr8 = dArr8;
            i14 = i10;
            weightSquareRoot = realMatrix;
        }
    }

    public LevenbergMarquardtOptimizer(ConvergenceChecker<PointVectorValuePair> convergenceChecker) {
        this(100.0d, convergenceChecker, 1.0E-10d, 1.0E-10d, 1.0E-10d, Precision.SAFE_MIN);
    }

    public LevenbergMarquardtOptimizer(double d10, ConvergenceChecker<PointVectorValuePair> convergenceChecker, double d11, double d12, double d13, double d14) {
        super(convergenceChecker);
        this.initialStepBoundFactor = d10;
        this.costRelativeTolerance = d11;
        this.parRelativeTolerance = d12;
        this.orthoTolerance = d13;
        this.qrRankingThreshold = d14;
    }

    public LevenbergMarquardtOptimizer(double d10, double d11, double d12) {
        this(100.0d, d10, d11, d12, Precision.SAFE_MIN);
    }

    public LevenbergMarquardtOptimizer(double d10, double d11, double d12, double d13, double d14) {
        super(null);
        this.initialStepBoundFactor = d10;
        this.costRelativeTolerance = d11;
        this.parRelativeTolerance = d12;
        this.orthoTolerance = d13;
        this.qrRankingThreshold = d14;
    }
}
