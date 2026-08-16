package org.apache.commons.math3.ode.sampling;

public interface FixedStepHandler {
    void handleStep(double d10, double[] dArr, double[] dArr2, boolean z10);

    void init(double d10, double[] dArr, double d11);
}
