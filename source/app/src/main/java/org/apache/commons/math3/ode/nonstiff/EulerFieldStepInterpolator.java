package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.Field;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.ode.FieldEquationsMapper;
import org.apache.commons.math3.ode.FieldODEStateAndDerivative;

class EulerFieldStepInterpolator<T extends RealFieldElement<T>> extends RungeKuttaFieldStepInterpolator<T> {
    public EulerFieldStepInterpolator(Field<T> field, boolean z10, T[][] tArr, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative3, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative4, FieldEquationsMapper<T> fieldEquationsMapper) {
        super(field, z10, tArr, fieldODEStateAndDerivative, fieldODEStateAndDerivative2, fieldODEStateAndDerivative3, fieldODEStateAndDerivative4, fieldEquationsMapper);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public FieldODEStateAndDerivative<T> computeInterpolatedStateAndDerivatives(FieldEquationsMapper<T> fieldEquationsMapper, T t10, T t11, T t12, T t13) {
        RealFieldElement[] currentStateLinearCombination;
        RealFieldElement[] derivativeLinearCombination;
        if (getGlobalPreviousState() == null || t11.getReal() > 0.5d) {
            currentStateLinearCombination = currentStateLinearCombination((RealFieldElement) t13.negate());
            derivativeLinearCombination = derivativeLinearCombination((RealFieldElement) t10.getField().getOne());
        } else {
            currentStateLinearCombination = previousStateLinearCombination(t12);
            derivativeLinearCombination = derivativeLinearCombination((RealFieldElement) t10.getField().getOne());
        }
        return new FieldODEStateAndDerivative<>(t10, currentStateLinearCombination, derivativeLinearCombination);
    }

    @Override
    public EulerFieldStepInterpolator<T> create(Field<T> field, boolean z10, T[][] tArr, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative3, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative4, FieldEquationsMapper<T> fieldEquationsMapper) {
        return new EulerFieldStepInterpolator<>(field, z10, tArr, fieldODEStateAndDerivative, fieldODEStateAndDerivative2, fieldODEStateAndDerivative3, fieldODEStateAndDerivative4, fieldEquationsMapper);
    }
}
