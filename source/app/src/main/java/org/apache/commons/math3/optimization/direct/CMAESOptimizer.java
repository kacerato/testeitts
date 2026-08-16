package org.apache.commons.math3.optimization.direct;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.linear.Array2DRowRealMatrix;
import org.apache.commons.math3.linear.EigenDecomposition;
import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.optimization.ConvergenceChecker;
import org.apache.commons.math3.optimization.GoalType;
import org.apache.commons.math3.optimization.MultivariateOptimizer;
import org.apache.commons.math3.optimization.OptimizationData;
import org.apache.commons.math3.optimization.PointValuePair;
import org.apache.commons.math3.optimization.SimpleValueChecker;
import org.apache.commons.math3.random.MersenneTwister;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;

@Deprecated
public class CMAESOptimizer extends BaseAbstractMultivariateSimpleBoundsOptimizer<MultivariateFunction> implements MultivariateOptimizer {
    public static final int DEFAULT_CHECKFEASABLECOUNT = 0;
    public static final int DEFAULT_DIAGONALONLY = 0;
    public static final boolean DEFAULT_ISACTIVECMA = true;
    public static final int DEFAULT_MAXITERATIONS = 30000;
    public static final RandomGenerator DEFAULT_RANDOMGENERATOR = new MersenneTwister();
    public static final double DEFAULT_STOPFITNESS = 0.0d;

    private RealMatrix f100292B;
    private RealMatrix BD;

    private RealMatrix f100293C;

    private RealMatrix f100294D;

    private double f100295cc;
    private double ccov1;
    private double ccov1Sep;
    private double ccovmu;
    private double ccovmuSep;
    private int checkFeasableCount;
    private double chiN;
    private double cs;
    private double damps;
    private RealMatrix diagC;
    private RealMatrix diagD;
    private int diagonalOnly;
    private int dimension;
    private double[] fitnessHistory;
    private boolean generateStatistics;
    private int historySize;
    private double[] inputSigma;
    private boolean isActiveCMA;
    private boolean isMinimize;
    private int iterations;
    private int lambda;
    private double logMu2;
    private int maxIterations;
    private int mu;
    private double mueff;
    private double normps;

    private RealMatrix f100296pc;
    private RealMatrix ps;
    private RandomGenerator random;
    private double sigma;
    private List<RealMatrix> statisticsDHistory;
    private List<Double> statisticsFitnessHistory;
    private List<RealMatrix> statisticsMeanHistory;
    private List<Double> statisticsSigmaHistory;
    private double stopFitness;
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
        private double valueRange = 1.0d;
        private final boolean isRepairMode = true;

        public FitnessFunction() {
        }

