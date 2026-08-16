package org.apache.commons.math3.optimization.fitting;

import org.apache.commons.math3.analysis.polynomials.PolynomialFunction;
import org.apache.commons.math3.optimization.DifferentiableMultivariateVectorOptimizer;

@Deprecated
public class PolynomialFitter extends CurveFitter<PolynomialFunction.Parametric> {

    @Deprecated
    private final int degree;

    @Deprecated
    public PolynomialFitter(int i10, DifferentiableMultivariateVectorOptimizer differentiableMultivariateVectorOptimizer) {
        super(differentiableMultivariateVectorOptimizer);
        this.degree = i10;
    }

    @Deprecated
    public double[] fit() {
        return fit((PolynomialFitter) new PolynomialFunction.Parametric(), new double[this.degree + 1]);
    }

    public double[] fit(int i10, double[] dArr) {
        return fit(i10, new PolynomialFunction.Parametric(), dArr);
    }

    public PolynomialFitter(DifferentiableMultivariateVectorOptimizer differentiableMultivariateVectorOptimizer) {
        super(differentiableMultivariateVectorOptimizer);
        this.degree = -1;
    }

    public double[] fit(double[] dArr) {
        return fit((PolynomialFitter) new PolynomialFunction.Parametric(), dArr);
    }
}
