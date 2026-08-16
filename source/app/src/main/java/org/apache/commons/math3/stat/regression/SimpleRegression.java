package org.apache.commons.math3.stat.regression;

import java.io.Serializable;
import org.apache.commons.math3.distribution.TDistribution;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

public class SimpleRegression implements Serializable, UpdatingMultipleLinearRegression {
    private static final long serialVersionUID = -3004689053607543335L;
    private final boolean hasIntercept;

    private long f100357n;
    private double sumX;
    private double sumXX;
    private double sumXY;
    private double sumY;
    private double sumYY;
    private double xbar;
    private double ybar;

    public SimpleRegression() {
        this(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0055  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void addData(double d10, double d11) {
        long j10;
        long j11 = this.f100357n;
        if (j11 == 0) {
            this.xbar = d10;
            this.ybar = d11;
        } else if (this.hasIntercept) {
            double d12 = j11 + 1.0d;
            double d13 = j11 / (j11 + 1.0d);
            double d14 = this.xbar;
            double d15 = d10 - d14;
            j10 = j11;
            double d16 = this.ybar;
            double d17 = d11 - d16;
            this.sumXX += d15 * d15 * d13;
            this.sumYY += d17 * d17 * d13;
            this.sumXY += d15 * d17 * d13;
            this.xbar = d14 + (d15 / d12);
            this.ybar = d16 + (d17 / d12);
            if (!this.hasIntercept) {
                this.sumXX += d10 * d10;
                this.sumYY += d11 * d11;
                this.sumXY += d10 * d11;
            }
            this.sumX += d10;
            this.sumY += d11;
            this.f100357n = j10 + 1;
        }
        j10 = j11;
        if (!this.hasIntercept) {
        }
        this.sumX += d10;
        this.sumY += d11;
        this.f100357n = j10 + 1;
    }

    @Override
    public void addObservation(double[] dArr, double d10) throws ModelSpecificationException {
        if (dArr == null || dArr.length == 0) {
            throw new ModelSpecificationException(LocalizedFormats.INVALID_REGRESSION_OBSERVATION, Integer.valueOf(dArr != null ? dArr.length : 0), 1);
        }
        addData(dArr[0], d10);
    }

    @Override
    public void addObservations(double[][] dArr, double[] dArr2) throws ModelSpecificationException {
        if (dArr == null || dArr2 == null || dArr.length != dArr2.length) {
            throw new ModelSpecificationException(LocalizedFormats.DIMENSIONS_MISMATCH_SIMPLE, Integer.valueOf(dArr == null ? 0 : dArr.length), Integer.valueOf(dArr2 != null ? dArr2.length : 0));
        }
        boolean z10 = true;
        for (double[] dArr3 : dArr) {
            if (dArr3 == null || dArr3.length == 0) {
                z10 = false;
            }
        }
        if (!z10) {
            throw new ModelSpecificationException(LocalizedFormats.NOT_ENOUGH_DATA_FOR_NUMBER_OF_PREDICTORS, 0, 1);
        }
        for (int i10 = 0; i10 < dArr.length; i10++) {
            addData(dArr[i10][0], dArr2[i10]);
        }
    }

    public void append(SimpleRegression simpleRegression) {
        long j10;
        long j11 = this.f100357n;
        if (j11 == 0) {
            this.xbar = simpleRegression.xbar;
            this.ybar = simpleRegression.ybar;
            this.sumXX = simpleRegression.sumXX;
            this.sumYY = simpleRegression.sumYY;
            this.sumXY = simpleRegression.sumXY;
            j10 = j11;
        } else if (this.hasIntercept) {
            double d10 = simpleRegression.f100357n / (r4 + j11);
            double d11 = (j11 * r4) / (r4 + j11);
            double d12 = simpleRegression.xbar;
            double d13 = this.xbar;
            double d14 = d12 - d13;
            double d15 = simpleRegression.ybar;
            double d16 = this.ybar;
            double d17 = d15 - d16;
            j10 = j11;
            this.sumXX += simpleRegression.sumXX + (d14 * d14 * d11);
            this.sumYY += simpleRegression.sumYY + (d17 * d17 * d11);
            this.sumXY += simpleRegression.sumXY + (d14 * d17 * d11);
            this.xbar = d13 + (d14 * d10);
            this.ybar = d16 + (d17 * d10);
        } else {
            j10 = j11;
            this.sumXX += simpleRegression.sumXX;
            this.sumYY += simpleRegression.sumYY;
            this.sumXY += simpleRegression.sumXY;
        }
        this.sumX += simpleRegression.sumX;
        this.sumY += simpleRegression.sumY;
        this.f100357n = j10 + simpleRegression.f100357n;
    }

    @Override
    public void clear() {
        this.sumX = 0.0d;
        this.sumXX = 0.0d;
        this.sumY = 0.0d;
        this.sumYY = 0.0d;
        this.sumXY = 0.0d;
        this.f100357n = 0L;
    }

    public double getIntercept() {
        if (this.hasIntercept) {
            return getIntercept(getSlope());
        }
        return 0.0d;
    }

    public double getInterceptStdErr() {
        if (!this.hasIntercept) {
            return Double.NaN;
        }
        double meanSquareError = getMeanSquareError();
        double d10 = 1.0d / this.f100357n;
        double d11 = this.xbar;
        return FastMath.sqrt(meanSquareError * (d10 + ((d11 * d11) / this.sumXX)));
    }

    public double getMeanSquareError() {
        double sumSquaredErrors;
        long j10;
        long j11;
        if (this.f100357n < 3) {
            return Double.NaN;
        }
        if (this.hasIntercept) {
            sumSquaredErrors = getSumSquaredErrors();
            j10 = this.f100357n;
            j11 = 2;
        } else {
            sumSquaredErrors = getSumSquaredErrors();
            j10 = this.f100357n;
            j11 = 1;
        }
        return sumSquaredErrors / (j10 - j11);
    }

    @Override
    public long getN() {
        return this.f100357n;
    }

    public double getR() {
        double slope = getSlope();
        double sqrt = FastMath.sqrt(getRSquare());
        return slope < 0.0d ? -sqrt : sqrt;
    }

    public double getRSquare() {
        double totalSumSquares = getTotalSumSquares();
        return (totalSumSquares - getSumSquaredErrors()) / totalSumSquares;
    }

    public double getRegressionSumSquares() {
        return getRegressionSumSquares(getSlope());
    }

    public double getSignificance() {
        if (this.f100357n < 3) {
            return Double.NaN;
        }
        return (1.0d - new TDistribution(r0 - 2).cumulativeProbability(FastMath.abs(getSlope()) / getSlopeStdErr())) * 2.0d;
    }

    public double getSlope() {
        if (this.f100357n >= 2 && FastMath.abs(this.sumXX) >= 4.9E-323d) {
            return this.sumXY / this.sumXX;
        }
        return Double.NaN;
    }

    public double getSlopeConfidenceInterval() throws OutOfRangeException {
        return getSlopeConfidenceInterval(0.05d);
    }

    public double getSlopeStdErr() {
        return FastMath.sqrt(getMeanSquareError() / this.sumXX);
    }

    public double getSumOfCrossProducts() {
        return this.sumXY;
    }

    public double getSumSquaredErrors() {
        double d10 = this.sumYY;
        double d11 = this.sumXY;
        return FastMath.max(0.0d, d10 - ((d11 * d11) / this.sumXX));
    }

    public double getTotalSumSquares() {
        if (this.f100357n < 2) {
            return Double.NaN;
        }
        return this.sumYY;
    }

    public double getXSumSquares() {
        if (this.f100357n < 2) {
            return Double.NaN;
        }
        return this.sumXX;
    }

    @Override
    public boolean hasIntercept() {
        return this.hasIntercept;
    }

    public double predict(double d10) {
        double slope = getSlope();
        return this.hasIntercept ? getIntercept(slope) + (slope * d10) : slope * d10;
    }

    @Override
    public RegressionResults regress() throws ModelSpecificationException, NoDataException {
        if (!this.hasIntercept) {
            if (this.f100357n >= 2) {
                if (!Double.isNaN(this.sumXX)) {
                    double meanSquareError = getMeanSquareError();
                    double d10 = this.sumXX;
                    return new RegressionResults(new double[]{this.sumXY / d10}, new double[][]{new double[]{meanSquareError / d10}}, true, this.f100357n, 1, this.sumY, this.sumYY, getSumSquaredErrors(), false, false);
                }
                return new RegressionResults(new double[]{Double.NaN}, new double[][]{new double[]{Double.NaN}}, true, this.f100357n, 1, Double.NaN, Double.NaN, Double.NaN, false, false);
            }
            throw new NoDataException(LocalizedFormats.NOT_ENOUGH_DATA_REGRESSION);
        }
        if (this.f100357n < 3) {
            throw new NoDataException(LocalizedFormats.NOT_ENOUGH_DATA_REGRESSION);
        }
        if (FastMath.abs(this.sumXX) > Precision.SAFE_MIN) {
            double[] dArr = {getIntercept(), getSlope()};
            double meanSquareError2 = getMeanSquareError();
            double d11 = this.sumYY;
            double d12 = this.sumY;
            long j10 = this.f100357n;
            double d13 = d11 + ((d12 * d12) / j10);
            double d14 = this.xbar;
            double d15 = this.sumXX;
            return new RegressionResults(dArr, new double[][]{new double[]{meanSquareError2 * (((d14 * d14) / d15) + (1.0d / j10)), ((-d14) * meanSquareError2) / d15, meanSquareError2 / d15}}, true, j10, 2, d12, d13, getSumSquaredErrors(), true, false);
        }
        double d16 = this.sumY;
        long j11 = this.f100357n;
        return new RegressionResults(new double[]{d16 / j11, Double.NaN}, new double[][]{new double[]{this.ybar / (j11 - 1.0d), Double.NaN, Double.NaN}}, true, j11, 1, d16, this.sumYY, getSumSquaredErrors(), true, false);
    }

    public void removeData(double d10, double d11) {
        long j10 = this.f100357n;
        if (j10 > 0) {
            if (this.hasIntercept) {
                double d12 = j10 - 1.0d;
                double d13 = j10 / (j10 - 1.0d);
                double d14 = this.xbar;
                double d15 = d10 - d14;
                double d16 = this.ybar;
                double d17 = d11 - d16;
                this.sumXX -= (d15 * d15) * d13;
                this.sumYY -= (d17 * d17) * d13;
                this.sumXY -= (d15 * d17) * d13;
                this.xbar = d14 - (d15 / d12);
                this.ybar = d16 - (d17 / d12);
                j10 = j10;
            } else {
                double d18 = j10 - 1.0d;
                this.sumXX -= d10 * d10;
                this.sumYY -= d11 * d11;
                this.sumXY -= d10 * d11;
                this.xbar -= d10 / d18;
                this.ybar -= d11 / d18;
            }
            this.sumX -= d10;
            this.sumY -= d11;
            this.f100357n = j10 - 1;
        }
    }

    public SimpleRegression(boolean z10) {
        this.sumX = 0.0d;
        this.sumXX = 0.0d;
        this.sumY = 0.0d;
        this.sumYY = 0.0d;
        this.sumXY = 0.0d;
        this.f100357n = 0L;
        this.xbar = 0.0d;
        this.ybar = 0.0d;
        this.hasIntercept = z10;
    }

    private double getIntercept(double d10) {
        if (this.hasIntercept) {
            return (this.sumY - (d10 * this.sumX)) / this.f100357n;
        }
        return 0.0d;
    }

    private double getRegressionSumSquares(double d10) {
        return d10 * d10 * this.sumXX;
    }

    public double getSlopeConfidenceInterval(double d10) throws OutOfRangeException {
        if (this.f100357n < 3) {
            return Double.NaN;
        }
        if (d10 < 1.0d && d10 > 0.0d) {
            return getSlopeStdErr() * new TDistribution(r0 - 2).inverseCumulativeProbability(1.0d - (d10 / 2.0d));
        }
        throw new OutOfRangeException(LocalizedFormats.SIGNIFICANCE_LEVEL, Double.valueOf(d10), 0, 1);
    }

    public void removeData(double[][] dArr) {
        for (int i10 = 0; i10 < dArr.length && this.f100357n > 0; i10++) {
            double[] dArr2 = dArr[i10];
            removeData(dArr2[0], dArr2[1]);
        }
    }

    public void addData(double[][] dArr) throws ModelSpecificationException {
        for (int i10 = 0; i10 < dArr.length; i10++) {
            double[] dArr2 = dArr[i10];
            if (dArr2.length >= 2) {
                addData(dArr2[0], dArr2[1]);
            } else {
                throw new ModelSpecificationException(LocalizedFormats.INVALID_REGRESSION_OBSERVATION, Integer.valueOf(dArr[i10].length), 2);
            }
        }
    }

    @Override
    public RegressionResults regress(int[] iArr) throws MathIllegalArgumentException {
        if (iArr != null && iArr.length != 0) {
            if (iArr.length <= 2 && (iArr.length <= 1 || this.hasIntercept)) {
                if (this.hasIntercept) {
                    if (iArr.length == 2) {
                        int i10 = iArr[0];
                        if (i10 == 1) {
                            throw new ModelSpecificationException(LocalizedFormats.NOT_INCREASING_SEQUENCE, new Object[0]);
                        }
                        if (i10 == 0) {
                            if (iArr[1] == 1) {
                                return regress();
                            }
                            throw new OutOfRangeException(Integer.valueOf(iArr[0]), 0, 1);
                        }
                        throw new OutOfRangeException(Integer.valueOf(iArr[0]), 0, 1);
                    }
                    int i11 = iArr[0];
                    if (i11 != 1 && i11 != 0) {
                        throw new OutOfRangeException(Integer.valueOf(iArr[0]), 0, 1);
                    }
                    double d10 = this.sumY;
                    long j10 = this.f100357n;
                    double d11 = (d10 * d10) / j10;
                    double d12 = this.sumYY;
                    double d13 = d12 + d11;
                    if (i11 == 0) {
                        return new RegressionResults(new double[]{this.ybar}, new double[][]{new double[]{d12 / ((j10 - 1) * j10)}}, true, j10, 1, d10, d13 + d11, d12, true, false);
                    }
                    if (i11 != 1) {
                        return null;
                    }
                    double d14 = this.sumXX;
                    double d15 = this.sumX;
                    double d16 = d14 + ((d15 * d15) / j10);
                    double d17 = this.sumXY + ((d15 * d10) / j10);
                    double max = FastMath.max(0.0d, d13 - ((d17 * d17) / d16));
                    double d18 = max / (this.f100357n - 1);
                    if (!Double.isNaN(d16)) {
                        return new RegressionResults(new double[]{d17 / d16}, new double[][]{new double[]{d18 / d16}}, true, this.f100357n, 1, this.sumY, d13, max, false, false);
                    }
                    return new RegressionResults(new double[]{Double.NaN}, new double[][]{new double[]{Double.NaN}}, true, this.f100357n, 1, Double.NaN, Double.NaN, Double.NaN, false, false);
                }
                if (iArr[0] == 0) {
                    return regress();
                }
                throw new OutOfRangeException(Integer.valueOf(iArr[0]), 0, 0);
            }
            throw new ModelSpecificationException(LocalizedFormats.ARRAY_SIZE_EXCEEDS_MAX_VARIABLES, Integer.valueOf((iArr.length <= 1 || this.hasIntercept) ? 2 : 1));
        }
        throw new MathIllegalArgumentException(LocalizedFormats.ARRAY_ZERO_LENGTH_OR_NULL_NOT_ALLOWED, new Object[0]);
    }
}
