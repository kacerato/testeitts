package org.apache.commons.math3.optim.nonlinear.scalar;

import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.analysis.MultivariateVectorFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.linear.RealMatrix;

public class LeastSquaresConverter implements MultivariateFunction {
    private final MultivariateVectorFunction function;
    private final double[] observations;
    private final RealMatrix scale;
    private final double[] weights;

    public LeastSquaresConverter(MultivariateVectorFunction multivariateVectorFunction, double[] dArr) {
        this.function = multivariateVectorFunction;
        this.observations = (double[]) dArr.clone();
        this.weights = null;
        this.scale = null;
    }

    @Override
    public double value(double[] dArr) {
        double[] value = this.function.value(dArr);
        if (value.length != this.observations.length) {
            throw new DimensionMismatchException(value.length, this.observations.length);
        }
        int i10 = 0;
        for (int i11 = 0; i11 < value.length; i11++) {
            value[i11] = value[i11] - this.observations[i11];
        }
        double d10 = 0.0d;
        if (this.weights != null) {
            while (i10 < value.length) {
                double d11 = value[i10];
                d10 += this.weights[i10] * d11 * d11;
                i10++;
            }
        } else {
            RealMatrix realMatrix = this.scale;
            if (realMatrix != null) {
                double[] operate = realMatrix.operate(value);
                int length = operate.length;
                while (i10 < length) {
                    double d12 = operate[i10];
                    d10 += d12 * d12;
                    i10++;
                }
            } else {
                int length2 = value.length;
                while (i10 < length2) {
                    double d13 = value[i10];
                    d10 += d13 * d13;
                    i10++;
                }
            }
        }
        return d10;
    }

    public LeastSquaresConverter(MultivariateVectorFunction multivariateVectorFunction, double[] dArr, double[] dArr2) {
        if (dArr.length == dArr2.length) {
            this.function = multivariateVectorFunction;
            this.observations = (double[]) dArr.clone();
            this.weights = (double[]) dArr2.clone();
            this.scale = null;
            return;
        }
        throw new DimensionMismatchException(dArr.length, dArr2.length);
    }

    public LeastSquaresConverter(MultivariateVectorFunction multivariateVectorFunction, double[] dArr, RealMatrix realMatrix) {
        if (dArr.length == realMatrix.getColumnDimension()) {
            this.function = multivariateVectorFunction;
            this.observations = (double[]) dArr.clone();
            this.weights = null;
            this.scale = realMatrix.copy();
            return;
        }
        throw new DimensionMismatchException(dArr.length, realMatrix.getColumnDimension());
    }
}
