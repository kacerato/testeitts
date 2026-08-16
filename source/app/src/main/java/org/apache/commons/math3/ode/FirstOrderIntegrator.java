package org.apache.commons.math3.ode;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;

public interface FirstOrderIntegrator extends ODEIntegrator {
    double integrate(FirstOrderDifferentialEquations firstOrderDifferentialEquations, double d10, double[] dArr, double d11, double[] dArr2) throws DimensionMismatchException, NumberIsTooSmallException, MaxCountExceededException, NoBracketingException;
}
