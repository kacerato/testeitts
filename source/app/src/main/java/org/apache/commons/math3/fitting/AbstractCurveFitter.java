package org.apache.commons.math3.fitting;

import java.util.Collection;
import java.util.Iterator;
import org.apache.commons.math3.analysis.MultivariateMatrixFunction;
import org.apache.commons.math3.analysis.MultivariateVectorFunction;
import org.apache.commons.math3.analysis.ParametricUnivariateFunction;
import org.apache.commons.math3.fitting.leastsquares.LeastSquaresOptimizer;
import org.apache.commons.math3.fitting.leastsquares.LeastSquaresProblem;
import org.apache.commons.math3.fitting.leastsquares.LevenbergMarquardtOptimizer;

public abstract class AbstractCurveFitter {

    public static class TheoreticalValuesFunction {

        private final ParametricUnivariateFunction f100160f;
        private final double[] points;

        public TheoreticalValuesFunction(ParametricUnivariateFunction parametricUnivariateFunction, Collection<WeightedObservedPoint> collection) {
            this.f100160f = parametricUnivariateFunction;
            this.points = new double[collection.size()];
            Iterator<WeightedObservedPoint> it = collection.iterator();
            int i10 = 0;
            while (it.hasNext()) {
                this.points[i10] = it.next().getX();
                i10++;
            }
        }

        public MultivariateVectorFunction getModelFunction() {
            return new MultivariateVectorFunction() {
                @Override
                public double[] value(double[] dArr) {
                    int length = TheoreticalValuesFunction.this.points.length;
                    double[] dArr2 = new double[length];
                    for (int i10 = 0; i10 < length; i10++) {
                        dArr2[i10] = TheoreticalValuesFunction.this.f100160f.value(TheoreticalValuesFunction.this.points[i10], dArr);
                    }
                    return dArr2;
                }
            };
        }

        public MultivariateMatrixFunction getModelFunctionJacobian() {
            return new MultivariateMatrixFunction() {
                @Override
                public double[][] value(double[] dArr) {
                    int length = TheoreticalValuesFunction.this.points.length;
                    double[][] dArr2 = new double[length];
                    for (int i10 = 0; i10 < length; i10++) {
                        dArr2[i10] = TheoreticalValuesFunction.this.f100160f.gradient(TheoreticalValuesFunction.this.points[i10], dArr);
                    }
                    return dArr2;
                }
            };
        }
    }

    public double[] fit(Collection<WeightedObservedPoint> collection) {
        return getOptimizer().optimize(getProblem(collection)).getPoint().toArray();
    }

    public LeastSquaresOptimizer getOptimizer() {
        return new LevenbergMarquardtOptimizer();
    }

    public abstract LeastSquaresProblem getProblem(Collection<WeightedObservedPoint> collection);
}
