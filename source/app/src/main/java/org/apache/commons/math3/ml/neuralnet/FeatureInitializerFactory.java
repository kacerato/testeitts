package org.apache.commons.math3.ml.neuralnet;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.analysis.function.Constant;
import org.apache.commons.math3.distribution.RealDistribution;
import org.apache.commons.math3.distribution.UniformRealDistribution;
import org.apache.commons.math3.random.RandomGenerator;

public class FeatureInitializerFactory {
    private FeatureInitializerFactory() {
    }

    public static FeatureInitializer function(UnivariateFunction univariateFunction, double d10, double d11) {
        return new FeatureInitializer(d10, univariateFunction, d11) {
            private double arg;
            final UnivariateFunction val$f;
            final double val$inc;
            final double val$init;

            {
                this.val$init = d10;
                this.val$f = univariateFunction;
                this.val$inc = d11;
                this.arg = d10;
            }

            @Override
            public double value() {
                double value = this.val$f.value(this.arg);
                this.arg += this.val$inc;
                return value;
            }
        };
    }

    public static FeatureInitializer randomize(final RealDistribution realDistribution, final FeatureInitializer featureInitializer) {
        return new FeatureInitializer() {
            @Override
            public double value() {
                return FeatureInitializer.this.value() + realDistribution.sample();
            }
        };
    }

    public static FeatureInitializer uniform(RandomGenerator randomGenerator, double d10, double d11) {
        return randomize(new UniformRealDistribution(randomGenerator, d10, d11), function(new Constant(0.0d), 0.0d, 0.0d));
    }

    public static FeatureInitializer uniform(double d10, double d11) {
        return randomize(new UniformRealDistribution(d10, d11), function(new Constant(0.0d), 0.0d, 0.0d));
    }
}