        private double penalty(double[] dArr, double[] dArr2) {
            double d10 = 0.0d;
            for (int i10 = 0; i10 < dArr.length; i10++) {
                d10 += FastMath.abs(dArr[i10] - dArr2[i10]) * this.valueRange;
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

        public void setValueRange(double d10) {
            this.valueRange = d10;
        }

        public double value(double[] dArr) {
            double computeObjectiveValue;
            if (this.isRepairMode) {
                double[] repair = repair(dArr);
                computeObjectiveValue = CMAESOptimizer.this.computeObjectiveValue(repair) + penalty(dArr, repair);
            } else {
                computeObjectiveValue = CMAESOptimizer.this.computeObjectiveValue(dArr);
            }
            return CMAESOptimizer.this.isMinimize ? computeObjectiveValue : -computeObjectiveValue;
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

    @Deprecated
    public CMAESOptimizer() {
        this(0);
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
                double d10 = this.inputSigma[i10];
                if (d10 < 0.0d) {
                    throw new NotPositiveException(Double.valueOf(this.inputSigma[i10]));
                }
                if (d10 > upperBound[i10] - lowerBound[i10]) {
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
            this.lambda = ((int) (FastMath.log(this.dimension) * 3.0d)) + 4;
        }
        double[][] dArr2 = (double[][]) Array.newInstance(Double.TYPE, dArr.length, 1);
        for (int i10 = 0; i10 < dArr.length; i10++) {
            double[] dArr3 = dArr2[i10];
            double[] dArr4 = this.inputSigma;
            dArr3[0] = dArr4 == null ? 0.3d : dArr4[i10];
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
        this.f100295cc = ((d12 / i13) + 4.0d) / ((i13 + 4) + ((d12 * 2.0d) / i13));
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
        this.f100296pc = zeros(this.dimension, 1);
        RealMatrix zeros = zeros(this.dimension, 1);
        this.ps = zeros;
        this.normps = zeros.getFrobeniusNorm();
        int i16 = this.dimension;
        this.f100292B = eye(i16, i16);
        this.f100294D = ones(this.dimension, 1);
        this.BD = times(this.f100292B, repmat(this.diagD.transpose(), this.dimension, 1));
        this.f100293C = this.f100292B.multiply(diag(square(this.f100294D)).multiply(this.f100292B.transpose()));
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

    private void parseOptimizationData(OptimizationData... optimizationDataArr) {
        for (OptimizationData optimizationData : optimizationDataArr) {
            if (optimizationData instanceof Sigma) {
                this.inputSigma = ((Sigma) optimizationData).getSigma();
            } else if (optimizationData instanceof PopulationSize) {
                this.lambda = ((PopulationSize) optimizationData).getPopulationSize();
            }
        }
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
        RealMatrix add = triu(this.f100293C, 0).add(triu(this.f100293C, 1).transpose());
        this.f100293C = add;
        EigenDecomposition eigenDecomposition = new EigenDecomposition(add);
        this.f100292B = eigenDecomposition.getV();
        RealMatrix d13 = eigenDecomposition.getD();
        this.f100294D = d13;
        RealMatrix diag = diag(d13);
        this.diagD = diag;
        if (min(diag) <= 0.0d) {
            for (int i10 = 0; i10 < this.dimension; i10++) {
                if (this.diagD.getEntry(i10, 0) < 0.0d) {
                    this.diagD.setEntry(i10, 0, 0.0d);
                }
            }
            double max = max(this.diagD) / 1.0E14d;
            RealMatrix realMatrix = this.f100293C;
            int i11 = this.dimension;
            this.f100293C = realMatrix.add(eye(i11, i11).scalarMultiply(max));
            this.diagD = this.diagD.add(ones(this.dimension, 1).scalarMultiply(max));
        }
        if (max(this.diagD) > min(this.diagD) * 1.0E14d) {
            double max2 = (max(this.diagD) / 1.0E14d) - min(this.diagD);
            RealMatrix realMatrix2 = this.f100293C;
            int i12 = this.dimension;
            this.f100293C = realMatrix2.add(eye(i12, i12).scalarMultiply(max2));
            this.diagD = this.diagD.add(ones(this.dimension, 1).scalarMultiply(max2));
        }
        this.diagC = diag(this.f100293C);
        RealMatrix sqrt = sqrt(this.diagD);
        this.diagD = sqrt;
        this.BD = times(this.f100292B, repmat(sqrt.transpose(), this.dimension, 1));
    }

    private void updateCovariance(boolean z10, RealMatrix realMatrix, RealMatrix realMatrix2, int[] iArr, RealMatrix realMatrix3) {
        double d10;
        double d11;
        if (this.ccov1 + this.ccovmu > 0.0d) {
            RealMatrix scalarMultiply = realMatrix.subtract(repmat(realMatrix3, 1, this.mu)).scalarMultiply(1.0d / this.sigma);
            RealMatrix realMatrix4 = this.f100296pc;
            RealMatrix scalarMultiply2 = realMatrix4.multiply(realMatrix4.transpose()).scalarMultiply(this.ccov1);
            if (z10) {
                d11 = 0.0d;
            } else {
                double d12 = this.ccov1;
                double d13 = this.f100295cc;
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
                this.f100293C = this.f100293C.scalarMultiply(d16 + d17).add(scalarMultiply2).add(scalarMultiply.scalarMultiply(this.ccovmu + d17).multiply(times(repmat(this.weights, 1, this.dimension), scalarMultiply.transpose()))).subtract(multiply.multiply(diag(this.weights)).multiply(multiply.transpose()).scalarMultiply(entry));
                d10 = entry;
                updateBD(d10);
            }
            this.f100293C = this.f100293C.scalarMultiply(d16).add(scalarMultiply2).add(scalarMultiply.scalarMultiply(this.ccovmu).multiply(times(repmat(this.weights, 1, this.dimension), scalarMultiply.transpose())));
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
            double d12 = this.f100295cc;
            d10 = d11 * d12 * (2.0d - d12);
        }
        RealMatrix add = this.diagC.scalarMultiply(d10 + ((1.0d - this.ccov1Sep) - this.ccovmuSep)).add(square(this.f100296pc).scalarMultiply(this.ccov1Sep)).add(times(this.diagC, square(realMatrix).multiply(this.weights)).scalarMultiply(this.ccovmuSep));
        this.diagC = add;
        this.diagD = sqrt(add);
        int i10 = this.diagonalOnly;
        if (i10 <= 1 || this.iterations <= i10) {
            return;
        }
        this.diagonalOnly = 0;
        int i11 = this.dimension;
        this.f100292B = eye(i11, i11);
        this.BD = diag(this.diagD);
        this.f100293C = diag(this.diagC);
    }

    private boolean updateEvolutionPaths(RealMatrix realMatrix, RealMatrix realMatrix2) {
        RealMatrix scalarMultiply = this.ps.scalarMultiply(1.0d - this.cs);
        RealMatrix multiply = this.f100292B.multiply(realMatrix);
        double d10 = this.cs;
        RealMatrix add = scalarMultiply.add(multiply.scalarMultiply(FastMath.sqrt(d10 * (2.0d - d10) * this.mueff)));
        this.ps = add;
        double frobeniusNorm = add.getFrobeniusNorm();
        this.normps = frobeniusNorm;
        boolean z10 = (frobeniusNorm / FastMath.sqrt(1.0d - FastMath.pow(1.0d - this.cs, this.iterations * 2))) / this.chiN < (2.0d / (((double) this.dimension) + 1.0d)) + 1.4d;
        RealMatrix scalarMultiply2 = this.f100296pc.scalarMultiply(1.0d - this.f100295cc);
        this.f100296pc = scalarMultiply2;
        if (z10) {
            RealMatrix subtract = this.xmean.subtract(realMatrix2);
            double d11 = this.f100295cc;
            this.f100296pc = scalarMultiply2.add(subtract.scalarMultiply(FastMath.sqrt((d11 * (2.0d - d11)) * this.mueff) / this.sigma));
        }
        return z10;
    }

    private static RealMatrix zeros(int i10, int i11) {
        return new Array2DRowRealMatrix(i10, i11);
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0252, code lost:
    
        r14 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x026b, code lost:
    
        if (r19 != r2[r9[(int) ((r26.lambda / 4.0d) + 0.1d)]]) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x026d, code lost:
    
        r2 = r14;
        r26.sigma *= org.apache.commons.math3.util.FastMath.exp((r26.cs / r26.damps) + 0.2d);
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0287, code lost:
    
        if (r26.iterations <= 2) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0294, code lost:
    
        if ((org.apache.commons.math3.util.FastMath.max(r8, r12) - org.apache.commons.math3.util.FastMath.min(r0, r12)) != 0.0d) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0296, code lost:
    
        r26.sigma *= org.apache.commons.math3.util.FastMath.exp((r26.cs / r26.damps) + 0.2d);
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x02aa, code lost:
    
        push(r26.fitnessHistory, r12);
        r7.setValueRange(r21 - r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x02b6, code lost:
    
        if (r26.generateStatistics == false) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x02b8, code lost:
    
        r26.statisticsSigmaHistory.add(java.lang.Double.valueOf(r26.sigma));
        r26.statisticsFitnessHistory.add(java.lang.Double.valueOf(r12));
        r26.statisticsMeanHistory.add(r26.xmean.transpose());
        r26.statisticsDHistory.add(r26.diagD.transpose().scalarMultiply(100000.0d));
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x02eb, code lost:
    
        r26.iterations++;
        r9 = 1;
        r14 = r2;
        r8 = r5;
        r13 = r18;
        r11 = r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x0283, code lost:
    
        r2 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x023c, code lost:
    
        r14 = -r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0254, code lost:
    
        r5 = 0;
        r14 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x01fd, code lost:
    
        r11 = r13;
        r12 = r21;
        r21 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x01c1, code lost:
    
        r0 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x01c4, code lost:
    
        if (r0 >= r26.dimension) goto L133;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01cf, code lost:
    
        if ((r26.sigma * r8[r0]) <= r26.stopTolUpX) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01d3, code lost:
    
        r0 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x01d6, code lost:
    
        r0 = min(r26.fitnessHistory);
        r8 = max(r26.fitnessHistory);
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01e5, code lost:
    
        if (r26.iterations <= 2) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01e7, code lost:
    
        r11 = r13;
        r12 = r21;
        r21 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01fa, code lost:
    
        if ((org.apache.commons.math3.util.FastMath.max(r8, r4) - org.apache.commons.math3.util.FastMath.min(r0, r12)) >= r26.stopTolFun) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0207, code lost:
    
        if (r26.iterations <= r26.fitnessHistory.length) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x020f, code lost:
    
        if ((r8 - r0) >= r26.stopTolHistFun) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0226, code lost:
    
        if ((max(r26.diagD) / min(r26.diagD)) <= 1.0E7d) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x022d, code lost:
    
        if (getConvergenceChecker() == null) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x022f, code lost:
    
        r5 = 0;
        r10 = r10.getColumn(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0238, code lost:
    
        if (r26.isMinimize == false) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x023a, code lost:
    
        r14 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x023d, code lost:
    
        r4 = new org.apache.commons.math3.optimization.PointValuePair(r10, r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0240, code lost:
    
        if (r11 == null) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x024c, code lost:
    
        if (getConvergenceChecker().converged(r26.iterations, r4, r11) == false) goto L97;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public PointValuePair doOptimize() {
        PointValuePair pointValuePair;
        PointValuePair pointValuePair2;
        double d10;
        double d11;
        double[] dArr;
        checkParameters();
        this.isMinimize = getGoalType().equals(GoalType.MINIMIZE);
        FitnessFunction fitnessFunction = new FitnessFunction();
        double[] startPoint = getStartPoint();
        this.dimension = startPoint.length;
        initializeCMA(startPoint);
        int i10 = 0;
        this.iterations = 0;
        double value = fitnessFunction.value(startPoint);
        push(this.fitnessHistory, value);
        PointValuePair pointValuePair3 = new PointValuePair(getStartPoint(), this.isMinimize ? value : -value);
        int i11 = 1;
        this.iterations = 1;
        double d12 = value;
        PointValuePair pointValuePair4 = pointValuePair3;
        PointValuePair pointValuePair5 = null;
        loop0: while (this.iterations <= this.maxIterations) {
            RealMatrix randn1 = randn1(this.dimension, this.lambda);
            RealMatrix zeros = zeros(this.dimension, this.lambda);
            double[] dArr2 = new double[this.lambda];
            int i12 = i10;
            while (i12 < this.lambda) {
                int i13 = i10;
                RealMatrix realMatrix = null;
                while (i13 < this.checkFeasableCount + i11) {
                    realMatrix = this.diagonalOnly <= 0 ? this.xmean.add(this.BD.multiply(randn1.getColumnMatrix(i12)).scalarMultiply(this.sigma)) : this.xmean.add(times(this.diagD, randn1.getColumnMatrix(i12)).scalarMultiply(this.sigma));
                    if (i13 >= this.checkFeasableCount || fitnessFunction.isFeasible(realMatrix.getColumn(i10))) {
                        break;
                    }
                    randn1.setColumn(i12, randn(this.dimension));
                    i13++;
                    i11 = 1;
                }
                copyColumn(realMatrix, i10, zeros, i12);
                try {
                    dArr2[i12] = fitnessFunction.value(zeros.getColumn(i12));
                    i12++;
                    i11 = 1;
                } catch (TooManyEvaluationsException unused) {
                    return pointValuePair4;
                }
            }
            int[] sortedIndices = sortedIndices(dArr2);
            RealMatrix realMatrix2 = this.xmean;
            RealMatrix selectColumns = selectColumns(zeros, MathArrays.copyOf(sortedIndices, this.mu));
            this.xmean = selectColumns.multiply(this.weights);
            RealMatrix selectColumns2 = selectColumns(randn1, MathArrays.copyOf(sortedIndices, this.mu));
            boolean updateEvolutionPaths = updateEvolutionPaths(selectColumns2.multiply(this.weights), realMatrix2);
            if (this.diagonalOnly <= 0) {
                updateCovariance(updateEvolutionPaths, selectColumns, randn1, sortedIndices, realMatrix2);
            } else {
                updateCovarianceDiagonalOnly(updateEvolutionPaths, selectColumns2);
            }
            this.sigma *= FastMath.exp(FastMath.min(1.0d, (((this.normps / this.chiN) - 1.0d) * this.cs) / this.damps));
            double d13 = dArr2[sortedIndices[0]];
            double d14 = dArr2[sortedIndices[sortedIndices.length - 1]];
            if (d12 > d13) {
                PointValuePair pointValuePair6 = new PointValuePair(fitnessFunction.repair(selectColumns.getColumn(0)), this.isMinimize ? d13 : -d13);
                if (getConvergenceChecker() != null && getConvergenceChecker().converged(this.iterations, pointValuePair6, pointValuePair4)) {
                    return pointValuePair6;
                }
                d12 = d13;
                pointValuePair = pointValuePair6;
            } else {
                pointValuePair = pointValuePair4;
                pointValuePair4 = pointValuePair5;
            }
            double d15 = this.stopFitness;
            if (d15 != 0.0d) {
                if (!this.isMinimize) {
                    d15 = -d15;
                }
                if (d13 < d15) {
                    pointValuePair2 = pointValuePair;
                    return pointValuePair2;
                }
            }
            double[] column = sqrt(this.diagC).getColumn(0);
            double[] column2 = this.f100296pc.getColumn(0);
            pointValuePair2 = pointValuePair;
            int i14 = 0;
            while (true) {
                if (i14 >= this.dimension) {
                    d10 = d13;
                    d11 = d12;
                    dArr = dArr2;
                    break;
                }
                d11 = d12;
                double[] dArr3 = column2;
                d10 = d13;
                dArr = dArr2;
                if (this.sigma * FastMath.max(FastMath.abs(column2[i14]), column[i14]) > this.stopTolX) {
                    break;
                }
                if (i14 >= this.dimension - 1) {
                    break loop0;
                }
                i14++;
                dArr2 = dArr;
                d12 = d11;
                d13 = d10;
                column2 = dArr3;
            }
            return pointValuePair2;
        }
        return pointValuePair4;
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
    public PointValuePair optimizeInternal(int i10, MultivariateFunction multivariateFunction, GoalType goalType, OptimizationData... optimizationDataArr) {
        parseOptimizationData(optimizationDataArr);
        return super.optimizeInternal(i10, (int) multivariateFunction, goalType, optimizationDataArr);
    }

    @Deprecated
    public CMAESOptimizer(int i10) {
        this(i10, null, 30000, 0.0d, true, 0, 0, DEFAULT_RANDOMGENERATOR, false, null);
    }

    @Deprecated
    public CMAESOptimizer(int i10, double[] dArr) {
        this(i10, dArr, 30000, 0.0d, true, 0, 0, DEFAULT_RANDOMGENERATOR, false);
    }

    @Deprecated
    public CMAESOptimizer(int i10, double[] dArr, int i11, double d10, boolean z10, int i12, int i13, RandomGenerator randomGenerator, boolean z11) {
        this(i10, dArr, i11, d10, z10, i12, i13, randomGenerator, z11, new SimpleValueChecker());
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

    @Deprecated
    public CMAESOptimizer(int i10, double[] dArr, int i11, double d10, boolean z10, int i12, int i13, RandomGenerator randomGenerator, boolean z11, ConvergenceChecker<PointValuePair> convergenceChecker) {
        super(convergenceChecker);
        this.diagonalOnly = 0;
        this.isMinimize = true;
        this.generateStatistics = false;
        this.statisticsSigmaHistory = new ArrayList();
        this.statisticsMeanHistory = new ArrayList();
        this.statisticsFitnessHistory = new ArrayList();
        this.statisticsDHistory = new ArrayList();
        this.lambda = i10;
        this.inputSigma = dArr == null ? null : (double[]) dArr.clone();
        this.maxIterations = i11;
        this.stopFitness = d10;
        this.isActiveCMA = z10;
        this.diagonalOnly = i12;
        this.checkFeasableCount = i13;
        this.random = randomGenerator;
        this.generateStatistics = z11;
    }

    public CMAESOptimizer(int i10, double d10, boolean z10, int i11, int i12, RandomGenerator randomGenerator, boolean z11, ConvergenceChecker<PointValuePair> convergenceChecker) {
        super(convergenceChecker);
        this.diagonalOnly = 0;
        this.isMinimize = true;
        this.generateStatistics = false;
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
}
