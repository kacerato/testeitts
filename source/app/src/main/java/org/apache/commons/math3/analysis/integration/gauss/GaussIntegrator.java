package org.apache.commons.math3.analysis.integration.gauss;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NonMonotonicSequenceException;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.Pair;

public class GaussIntegrator {
    private final double[] points;
    private final double[] weights;

    public GaussIntegrator(double[] dArr, double[] dArr2) throws NonMonotonicSequenceException, DimensionMismatchException {
        if (dArr.length == dArr2.length) {
            MathArrays.checkOrder(dArr, MathArrays.OrderDirection.INCREASING, true, true);
            this.points = (double[]) dArr.clone();
            this.weights = (double[]) dArr2.clone();
            return;
        }
        throw new DimensionMismatchException(dArr.length, dArr2.length);
    }

    public int getNumberOfPoints() {
        return this.points.length;
    }

    public double getPoint(int i10) {
        return this.points[i10];
    }

    public double getWeight(int i10) {
        return this.weights[i10];
    }

    public double integrate(UnivariateFunction univariateFunction) {
        double d10 = 0.0d;
        int i10 = 0;
        double d11 = 0.0d;
        while (true) {
            double[] dArr = this.points;
            if (i10 >= dArr.length) {
                return d10;
            }
            double value = (this.weights[i10] * univariateFunction.value(dArr[i10])) - d11;
            double d12 = d10 + value;
            double d13 = (d12 - d10) - value;
            i10++;
            d10 = d12;
            d11 = d13;
        }
    }

    public GaussIntegrator(Pair<double[], double[]> pair) throws NonMonotonicSequenceException {
        this(pair.getFirst(), pair.getSecond());
    }
}
