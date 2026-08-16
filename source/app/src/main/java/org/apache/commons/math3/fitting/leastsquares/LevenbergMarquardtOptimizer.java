package org.apache.commons.math3.fitting.leastsquares;

import java.util.Arrays;
import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.fitting.leastsquares.LeastSquaresOptimizer;
import org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem;
import org.apache.commons.math3.linear.ArrayRealVector;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.optim.ConvergenceChecker;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Incrementor;
import org.apache.commons.math3.util.Precision;

public class LevenbergMarquardtOptimizer implements LeastSquaresOptimizer {
    private static final double TWO_EPS = Precision.EPSILON * 2.0d;
    private final double costRelativeTolerance;
    private final double initialStepBoundFactor;
    private final double orthoTolerance;
    private final double parRelativeTolerance;
    private final double qrRankingThreshold;

    public static class InternalData {
        private final double[] beta;
        private final double[] diagR;
        private final double[] jacNorm;
        private final int[] permutation;
        private final int rank;
        private final double[][] weightedJacobian;

        public InternalData(double[][] dArr, int[] iArr, int i10, double[] dArr2, double[] dArr3, double[] dArr4) {
            this.weightedJacobian = dArr;
            this.permutation = iArr;
            this.rank = i10;
            this.diagR = dArr2;
            this.jacNorm = dArr3;
            this.beta = dArr4;
        }
    }

    public LevenbergMarquardtOptimizer() {
        this(100.0d, 1.0E-10d, 1.0E-10d, 1.0E-10d, Precision.SAFE_MIN);
    }

    private void determineLMDirection(double[] dArr, double[] dArr2, double[] dArr3, InternalData internalData, int i10, double[] dArr4, double[] dArr5) {
        int[] iArr;
        double d10;
        double d11;
        double[] dArr6 = dArr5;
        int[] iArr2 = internalData.permutation;
        double[][] dArr7 = internalData.weightedJacobian;
        double[] dArr8 = internalData.diagR;
        int i11 = 0;
        while (i11 < i10) {
            int i12 = iArr2[i11];
            int i13 = i11 + 1;
            for (int i14 = i13; i14 < i10; i14++) {
                dArr7[i14][i12] = dArr7[i11][iArr2[i14]];
            }
            dArr6[i11] = dArr8[i12];
            dArr4[i11] = dArr[i11];
            i11 = i13;
        }
        int i15 = 0;
        while (true) {
            double d12 = 0.0d;
            if (i15 >= i10) {
                break;
            }
            double d13 = dArr2[iArr2[i15]];
            if (d13 != 0.0d) {
                Arrays.fill(dArr3, i15 + 1, dArr3.length, 0.0d);
            }
            dArr3[i15] = d13;
            int i16 = i15;
            double d14 = 0.0d;
            while (i16 < i10) {
                int i17 = iArr2[i16];
                if (dArr3[i16] != d12) {
                    double d15 = dArr7[i16][i17];
                    if (FastMath.abs(d15) < FastMath.abs(dArr3[i16])) {
                        double d16 = d15 / dArr3[i16];
                        double sqrt = 1.0d / FastMath.sqrt((d16 * d16) + 1.0d);
                        d11 = d16 * sqrt;
                        d10 = sqrt;
                    } else {
                        double d17 = dArr3[i16] / d15;
                        double sqrt2 = 1.0d / FastMath.sqrt((d17 * d17) + 1.0d);
                        d10 = d17 * sqrt2;
                        d11 = sqrt2;
                    }
                    dArr7[i16][i17] = (d15 * d11) + (dArr3[i16] * d10);
                    double d18 = dArr4[i16];
                    double d19 = (d11 * d18) + (d10 * d14);
                    iArr = iArr2;
                    double d20 = -d10;
                    d14 = (d14 * d11) + (d18 * d20);
                    dArr4[i16] = d19;
                    for (int i18 = i16 + 1; i18 < i10; i18++) {
                        double[] dArr9 = dArr7[i18];
                        double d21 = dArr9[i17];
                        double d22 = dArr3[i18];
                        dArr3[i18] = (d21 * d20) + (d22 * d11);
                        dArr9[i17] = (d11 * d21) + (d10 * d22);
                    }
                } else {
                    iArr = iArr2;
                }
                i16++;
                iArr2 = iArr;
                d12 = 0.0d;
            }
            int[] iArr3 = iArr2;
            double[] dArr10 = dArr7[i15];
            int i19 = iArr3[i15];
            dArr3[i15] = dArr10[i19];
            dArr10[i19] = dArr5[i15];
            i15++;
            dArr6 = dArr5;
            iArr2 = iArr3;
        }
        double[] dArr11 = dArr6;
        int[] iArr4 = iArr2;
        int i20 = i10;
        for (int i21 = 0; i21 < i10; i21++) {
            if (dArr3[i21] == 0.0d && i20 == i10) {
                i20 = i21;
            }
            if (i20 < i10) {
                dArr4[i21] = 0.0d;
            }
        }
        if (i20 > 0) {
            for (int i22 = i20 - 1; i22 >= 0; i22--) {
                int i23 = iArr4[i22];
                double d23 = 0.0d;
                for (int i24 = i22 + 1; i24 < i20; i24++) {
                    d23 += dArr7[i24][i23] * dArr4[i24];
                }
                dArr4[i22] = (dArr4[i22] - d23) / dArr3[i22];
            }
        }
        for (int i25 = 0; i25 < dArr11.length; i25++) {
            dArr11[iArr4[i25]] = dArr4[i25];
        }
    }

