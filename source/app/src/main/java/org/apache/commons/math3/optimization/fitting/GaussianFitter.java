package org.apache.commons.math3.optimization.fitting;

import java.util.Arrays;
import java.util.Comparator;
import org.apache.commons.math3.analysis.function.Gaussian;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.ZeroException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.optimization.DifferentiableMultivariateVectorOptimizer;
import org.apache.commons.math3.util.FastMath;

@Deprecated
public class GaussianFitter extends CurveFitter<Gaussian.Parametric> {

    public static class ParameterGuesser {
        private final double mean;
        private final double norm;
        private final double sigma;

        public ParameterGuesser(WeightedObservedPoint[] weightedObservedPointArr) {
            if (weightedObservedPointArr == null) {
                throw new NullArgumentException(LocalizedFormats.INPUT_ARRAY, new Object[0]);
            }
            if (weightedObservedPointArr.length < 3) {
                throw new NumberIsTooSmallException(Integer.valueOf(weightedObservedPointArr.length), 3, true);
            }
            double[] basicGuess = basicGuess(sortObservations(weightedObservedPointArr));
            this.norm = basicGuess[0];
            this.mean = basicGuess[1];
            this.sigma = basicGuess[2];
        }

        private double[] basicGuess(WeightedObservedPoint[] weightedObservedPointArr) {
            double x10;
            int findMaxY = findMaxY(weightedObservedPointArr);
            double y10 = weightedObservedPointArr[findMaxY].getY();
            double x11 = weightedObservedPointArr[findMaxY].getX();
            double d10 = y10 + ((x11 - y10) / 2.0d);
            try {
                x10 = interpolateXAtY(weightedObservedPointArr, findMaxY, 1, d10) - interpolateXAtY(weightedObservedPointArr, findMaxY, -1, d10);
            } catch (OutOfRangeException unused) {
                x10 = weightedObservedPointArr[weightedObservedPointArr.length - 1].getX() - weightedObservedPointArr[0].getX();
            }
            return new double[]{y10, x11, x10 / (FastMath.sqrt(FastMath.log(2.0d) * 2.0d) * 2.0d)};
        }

        private int findMaxY(WeightedObservedPoint[] weightedObservedPointArr) {
            int i10 = 0;
            for (int i11 = 1; i11 < weightedObservedPointArr.length; i11++) {
                if (weightedObservedPointArr[i11].getY() > weightedObservedPointArr[i10].getY()) {
                    i10 = i11;
                }
            }
            return i10;
        }

        private WeightedObservedPoint[] getInterpolationPointsForY(WeightedObservedPoint[] weightedObservedPointArr, int i10, int i11, double d10) throws OutOfRangeException {
            WeightedObservedPoint weightedObservedPoint;
            WeightedObservedPoint weightedObservedPoint2;
            if (i11 == 0) {
                throw new ZeroException();
            }
            do {
                int i12 = i10 + i11;
                if (i11 < 0) {
                    if (i12 < 0) {
                        throw new OutOfRangeException(Double.valueOf(d10), Double.valueOf(Double.NEGATIVE_INFINITY), Double.valueOf(Double.POSITIVE_INFINITY));
                    }
                    weightedObservedPoint = weightedObservedPointArr[i10];
                    i10 += i11;
                    weightedObservedPoint2 = weightedObservedPointArr[i10];
                } else {
                    if (i12 >= weightedObservedPointArr.length) {
                        throw new OutOfRangeException(Double.valueOf(d10), Double.valueOf(Double.NEGATIVE_INFINITY), Double.valueOf(Double.POSITIVE_INFINITY));
                    }
                    weightedObservedPoint = weightedObservedPointArr[i10];
                    i10 += i11;
                    weightedObservedPoint2 = weightedObservedPointArr[i10];
                }
            } while (!isBetween(d10, weightedObservedPoint.getY(), weightedObservedPoint2.getY()));
            return i11 < 0 ? new WeightedObservedPoint[]{weightedObservedPoint2, weightedObservedPoint} : new WeightedObservedPoint[]{weightedObservedPoint, weightedObservedPoint2};
        }

