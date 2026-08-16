package org.apache.commons.math3.optimization.univariate;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.optimization.BaseOptimizer;
import org.apache.commons.math3.optimization.GoalType;

@Deprecated
public interface BaseUnivariateOptimizer<FUNC extends UnivariateFunction> extends BaseOptimizer<UnivariatePointValuePair> {
    UnivariatePointValuePair optimize(int i10, FUNC func, GoalType goalType, double d10, double d11);

    UnivariatePointValuePair optimize(int i10, FUNC func, GoalType goalType, double d10, double d11, double d12);
}
