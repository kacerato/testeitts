package org.apache.commons.math3.analysis.integration.gauss;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NonMonotonicSequenceException;
import org.apache.commons.math3.util.Pair;

public class SymmetricGaussIntegrator extends GaussIntegrator {
    public SymmetricGaussIntegrator(double[] dArr, double[] dArr2) throws NonMonotonicSequenceException, DimensionMismatchException {
        super(dArr, dArr2);
    }

    @Override
    public double integrate(UnivariateFunction univariateFunction) {
        int numberOfPoints = getNumberOfPoints();
        int i10 = 0;
        if (numberOfPoints == 1) {
            return getWeight(0) * univariateFunction.value(0.0d);
        }
        int i11 = numberOfPoints / 2;
        double d10 = 0.0d;
        double d11 = 0.0d;
        while (i10 < i11) {
            double point = getPoint(i10);
            double weight = (getWeight(i10) * (univariateFunction.value(point) + univariateFunction.value(-point))) - d10;
            double d12 = d11 + weight;
            i10++;
            d10 = (d12 - d11) - weight;
            d11 = d12;
        }
        return numberOfPoints % 2 != 0 ? d11 + ((getWeight(i11) * univariateFunction.value(0.0d)) - d10) : d11;
    }

    public SymmetricGaussIntegrator(Pair<double[], double[]> pair) throws NonMonotonicSequenceException {
        this(pair.getFirst(), pair.getSecond());
    }
}
