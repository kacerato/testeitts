package org.apache.commons.math3.ml.neuralnet.sofm;

import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.ml.neuralnet.sofm.util.ExponentialDecayFunction;
import org.apache.commons.math3.ml.neuralnet.sofm.util.QuasiSigmoidDecayFunction;

public class LearningFactorFunctionFactory {
    private LearningFactorFunctionFactory() {
    }

    public static LearningFactorFunction exponentialDecay(double d10, double d11, long j10) {
        if (d10 <= 0.0d || d10 > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d10), 0, 1);
        }
        return new LearningFactorFunction(d10, d11, j10) {
            private final ExponentialDecayFunction decay;
            final double val$initValue;
            final long val$numCall;
            final double val$valueAtNumCall;

            {
                this.val$initValue = d10;
                this.val$valueAtNumCall = d11;
                this.val$numCall = j10;
                this.decay = new ExponentialDecayFunction(d10, d11, j10);
            }

            @Override
            public double value(long j11) {
                return this.decay.value(j11);
            }
        };
    }

    public static LearningFactorFunction quasiSigmoidDecay(double d10, double d11, long j10) {
        if (d10 <= 0.0d || d10 > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d10), 0, 1);
        }
        return new LearningFactorFunction(d10, d11, j10) {
            private final QuasiSigmoidDecayFunction decay;
            final double val$initValue;
            final long val$numCall;
            final double val$slope;

            {
                this.val$initValue = d10;
                this.val$slope = d11;
                this.val$numCall = j10;
                this.decay = new QuasiSigmoidDecayFunction(d10, d11, j10);
            }

            @Override
            public double value(long j11) {
                return this.decay.value(j11);
            }
        };
    }
}
