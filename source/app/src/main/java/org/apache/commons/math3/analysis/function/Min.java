package org.apache.commons.math3.analysis.function;

import org.apache.commons.math3.analysis.BivariateFunction;
import org.apache.commons.math3.util.FastMath;

public class Min implements BivariateFunction {
    @Override
    public double value(double d10, double d11) {
        return FastMath.min(d10, d11);
    }
}
