package org.apache.commons.math3.stat.regression;

import java.lang.reflect.Array;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.InsufficientDataException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.linear.Array2DRowRealMatrix;
import org.apache.commons.math3.linear.ArrayRealVector;
import org.apache.commons.math3.linear.NonSquareMatrixException;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.RealVector;
import org.apache.commons.math3.stat.descriptive.moment.Variance;
import org.apache.commons.math3.util.FastMath;

public abstract class AbstractMultipleLinearRegression implements MultipleLinearRegression {
    private boolean noIntercept = false;
    private RealMatrix xMatrix;
    private RealVector yVector;

    public abstract RealVector calculateBeta();

    public abstract RealMatrix calculateBetaVariance();

    public double calculateErrorVariance() {
        RealVector calculateResiduals = calculateResiduals();
        return calculateResiduals.dotProduct(calculateResiduals) / (this.xMatrix.getRowDimension() - this.xMatrix.getColumnDimension());
    }

    public RealVector calculateResiduals() {
        return this.yVector.subtract(this.xMatrix.operate(calculateBeta()));
    }

    public double calculateYVariance() {
        return new Variance().evaluate(this.yVector.toArray());
    }

    public double estimateErrorVariance() {
        return calculateErrorVariance();
    }

    @Override
    public double estimateRegressandVariance() {
        return calculateYVariance();
    }

    @Override
    public double[] estimateRegressionParameters() {
        return calculateBeta().toArray();
    }

    @Override
    public double[] estimateRegressionParametersStandardErrors() {
        double[][] estimateRegressionParametersVariance = estimateRegressionParametersVariance();
        double calculateErrorVariance = calculateErrorVariance();
        int length = estimateRegressionParametersVariance[0].length;
        double[] dArr = new double[length];
        for (int i10 = 0; i10 < length; i10++) {
            dArr[i10] = FastMath.sqrt(estimateRegressionParametersVariance[i10][i10] * calculateErrorVariance);
        }
        return dArr;
    }

    @Override
    public double[][] estimateRegressionParametersVariance() {
        return calculateBetaVariance().getData();
    }

    public double estimateRegressionStandardError() {
        return FastMath.sqrt(estimateErrorVariance());
    }

    @Override
    public double[] estimateResiduals() {
        return this.yVector.subtract(this.xMatrix.operate(calculateBeta())).toArray();
    }

    public RealMatrix getX() {
        return this.xMatrix;
    }

    public RealVector getY() {
        return this.yVector;
    }

    public boolean isNoIntercept() {
        return this.noIntercept;
    }

    public void newSampleData(double[] dArr, int i10, int i11) {
        if (dArr == null) {
            throw new NullArgumentException();
        }
        int i12 = i11 + 1;
        int i13 = i10 * i12;
        if (dArr.length != i13) {
            throw new DimensionMismatchException(dArr.length, i13);
        }
        if (i10 <= i11) {
            throw new InsufficientDataException(LocalizedFormats.INSUFFICIENT_OBSERVED_POINTS_IN_SAMPLE, Integer.valueOf(i10), Integer.valueOf(i12));
        }
        double[] dArr2 = new double[i10];
        if (!this.noIntercept) {
            i11 = i12;
        }
        double[][] dArr3 = (double[][]) Array.newInstance(Double.TYPE, i10, i11);
        int i14 = 0;
        int i15 = 0;
        while (i14 < i10) {
            int i16 = i15 + 1;
            dArr2[i14] = dArr[i15];
            boolean z10 = this.noIntercept;
            if (!z10) {
                dArr3[i14][0] = 1.0d;
            }
            int i17 = !z10 ? 1 : 0;
            while (i17 < i11) {
                dArr3[i14][i17] = dArr[i16];
                i17++;
                i16++;
            }
            i14++;
            i15 = i16;
        }
        this.xMatrix = new Array2DRowRealMatrix(dArr3);
        this.yVector = new ArrayRealVector(dArr2);
    }

    public void newXSampleData(double[][] dArr) {
        if (dArr == null) {
            throw new NullArgumentException();
        }
        if (dArr.length == 0) {
            throw new NoDataException();
        }
        if (this.noIntercept) {
            this.xMatrix = new Array2DRowRealMatrix(dArr, true);
            return;
        }
        int length = dArr[0].length;
        double[][] dArr2 = (double[][]) Array.newInstance(Double.TYPE, dArr.length, length + 1);
        for (int i10 = 0; i10 < dArr.length; i10++) {
            double[] dArr3 = dArr[i10];
            if (dArr3.length != length) {
                throw new DimensionMismatchException(dArr[i10].length, length);
            }
            double[] dArr4 = dArr2[i10];
            dArr4[0] = 1.0d;
            System.arraycopy(dArr3, 0, dArr4, 1, length);
        }
        this.xMatrix = new Array2DRowRealMatrix(dArr2, false);
    }

    public void newYSampleData(double[] dArr) {
        if (dArr == null) {
            throw new NullArgumentException();
        }
        if (dArr.length == 0) {
            throw new NoDataException();
        }
        this.yVector = new ArrayRealVector(dArr);
    }

    public void setNoIntercept(boolean z10) {
        this.noIntercept = z10;
    }

    public void validateCovarianceData(double[][] dArr, double[][] dArr2) {
        if (dArr.length != dArr2.length) {
            throw new DimensionMismatchException(dArr.length, dArr2.length);
        }
        if (dArr2.length > 0 && dArr2.length != dArr2[0].length) {
            throw new NonSquareMatrixException(dArr2.length, dArr2[0].length);
        }
    }

    public void validateSampleData(double[][] dArr, double[] dArr2) throws MathIllegalArgumentException {
        if (dArr == null || dArr2 == null) {
            throw new NullArgumentException();
        }
        if (dArr.length != dArr2.length) {
            throw new DimensionMismatchException(dArr2.length, dArr.length);
        }
        if (dArr.length == 0) {
            throw new NoDataException();
        }
        if (dArr[0].length + 1 > dArr.length) {
            throw new MathIllegalArgumentException(LocalizedFormats.NOT_ENOUGH_DATA_FOR_NUMBER_OF_PREDICTORS, Integer.valueOf(dArr.length), Integer.valueOf(dArr[0].length));
        }
    }
}
