package org.apache.commons.math3.ml.neuralnet.sofm.util;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.util.FastMath;

public class ExponentialDecayFunction {

    private final double f100223a;
    private final double oneOverB;

    public ExponentialDecayFunction(double d10, double d11, long j10) {
        if (d10 <= 0.0d) {
            throw new NotStrictlyPositiveException(Double.valueOf(d10));
        }
        if (d11 <= 0.0d) {
            throw new NotStrictlyPositiveException(Double.valueOf(d11));
        }
        if (d11 >= d10) {
            throw new NumberIsTooLargeException(Double.valueOf(d11), Double.valueOf(d10), false);
        }
        if (j10 <= 0) {
            throw new NotStrictlyPositiveException(Long.valueOf(j10));
        }
        this.f100223a = d10;
        this.oneOverB = (-FastMath.log(d11 / d10)) / j10;
    }

    public double value(long j10) {
        return this.f100223a * FastMath.exp((-j10) * this.oneOverB);
    }
}
