package org.apache.commons.math3.ml.neuralnet.sofm.util;

import org.apache.commons.math3.analysis.function.Logistic;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;

public class QuasiSigmoidDecayFunction {
    private final double scale;
    private final Logistic sigmoid;

    public QuasiSigmoidDecayFunction(double d10, double d11, long j10) {
        if (d10 <= 0.0d) {
            throw new NotStrictlyPositiveException(Double.valueOf(d10));
        }
        if (d11 >= 0.0d) {
            throw new NumberIsTooLargeException(Double.valueOf(d11), 0, false);
        }
        if (j10 <= 1) {
            throw new NotStrictlyPositiveException(Long.valueOf(j10));
        }
        Logistic logistic = new Logistic(d10, j10, (4.0d * d11) / d10, 1.0d, 0.0d, 1.0d);
        this.sigmoid = logistic;
        this.scale = d10 / logistic.value(0.0d);
    }

    public double value(long j10) {
        return this.scale * this.sigmoid.value(j10);
    }
}
