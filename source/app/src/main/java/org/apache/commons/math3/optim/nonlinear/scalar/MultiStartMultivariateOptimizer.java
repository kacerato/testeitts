package org.apache.commons.math3.optim.nonlinear.scalar;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.optim.BaseMultiStartMultivariateOptimizer;
import org.apache.commons.math3.optim.PointValuePair;
import org.apache.commons.math3.random.RandomVectorGenerator;

public class MultiStartMultivariateOptimizer extends BaseMultiStartMultivariateOptimizer<PointValuePair> {
    private final List<PointValuePair> optima;
    private final MultivariateOptimizer optimizer;

    public MultiStartMultivariateOptimizer(MultivariateOptimizer multivariateOptimizer, int i10, RandomVectorGenerator randomVectorGenerator) throws NullArgumentException, NotStrictlyPositiveException {
        super(multivariateOptimizer, i10, randomVectorGenerator);
        this.optima = new ArrayList();
        this.optimizer = multivariateOptimizer;
    }

    private Comparator<PointValuePair> getPairComparator() {
        return new Comparator<PointValuePair>() {
            @Override
            public int compare(PointValuePair pointValuePair, PointValuePair pointValuePair2) {
                if (pointValuePair == null) {
                    return pointValuePair2 == null ? 0 : 1;
                }
                if (pointValuePair2 == null) {
                    return -1;
                }
                double doubleValue = pointValuePair.getValue().doubleValue();
                double doubleValue2 = pointValuePair2.getValue().doubleValue();
                return MultiStartMultivariateOptimizer.this.optimizer.getGoalType() == GoalType.MINIMIZE ? Double.compare(doubleValue, doubleValue2) : Double.compare(doubleValue2, doubleValue);
            }
        };
    }

    @Override
    public void clear() {
        this.optima.clear();
    }

    @Override
    public PointValuePair[] getOptima() {
        Collections.sort(this.optima, getPairComparator());
        return (PointValuePair[]) this.optima.toArray(new PointValuePair[0]);
    }

    @Override
    public void store(PointValuePair pointValuePair) {
        this.optima.add(pointValuePair);
    }
}
