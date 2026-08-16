package org.apache.commons.math3.analysis.function;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.util.FastMath;

public class Floor implements UnivariateFunction {
    @Override
    public double value(double d10) {
        return FastMath.floor(d10);
    }
}
