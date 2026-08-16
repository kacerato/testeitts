package org.apache.commons.math3.fitting;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.math3.analysis.MultivariateMatrixFunction;
import org.apache.commons.math3.analysis.MultivariateVectorFunction;
import org.apache.commons.math3.analysis.ParametricUnivariateFunction;
import org.apache.commons.math3.optim.InitialGuess;
import org.apache.commons.math3.optim.MaxEval;
import org.apache.commons.math3.optim.nonlinear.vector.ModelFunction;
import org.apache.commons.math3.optim.nonlinear.vector.ModelFunctionJacobian;
import org.apache.commons.math3.optim.nonlinear.vector.MultivariateVectorOptimizer;
import org.apache.commons.math3.optim.nonlinear.vector.Target;
import org.apache.commons.math3.optim.nonlinear.vector.Weight;

@Deprecated
public class CurveFitter<T extends ParametricUnivariateFunction> {
    private final List<WeightedObservedPoint> observations = new ArrayList();
    private final MultivariateVectorOptimizer optimizer;

    public class TheoreticalValuesFunction {

        private final ParametricUnivariateFunction f100161f;

        public TheoreticalValuesFunction(ParametricUnivariateFunction parametricUnivariateFunction) {
            this.f100161f = parametricUnivariateFunction;
        }

        public ModelFunction getModelFunction() {
            return new ModelFunction(new MultivariateVectorFunction() {
                @Override
                public double[] value(double[] dArr) {
                    double[] dArr2 = new double[CurveFitter.this.observations.size()];
                    Iterator it = CurveFitter.this.observations.iterator();
                    int i10 = 0;
                    while (it.hasNext()) {
                        dArr2[i10] = TheoreticalValuesFunction.this.f100161f.value(((WeightedObservedPoint) it.next()).getX(), dArr);
                        i10++;
                    }
                    return dArr2;
                }
            });
        }

        public ModelFunctionJacobian getModelFunctionJacobian() {
            return new ModelFunctionJacobian(new MultivariateMatrixFunction() {
                @Override
                public double[][] value(double[] dArr) {
                    double[][] dArr2 = new double[CurveFitter.this.observations.size()];
                    Iterator it = CurveFitter.this.observations.iterator();
                    int i10 = 0;
                    while (it.hasNext()) {
                        dArr2[i10] = TheoreticalValuesFunction.this.f100161f.gradient(((WeightedObservedPoint) it.next()).getX(), dArr);
                        i10++;
                    }
                    return dArr2;
                }
            });
        }
    }

    public CurveFitter(MultivariateVectorOptimizer multivariateVectorOptimizer) {
        this.optimizer = multivariateVectorOptimizer;
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
        double[] dArr2 = new double[this.observations.size()];
        double[] dArr3 = new double[this.observations.size()];
        int i11 = 0;
        for (WeightedObservedPoint weightedObservedPoint : this.observations) {
            dArr2[i11] = weightedObservedPoint.getY();
            dArr3[i11] = weightedObservedPoint.getWeight();
            i11++;
        }
        TheoreticalValuesFunction theoreticalValuesFunction = new TheoreticalValuesFunction(t10);
        return this.optimizer.optimize(new MaxEval(i10), theoreticalValuesFunction.getModelFunction(), theoreticalValuesFunction.getModelFunctionJacobian(), new Target(dArr2), new Weight(dArr3), new InitialGuess(dArr)).getPointRef();
    }

    public void addObservedPoint(WeightedObservedPoint weightedObservedPoint) {
        this.observations.add(weightedObservedPoint);
    }
}
