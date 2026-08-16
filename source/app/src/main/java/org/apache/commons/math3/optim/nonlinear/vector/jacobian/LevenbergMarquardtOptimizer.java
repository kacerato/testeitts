package org.apache.commons.math3.optim.nonlinear.vector.jacobian;

import java.util.Arrays;
import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.MathUnsupportedOperationException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.optim.ConvergenceChecker;
import org.apache.commons.math3.optim.PointVectorValuePair;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

@Deprecated
public class LevenbergMarquardtOptimizer extends AbstractLeastSquaresOptimizer {
    private static final double TWO_EPS = Precision.EPSILON * 2.0d;
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

    private void checkParameters() {
        if (getLowerBound() != null || getUpperBound() != null) {
            throw new MathUnsupportedOperationException(LocalizedFormats.CONSTRAINT, new Object[0]);
        }
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
        double d13;
        double[] dArr6 = dArr;
        double d14 = d10;
        int i11 = 0;
        int length = this.weightedJacobian[0].length;
        int i12 = 0;
        while (true) {
            i10 = this.rank;
            if (i12 >= i10) {
                break;
            }
            this.lmDir[this.permutation[i12]] = dArr6[i12];
            i12++;
        }
        while (i10 < length) {
            this.lmDir[this.permutation[i10]] = 0.0d;
            i10++;
        }
        int i13 = this.rank - 1;
        while (i13 >= 0) {
            int i14 = this.permutation[i13];
            double d15 = this.lmDir[i14] / this.diagR[i14];
            for (int i15 = i11; i15 < i13; i15++) {
                double[] dArr7 = this.lmDir;
                int i16 = this.permutation[i15];
                dArr7[i16] = dArr7[i16] - (this.weightedJacobian[i15][i14] * d15);
            }
            this.lmDir[i14] = d15;
            i13--;
            i11 = 0;
        }
        double d16 = 0.0d;
        for (int i17 = 0; i17 < this.solvedCols; i17++) {
            int i18 = this.permutation[i17];
            double d17 = dArr2[i18] * this.lmDir[i18];
            dArr3[i18] = d17;
            d16 += d17 * d17;
        }
        double sqrt = FastMath.sqrt(d16);
        double d18 = sqrt - d14;
        double d19 = d14 * 0.1d;
        if (d18 <= d19) {
            this.lmPar = 0.0d;
            return;
        }
        if (this.rank == this.solvedCols) {
            for (int i19 = 0; i19 < this.solvedCols; i19++) {
                int i20 = this.permutation[i19];
                dArr3[i20] = dArr3[i20] * (dArr2[i20] / sqrt);
            }
            d11 = d19;
            double d20 = 0.0d;
            for (int i21 = 0; i21 < this.solvedCols; i21++) {
                int i22 = this.permutation[i21];
                double d21 = 0.0d;
                for (int i23 = 0; i23 < i21; i23++) {
                    d21 += this.weightedJacobian[i23][i22] * dArr3[this.permutation[i23]];
                }
                double d22 = (dArr3[i22] - d21) / this.diagR[i22];
                dArr3[i22] = d22;
                d20 += d22 * d22;
            }
            d12 = d18 / (d20 * d14);
        } else {
            d11 = d19;
            d12 = 0.0d;
        }
        int i24 = 0;
        double d23 = 0.0d;
        while (i24 < this.solvedCols) {
            int i25 = this.permutation[i24];
            double d24 = d18;
            double d25 = 0.0d;
            for (int i26 = 0; i26 <= i24; i26++) {
                d25 += this.weightedJacobian[i26][i25] * dArr6[i26];
            }
            double d26 = d25 / dArr2[i25];
            d23 += d26 * d26;
            i24++;
            d18 = d24;
        }
        double d27 = d18;
        double sqrt2 = FastMath.sqrt(d23);
        double d28 = sqrt2 / d14;
        double d29 = 0.0d;
        if (d28 == 0.0d) {
            d28 = Precision.SAFE_MIN / FastMath.min(d14, 0.1d);
        }
        double min = FastMath.min(d28, FastMath.max(this.lmPar, d12));
        this.lmPar = min;
        if (min == 0.0d) {
            this.lmPar = sqrt2 / sqrt;
        }
        int i27 = 10;
        double d30 = d27;
        while (i27 >= 0) {
            if (this.lmPar == d29) {
                d13 = d30;
                this.lmPar = FastMath.max(Precision.SAFE_MIN, d28 * 0.001d);
            } else {
                d13 = d30;
            }
            double sqrt3 = FastMath.sqrt(this.lmPar);
            for (int i28 = 0; i28 < this.solvedCols; i28++) {
                int i29 = this.permutation[i28];
                dArr3[i29] = dArr2[i29] * sqrt3;
            }
            determineLMDirection(dArr6, dArr3, dArr4, dArr5);
            double d31 = 0.0d;
            for (int i30 = 0; i30 < this.solvedCols; i30++) {
                int i31 = this.permutation[i30];
                double d32 = dArr2[i31] * this.lmDir[i31];
                dArr5[i31] = d32;
                d31 += d32 * d32;
            }
            double sqrt4 = FastMath.sqrt(d31);
            double d33 = sqrt4 - d14;
            if (FastMath.abs(d33) <= d11) {
                return;
            }
            if (d12 == 0.0d && d33 <= d13 && d13 < 0.0d) {
                return;
            }
            for (int i32 = 0; i32 < this.solvedCols; i32++) {
                int i33 = this.permutation[i32];
                dArr3[i33] = (dArr5[i33] * dArr2[i33]) / sqrt4;
            }
            int i34 = 0;
            while (i34 < this.solvedCols) {
                int i35 = this.permutation[i34];
                double d34 = dArr3[i35] / dArr4[i34];
                dArr3[i35] = d34;
                i34++;
                for (int i36 = i34; i36 < this.solvedCols; i36++) {
                    int i37 = this.permutation[i36];
                    dArr3[i37] = dArr3[i37] - (this.weightedJacobian[i36][i35] * d34);
                }
            }
            double d35 = 0.0d;
            for (int i38 = 0; i38 < this.solvedCols; i38++) {
                double d36 = dArr3[this.permutation[i38]];
                d35 += d36 * d36;
            }
            double d37 = d33 / (d35 * d14);
            d29 = 0.0d;
            if (d33 > 0.0d) {
                d12 = FastMath.max(d12, this.lmPar);
            } else if (d33 < 0.0d) {
                d28 = FastMath.min(d28, this.lmPar);
            }
            this.lmPar = FastMath.max(d12, this.lmPar + d37);
            i27--;
            dArr6 = dArr;
            d14 = d10;
            d30 = d33;
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

    public LevenbergMarquardtOptimizer(ConvergenceChecker<PointVectorValuePair> convergenceChecker) {
        this(100.0d, convergenceChecker, 1.0E-10d, 1.0E-10d, 1.0E-10d, Precision.SAFE_MIN);
    }

    /* JADX WARN: Code restructure failed: missing block: B:117:0x0348, code lost:
    
        setCost(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x034b, code lost:
    
        return r2;
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x02d3  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0377  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x03a3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0308  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public PointVectorValuePair doOptimize() {
        double d10;
        double[] dArr;
        ConvergenceChecker<PointVectorValuePair> convergenceChecker;
        double d11;
        double[] dArr2;
        double[] dArr3;
        RealMatrix realMatrix;
        double d12;
        double d13;
        double d14;
        PointVectorValuePair pointVectorValuePair;
        double[] dArr4;
        PointVectorValuePair pointVectorValuePair2;
        double d15;
        double abs;
        double d16;
        double abs2;
        double d17;
        double d18;
        ConvergenceChecker<PointVectorValuePair> convergenceChecker2;
        RealMatrix realMatrix2;
        double[] dArr5;
        double[] dArr6;
        checkParameters();
        int length = getTarget().length;
        double[] startPoint = getStartPoint();
        int length2 = startPoint.length;
        this.solvedCols = FastMath.min(length, length2);
        this.diagR = new double[length2];
        this.jacNorm = new double[length2];
        this.beta = new double[length2];
        this.permutation = new int[length2];
        this.lmDir = new double[length2];
        double[] dArr7 = new double[length2];
        double[] dArr8 = new double[length2];
        double[] dArr9 = new double[length];
        double[] dArr10 = new double[length];
        double[] dArr11 = new double[length];
        double[] dArr12 = new double[length2];
        double[] dArr13 = new double[length2];
        double[] dArr14 = new double[length2];
        RealMatrix weightSquareRoot = getWeightSquareRoot();
        double[] computeObjectiveValue = computeObjectiveValue(startPoint);
        double[] computeResiduals = computeResiduals(computeObjectiveValue);
        PointVectorValuePair pointVectorValuePair3 = new PointVectorValuePair(startPoint, computeObjectiveValue);
        double computeCost = computeCost(computeResiduals);
        this.lmPar = 0.0d;
        ConvergenceChecker<PointVectorValuePair> convergenceChecker3 = getConvergenceChecker();
        boolean z10 = true;
        double d19 = 0.0d;
        double d20 = computeCost;
        double d21 = 0.0d;
        loop0: while (true) {
            incrementIterationCount();
            qrDecomposition(computeWeightedJacobian(startPoint));
            this.weightedResidual = weightSquareRoot.operate(computeResiduals);
            for (int i10 = 0; i10 < length; i10++) {
                dArr11[i10] = this.weightedResidual[i10];
            }
            qTy(dArr11);
            int i11 = 0;
            while (i11 < this.solvedCols) {
                int i12 = this.permutation[i11];
                this.weightedJacobian[i11][i12] = this.diagR[i12];
                i11++;
                dArr9 = dArr9;
                computeObjectiveValue = computeObjectiveValue;
            }
            double[] dArr15 = dArr9;
            double[] dArr16 = computeObjectiveValue;
            if (z10) {
                double d22 = 0.0d;
                for (int i13 = 0; i13 < length2; i13++) {
                    double d23 = this.jacNorm[i13];
                    if (d23 == 0.0d) {
                        d23 = 1.0d;
                    }
                    double d24 = startPoint[i13] * d23;
                    d22 += d24 * d24;
                    dArr7[i13] = d23;
                }
                d19 = FastMath.sqrt(d22);
                d10 = 0.0d;
                d21 = d19 == 0.0d ? this.initialStepBoundFactor : this.initialStepBoundFactor * d19;
            } else {
                d10 = 0.0d;
            }
            double d25 = d20;
            if (d25 != d10) {
                double d26 = d10;
                int i14 = 0;
                while (i14 < this.solvedCols) {
                    int i15 = this.permutation[i14];
                    double[] dArr17 = computeResiduals;
                    double d27 = this.jacNorm[i15];
                    if (d27 != 0.0d) {
                        double d28 = 0.0d;
                        int i16 = 0;
                        while (i16 <= i14) {
                            d28 += this.weightedJacobian[i16][i15] * dArr11[i16];
                            i16++;
                            convergenceChecker3 = convergenceChecker3;
                        }
                        convergenceChecker2 = convergenceChecker3;
                        realMatrix2 = weightSquareRoot;
                        double abs3 = FastMath.abs(d28) / (d27 * d25);
                        dArr5 = dArr11;
                        dArr6 = dArr12;
                        d26 = FastMath.max(d26, abs3);
                    } else {
                        convergenceChecker2 = convergenceChecker3;
                        realMatrix2 = weightSquareRoot;
                        dArr5 = dArr11;
                        dArr6 = dArr12;
                    }
                    i14++;
                    weightSquareRoot = realMatrix2;
                    computeResiduals = dArr17;
                    convergenceChecker3 = convergenceChecker2;
                    dArr11 = dArr5;
                    dArr12 = dArr6;
                }
                dArr = computeResiduals;
                convergenceChecker = convergenceChecker3;
                realMatrix = weightSquareRoot;
                dArr2 = dArr11;
                dArr3 = dArr12;
                d12 = d26;
                d11 = 0.0d;
            } else {
                dArr = computeResiduals;
                convergenceChecker = convergenceChecker3;
                d11 = d10;
                dArr2 = dArr11;
                dArr3 = dArr12;
                realMatrix = weightSquareRoot;
                d12 = d11;
            }
            if (d12 <= this.orthoTolerance) {
                setCost(d25);
                return pointVectorValuePair3;
            }
            int i17 = 0;
            while (i17 < length2) {
                dArr7[i17] = FastMath.max(dArr7[i17], this.jacNorm[i17]);
                i17++;
                d25 = d25;
            }
            double d29 = d25;
            PointVectorValuePair pointVectorValuePair4 = pointVectorValuePair3;
            double d30 = d21;
            computeResiduals = dArr;
            double d31 = d19;
            double d32 = d11;
            dArr9 = dArr15;
            double[] dArr18 = dArr16;
            while (d32 < 1.0E-4d) {
                for (int i18 = 0; i18 < this.solvedCols; i18++) {
                    int i19 = this.permutation[i18];
                    dArr8[i19] = startPoint[i19];
                }
                double[] dArr19 = this.weightedResidual;
                this.weightedResidual = dArr9;
                int i20 = length;
                double d33 = d12;
                PointVectorValuePair pointVectorValuePair5 = pointVectorValuePair3;
                double d34 = d30;
                ConvergenceChecker<PointVectorValuePair> convergenceChecker4 = convergenceChecker;
                RealMatrix realMatrix3 = realMatrix;
                double[] dArr20 = dArr18;
                determineLMParameter(dArr2, d30, dArr7, dArr3, dArr13, dArr14);
                double d35 = d11;
                for (int i21 = 0; i21 < this.solvedCols; i21++) {
                    int i22 = this.permutation[i21];
                    double[] dArr21 = this.lmDir;
                    double d36 = -dArr21[i22];
                    dArr21[i22] = d36;
                    startPoint[i22] = dArr8[i22] + d36;
                    double d37 = dArr7[i22] * dArr21[i22];
                    d35 += d37 * d37;
                }
                double sqrt = FastMath.sqrt(d35);
                d30 = z10 ? FastMath.min(d34, sqrt) : d34;
                double[] computeObjectiveValue2 = computeObjectiveValue(startPoint);
                double[] computeResiduals2 = computeResiduals(computeObjectiveValue2);
                PointVectorValuePair pointVectorValuePair6 = new PointVectorValuePair(startPoint, computeObjectiveValue2);
                double computeCost2 = computeCost(computeResiduals2);
                double d38 = 0.1d;
                double d39 = computeCost2 * 0.1d;
                if (d39 < d29) {
                    double d40 = computeCost2 / d29;
                    d13 = 1.0d - (d40 * d40);
                } else {
                    d13 = -1.0d;
                }
                int i23 = 0;
                while (i23 < this.solvedCols) {
                    int i24 = this.permutation[i23];
                    double[] dArr22 = computeObjectiveValue2;
                    double d41 = this.lmDir[i24];
                    dArr3[i23] = d11;
                    int i25 = 0;
                    while (i25 <= i23) {
                        dArr3[i25] = dArr3[i25] + (this.weightedJacobian[i25][i24] * d41);
                        i25++;
                        dArr8 = dArr8;
                    }
                    i23++;
                    computeObjectiveValue2 = dArr22;
                }
                double[] dArr23 = computeObjectiveValue2;
                double[] dArr24 = dArr8;
                double d42 = d11;
                for (int i26 = 0; i26 < this.solvedCols; i26++) {
                    double d43 = dArr3[i26];
                    d42 += d43 * d43;
                }
                double d44 = d29 * d29;
                double d45 = d42 / d44;
                double d46 = this.lmPar;
                double d47 = ((d46 * sqrt) * sqrt) / d44;
                double d48 = d45 + (d47 * 2.0d);
                double d49 = -(d45 + d47);
                double d50 = d48 == d11 ? d11 : d13 / d48;
                if (d50 <= 0.25d) {
                    double d51 = d13 < d11 ? (d49 * 0.5d) / (d49 + (0.5d * d13)) : 0.5d;
                    if (d39 < d29 && d51 >= 0.1d) {
                        d38 = d51;
                    }
                    d14 = FastMath.min(d30, sqrt * 10.0d) * d38;
                    this.lmPar /= d38;
                } else {
                    if (d46 == d11 || d50 >= 0.75d) {
                        d14 = sqrt * 2.0d;
                        this.lmPar = d46 * 0.5d;
                    }
                    if (d50 < 1.0E-4d) {
                        double d52 = d11;
                        for (int i27 = 0; i27 < length2; i27++) {
                            double d53 = dArr7[i27] * startPoint[i27];
                            d52 += d53 * d53;
                        }
                        d31 = FastMath.sqrt(d52);
                        if (convergenceChecker4 != null) {
                            pointVectorValuePair = pointVectorValuePair5;
                            d18 = computeCost2;
                            if (convergenceChecker4.converged(getIterations(), pointVectorValuePair, pointVectorValuePair6)) {
                                setCost(d18);
                                return pointVectorValuePair6;
                            }
                        } else {
                            pointVectorValuePair = pointVectorValuePair5;
                            d18 = computeCost2;
                        }
                        pointVectorValuePair2 = pointVectorValuePair6;
                        d15 = d18;
                        z10 = false;
                        dArr4 = dArr19;
                        dArr18 = dArr23;
                    } else {
                        pointVectorValuePair = pointVectorValuePair5;
                        for (int i28 = 0; i28 < this.solvedCols; i28++) {
                            int i29 = this.permutation[i28];
                            startPoint[i29] = dArr24[i29];
                        }
                        dArr4 = this.weightedResidual;
                        this.weightedResidual = dArr19;
                        pointVectorValuePair2 = new PointVectorValuePair(startPoint, dArr20);
                        dArr18 = dArr20;
                        d15 = d29;
                    }
                    abs = FastMath.abs(d13);
                    double[] dArr25 = dArr4;
                    PointVectorValuePair pointVectorValuePair7 = pointVectorValuePair;
                    d16 = this.costRelativeTolerance;
                    if ((abs <= d16 || d48 > d16 || d50 > 2.0d) && d30 > this.parRelativeTolerance * d31) {
                        abs2 = FastMath.abs(d13);
                        d17 = TWO_EPS;
                        if (abs2 > d17 && d48 <= d17 && d50 <= 2.0d) {
                            throw new ConvergenceException(LocalizedFormats.TOO_SMALL_COST_RELATIVE_TOLERANCE, Double.valueOf(this.costRelativeTolerance));
                        }
                        if (d30 > d17 * d31) {
                            throw new ConvergenceException(LocalizedFormats.TOO_SMALL_PARAMETERS_RELATIVE_TOLERANCE, Double.valueOf(this.parRelativeTolerance));
                        }
                        if (d33 <= d17) {
                            throw new ConvergenceException(LocalizedFormats.TOO_SMALL_ORTHOGONALITY_TOLERANCE, Double.valueOf(this.orthoTolerance));
                        }
                        pointVectorValuePair4 = pointVectorValuePair2;
                        dArr9 = dArr25;
                        d29 = d15;
                        realMatrix = realMatrix3;
                        d12 = d33;
                        pointVectorValuePair3 = pointVectorValuePair7;
                        computeResiduals = computeResiduals2;
                        dArr8 = dArr24;
                        d32 = d50;
                        convergenceChecker = convergenceChecker4;
                        length = i20;
                    }
                }
                d30 = d14;
                if (d50 < 1.0E-4d) {
                }
                abs = FastMath.abs(d13);
                double[] dArr252 = dArr4;
                PointVectorValuePair pointVectorValuePair72 = pointVectorValuePair;
                d16 = this.costRelativeTolerance;
                if (abs <= d16) {
                }
                abs2 = FastMath.abs(d13);
                d17 = TWO_EPS;
                if (abs2 > d17) {
                }
                if (d30 > d17 * d31) {
                }
            }
            double d54 = d30;
            weightSquareRoot = realMatrix;
            convergenceChecker3 = convergenceChecker;
            d19 = d31;
            length = length;
            d20 = d29;
            d21 = d54;
            dArr11 = dArr2;
            dArr12 = dArr3;
            pointVectorValuePair3 = pointVectorValuePair4;
            computeObjectiveValue = dArr18;
        }
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