    private double determineLMParameter(double[] dArr, double d10, double[] dArr2, InternalData internalData, int i10, double[] dArr3, double[] dArr4, double[] dArr5, double[] dArr6, double d11) {
        double d12;
        double d13;
        double d14;
        double[][] dArr7 = internalData.weightedJacobian;
        int[] iArr = internalData.permutation;
        int i11 = internalData.rank;
        double[] dArr8 = internalData.diagR;
        int i12 = 0;
        int length = dArr7[0].length;
        for (int i13 = 0; i13 < i11; i13++) {
            dArr6[iArr[i13]] = dArr[i13];
        }
        for (int i14 = i11; i14 < length; i14++) {
            dArr6[iArr[i14]] = 0.0d;
        }
        for (int i15 = i11 - 1; i15 >= 0; i15--) {
            int i16 = iArr[i15];
            double d15 = dArr6[i16] / dArr8[i16];
            for (int i17 = 0; i17 < i15; i17++) {
                int i18 = iArr[i17];
                dArr6[i18] = dArr6[i18] - (dArr7[i17][i16] * d15);
            }
            dArr6[i16] = d15;
        }
        double d16 = 0.0d;
        for (int i19 = 0; i19 < i10; i19++) {
            int i20 = iArr[i19];
            double d17 = dArr2[i20] * dArr6[i20];
            dArr3[i20] = d17;
            d16 += d17 * d17;
        }
        double sqrt = FastMath.sqrt(d16);
        double d18 = sqrt - d10;
        double d19 = d10 * 0.1d;
        if (d18 <= d19) {
            return 0.0d;
        }
        if (i11 == i10) {
            for (int i21 = 0; i21 < i10; i21++) {
                int i22 = iArr[i21];
                dArr3[i22] = dArr3[i22] * (dArr2[i22] / sqrt);
            }
            int i23 = 0;
            double d20 = 0.0d;
            while (i23 < i10) {
                int i24 = iArr[i23];
                double d21 = 0.0d;
                while (i12 < i23) {
                    d21 += dArr7[i12][i24] * dArr3[iArr[i12]];
                    i12++;
                }
                double d22 = (dArr3[i24] - d21) / dArr8[i24];
                dArr3[i24] = d22;
                d20 += d22 * d22;
                i23++;
                i12 = 0;
            }
            d12 = d18 / (d10 * d20);
        } else {
            d12 = 0.0d;
        }
        double d23 = 0.0d;
        for (int i25 = 0; i25 < i10; i25++) {
            int i26 = iArr[i25];
            double d24 = 0.0d;
            for (int i27 = 0; i27 <= i25; i27++) {
                d24 += dArr7[i27][i26] * dArr[i27];
            }
            double d25 = d24 / dArr2[i26];
            d23 += d25 * d25;
        }
        double sqrt2 = FastMath.sqrt(d23);
        double d26 = sqrt2 / d10;
        if (d26 == 0.0d) {
            d26 = Precision.SAFE_MIN / FastMath.min(d10, 0.1d);
        }
        double d27 = d26;
        double d28 = d18;
        double min = FastMath.min(d27, FastMath.max(d11, d12));
        double d29 = 0.0d;
        if (min == 0.0d) {
            min = sqrt2 / sqrt;
        }
        int i28 = 10;
        double d30 = d27;
        double d31 = d12;
        while (i28 >= 0) {
            if (min == d29) {
                min = FastMath.max(Precision.SAFE_MIN, 0.001d * d30);
            }
            double sqrt3 = FastMath.sqrt(min);
            for (int i29 = 0; i29 < i10; i29++) {
                int i30 = iArr[i29];
                dArr3[i30] = dArr2[i30] * sqrt3;
            }
            double d32 = min;
            double d33 = d30;
            determineLMDirection(dArr, dArr3, dArr4, internalData, i10, dArr5, dArr6);
            double d34 = 0.0d;
            for (int i31 = 0; i31 < i10; i31++) {
                int i32 = iArr[i31];
                double d35 = dArr2[i32] * dArr6[i32];
                dArr5[i32] = d35;
                d34 += d35 * d35;
            }
            double sqrt4 = FastMath.sqrt(d34);
            double d36 = sqrt4 - d10;
            if (FastMath.abs(d36) <= d19 || (d31 == 0.0d && d36 <= d28 && d28 < 0.0d)) {
                return d32;
            }
            for (int i33 = 0; i33 < i10; i33++) {
                int i34 = iArr[i33];
                dArr3[i34] = (dArr5[i34] * dArr2[i34]) / sqrt4;
            }
            int i35 = 0;
            while (i35 < i10) {
                int i36 = iArr[i35];
                double d37 = dArr3[i36] / dArr4[i35];
                dArr3[i36] = d37;
                i35++;
                for (int i37 = i35; i37 < i10; i37++) {
                    int i38 = iArr[i37];
                    dArr3[i38] = dArr3[i38] - (dArr7[i37][i36] * d37);
                }
            }
            double d38 = 0.0d;
            for (int i39 = 0; i39 < i10; i39++) {
                double d39 = dArr3[iArr[i39]];
                d38 += d39 * d39;
            }
            double d40 = d36 / (d10 * d38);
            if (d36 > 0.0d) {
                d13 = d32;
                d31 = FastMath.max(d31, d13);
                d14 = d33;
            } else {
                d13 = d32;
                d14 = d33;
                if (d36 < 0.0d) {
                    d14 = FastMath.min(d14, d13);
                }
            }
            double max = FastMath.max(d31, d40 + d13);
            i28--;
            d30 = d14;
            d28 = d36;
            d29 = 0.0d;
            min = max;
        }
        return min;
    }

