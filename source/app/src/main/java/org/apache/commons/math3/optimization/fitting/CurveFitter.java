package org.apache.commons.math3.optimization.fitting;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.math3.analysis.DifferentiableMultivariateVectorFunction;
import org.apache.commons.math3.analysis.MultivariateMatrixFunction;
import org.apache.commons.math3.analysis.ParametricUnivariateFunction;
import org.apache.commons.math3.analysis.differentiation.DerivativeStructure;
import org.apache.commons.math3.analysis.differentiation.MultivariateDifferentiableVectorFunction;
import org.apache.commons.math3.optimization.DifferentiableMultivariateVectorOptimizer;
import org.apache.commons.math3.optimization.MultivariateDifferentiableVectorOptimizer;
import org.apache.commons.math3.optimization.PointVectorValuePair;

@Deprecated
public class CurveFitter<T extends ParametricUnivariateFunction> {
    private final List<WeightedObservedPoint> observations;

    @Deprecated
    private final DifferentiableMultivariateVectorOptimizer oldOptimizer;
    private final MultivariateDifferentiableVectorOptimizer optimizer;

    @Deprecated
    public class OldTheoreticalValuesFunction implements DifferentiableMultivariateVectorFunction {

        private final ParametricUnivariateFunction f100297f;

        public OldTheoreticalValuesFunction(ParametricUnivariateFunction parametricUnivariateFunction) {
            this.f100297f = parametricUnivariateFunction;
        }

        @Override
        public MultivariateMatrixFunction jacobian() {
            return new MultivariateMatrixFunction() {
                @Override
                public double[][] value(double[] dArr) {
                    double[][] dArr2 = new double[CurveFitter.this.observations.size()];
                    Iterator it = CurveFitter.this.observations.iterator();
                    int i10 = 0;
                    while (it.hasNext()) {
                        dArr2[i10] = OldTheoreticalValuesFunction.this.f100297f.gradient(((WeightedObservedPoint) it.next()).getX(), dArr);
                        i10++;
                    }
                    return dArr2;
                }
            };
        }

        @Override
        public double[] value(double[] dArr) {
            double[] dArr2 = new double[CurveFitter.this.observations.size()];
            Iterator it = CurveFitter.this.observations.iterator();
            int i10 = 0;
            while (it.hasNext()) {
                dArr2[i10] = this.f100297f.value(((WeightedObservedPoint) it.next()).getX(), dArr);
                i10++;
            }
            return dArr2;
        }
    }

    @Deprecated
    public CurveFitter(DifferentiableMultivariateVectorOptimizer differentiableMultivariateVectorOptimizer) {
        this.oldOptimizer = differentiableMultivariateVectorOptimizer;
        this.optimizer = null;
        this.observations = new ArrayList();
    }

    public void addObservedPoint(double d10, double d11) {
        addObservedPoint(1.0d, d10, d11);
    }

    public void clearObservations() {
        this.observations.clear();
    }

    public double[] fit(T t10, double[] dArr) {
        return fit(Integer.MAX_VALUE, t10, dArr);
    }

    public WeightedObservedPoint[] getObservations() {
        List<WeightedObservedPoint> list = this.observations;
        return (WeightedObservedPoint[]) list.toArray(new WeightedObservedPoint[list.size()]);
    }

    public void addObservedPoint(double d10, double d11, double d12) {
        this.observations.add(new WeightedObservedPoint(d10, d11, d12));
    }

    public double[] fit(int i10, T t10, double[] dArr) {
        PointVectorValuePair optimize;
        double[] dArr2 = new double[this.observations.size()];
        double[] dArr3 = new double[this.observations.size()];
        int i11 = 0;
        for (WeightedObservedPoint weightedObservedPoint : this.observations) {
            dArr2[i11] = weightedObservedPoint.getY();
            dArr3[i11] = weightedObservedPoint.getWeight();
            i11++;
        }
        MultivariateDifferentiableVectorOptimizer multivariateDifferentiableVectorOptimizer = this.optimizer;
        if (multivariateDifferentiableVectorOptimizer == null) {
            optimize = this.oldOptimizer.optimize(i10, new OldTheoreticalValuesFunction(t10), dArr2, dArr3, dArr);
        } else {
            optimize = multivariateDifferentiableVectorOptimizer.optimize(i10, new TheoreticalValuesFunction(t10), dArr2, dArr3, dArr);
        }
        return optimize.getPointRef();
    }

    public class TheoreticalValuesFunction implements MultivariateDifferentiableVectorFunction {

        private final ParametricUnivariateFunction f100298f;

        public TheoreticalValuesFunction(ParametricUnivariateFunction parametricUnivariateFunction) {
            this.f100298f = parametricUnivariateFunction;
        }

        @Override
        public double[] value(double[] dArr) {
            double[] dArr2 = new double[CurveFitter.this.observations.size()];
            Iterator it = CurveFitter.this.observations.iterator();
            int i10 = 0;
            while (it.hasNext()) {
                dArr2[i10] = this.f100298f.value(((WeightedObservedPoint) it.next()).getX(), dArr);
                i10++;
            }
            return dArr2;
        }

        @Override
        public DerivativeStructure[] value(DerivativeStructure[] derivativeStructureArr) {
            double[] dArr = new double[derivativeStructureArr.length];
            for (int i10 = 0; i10 < derivativeStructureArr.length; i10++) {
                dArr[i10] = derivativeStructureArr[i10].getValue();
            }
            DerivativeStructure[] derivativeStructureArr2 = new DerivativeStructure[CurveFitter.this.observations.size()];
            Iterator it = CurveFitter.this.observations.iterator();
            int i11 = 0;
            while (it.hasNext()) {
                DerivativeStructure derivativeStructure = new DerivativeStructure(derivativeStructureArr.length, 1, this.f100298f.value(((WeightedObservedPoint) it.next()).getX(), dArr));
                for (int i12 = 0; i12 < derivativeStructureArr.length; i12++) {
                    derivativeStructure = derivativeStructure.add(new DerivativeStructure(derivativeStructureArr.length, 1, i12, 0.0d));
                }
                derivativeStructureArr2[i11] = derivativeStructure;
                i11++;
            }
            return derivativeStructureArr2;
        }
    }

    public void addObservedPoint(WeightedObservedPoint weightedObservedPoint) {
        this.observations.add(weightedObservedPoint);
    }

    public CurveFitter(MultivariateDifferentiableVectorOptimizer multivariateDifferentiableVectorOptimizer) {
        this.oldOptimizer = null;
        this.optimizer = multivariateDifferentiableVectorOptimizer;
        this.observations = new ArrayList();
    }
}
