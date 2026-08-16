package org.apache.commons.math3.optim.nonlinear.scalar.noderiv;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.linear.Array2DRowRealMatrix;
import org.apache.commons.math3.linear.EigenDecomposition;
import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.optim.ConvergenceChecker;
import org.apache.commons.math3.optim.OptimizationData;
import org.apache.commons.math3.optim.PointValuePair;
import org.apache.commons.math3.optim.nonlinear.scalar.GoalType;
import org.apache.commons.math3.optim.nonlinear.scalar.MultivariateOptimizer;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;

public class CMAESOptimizer extends MultivariateOptimizer {

    private RealMatrix f100286B;
    private RealMatrix BD;

    private RealMatrix f100287C;

    private RealMatrix f100288D;

    private double f100289cc;
    private double ccov1;
    private double ccov1Sep;
    private double ccovmu;
    private double ccovmuSep;
    private final int checkFeasableCount;
    private double chiN;
    private double cs;
    private double damps;
    private RealMatrix diagC;
    private RealMatrix diagD;
    private int diagonalOnly;
    private int dimension;
    private double[] fitnessHistory;
    private final boolean generateStatistics;
    private int historySize;
    private double[] inputSigma;
    private final boolean isActiveCMA;
    private boolean isMinimize;
    private int iterations;
    private int lambda;
    private double logMu2;
    private final int maxIterations;
    private int mu;
    private double mueff;
    private double normps;

    private RealMatrix f100290pc;
    private RealMatrix ps;
    private final RandomGenerator random;
    private double sigma;
    private final List<RealMatrix> statisticsDHistory;
    private final List<Double> statisticsFitnessHistory;
    private final List<RealMatrix> statisticsMeanHistory;
    private final List<Double> statisticsSigmaHistory;
    private final double stopFitness;
    private double stopTolFun;
    private double stopTolHistFun;
    private double stopTolUpX;
    private double stopTolX;
    private RealMatrix weights;
    private RealMatrix xmean;

    public static class DoubleIndex implements Comparable<DoubleIndex> {
        private final int index;
        private final double value;

        public DoubleIndex(double d10, int i10) {
            this.value = d10;
            this.index = i10;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof DoubleIndex) && Double.compare(this.value, ((DoubleIndex) obj).value) == 0;
        }

        public int hashCode() {
            long doubleToLongBits = Double.doubleToLongBits(this.value);
            return (int) (doubleToLongBits ^ ((doubleToLongBits >>> 32) ^ 1438542));
        }

