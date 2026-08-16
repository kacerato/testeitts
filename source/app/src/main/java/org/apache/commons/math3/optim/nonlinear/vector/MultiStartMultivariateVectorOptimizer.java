package org.apache.commons.math3.optim.nonlinear.vector;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.linear.ArrayRealVector;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.RealVector;
import org.apache.commons.math3.optim.BaseMultiStartMultivariateOptimizer;
import org.apache.commons.math3.optim.PointVectorValuePair;
import org.apache.commons.math3.random.RandomVectorGenerator;

@Deprecated
public class MultiStartMultivariateVectorOptimizer extends BaseMultiStartMultivariateOptimizer<PointVectorValuePair> {
    private final List<PointVectorValuePair> optima;
    private final MultivariateVectorOptimizer optimizer;

    public MultiStartMultivariateVectorOptimizer(MultivariateVectorOptimizer multivariateVectorOptimizer, int i10, RandomVectorGenerator randomVectorGenerator) throws NullArgumentException, NotStrictlyPositiveException {
        super(multivariateVectorOptimizer, i10, randomVectorGenerator);
        this.optima = new ArrayList();
        this.optimizer = multivariateVectorOptimizer;
    }

    private Comparator<PointVectorValuePair> getPairComparator() {
        return new Comparator<PointVectorValuePair>() {
            private final RealVector target;
            private final RealMatrix weight;

            {
                this.target = new ArrayRealVector(MultiStartMultivariateVectorOptimizer.this.optimizer.getTarget(), false);
                this.weight = MultiStartMultivariateVectorOptimizer.this.optimizer.getWeight();
            }

            private double weightedResidual(PointVectorValuePair pointVectorValuePair) {
                RealVector subtract = this.target.subtract(new ArrayRealVector(pointVectorValuePair.getValueRef(), false));
                return subtract.dotProduct(this.weight.operate(subtract));
            }

            @Override
            public int compare(PointVectorValuePair pointVectorValuePair, PointVectorValuePair pointVectorValuePair2) {
                if (pointVectorValuePair == null) {
                    return pointVectorValuePair2 == null ? 0 : 1;
                }
                if (pointVectorValuePair2 == null) {
                    return -1;
                }
                return Double.compare(weightedResidual(pointVectorValuePair), weightedResidual(pointVectorValuePair2));
            }
        };
    }

    @Override
    public void clear() {
        this.optima.clear();
    }

    @Override
    public PointVectorValuePair[] getOptima() {
        Collections.sort(this.optima, getPairComparator());
        return (PointVectorValuePair[]) this.optima.toArray(new PointVectorValuePair[0]);
    }

    @Override
    public void store(PointVectorValuePair pointVectorValuePair) {
        this.optima.add(pointVectorValuePair);
    }
}
