package org.apache.commons.math3.fitting;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.apache.commons.math3.analysis.function.HarmonicOscillator;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.ZeroException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.fitting.AbstractCurveFitter;
import org.apache.commons.math3.fitting.leastsquares.LeastSquaresBuilder;
import org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem;
import org.apache.commons.math3.linear.DiagonalMatrix;
import org.apache.commons.math3.util.FastMath;

public class HarmonicCurveFitter extends AbstractCurveFitter {
    private static final HarmonicOscillator.Parametric FUNCTION = new HarmonicOscillator.Parametric();
    private final double[] initialGuess;
    private final int maxIter;

    public static class ParameterGuesser {

        private final double f100162a;
        private final double omega;
        private final double phi;

        public ParameterGuesser(Collection<WeightedObservedPoint> collection) {
            if (collection.size() < 4) {
                throw new NumberIsTooSmallException(LocalizedFormats.INSUFFICIENT_OBSERVED_POINTS_IN_SAMPLE, Integer.valueOf(collection.size()), 4, true);
            }
            WeightedObservedPoint[] weightedObservedPointArr = (WeightedObservedPoint[]) sortObservations(collection).toArray(new WeightedObservedPoint[0]);
            double[] guessAOmega = guessAOmega(weightedObservedPointArr);
            this.f100162a = guessAOmega[0];
            this.omega = guessAOmega[1];
            this.phi = guessPhi(weightedObservedPointArr);
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

        /* JADX WARN: Multi-variable type inference failed */
        private List<WeightedObservedPoint> sortObservations(Collection<WeightedObservedPoint> collection) {
            ArrayList arrayList = new ArrayList(collection);
            WeightedObservedPoint weightedObservedPoint = (WeightedObservedPoint) arrayList.get(0);
            int size = arrayList.size();
            for (int i10 = 1; i10 < size; i10++) {
                WeightedObservedPoint weightedObservedPoint2 = (WeightedObservedPoint) arrayList.get(i10);
                if (weightedObservedPoint2.getX() < weightedObservedPoint.getX()) {
                    int i11 = i10 - 1;
                    WeightedObservedPoint weightedObservedPoint3 = (WeightedObservedPoint) arrayList.get(i11);
                    while (i11 >= 0 && weightedObservedPoint2.getX() < weightedObservedPoint3.getX()) {
                        arrayList.set(i11 + 1, weightedObservedPoint3);
                        int i12 = i11 - 1;
                        if (i11 != 0) {
                            weightedObservedPoint3 = (WeightedObservedPoint) arrayList.get(i12);
                        }
                        i11 = i12;
                    }
                    arrayList.set(i11 + 1, weightedObservedPoint2);
                    weightedObservedPoint = (WeightedObservedPoint) arrayList.get(i10);
                } else {
                    weightedObservedPoint = weightedObservedPoint2;
                }
            }
            return arrayList;
        }

        public double[] guess() {
            return new double[]{this.f100162a, this.omega, this.phi};
        }
    }

    private HarmonicCurveFitter(double[] dArr, int i10) {
        this.initialGuess = dArr;
        this.maxIter = i10;
    }

    public static HarmonicCurveFitter create() {
        return new HarmonicCurveFitter(null, Integer.MAX_VALUE);
    }

    @Override
    public LeastSquaresProblem getProblem(Collection<WeightedObservedPoint> collection) {
        int size = collection.size();
        double[] dArr = new double[size];
        double[] dArr2 = new double[size];
        int i10 = 0;
        for (WeightedObservedPoint weightedObservedPoint : collection) {
            dArr[i10] = weightedObservedPoint.getY();
            dArr2[i10] = weightedObservedPoint.getWeight();
            i10++;
        }
        AbstractCurveFitter.TheoreticalValuesFunction theoreticalValuesFunction = new AbstractCurveFitter.TheoreticalValuesFunction(FUNCTION, collection);
        double[] dArr3 = this.initialGuess;
        if (dArr3 == null) {
            dArr3 = new ParameterGuesser(collection).guess();
        }
        return new LeastSquaresBuilder().maxEvaluations(Integer.MAX_VALUE).maxIterations(this.maxIter).start(dArr3).target(dArr).weight(new DiagonalMatrix(dArr2)).model(theoreticalValuesFunction.getModelFunction(), theoreticalValuesFunction.getModelFunctionJacobian()).build();
    }

    public HarmonicCurveFitter withMaxIterations(int i10) {
        return new HarmonicCurveFitter(this.initialGuess, i10);
    }

    public HarmonicCurveFitter withStartPoint(double[] dArr) {
        return new HarmonicCurveFitter((double[]) dArr.clone(), this.maxIter);
    }
}
