package org.apache.commons.math3.ode;

import org.apache.commons.math3.RealFieldElement;

public interface FirstOrderFieldDifferentialEquations<T extends RealFieldElement<T>> {
    T[] computeDerivatives(T t10, T[] tArr);

    int getDimension();

    void init(T t10, T[] tArr, T t11);
}
