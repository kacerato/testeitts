package org.apache.commons.math3.analysis;

public interface ParametricUnivariateFunction {
    double[] gradient(double d10, double... dArr);

    double value(double d10, double... dArr);
}