        @Override
        public int compareTo(DoubleIndex doubleIndex) {
            return Double.compare(this.value, doubleIndex.value);
        }
    }

    public class FitnessFunction {
        private final boolean isRepairMode = true;

        public FitnessFunction() {
        }

        private double penalty(double[] dArr, double[] dArr2) {
            double d10 = 0.0d;
            for (int i10 = 0; i10 < dArr.length; i10++) {
                d10 += FastMath.abs(dArr[i10] - dArr2[i10]);
            }
            return CMAESOptimizer.this.isMinimize ? d10 : -d10;
        }

        public double[] repair(double[] dArr) {
            double[] lowerBound = CMAESOptimizer.this.getLowerBound();
            double[] upperBound = CMAESOptimizer.this.getUpperBound();
            double[] dArr2 = new double[dArr.length];
            for (int i10 = 0; i10 < dArr.length; i10++) {
                double d10 = dArr[i10];
                double d11 = lowerBound[i10];
                if (d10 < d11) {
                    dArr2[i10] = d11;
                } else {
                    double d12 = upperBound[i10];
                    if (d10 > d12) {
                        dArr2[i10] = d12;
                    } else {
                        dArr2[i10] = d10;
                    }
                }
            }
            return dArr2;
        }

        public boolean isFeasible(double[] dArr) {
            double[] lowerBound = CMAESOptimizer.this.getLowerBound();
            double[] upperBound = CMAESOptimizer.this.getUpperBound();
            for (int i10 = 0; i10 < dArr.length; i10++) {
                double d10 = dArr[i10];
                if (d10 < lowerBound[i10] || d10 > upperBound[i10]) {
                    return false;
                }
            }
            return true;
        }

        public ValuePenaltyPair value(double[] dArr) {
            double computeObjectiveValue;
            double d10;
            if (this.isRepairMode) {
                double[] repair = repair(dArr);
                computeObjectiveValue = CMAESOptimizer.this.computeObjectiveValue(repair);
                d10 = penalty(dArr, repair);
            } else {
                computeObjectiveValue = CMAESOptimizer.this.computeObjectiveValue(dArr);
                d10 = 0.0d;
            }
            if (!CMAESOptimizer.this.isMinimize) {
                computeObjectiveValue = -computeObjectiveValue;
            }
            if (!CMAESOptimizer.this.isMinimize) {
                d10 = -d10;
            }
            return new ValuePenaltyPair(computeObjectiveValue, d10);
        }
    }

    public static class PopulationSize implements OptimizationData {
        private final int lambda;

        public PopulationSize(int i10) throws NotStrictlyPositiveException {
            if (i10 <= 0) {
                throw new NotStrictlyPositiveException(Integer.valueOf(i10));
            }
            this.lambda = i10;
        }

        public int getPopulationSize() {
            return this.lambda;
        }
    }

    public static class Sigma implements OptimizationData {
        private final double[] sigma;

        public Sigma(double[] dArr) throws NotPositiveException {
            for (int i10 = 0; i10 < dArr.length; i10++) {
                if (dArr[i10] < 0.0d) {
                    throw new NotPositiveException(Double.valueOf(dArr[i10]));
                }
            }
            this.sigma = (double[]) dArr.clone();
        }

        public double[] getSigma() {
            return (double[]) this.sigma.clone();
        }
    }

    public static class ValuePenaltyPair {
        private double penalty;
        private double value;

        public ValuePenaltyPair(double d10, double d11) {
            this.value = d10;
            this.penalty = d11;
        }
    }

    public CMAESOptimizer(int i10, double d10, boolean z10, int i11, int i12, RandomGenerator randomGenerator, boolean z11, ConvergenceChecker<PointValuePair> convergenceChecker) {
        super(convergenceChecker);
        this.isMinimize = true;
        this.statisticsSigmaHistory = new ArrayList();
        this.statisticsMeanHistory = new ArrayList();
        this.statisticsFitnessHistory = new ArrayList();
        this.statisticsDHistory = new ArrayList();
        this.maxIterations = i10;
        this.stopFitness = d10;
        this.isActiveCMA = z10;
        this.diagonalOnly = i11;
        this.checkFeasableCount = i12;
        this.random = randomGenerator;
        this.generateStatistics = z11;
    }

    private void checkParameters() {
        double[] startPoint = getStartPoint();
        double[] lowerBound = getLowerBound();
        double[] upperBound = getUpperBound();
        double[] dArr = this.inputSigma;
        if (dArr != null) {
            if (dArr.length != startPoint.length) {
                throw new DimensionMismatchException(this.inputSigma.length, startPoint.length);
            }
            for (int i10 = 0; i10 < startPoint.length; i10++) {
                if (this.inputSigma[i10] > upperBound[i10] - lowerBound[i10]) {
                    throw new OutOfRangeException(Double.valueOf(this.inputSigma[i10]), 0, Double.valueOf(upperBound[i10] - lowerBound[i10]));
                }
            }
        }
    }

    private static void copyColumn(RealMatrix realMatrix, int i10, RealMatrix realMatrix2, int i11) {
        for (int i12 = 0; i12 < realMatrix.getRowDimension(); i12++) {
            realMatrix2.setEntry(i12, i11, realMatrix.getEntry(i12, i10));
        }
    }

    private static RealMatrix diag(RealMatrix realMatrix) {
        if (realMatrix.getColumnDimension() == 1) {
            double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, realMatrix.getRowDimension(), realMatrix.getRowDimension());
            for (int i10 = 0; i10 < realMatrix.getRowDimension(); i10++) {
                dArr[i10][i10] = realMatrix.getEntry(i10, 0);
            }
            return new Array2DRowRealMatrix(dArr, false);
        }
        double[][] dArr2 = (double[][]) Array.newInstance(Double.TYPE, realMatrix.getRowDimension(), 1);
        for (int i11 = 0; i11 < realMatrix.getColumnDimension(); i11++) {
            dArr2[i11][0] = realMatrix.getEntry(i11, i11);
        }
        return new Array2DRowRealMatrix(dArr2, false);
    }

    private static RealMatrix divide(RealMatrix realMatrix, RealMatrix realMatrix2) {
        double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, realMatrix.getRowDimension(), realMatrix.getColumnDimension());
        for (int i10 = 0; i10 < realMatrix.getRowDimension(); i10++) {
            for (int i11 = 0; i11 < realMatrix.getColumnDimension(); i11++) {
                dArr[i10][i11] = realMatrix.getEntry(i10, i11) / realMatrix2.getEntry(i10, i11);
            }
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    private static RealMatrix eye(int i10, int i11) {
        double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, i10, i11);
        for (int i12 = 0; i12 < i10; i12++) {
            if (i12 < i11) {
                dArr[i12][i12] = 1.0d;
            }
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    private void initializeCMA(double[] dArr) {
        if (this.lambda <= 0) {
            throw new NotStrictlyPositiveException(Integer.valueOf(this.lambda));
        }
        double[][] dArr2 = (double[][]) Array.newInstance(Double.TYPE, dArr.length, 1);
        for (int i10 = 0; i10 < dArr.length; i10++) {
            dArr2[i10][0] = this.inputSigma[i10];
        }
        Array2DRowRealMatrix array2DRowRealMatrix = new Array2DRowRealMatrix(dArr2, false);
        this.sigma = max(array2DRowRealMatrix);
        this.stopTolUpX = max(array2DRowRealMatrix) * 1000.0d;
        this.stopTolX = max(array2DRowRealMatrix) * 1.0E-11d;
        this.stopTolFun = 1.0E-12d;
        this.stopTolHistFun = 1.0E-13d;
        int i11 = this.lambda / 2;
        this.mu = i11;
        this.logMu2 = FastMath.log(i11 + 0.5d);
        this.weights = log(sequence(1.0d, this.mu, 1.0d)).scalarMultiply(-1.0d).scalarAdd(this.logMu2);
        double d10 = 0.0d;
        double d11 = 0.0d;
        for (int i12 = 0; i12 < this.mu; i12++) {
            double entry = this.weights.getEntry(i12, 0);
            d10 += entry;
            d11 += entry * entry;
        }
        this.weights = this.weights.scalarMultiply(1.0d / d10);
        double d12 = (d10 * d10) / d11;
        this.mueff = d12;
        int i13 = this.dimension;
        this.f100289cc = ((d12 / i13) + 4.0d) / ((i13 + 4) + ((d12 * 2.0d) / i13));
        this.cs = (d12 + 2.0d) / ((i13 + d12) + 3.0d);
        this.damps = (((FastMath.max(0.0d, FastMath.sqrt((d12 - 1.0d) / (i13 + 1)) - 1.0d) * 2.0d) + 1.0d) * FastMath.max(0.3d, 1.0d - (this.dimension / (this.maxIterations + 1.0E-6d)))) + this.cs;
        int i14 = this.dimension;
        double d13 = this.mueff;
        double d14 = 2.0d / (((i14 + 1.3d) * (i14 + 1.3d)) + d13);
        this.ccov1 = d14;
        this.ccovmu = FastMath.min(1.0d - d14, (((d13 - 2.0d) + (1.0d / d13)) * 2.0d) / (((i14 + 2) * (i14 + 2)) + d13));
        this.ccov1Sep = FastMath.min(1.0d, (this.ccov1 * (this.dimension + 1.5d)) / 3.0d);
        this.ccovmuSep = FastMath.min(1.0d - this.ccov1, (this.ccovmu * (this.dimension + 1.5d)) / 3.0d);
        double sqrt = FastMath.sqrt(this.dimension);
        int i15 = this.dimension;
        this.chiN = sqrt * ((1.0d - (1.0d / (i15 * 4.0d))) + (1.0d / ((i15 * 21.0d) * i15)));
        this.xmean = MatrixUtils.createColumnRealMatrix(dArr);
        RealMatrix scalarMultiply = array2DRowRealMatrix.scalarMultiply(1.0d / this.sigma);
        this.diagD = scalarMultiply;
        this.diagC = square(scalarMultiply);
        this.f100290pc = zeros(this.dimension, 1);
        RealMatrix zeros = zeros(this.dimension, 1);
        this.ps = zeros;
        this.normps = zeros.getFrobeniusNorm();
        int i16 = this.dimension;
        this.f100286B = eye(i16, i16);
        this.f100288D = ones(this.dimension, 1);
        this.BD = times(this.f100286B, repmat(this.diagD.transpose(), this.dimension, 1));
        this.f100287C = this.f100286B.multiply(diag(square(this.f100288D)).multiply(this.f100286B.transpose()));
        int i17 = ((int) ((this.dimension * 30) / this.lambda)) + 10;
        this.historySize = i17;
        this.fitnessHistory = new double[i17];
        for (int i18 = 0; i18 < this.historySize; i18++) {
            this.fitnessHistory[i18] = Double.MAX_VALUE;
        }
    }

    private static int[] inverse(int[] iArr) {
        int[] iArr2 = new int[iArr.length];
        for (int i10 = 0; i10 < iArr.length; i10++) {
            iArr2[iArr[i10]] = i10;
        }
        return iArr2;
    }

    private static RealMatrix log(RealMatrix realMatrix) {
        double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, realMatrix.getRowDimension(), realMatrix.getColumnDimension());
        for (int i10 = 0; i10 < realMatrix.getRowDimension(); i10++) {
            for (int i11 = 0; i11 < realMatrix.getColumnDimension(); i11++) {
                dArr[i10][i11] = FastMath.log(realMatrix.getEntry(i10, i11));
            }
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    private static double max(RealMatrix realMatrix) {
        double d10 = -1.7976931348623157E308d;
        for (int i10 = 0; i10 < realMatrix.getRowDimension(); i10++) {
            for (int i11 = 0; i11 < realMatrix.getColumnDimension(); i11++) {
                double entry = realMatrix.getEntry(i10, i11);
                if (d10 < entry) {
                    d10 = entry;
                }
            }
        }
        return d10;
    }

    private static double min(RealMatrix realMatrix) {
        double d10 = Double.MAX_VALUE;
        for (int i10 = 0; i10 < realMatrix.getRowDimension(); i10++) {
            for (int i11 = 0; i11 < realMatrix.getColumnDimension(); i11++) {
                double entry = realMatrix.getEntry(i10, i11);
                if (d10 > entry) {
                    d10 = entry;
                }
            }
        }
        return d10;
    }

    private static RealMatrix ones(int i10, int i11) {
        double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, i10, i11);
        for (int i12 = 0; i12 < i10; i12++) {
            Arrays.fill(dArr[i12], 1.0d);
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    private static void push(double[] dArr, double d10) {
        for (int length = dArr.length - 1; length > 0; length--) {
            dArr[length] = dArr[length - 1];
        }
        dArr[0] = d10;
    }

    private double[] randn(int i10) {
        double[] dArr = new double[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            dArr[i11] = this.random.nextGaussian();
        }
        return dArr;
    }

    private RealMatrix randn1(int i10, int i11) {
        double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, i10, i11);
        for (int i12 = 0; i12 < i10; i12++) {
            for (int i13 = 0; i13 < i11; i13++) {
                dArr[i12][i13] = this.random.nextGaussian();
            }
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    private static RealMatrix repmat(RealMatrix realMatrix, int i10, int i11) {
        int rowDimension = realMatrix.getRowDimension();
        int columnDimension = realMatrix.getColumnDimension();
        int i12 = i10 * rowDimension;
        int i13 = i11 * columnDimension;
        double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, i12, i13);
        for (int i14 = 0; i14 < i12; i14++) {
            for (int i15 = 0; i15 < i13; i15++) {
                dArr[i14][i15] = realMatrix.getEntry(i14 % rowDimension, i15 % columnDimension);
            }
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    private static int[] reverse(int[] iArr) {
        int[] iArr2 = new int[iArr.length];
        for (int i10 = 0; i10 < iArr.length; i10++) {
            iArr2[i10] = iArr[(iArr.length - i10) - 1];
        }
        return iArr2;
    }

    private static RealMatrix selectColumns(RealMatrix realMatrix, int[] iArr) {
        double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, realMatrix.getRowDimension(), iArr.length);
        for (int i10 = 0; i10 < realMatrix.getRowDimension(); i10++) {
            for (int i11 = 0; i11 < iArr.length; i11++) {
                dArr[i10][i11] = realMatrix.getEntry(i10, iArr[i11]);
            }
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    private static RealMatrix sequence(double d10, double d11, double d12) {
        int i10 = (int) (((d11 - d10) / d12) + 1.0d);
        double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, i10, 1);
        for (int i11 = 0; i11 < i10; i11++) {
            dArr[i11][0] = d10;
            d10 += d12;
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    private int[] sortedIndices(double[] dArr) {
        DoubleIndex[] doubleIndexArr = new DoubleIndex[dArr.length];
        for (int i10 = 0; i10 < dArr.length; i10++) {
            doubleIndexArr[i10] = new DoubleIndex(dArr[i10], i10);
        }
        Arrays.sort(doubleIndexArr);
        int[] iArr = new int[dArr.length];
        for (int i11 = 0; i11 < dArr.length; i11++) {
            iArr[i11] = doubleIndexArr[i11].index;
        }
        return iArr;
    }

    private static RealMatrix sqrt(RealMatrix realMatrix) {
        double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, realMatrix.getRowDimension(), realMatrix.getColumnDimension());
        for (int i10 = 0; i10 < realMatrix.getRowDimension(); i10++) {
            for (int i11 = 0; i11 < realMatrix.getColumnDimension(); i11++) {
                dArr[i10][i11] = FastMath.sqrt(realMatrix.getEntry(i10, i11));
            }
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    private static RealMatrix square(RealMatrix realMatrix) {
        double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, realMatrix.getRowDimension(), realMatrix.getColumnDimension());
        for (int i10 = 0; i10 < realMatrix.getRowDimension(); i10++) {
            for (int i11 = 0; i11 < realMatrix.getColumnDimension(); i11++) {
                double entry = realMatrix.getEntry(i10, i11);
                dArr[i10][i11] = entry * entry;
            }
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    private static RealMatrix sumRows(RealMatrix realMatrix) {
        double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, 1, realMatrix.getColumnDimension());
        for (int i10 = 0; i10 < realMatrix.getColumnDimension(); i10++) {
            double d10 = 0.0d;
            for (int i11 = 0; i11 < realMatrix.getRowDimension(); i11++) {
                d10 += realMatrix.getEntry(i11, i10);
            }
            dArr[0][i10] = d10;
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    private static RealMatrix times(RealMatrix realMatrix, RealMatrix realMatrix2) {
        double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, realMatrix.getRowDimension(), realMatrix.getColumnDimension());
        for (int i10 = 0; i10 < realMatrix.getRowDimension(); i10++) {
            for (int i11 = 0; i11 < realMatrix.getColumnDimension(); i11++) {
                dArr[i10][i11] = realMatrix.getEntry(i10, i11) * realMatrix2.getEntry(i10, i11);
            }
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    private static RealMatrix triu(RealMatrix realMatrix, int i10) {
        double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, realMatrix.getRowDimension(), realMatrix.getColumnDimension());
        int i11 = 0;
        while (i11 < realMatrix.getRowDimension()) {
            for (int i12 = 0; i12 < realMatrix.getColumnDimension(); i12++) {
                dArr[i11][i12] = i11 <= i12 - i10 ? realMatrix.getEntry(i11, i12) : 0.0d;
            }
            i11++;
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    private void updateBD(double d10) {
        double d11 = this.ccov1;
        double d12 = this.ccovmu;
        if (d11 + d12 + d10 <= 0.0d || (((this.iterations % 1.0d) / ((d11 + d12) + d10)) / this.dimension) / 10.0d >= 1.0d) {
            return;
        }
        RealMatrix add = triu(this.f100287C, 0).add(triu(this.f100287C, 1).transpose());
        this.f100287C = add;
        EigenDecomposition eigenDecomposition = new EigenDecomposition(add);
        this.f100286B = eigenDecomposition.getV();
        RealMatrix d13 = eigenDecomposition.getD();
        this.f100288D = d13;
        RealMatrix diag = diag(d13);
        this.diagD = diag;
        if (min(diag) <= 0.0d) {
            for (int i10 = 0; i10 < this.dimension; i10++) {
                if (this.diagD.getEntry(i10, 0) < 0.0d) {
                    this.diagD.setEntry(i10, 0, 0.0d);
                }
            }
            double max = max(this.diagD) / 1.0E14d;
            RealMatrix realMatrix = this.f100287C;
            int i11 = this.dimension;
            this.f100287C = realMatrix.add(eye(i11, i11).scalarMultiply(max));
            this.diagD = this.diagD.add(ones(this.dimension, 1).scalarMultiply(max));
        }
        if (max(this.diagD) > min(this.diagD) * 1.0E14d) {
            double max2 = (max(this.diagD) / 1.0E14d) - min(this.diagD);
            RealMatrix realMatrix2 = this.f100287C;
            int i12 = this.dimension;
            this.f100287C = realMatrix2.add(eye(i12, i12).scalarMultiply(max2));
            this.diagD = this.diagD.add(ones(this.dimension, 1).scalarMultiply(max2));
        }
        this.diagC = diag(this.f100287C);
        RealMatrix sqrt = sqrt(this.diagD);
        this.diagD = sqrt;
        this.BD = times(this.f100286B, repmat(sqrt.transpose(), this.dimension, 1));
    }

    private void updateCovariance(boolean z10, RealMatrix realMatrix, RealMatrix realMatrix2, int[] iArr, RealMatrix realMatrix3) {
        double d10;
        double d11;
        if (this.ccov1 + this.ccovmu > 0.0d) {
            RealMatrix scalarMultiply = realMatrix.subtract(repmat(realMatrix3, 1, this.mu)).scalarMultiply(1.0d / this.sigma);
            RealMatrix realMatrix4 = this.f100290pc;
            RealMatrix scalarMultiply2 = realMatrix4.multiply(realMatrix4.transpose()).scalarMultiply(this.ccov1);
            if (z10) {
                d11 = 0.0d;
            } else {
                double d12 = this.ccov1;
                double d13 = this.f100289cc;
                d11 = d12 * d13 * (2.0d - d13);
            }
            double d14 = 1.0d - this.ccov1;
            double d15 = this.ccovmu;
            double d16 = d11 + (d14 - d15);
            if (this.isActiveCMA) {
                double pow = (((1.0d - d15) * 0.25d) * this.mueff) / (FastMath.pow(this.dimension + 2, 1.5d) + (this.mueff * 2.0d));
                RealMatrix selectColumns = selectColumns(realMatrix2, MathArrays.copyOf(reverse(iArr), this.mu));
                RealMatrix sqrt = sqrt(sumRows(square(selectColumns)));
                int[] sortedIndices = sortedIndices(sqrt.getRow(0));
                RealMatrix selectColumns2 = selectColumns(divide(selectColumns(sqrt, reverse(sortedIndices)), selectColumns(sqrt, sortedIndices)), inverse(sortedIndices));
                double entry = 0.33999999999999997d / square(selectColumns2).multiply(this.weights).getEntry(0, 0);
                if (pow <= entry) {
                    entry = pow;
                }
                RealMatrix multiply = this.BD.multiply(times(selectColumns, repmat(selectColumns2, this.dimension, 1)));
                double d17 = 0.5d * entry;
                this.f100287C = this.f100287C.scalarMultiply(d16 + d17).add(scalarMultiply2).add(scalarMultiply.scalarMultiply(this.ccovmu + d17).multiply(times(repmat(this.weights, 1, this.dimension), scalarMultiply.transpose()))).subtract(multiply.multiply(diag(this.weights)).multiply(multiply.transpose()).scalarMultiply(entry));
                d10 = entry;
                updateBD(d10);
            }
            this.f100287C = this.f100287C.scalarMultiply(d16).add(scalarMultiply2).add(scalarMultiply.scalarMultiply(this.ccovmu).multiply(times(repmat(this.weights, 1, this.dimension), scalarMultiply.transpose())));
        }
        d10 = 0.0d;
        updateBD(d10);
    }

    private void updateCovarianceDiagonalOnly(boolean z10, RealMatrix realMatrix) {
        double d10;
        if (z10) {
            d10 = 0.0d;
        } else {
            double d11 = this.ccov1Sep;
            double d12 = this.f100289cc;
            d10 = d11 * d12 * (2.0d - d12);
        }
        RealMatrix add = this.diagC.scalarMultiply(d10 + ((1.0d - this.ccov1Sep) - this.ccovmuSep)).add(square(this.f100290pc).scalarMultiply(this.ccov1Sep)).add(times(this.diagC, square(realMatrix).multiply(this.weights)).scalarMultiply(this.ccovmuSep));
        this.diagC = add;
        this.diagD = sqrt(add);
        int i10 = this.diagonalOnly;
        if (i10 <= 1 || this.iterations <= i10) {
            return;
        }
        this.diagonalOnly = 0;
        int i11 = this.dimension;
        this.f100286B = eye(i11, i11);
        this.BD = diag(this.diagD);
        this.f100287C = diag(this.diagC);
    }

    private boolean updateEvolutionPaths(RealMatrix realMatrix, RealMatrix realMatrix2) {
        RealMatrix scalarMultiply = this.ps.scalarMultiply(1.0d - this.cs);
        RealMatrix multiply = this.f100286B.multiply(realMatrix);
        double d10 = this.cs;
        RealMatrix add = scalarMultiply.add(multiply.scalarMultiply(FastMath.sqrt(d10 * (2.0d - d10) * this.mueff)));
        this.ps = add;
        double frobeniusNorm = add.getFrobeniusNorm();
        this.normps = frobeniusNorm;
        boolean z10 = (frobeniusNorm / FastMath.sqrt(1.0d - FastMath.pow(1.0d - this.cs, this.iterations * 2))) / this.chiN < (2.0d / (((double) this.dimension) + 1.0d)) + 1.4d;
        RealMatrix scalarMultiply2 = this.f100290pc.scalarMultiply(1.0d - this.f100289cc);
        this.f100290pc = scalarMultiply2;
        if (z10) {
            RealMatrix subtract = this.xmean.subtract(realMatrix2);
            double d11 = this.f100289cc;
            this.f100290pc = scalarMultiply2.add(subtract.scalarMultiply(FastMath.sqrt((d11 * (2.0d - d11)) * this.mueff) / this.sigma));
        }
        return z10;
    }

    private double valueRange(ValuePenaltyPair[] valuePenaltyPairArr) {
        double d10 = Double.NEGATIVE_INFINITY;
        double d11 = Double.MAX_VALUE;
        for (ValuePenaltyPair valuePenaltyPair : valuePenaltyPairArr) {
            if (valuePenaltyPair.value > d10) {
                d10 = valuePenaltyPair.value;
            }
            if (valuePenaltyPair.value < d11) {
                d11 = valuePenaltyPair.value;
            }
        }
        return d10 - d11;
    }

    private static RealMatrix zeros(int i10, int i11) {
        return new Array2DRowRealMatrix(i10, i11);
    }

    public List<RealMatrix> getStatisticsDHistory() {
        return this.statisticsDHistory;
    }

    public List<Double> getStatisticsFitnessHistory() {
        return this.statisticsFitnessHistory;
    }

    public List<RealMatrix> getStatisticsMeanHistory() {
        return this.statisticsMeanHistory;
    }

    public List<Double> getStatisticsSigmaHistory() {
        return this.statisticsSigmaHistory;
    }

    @Override
    public void parseOptimizationData(OptimizationData... optimizationDataArr) {
        super.parseOptimizationData(optimizationDataArr);
        for (OptimizationData optimizationData : optimizationDataArr) {
            if (optimizationData instanceof Sigma) {
                this.inputSigma = ((Sigma) optimizationData).getSigma();
            } else if (optimizationData instanceof PopulationSize) {
                this.lambda = ((PopulationSize) optimizationData).getPopulationSize();
            }
        }
        checkParameters();
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0270, code lost:
    
        r0 = new org.apache.commons.math3.optim.PointValuePair(r4, r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0273, code lost:
    
        if (r21 == null) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x0281, code lost:
    
        if (getConvergenceChecker().converged(r24.iterations, r0, r21) == false) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0285, code lost:
    
        r14 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x02a4, code lost:
    
        if (r17 != r15[r23[(int) ((r24.lambda / 4.0d) + 0.1d)]]) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x02a6, code lost:
    
        r21 = r1;
        r15 = r14;
        r24.sigma *= org.apache.commons.math3.util.FastMath.exp((r24.cs / r24.damps) + 0.2d);
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x02bf, code lost:
    
        if (r24.iterations <= 2) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x02c1, code lost:
    
        r0 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x02ce, code lost:
    
        if ((org.apache.commons.math3.util.FastMath.max(r11, r0) - org.apache.commons.math3.util.FastMath.min(r7, r0)) != 0.0d) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x02d0, code lost:
    
        r24.sigma *= org.apache.commons.math3.util.FastMath.exp((r24.cs / r24.damps) + 0.2d);
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x02e2, code lost:
    
        push(r24.fitnessHistory, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x02e9, code lost:
    
        if (r24.generateStatistics == false) goto L133;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x02eb, code lost:
    
        r24.statisticsSigmaHistory.add(java.lang.Double.valueOf(r24.sigma));
        r24.statisticsFitnessHistory.add(java.lang.Double.valueOf(r0));
        r24.statisticsMeanHistory.add(r24.xmean.transpose());
        r24.statisticsDHistory.add(r24.diagD.transpose().scalarMultiply(100000.0d));
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x031e, code lost:
    
        r24.iterations++;
        r9 = 1;
        r11 = r5;
        r14 = r15;
        r7 = r16;
        r12 = r17;
        r8 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x02e0, code lost:
    
        r0 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x02b9, code lost:
    
        r21 = r1;
        r15 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x026f, code lost:
    
        r13 = -r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x0287, code lost:
    
        r14 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01ff, code lost:
    
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0202, code lost:
    
        if (r7 >= r24.dimension) goto L141;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x020d, code lost:
    
        if ((r24.sigma * r0[r7]) <= r24.stopTolUpX) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0211, code lost:
    
        r7 = r7 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0214, code lost:
    
        r7 = min(r24.fitnessHistory);
        r11 = max(r24.fitnessHistory);
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0223, code lost:
    
        if (r24.iterations <= 2) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0232, code lost:
    
        if ((org.apache.commons.math3.util.FastMath.max(r11, r3) - org.apache.commons.math3.util.FastMath.min(r7, r1)) >= r24.stopTolFun) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x023a, code lost:
    
        if (r24.iterations <= r24.fitnessHistory.length) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0242, code lost:
    
        if ((r11 - r7) >= r24.stopTolHistFun) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0259, code lost:
    
        if ((max(r24.diagD) / min(r24.diagD)) <= 1.0E7d) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0260, code lost:
    
        if (getConvergenceChecker() == null) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0262, code lost:
    
        r4 = r10.getColumn(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x026b, code lost:
    
        if (r24.isMinimize == false) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x026d, code lost:
    
        r13 = r1;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public PointValuePair doOptimize() {
        PointValuePair pointValuePair;
        PointValuePair pointValuePair2;
        PointValuePair pointValuePair3;
        FitnessFunction fitnessFunction;
        int[] iArr;
        PointValuePair pointValuePair4;
        double d10;
        int i10;
        RealMatrix realMatrix;
        this.isMinimize = getGoalType().equals(GoalType.MINIMIZE);
        FitnessFunction fitnessFunction2 = new FitnessFunction();
        double[] startPoint = getStartPoint();
        this.dimension = startPoint.length;
        initializeCMA(startPoint);
        int i11 = 0;
        this.iterations = 0;
        ValuePenaltyPair value = fitnessFunction2.value(startPoint);
        double d11 = value.value + value.penalty;
        push(this.fitnessHistory, d11);
        PointValuePair pointValuePair5 = new PointValuePair(getStartPoint(), this.isMinimize ? d11 : -d11);
        int i12 = 1;
        this.iterations = 1;
        PointValuePair pointValuePair6 = pointValuePair5;
        double d12 = d11;
        PointValuePair pointValuePair7 = null;
        loop0: while (this.iterations <= this.maxIterations) {
            incrementIterationCount();
            RealMatrix randn1 = randn1(this.dimension, this.lambda);
            RealMatrix zeros = zeros(this.dimension, this.lambda);
            int i13 = this.lambda;
            double[] dArr = new double[i13];
            ValuePenaltyPair[] valuePenaltyPairArr = new ValuePenaltyPair[i13];
            int i14 = i11;
            while (i14 < this.lambda) {
                int i15 = i11;
                RealMatrix realMatrix2 = null;
                while (i15 < this.checkFeasableCount + i12) {
                    if (this.diagonalOnly <= 0) {
                        pointValuePair = pointValuePair6;
                        d10 = d12;
                        realMatrix = this.xmean.add(this.BD.multiply(randn1.getColumnMatrix(i14)).scalarMultiply(this.sigma));
                    } else {
                        pointValuePair = pointValuePair6;
                        d10 = d12;
                        realMatrix = this.xmean.add(times(this.diagD, randn1.getColumnMatrix(i14)).scalarMultiply(this.sigma));
                    }
                    if (i15 >= this.checkFeasableCount || fitnessFunction2.isFeasible(realMatrix.getColumn(0))) {
                        i10 = 0;
                        break;
                    }
                    randn1.setColumn(i14, randn(this.dimension));
                    i15++;
                    realMatrix2 = realMatrix;
                    pointValuePair6 = pointValuePair;
                    d12 = d10;
                    i11 = 0;
                    i12 = 1;
                }
                pointValuePair = pointValuePair6;
                d10 = d12;
                i10 = i11;
                realMatrix = realMatrix2;
                copyColumn(realMatrix, i10, zeros, i14);
                try {
                    valuePenaltyPairArr[i14] = fitnessFunction2.value(zeros.getColumn(i14));
                    i14++;
                    pointValuePair6 = pointValuePair;
                    d12 = d10;
                    i11 = 0;
                    i12 = 1;
                } catch (TooManyEvaluationsException unused) {
                }
            }
            PointValuePair pointValuePair8 = pointValuePair6;
            double d13 = d12;
            double valueRange = valueRange(valuePenaltyPairArr);
            for (int i16 = 0; i16 < i13; i16++) {
                dArr[i16] = valuePenaltyPairArr[i16].value + (valuePenaltyPairArr[i16].penalty * valueRange);
            }
            int[] sortedIndices = sortedIndices(dArr);
            RealMatrix realMatrix3 = this.xmean;
            RealMatrix selectColumns = selectColumns(zeros, MathArrays.copyOf(sortedIndices, this.mu));
            this.xmean = selectColumns.multiply(this.weights);
            RealMatrix selectColumns2 = selectColumns(randn1, MathArrays.copyOf(sortedIndices, this.mu));
            boolean updateEvolutionPaths = updateEvolutionPaths(selectColumns2.multiply(this.weights), realMatrix3);
            if (this.diagonalOnly <= 0) {
                updateCovariance(updateEvolutionPaths, selectColumns, randn1, sortedIndices, realMatrix3);
            } else {
                updateCovarianceDiagonalOnly(updateEvolutionPaths, selectColumns2);
            }
            this.sigma *= FastMath.exp(FastMath.min(1.0d, (((this.normps / this.chiN) - 1.0d) * this.cs) / this.damps));
            double d14 = dArr[sortedIndices[0]];
            double d15 = dArr[sortedIndices[sortedIndices.length - 1]];
            if (d13 > d14) {
                pointValuePair2 = new PointValuePair(fitnessFunction2.repair(selectColumns.getColumn(0)), this.isMinimize ? d14 : -d14);
                if (getConvergenceChecker() != null && getConvergenceChecker().converged(this.iterations, pointValuePair2, pointValuePair8)) {
                    return pointValuePair2;
                }
                d13 = d14;
                pointValuePair3 = pointValuePair8;
            } else {
                pointValuePair2 = pointValuePair8;
                pointValuePair3 = pointValuePair7;
            }
            double d16 = this.stopFitness;
            if (d16 != 0.0d) {
                if (!this.isMinimize) {
                    d16 = -d16;
                }
                if (d14 < d16) {
                    return pointValuePair2;
                }
            }
            double[] column = sqrt(this.diagC).getColumn(0);
            double[] column2 = this.f100290pc.getColumn(0);
            int i17 = 0;
            while (true) {
                if (i17 >= this.dimension) {
                    fitnessFunction = fitnessFunction2;
                    iArr = sortedIndices;
                    pointValuePair4 = pointValuePair3;
                    break;
                }
                fitnessFunction = fitnessFunction2;
                iArr = sortedIndices;
                pointValuePair4 = pointValuePair3;
                double[] dArr2 = column2;
                if (this.sigma * FastMath.max(FastMath.abs(column2[i17]), column[i17]) > this.stopTolX) {
                    break;
                }
                if (i17 >= this.dimension - 1) {
                    break loop0;
                }
                i17++;
                fitnessFunction2 = fitnessFunction;
                pointValuePair3 = pointValuePair4;
                column2 = dArr2;
                sortedIndices = iArr;
            }
            return pointValuePair2;
        }
        pointValuePair = pointValuePair6;
        return pointValuePair;
    }

    @Override
    public PointValuePair optimize(OptimizationData... optimizationDataArr) throws TooManyEvaluationsException, DimensionMismatchException {
        return super.optimize(optimizationDataArr);
    }

    private static double max(double[] dArr) {
        double d10 = -1.7976931348623157E308d;
        for (double d11 : dArr) {
            if (d10 < d11) {
                d10 = d11;
            }
        }
        return d10;
    }

    private static double min(double[] dArr) {
        double d10 = Double.MAX_VALUE;
        for (double d11 : dArr) {
            if (d10 > d11) {
                d10 = d11;
            }
        }
        return d10;
    }
}
