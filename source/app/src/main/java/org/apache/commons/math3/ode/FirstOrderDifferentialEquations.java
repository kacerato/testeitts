package org.apache.commons.math3.ode;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;

public interface FirstOrderDifferentialEquations {
    void computeDerivatives(double d10, double[] dArr, double[] dArr2) throws MaxCountExceededException, DimensionMismatchException;

    int getDimension();
}