    private void qTy(double[] dArr, InternalData internalData) {
        double[][] dArr2 = internalData.weightedJacobian;
        int[] iArr = internalData.permutation;
        double[] dArr3 = internalData.beta;
        int length = dArr2.length;
        int length2 = dArr2[0].length;
        for (int i10 = 0; i10 < length2; i10++) {
            int i11 = iArr[i10];
            double d10 = 0.0d;
            for (int i12 = i10; i12 < length; i12++) {
                d10 += dArr2[i12][i11] * dArr[i12];
            }
            double d11 = d10 * dArr3[i11];
            for (int i13 = i10; i13 < length; i13++) {
                dArr[i13] = dArr[i13] - (dArr2[i13][i11] * d11);
            }
        }
    }

    private InternalData qrDecomposition(RealMatrix realMatrix, int i10) throws ConvergenceException {
        double d10;
        double[][] data = realMatrix.scalarMultiply(-1.0d).getData();
        int length = data.length;
        int length2 = data[0].length;
        int[] iArr = new int[length2];
        double[] dArr = new double[length2];
        double[] dArr2 = new double[length2];
        double[] dArr3 = new double[length2];
        int i11 = 0;
        while (true) {
            d10 = 0.0d;
            if (i11 >= length2) {
                break;
            }
            iArr[i11] = i11;
            for (double[] dArr4 : data) {
                double d11 = dArr4[i11];
                d10 += d11 * d11;
            }
            dArr2[i11] = FastMath.sqrt(d10);
            i11++;
        }
        int i12 = 0;
        while (i12 < length2) {
            int i13 = -1;
            double d12 = Double.NEGATIVE_INFINITY;
            for (int i14 = i12; i14 < length2; i14++) {
                double d13 = d10;
                for (int i15 = i12; i15 < length; i15++) {
                    double d14 = data[i15][iArr[i14]];
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
                return new InternalData(data, iArr, i12, dArr, dArr2, dArr3);
            }
            int i16 = iArr[i13];
            iArr[i13] = iArr[i12];
            iArr[i12] = i16;
            double d15 = data[i12][i16];
            double sqrt = FastMath.sqrt(d12);
            if (d15 > d10) {
                sqrt = -sqrt;
            }
            double d16 = 1.0d / (d12 - (d15 * sqrt));
            dArr3[i16] = d16;
            dArr[i16] = sqrt;
            double[] dArr5 = data[i12];
            dArr5[i16] = dArr5[i16] - sqrt;
            for (int i17 = (length2 - 1) - i12; i17 > 0; i17--) {
                double d17 = 0.0d;
                for (int i18 = i12; i18 < length; i18++) {
                    double[] dArr6 = data[i18];
                    d17 += dArr6[i16] * dArr6[iArr[i12 + i17]];
                }
                double d18 = d17 * d16;
                for (int i19 = i12; i19 < length; i19++) {
                    double[] dArr7 = data[i19];
                    int i20 = iArr[i12 + i17];
                    dArr7[i20] = dArr7[i20] - (dArr7[i16] * d18);
                }
            }
            i12++;
            d10 = 0.0d;
        }
        return new InternalData(data, iArr, i10, dArr, dArr2, dArr3);
    }

    public double getCostRelativeTolerance() {
        return this.costRelativeTolerance;
    }

    public double getInitialStepBoundFactor() {
        return this.initialStepBoundFactor;
    }

    public double getOrthoTolerance() {
        return this.orthoTolerance;
    }

    public double getParameterRelativeTolerance() {
        return this.parRelativeTolerance;
    }

    public double getRankingThreshold() {
        return this.qrRankingThreshold;
    }

    /* JADX WARN: Removed duplicated region for block: B:126:0x0336  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0367 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:140:0x02cd  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0290  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public LeastSquaresOptimizer.Optimum optimize(LeastSquaresProblem leastSquaresProblem) {
        double[] dArr;
        double[] dArr2;
        double[] dArr3;
        double[] dArr4;
        double d10;
        LeastSquaresProblem.Evaluation evaluation;
        double d11;
        double d12;
        double d13;
        LeastSquaresProblem.Evaluation evaluation2;
        double abs;
        double d14;
        double abs2;
        double d15;
        double d16;
        double[] dArr5;
        double[] dArr6;
        double d17;
        LevenbergMarquardtOptimizer levenbergMarquardtOptimizer = this;
        int observationSize = leastSquaresProblem.getObservationSize();
        int parameterSize = leastSquaresProblem.getParameterSize();
        Incrementor iterationCounter = leastSquaresProblem.getIterationCounter();
        Incrementor evaluationCounter = leastSquaresProblem.getEvaluationCounter();
        ConvergenceChecker<LeastSquaresProblem.Evaluation> convergenceChecker = leastSquaresProblem.getConvergenceChecker();
        int min = FastMath.min(observationSize, parameterSize);
        double[] dArr7 = new double[parameterSize];
        double[] dArr8 = new double[parameterSize];
        double[] dArr9 = new double[parameterSize];
        double[] dArr10 = new double[observationSize];
        double[] dArr11 = new double[observationSize];
        double[] dArr12 = new double[parameterSize];
        double[] dArr13 = new double[parameterSize];
        double[] dArr14 = new double[parameterSize];
        evaluationCounter.incrementCount();
        LeastSquaresProblem.Evaluation evaluate = leastSquaresProblem.evaluate(leastSquaresProblem.getStart());
        double[] array = evaluate.getResiduals().toArray();
        double cost = evaluate.getCost();
        boolean z10 = true;
        double d18 = 0.0d;
        double d19 = 0.0d;
        double d20 = 0.0d;
        LeastSquaresProblem.Evaluation evaluation3 = evaluate;
        double[] array2 = evaluate.getPoint().toArray();
        loop0: while (true) {
            iterationCounter.incrementCount();
            double[] dArr15 = dArr14;
            InternalData qrDecomposition = levenbergMarquardtOptimizer.qrDecomposition(evaluation3.getJacobian(), min);
            double[][] dArr16 = qrDecomposition.weightedJacobian;
            int[] iArr = qrDecomposition.permutation;
            double[] dArr17 = qrDecomposition.diagR;
            double[] dArr18 = qrDecomposition.jacNorm;
            double[] dArr19 = dArr13;
            for (int i10 = 0; i10 < observationSize; i10++) {
                dArr11[i10] = array[i10];
            }
            levenbergMarquardtOptimizer.qTy(dArr11, qrDecomposition);
            for (int i11 = 0; i11 < min; i11++) {
                int i12 = iArr[i11];
                dArr16[i11][i12] = dArr17[i12];
            }
            if (z10) {
                double d21 = 0.0d;
                for (int i13 = 0; i13 < parameterSize; i13++) {
                    double d22 = dArr18[i13];
                    if (d22 == 0.0d) {
                        d22 = 1.0d;
                    }
                    double d23 = array2[i13] * d22;
                    d21 += d23 * d23;
                    dArr8[i13] = d22;
                }
                d20 = FastMath.sqrt(d21);
                dArr = array2;
                if (d20 == 0.0d) {
                    dArr2 = array;
                    d17 = levenbergMarquardtOptimizer.initialStepBoundFactor;
                } else {
                    dArr2 = array;
                    d17 = levenbergMarquardtOptimizer.initialStepBoundFactor * d20;
                }
                d19 = d17;
            } else {
                dArr = array2;
                dArr2 = array;
            }
            InternalData internalData = qrDecomposition;
            if (cost != 0.0d) {
                double d24 = 0.0d;
                int i14 = 0;
                while (i14 < min) {
                    int i15 = iArr[i14];
                    double d25 = dArr18[i15];
                    if (d25 != 0.0d) {
                        dArr5 = dArr2;
                        double d26 = 0.0d;
                        for (int i16 = 0; i16 <= i14; i16++) {
                            d26 += dArr16[i16][i15] * dArr11[i16];
                        }
                        dArr6 = dArr12;
                        d24 = FastMath.max(d24, FastMath.abs(d26) / (d25 * cost));
                    } else {
                        dArr5 = dArr2;
                        dArr6 = dArr12;
                    }
                    i14++;
                    dArr12 = dArr6;
                    dArr2 = dArr5;
                }
                dArr3 = dArr2;
                dArr4 = dArr12;
                d10 = d24;
            } else {
                dArr3 = dArr2;
                dArr4 = dArr12;
                d10 = 0.0d;
            }
            if (d10 <= levenbergMarquardtOptimizer.orthoTolerance) {
                return new OptimumImpl(evaluation3, evaluationCounter.getCount(), iterationCounter.getCount());
            }
            for (int i17 = 0; i17 < parameterSize; i17++) {
                dArr8[i17] = FastMath.max(dArr8[i17], dArr18[i17]);
            }
            evaluation = evaluation3;
            double[] dArr20 = dArr;
            array = dArr3;
            double d27 = 0.0d;
            while (d27 < 1.0E-4d) {
                for (int i18 = 0; i18 < min; i18++) {
                    int i19 = iArr[i18];
                    dArr9[i19] = dArr20[i19];
                }
                LeastSquaresProblem.Evaluation evaluation4 = evaluation3;
                InternalData internalData2 = internalData;
                double[] dArr21 = dArr19;
                int i20 = observationSize;
                double[] dArr22 = dArr20;
                double[] dArr23 = dArr4;
                double[] dArr24 = dArr11;
                double[] dArr25 = dArr9;
                double[] dArr26 = dArr8;
                double[] dArr27 = dArr7;
                int i21 = min;
                int i22 = parameterSize;
                ConvergenceChecker<LeastSquaresProblem.Evaluation> convergenceChecker2 = convergenceChecker;
                double determineLMParameter = determineLMParameter(dArr11, d19, dArr8, internalData2, min, dArr23, dArr21, dArr15, dArr27, d18);
                double d28 = 0.0d;
                for (int i23 = 0; i23 < i21; i23++) {
                    int i24 = iArr[i23];
                    double d29 = -dArr27[i24];
                    dArr27[i24] = d29;
                    dArr22[i24] = dArr25[i24] + d29;
                    double d30 = dArr26[i24] * dArr27[i24];
                    d28 += d30 * d30;
                }
                double sqrt = FastMath.sqrt(d28);
                double d31 = d19;
                if (z10) {
                    d31 = FastMath.min(d31, sqrt);
                }
                evaluationCounter.incrementCount();
                LeastSquaresProblem.Evaluation evaluate2 = leastSquaresProblem.evaluate(new ArrayRealVector(dArr22));
                double[] array3 = evaluate2.getResiduals().toArray();
                double cost2 = evaluate2.getCost();
                double[] array4 = evaluate2.getPoint().toArray();
                double d32 = cost2 * 0.1d;
                if (d32 < cost) {
                    double d33 = cost2 / cost;
                    d11 = 1.0d - (d33 * d33);
                } else {
                    d11 = -1.0d;
                }
                for (int i25 = 0; i25 < i21; i25++) {
                    int i26 = iArr[i25];
                    double d34 = dArr27[i26];
                    dArr23[i25] = 0.0d;
                    for (int i27 = 0; i27 <= i25; i27++) {
                        dArr23[i27] = dArr23[i27] + (dArr16[i27][i26] * d34);
                    }
                }
                double d35 = 0.0d;
                for (int i28 = 0; i28 < i21; i28++) {
                    double d36 = dArr23[i28];
                    d35 += d36 * d36;
                }
                double d37 = cost * cost;
                double d38 = d35 / d37;
                double d39 = ((determineLMParameter * sqrt) * sqrt) / d37;
                double d40 = d38 + (d39 * 2.0d);
                double d41 = -(d38 + d39);
                double d42 = d40 == 0.0d ? 0.0d : d11 / d40;
                if (d42 <= 0.25d) {
                    double d43 = d11 < 0.0d ? (d41 * 0.5d) / (d41 + (0.5d * d11)) : 0.5d;
                    if (d32 < cost) {
                        d16 = 0.1d;
                        if (d43 >= 0.1d) {
                            d16 = d43;
                        }
                    } else {
                        d16 = 0.1d;
                    }
                    d12 = FastMath.min(d31, sqrt * 10.0d) * d16;
                    d13 = determineLMParameter / d16;
                } else if (determineLMParameter == 0.0d || d42 >= 0.75d) {
                    d12 = sqrt * 2.0d;
                    d13 = determineLMParameter * 0.5d;
                } else {
                    d18 = determineLMParameter;
                    d12 = d31;
                    if (d42 < 1.0E-4d) {
                        double d44 = 0.0d;
                        parameterSize = i22;
                        for (int i29 = 0; i29 < parameterSize; i29++) {
                            double d45 = dArr26[i29] * array4[i29];
                            d44 += d45 * d45;
                        }
                        d20 = FastMath.sqrt(d44);
                        convergenceChecker = convergenceChecker2;
                        if (convergenceChecker != null) {
                            evaluation2 = evaluation4;
                            if (convergenceChecker.converged(iterationCounter.getCount(), evaluation2, evaluate2)) {
                                return new OptimumImpl(evaluate2, evaluationCounter.getCount(), iterationCounter.getCount());
                            }
                        } else {
                            evaluation2 = evaluation4;
                        }
                        evaluation = evaluate2;
                        cost = cost2;
                        z10 = false;
                    } else {
                        evaluation2 = evaluation4;
                        parameterSize = i22;
                        convergenceChecker = convergenceChecker2;
                        for (int i30 = 0; i30 < i21; i30++) {
                            int i31 = iArr[i30];
                            array4[i31] = dArr25[i31];
                        }
                        evaluation = evaluation2;
                    }
                    abs = FastMath.abs(d11);
                    d14 = this.costRelativeTolerance;
                    if ((abs <= d14 || d40 > d14 || d42 > 2.0d) && d12 > this.parRelativeTolerance * d20) {
                        abs2 = FastMath.abs(d11);
                        d15 = TWO_EPS;
                        if (abs2 > d15 && d40 <= d15 && d42 <= 2.0d) {
                            throw new ConvergenceException(LocalizedFormats.TOO_SMALL_COST_RELATIVE_TOLERANCE, Double.valueOf(this.costRelativeTolerance));
                        }
                        if (d12 > d15 * d20) {
                            throw new ConvergenceException(LocalizedFormats.TOO_SMALL_PARAMETERS_RELATIVE_TOLERANCE, Double.valueOf(this.parRelativeTolerance));
                        }
                        if (d10 <= d15) {
                            throw new ConvergenceException(LocalizedFormats.TOO_SMALL_ORTHOGONALITY_TOLERANCE, Double.valueOf(this.orthoTolerance));
                        }
                        d19 = d12;
                        levenbergMarquardtOptimizer = this;
                        dArr20 = array4;
                        min = i21;
                        observationSize = i20;
                        dArr11 = dArr24;
                        dArr8 = dArr26;
                        dArr7 = dArr27;
                        evaluation3 = evaluation2;
                        array = array3;
                        dArr19 = dArr21;
                        dArr4 = dArr23;
                        dArr9 = dArr25;
                        internalData = internalData2;
                        d27 = d42;
                    }
                }
                d18 = d13;
                if (d42 < 1.0E-4d) {
                }
                abs = FastMath.abs(d11);
                d14 = this.costRelativeTolerance;
                if (abs <= d14) {
                }
                abs2 = FastMath.abs(d11);
                d15 = TWO_EPS;
                if (abs2 > d15) {
                }
                if (d12 > d15 * d20) {
                }
            }
            evaluation3 = evaluation;
            dArr14 = dArr15;
            array2 = dArr20;
            dArr13 = dArr19;
            dArr12 = dArr4;
        }
        return new OptimumImpl(evaluation, evaluationCounter.getCount(), iterationCounter.getCount());
    }

    public LevenbergMarquardtOptimizer withCostRelativeTolerance(double d10) {
        return new LevenbergMarquardtOptimizer(this.initialStepBoundFactor, d10, this.parRelativeTolerance, this.orthoTolerance, this.qrRankingThreshold);
    }

    public LevenbergMarquardtOptimizer withInitialStepBoundFactor(double d10) {
        return new LevenbergMarquardtOptimizer(d10, this.costRelativeTolerance, this.parRelativeTolerance, this.orthoTolerance, this.qrRankingThreshold);
    }

    public LevenbergMarquardtOptimizer withOrthoTolerance(double d10) {
        return new LevenbergMarquardtOptimizer(this.initialStepBoundFactor, this.costRelativeTolerance, this.parRelativeTolerance, d10, this.qrRankingThreshold);
    }

    public LevenbergMarquardtOptimizer withParameterRelativeTolerance(double d10) {
        return new LevenbergMarquardtOptimizer(this.initialStepBoundFactor, this.costRelativeTolerance, d10, this.orthoTolerance, this.qrRankingThreshold);
    }

    public LevenbergMarquardtOptimizer withRankingThreshold(double d10) {
        return new LevenbergMarquardtOptimizer(this.initialStepBoundFactor, this.costRelativeTolerance, this.parRelativeTolerance, this.orthoTolerance, d10);
    }

    public LevenbergMarquardtOptimizer(double d10, double d11, double d12, double d13, double d14) {
        this.initialStepBoundFactor = d10;
        this.costRelativeTolerance = d11;
        this.parRelativeTolerance = d12;
        this.orthoTolerance = d13;
        this.qrRankingThreshold = d14;
    }
}
