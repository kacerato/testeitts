package org.apache.commons.math3.ode.sampling;

import org.apache.commons.math3.exception.MaxCountExceededException;

public interface StepHandler {
    void handleStep(StepInterpolator stepInterpolator, boolean z10) throws MaxCountExceededException;

    void init(double d10, double[] dArr, double d11);
}
