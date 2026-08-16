package org.apache.commons.math3.fitting;

import org.apache.commons.math3.analysis.function.HarmonicOscillator;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.ZeroException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.optim.nonlinear.vector.MultivariateVectorOptimizer;
import org.apache.commons.math3.util.FastMath;

@Deprecated
public class HarmonicFitter extends CurveFitter<HarmonicOscillator.Parametric> {

    public static class ParameterGuesser {

        private final double f100163a;
        private final double omega;
        private final double phi;

        public ParameterGuesser(WeightedObservedPoint[] weightedObservedPointArr) {
            if (weightedObservedPointArr.length < 4) {
                throw new NumberIsTooSmallException(LocalizedFormats.INSUFFICIENT_OBSERVED_POINTS_IN_SAMPLE, Integer.valueOf(weightedObservedPointArr.length), 4, true);
            }
            WeightedObservedPoint[] sortObservations = sortObservations(weightedObservedPointArr);
            double[] guessAOmega = guessAOmega(sortObservations);
            this.f100163a = guessAOmega[0];
            this.omega = guessAOmega[1];
            this.phi = guessPhi(sortObservations);
        }

        private double[] guessAOmega(WeightedObservedPoint[] weightedObservedPointArr) {
            double[] dArr = new double[2];
            double x10 = weightedObservedPointArr[0].getX();
            double y10 = weightedObservedPointArr[0].getY();
            double d10 = x10;
            double d11 = 0.0d;
            double d12 = 0.0d;
            double d13 = 0.0d;
            double d14 = 0.0d;
            double d15 = 0.0d;
            double d16 = 0.0d;
            double d17 = 0.0d;
            int i10 = 1;
            while (i10 < weightedObservedPointArr.length) {
                double x11 = weightedObservedPointArr[i10].getX();
                double y11 = weightedObservedPointArr[i10].getY();
                double d18 = x11 - d10;
                double d19 = y11 - y10;
                double d20 = ((((y10 * y10) + (y10 * y11)) + (y11 * y11)) * d18) / 3.0d;
                double d21 = x11 - x10;
                d16 += d20;
                d17 += (d19 * d19) / d18;
                d15 += d21 * d21;
                d11 += d16 * d16;
                d13 += d21 * d16;
                d12 += d21 * d17;
                d14 += d16 * d17;
                i10++;
                d10 = x11;
                y10 = y11;
            }
            double d22 = (d11 * d12) - (d13 * d14);
            double d23 = (d12 * d13) - (d14 * d15);
            double d24 = (d15 * d11) - (d13 * d13);
            double d25 = d22 / d23;
            if (d25 >= 0.0d) {
                double d26 = d23 / d24;
                if (d26 >= 0.0d) {
                    if (d23 == 0.0d) {
                        throw new MathIllegalStateException(LocalizedFormats.ZERO_DENOMINATOR, new Object[0]);
                    }
                    dArr[0] = FastMath.sqrt(d25);
                    dArr[1] = FastMath.sqrt(d26);
                    return dArr;
                }
            }
            double x12 = weightedObservedPointArr[weightedObservedPointArr.length - 1].getX() - weightedObservedPointArr[0].getX();
            if (x12 == 0.0d) {
                throw new ZeroException();
            }
            dArr[1] = 6.283185307179586d / x12;
            double d27 = Double.POSITIVE_INFINITY;
            double d28 = Double.NEGATIVE_INFINITY;
            for (int i11 = 1; i11 < weightedObservedPointArr.length; i11++) {
                double y12 = weightedObservedPointArr[i11].getY();
                if (y12 < d27) {
                    d27 = y12;
                }
                if (y12 > d28) {
                    d28 = y12;
                }
            }
            dArr[0] = (d28 - d27) * 0.5d;
            return dArr;
        }

        private double guessPhi(WeightedObservedPoint[] weightedObservedPointArr) {
            double x10 = weightedObservedPointArr[0].getX();
            double y10 = weightedObservedPointArr[0].getY();
            double d10 = 0.0d;
            int i10 = 1;
            double d11 = 0.0d;
            while (i10 < weightedObservedPointArr.length) {
                double x11 = weightedObservedPointArr[i10].getX();
                double y11 = weightedObservedPointArr[i10].getY();
                double d12 = (y11 - y10) / (x11 - x10);
                double d13 = this.omega * x11;
                double cos = FastMath.cos(d13);
                double sin = FastMath.sin(d13);
                double d14 = this.omega;
                d11 += ((d14 * y11) * cos) - (d12 * sin);
                d10 += (d14 * y11 * sin) + (d12 * cos);
                i10++;
                y10 = y11;
                x10 = x11;
            }
            return FastMath.atan2(-d10, d11);
        }

        private WeightedObservedPoint[] sortObservations(WeightedObservedPoint[] weightedObservedPointArr) {
            WeightedObservedPoint[] weightedObservedPointArr2 = (WeightedObservedPoint[]) weightedObservedPointArr.clone();
            WeightedObservedPoint weightedObservedPoint = weightedObservedPointArr2[0];
            for (int i10 = 1; i10 < weightedObservedPointArr2.length; i10++) {
                WeightedObservedPoint weightedObservedPoint2 = weightedObservedPointArr2[i10];
                if (weightedObservedPoint2.getX() < weightedObservedPoint.getX()) {
                    int i11 = i10 - 1;
                    WeightedObservedPoint weightedObservedPoint3 = weightedObservedPointArr2[i11];
                    while (i11 >= 0 && weightedObservedPoint2.getX() < weightedObservedPoint3.getX()) {
                        weightedObservedPointArr2[i11 + 1] = weightedObservedPoint3;
                        int i12 = i11 - 1;
                        if (i11 != 0) {
                            weightedObservedPoint3 = weightedObservedPointArr2[i12];
                        }
                        i11 = i12;
                    }
                    weightedObservedPointArr2[i11 + 1] = weightedObservedPoint2;
                    weightedObservedPoint = weightedObservedPointArr2[i10];
                } else {
                    weightedObservedPoint = weightedObservedPoint2;
                }
            }
            return weightedObservedPointArr2;
        }

        public double[] guess() {
            return new double[]{this.f100163a, this.omega, this.phi};
        }
    }

    public HarmonicFitter(MultivariateVectorOptimizer multivariateVectorOptimizer) {
        super(multivariateVectorOptimizer);
    }

    public double[] fit(double[] dArr) {
        return fit(new HarmonicOscillator.Parametric(), dArr);
    }

    public double[] fit() {
        return fit(new ParameterGuesser(getObservations()).guess());
    }
}
