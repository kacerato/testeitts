package org.apache.commons.math3.optimization.univariate;

import java.io.Serializable;

@Deprecated
public class UnivariatePointValuePair implements Serializable {
    private static final long serialVersionUID = 1003888396256744753L;
    private final double point;
    private final double value;

    public UnivariatePointValuePair(double d10, double d11) {
        this.point = d10;
        this.value = d11;
    }

    public double getPoint() {
        return this.point;
    }

    public double getValue() {
        return this.value;
    }
}
