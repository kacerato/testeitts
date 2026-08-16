package org.apache.commons.math3.ml.neuralnet.sofm;

import org.apache.commons.math3.ml.neuralnet.sofm.util.ExponentialDecayFunction;
import org.apache.commons.math3.ml.neuralnet.sofm.util.QuasiSigmoidDecayFunction;
import org.apache.commons.math3.util.FastMath;

public class NeighbourhoodSizeFunctionFactory {
    private NeighbourhoodSizeFunctionFactory() {
    }

    public static NeighbourhoodSizeFunction exponentialDecay(double d10, double d11, long j10) {
        return new NeighbourhoodSizeFunction(d10, d11, j10) {
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
            public int value(long j11) {
                return (int) FastMath.rint(this.decay.value(j11));
            }
        };
    }

    public static NeighbourhoodSizeFunction quasiSigmoidDecay(double d10, double d11, long j10) {
        return new NeighbourhoodSizeFunction(d10, d11, j10) {
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
            public int value(long j11) {
                return (int) FastMath.rint(this.decay.value(j11));
            }
        };
    }
}