        private double interpolateXAtY(WeightedObservedPoint[] weightedObservedPointArr, int i10, int i11, double d10) throws OutOfRangeException {
            if (i11 == 0) {
                throw new ZeroException();
            }
            WeightedObservedPoint[] interpolationPointsForY = getInterpolationPointsForY(weightedObservedPointArr, i10, i11, d10);
            WeightedObservedPoint weightedObservedPoint = interpolationPointsForY[0];
            WeightedObservedPoint weightedObservedPoint2 = interpolationPointsForY[1];
            return weightedObservedPoint.getY() == d10 ? weightedObservedPoint.getX() : weightedObservedPoint2.getY() == d10 ? weightedObservedPoint2.getX() : weightedObservedPoint.getX() + (((d10 - weightedObservedPoint.getY()) * (weightedObservedPoint2.getX() - weightedObservedPoint.getX())) / (weightedObservedPoint2.getY() - weightedObservedPoint.getY()));
        }

        private boolean isBetween(double d10, double d11, double d12) {
            return (d10 >= d11 && d10 <= d12) || (d10 >= d12 && d10 <= d11);
        }

        private WeightedObservedPoint[] sortObservations(WeightedObservedPoint[] weightedObservedPointArr) {
            WeightedObservedPoint[] weightedObservedPointArr2 = (WeightedObservedPoint[]) weightedObservedPointArr.clone();
            Arrays.sort(weightedObservedPointArr2, new Comparator<WeightedObservedPoint>() {
                @Override
                public int compare(WeightedObservedPoint weightedObservedPoint, WeightedObservedPoint weightedObservedPoint2) {
                    if (weightedObservedPoint == null && weightedObservedPoint2 == null) {
                        return 0;
                    }
                    if (weightedObservedPoint == null) {
                        return -1;
                    }
                    if (weightedObservedPoint2 == null) {
                        return 1;
                    }
                    int compare = Double.compare(weightedObservedPoint.getX(), weightedObservedPoint2.getX());
                    if (compare < 0) {
                        return -1;
                    }
                    if (compare > 0) {
                        return 1;
                    }
                    int compare2 = Double.compare(weightedObservedPoint.getY(), weightedObservedPoint2.getY());
                    if (compare2 < 0) {
                        return -1;
                    }
                    if (compare2 > 0) {
                        return 1;
                    }
                    int compare3 = Double.compare(weightedObservedPoint.getWeight(), weightedObservedPoint2.getWeight());
                    if (compare3 < 0) {
                        return -1;
                    }
                    return compare3 > 0 ? 1 : 0;
                }
            });
            return weightedObservedPointArr2;
        }

        public double[] guess() {
            return new double[]{this.norm, this.mean, this.sigma};
        }
    }

    public GaussianFitter(DifferentiableMultivariateVectorOptimizer differentiableMultivariateVectorOptimizer) {
        super(differentiableMultivariateVectorOptimizer);
    }

    public double[] fit(double[] dArr) {
        return fit(new Gaussian.Parametric() {
            @Override
            public double[] gradient(double d10, double... dArr2) {
                double[] dArr3 = {Double.POSITIVE_INFINITY, Double.POSITIVE_INFINITY, Double.POSITIVE_INFINITY};
                try {
                    return super.gradient(d10, dArr2);
                } catch (NotStrictlyPositiveException unused) {
                    return dArr3;
                }
            }

            @Override
            public double value(double d10, double... dArr2) {
                try {
                    return super.value(d10, dArr2);
                } catch (NotStrictlyPositiveException unused) {
                    return Double.POSITIVE_INFINITY;
                }
            }
        }, dArr);
    }

    public double[] fit() {
        return fit(new ParameterGuesser(getObservations()).guess());
    }
}
