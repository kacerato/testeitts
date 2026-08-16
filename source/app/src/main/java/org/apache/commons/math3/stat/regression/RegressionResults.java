package org.apache.commons.math3.stat.regression;

import java.io.Serializable;
import java.util.Arrays;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;

public class RegressionResults implements Serializable {
    private static final int ADJRSQ_IDX = 4;
    private static final int MSE_IDX = 3;
    private static final int RSQ_IDX = 2;
    private static final int SSE_IDX = 0;
    private static final int SST_IDX = 1;
    private static final long serialVersionUID = 1;
    private final boolean containsConstant;
    private final double[] globalFitInfo;
    private final boolean isSymmetricVCD;
    private final long nobs;
    private final double[] parameters;
    private final int rank;
    private final double[][] varCovData;

    private RegressionResults() {
        this.parameters = null;
        this.varCovData = null;
        this.rank = -1;
        this.nobs = -1L;
        this.containsConstant = false;
        this.isSymmetricVCD = false;
        this.globalFitInfo = null;
    }

    private double getVcvElement(int i10, int i11) {
        if (!this.isSymmetricVCD) {
            return this.varCovData[i10][i11];
        }
        double[][] dArr = this.varCovData;
        if (dArr.length <= 1) {
            return i10 > i11 ? dArr[0][(((i10 + 1) * i10) / 2) + i11] : dArr[0][(((i11 + 1) * i11) / 2) + i10];
        }
        if (i10 == i11) {
            return dArr[i10][i10];
        }
        double[] dArr2 = dArr[i11];
        return i10 >= dArr2.length ? dArr[i10][i11] : dArr2[i10];
    }

    public double getAdjustedRSquared() {
        return this.globalFitInfo[4];
    }

    public double getCovarianceOfParameters(int i10, int i11) throws OutOfRangeException {
        double[] dArr = this.parameters;
        if (dArr == null) {
            return Double.NaN;
        }
        if (i10 < 0 || i10 >= dArr.length) {
            throw new OutOfRangeException(Integer.valueOf(i10), 0, Integer.valueOf(this.parameters.length - 1));
        }
        if (i11 < 0 || i11 >= dArr.length) {
            throw new OutOfRangeException(Integer.valueOf(i11), 0, Integer.valueOf(this.parameters.length - 1));
        }
        return getVcvElement(i10, i11);
    }

    public double getErrorSumSquares() {
        return this.globalFitInfo[0];
    }

    public double getMeanSquareError() {
        return this.globalFitInfo[3];
    }

    public long getN() {
        return this.nobs;
    }

    public int getNumberOfParameters() {
        double[] dArr = this.parameters;
        if (dArr == null) {
            return -1;
        }
        return dArr.length;
    }

    public double getParameterEstimate(int i10) throws OutOfRangeException {
        double[] dArr = this.parameters;
        if (dArr == null) {
            return Double.NaN;
        }
        if (i10 < 0 || i10 >= dArr.length) {
            throw new OutOfRangeException(Integer.valueOf(i10), 0, Integer.valueOf(this.parameters.length - 1));
        }
        return dArr[i10];
    }

    public double[] getParameterEstimates() {
        double[] dArr = this.parameters;
        if (dArr == null) {
            return null;
        }
        return MathArrays.copyOf(dArr);
    }

    public double getRSquared() {
        return this.globalFitInfo[2];
    }

    public double getRegressionSumSquares() {
        double[] dArr = this.globalFitInfo;
        return dArr[1] - dArr[0];
    }

    public double getStdErrorOfEstimate(int i10) throws OutOfRangeException {
        double[] dArr = this.parameters;
        if (dArr == null) {
            return Double.NaN;
        }
        if (i10 < 0 || i10 >= dArr.length) {
            throw new OutOfRangeException(Integer.valueOf(i10), 0, Integer.valueOf(this.parameters.length - 1));
        }
        double vcvElement = getVcvElement(i10, i10);
        if (Double.isNaN(vcvElement) || vcvElement <= Double.MIN_VALUE) {
            return Double.NaN;
        }
        return FastMath.sqrt(vcvElement);
    }

    public double[] getStdErrorOfEstimates() {
        double[] dArr = this.parameters;
        if (dArr == null) {
            return null;
        }
        double[] dArr2 = new double[dArr.length];
        for (int i10 = 0; i10 < this.parameters.length; i10++) {
            double vcvElement = getVcvElement(i10, i10);
            if (Double.isNaN(vcvElement) || vcvElement <= Double.MIN_VALUE) {
                dArr2[i10] = Double.NaN;
            } else {
                dArr2[i10] = FastMath.sqrt(vcvElement);
            }
        }
        return dArr2;
    }

    public double getTotalSumSquares() {
        return this.globalFitInfo[1];
    }

    public boolean hasIntercept() {
        return this.containsConstant;
    }

    public RegressionResults(double[] dArr, double[][] dArr2, boolean z10, long j10, int i10, double d10, double d11, double d12, boolean z11, boolean z12) {
        if (z12) {
            this.parameters = MathArrays.copyOf(dArr);
            this.varCovData = new double[dArr2.length];
            for (int i11 = 0; i11 < dArr2.length; i11++) {
                this.varCovData[i11] = MathArrays.copyOf(dArr2[i11]);
            }
        } else {
            this.parameters = dArr;
            this.varCovData = dArr2;
        }
        this.isSymmetricVCD = z10;
        this.nobs = j10;
        this.rank = i10;
        this.containsConstant = z11;
        double[] dArr3 = new double[5];
        this.globalFitInfo = dArr3;
        Arrays.fill(dArr3, Double.NaN);
        if (i10 > 0) {
            dArr3[1] = z11 ? d11 - ((d10 * d10) / j10) : d11;
        }
        dArr3[0] = d12;
        double d13 = j10 - i10;
        dArr3[3] = d12 / d13;
        double d14 = dArr3[1];
        double d15 = 1.0d - (d12 / d14);
        dArr3[2] = d15;
        if (!z11) {
            dArr3[4] = 1.0d - ((1.0d - d15) * (j10 / d13));
        } else {
            dArr3[4] = 1.0d - (((j10 - 1.0d) * d12) / (d14 * d13));
        }
    }
}
