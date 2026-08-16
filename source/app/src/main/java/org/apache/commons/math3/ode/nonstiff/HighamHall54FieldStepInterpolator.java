package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.Field;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.ode.FieldEquationsMapper;
import org.apache.commons.math3.ode.FieldODEStateAndDerivative;

class HighamHall54FieldStepInterpolator<T extends RealFieldElement<T>> extends RungeKuttaFieldStepInterpolator<T> {
    public HighamHall54FieldStepInterpolator(Field<T> field, boolean z10, T[][] tArr, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative3, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative4, FieldEquationsMapper<T> fieldEquationsMapper) {
        super(field, z10, tArr, fieldODEStateAndDerivative, fieldODEStateAndDerivative2, fieldODEStateAndDerivative3, fieldODEStateAndDerivative4, fieldEquationsMapper);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public FieldODEStateAndDerivative<T> computeInterpolatedStateAndDerivatives(FieldEquationsMapper<T> fieldEquationsMapper, T t10, T t11, T t12, T t13) {
        RealFieldElement[] currentStateLinearCombination;
        RealFieldElement[] derivativeLinearCombination;
        RealFieldElement realFieldElement = (RealFieldElement) ((RealFieldElement) t11.multiply(((RealFieldElement) t11.multiply(((RealFieldElement) t11.multiply(-10.0d)).add(16.0d))).add(-7.5d))).add(1.0d);
        RealFieldElement realFieldElement2 = (RealFieldElement) t10.getField().getZero();
        RealFieldElement realFieldElement3 = (RealFieldElement) t11.multiply(((RealFieldElement) t11.multiply(((RealFieldElement) t11.multiply(67.5d)).add(-91.125d))).add(28.6875d));
        RealFieldElement realFieldElement4 = (RealFieldElement) t11.multiply(((RealFieldElement) t11.multiply(((RealFieldElement) t11.multiply(-120.0d)).add(152.0d))).add(-44.0d));
        RealFieldElement realFieldElement5 = (RealFieldElement) t11.multiply(((RealFieldElement) t11.multiply(((RealFieldElement) t11.multiply(62.5d)).add(-78.125d))).add(23.4375d));
        RealFieldElement realFieldElement6 = (RealFieldElement) ((RealFieldElement) t11.multiply(0.625d)).multiply((RealFieldElement) ((RealFieldElement) t11.multiply(2)).subtract(1.0d));
        if (getGlobalPreviousState() == null || t11.getReal() > 0.5d) {
            RealFieldElement realFieldElement7 = (RealFieldElement) t11.multiply(t11);
            RealFieldElement realFieldElement8 = (RealFieldElement) t12.divide(t11);
            currentStateLinearCombination = currentStateLinearCombination((RealFieldElement) realFieldElement8.multiply((RealFieldElement) ((RealFieldElement) t11.multiply(((RealFieldElement) t11.multiply(((RealFieldElement) t11.multiply(((RealFieldElement) t11.multiply(-2.5d)).add(5.333333333333333d))).add(-3.75d))).add(1.0d))).add(-0.08333333333333333d)), (RealFieldElement) t10.getField().getZero(), (RealFieldElement) realFieldElement8.multiply((RealFieldElement) ((RealFieldElement) realFieldElement7.multiply((RealFieldElement) ((RealFieldElement) t11.multiply(((RealFieldElement) t11.multiply(16.875d)).add(-30.375d))).add(14.34375d))).add(-0.84375d)), (RealFieldElement) realFieldElement8.multiply((RealFieldElement) ((RealFieldElement) realFieldElement7.multiply((RealFieldElement) ((RealFieldElement) t11.multiply(((RealFieldElement) t11.multiply(-30.0d)).add(50.666666666666664d))).add(-22.0d))).add(1.3333333333333333d)), (RealFieldElement) realFieldElement8.multiply((RealFieldElement) ((RealFieldElement) realFieldElement7.multiply((RealFieldElement) ((RealFieldElement) t11.multiply(((RealFieldElement) t11.multiply(15.625d)).add(-26.041666666666668d))).add(11.71875d))).add(-1.3020833333333333d)), (RealFieldElement) realFieldElement8.multiply((RealFieldElement) ((RealFieldElement) realFieldElement7.multiply((RealFieldElement) ((RealFieldElement) t11.multiply(0.4166666666666667d)).add(-0.3125d))).add(-0.10416666666666667d)));
            derivativeLinearCombination = derivativeLinearCombination(realFieldElement, realFieldElement2, realFieldElement3, realFieldElement4, realFieldElement5, realFieldElement6);
        } else {
            currentStateLinearCombination = previousStateLinearCombination((RealFieldElement) t12.multiply(((RealFieldElement) t11.multiply(((RealFieldElement) t11.multiply(((RealFieldElement) t11.multiply(-2.5d)).add(5.333333333333333d))).add(-3.75d))).add(1.0d)), (RealFieldElement) t10.getField().getZero(), (RealFieldElement) t12.multiply(t11.multiply(((RealFieldElement) t11.multiply(((RealFieldElement) t11.multiply(16.875d)).add(-30.375d))).add(14.34375d))), (RealFieldElement) t12.multiply(t11.multiply(((RealFieldElement) t11.multiply(((RealFieldElement) t11.multiply(-30.0d)).add(50.666666666666664d))).add(-22.0d))), (RealFieldElement) t12.multiply(t11.multiply(((RealFieldElement) t11.multiply(((RealFieldElement) t11.multiply(15.625d)).add(-26.041666666666668d))).add(11.71875d))), (RealFieldElement) t12.multiply(t11.multiply(((RealFieldElement) t11.multiply(0.4166666666666667d)).add(-0.3125d))));
            derivativeLinearCombination = derivativeLinearCombination(realFieldElement, realFieldElement2, realFieldElement3, realFieldElement4, realFieldElement5, realFieldElement6);
        }
        return new FieldODEStateAndDerivative<>(t10, currentStateLinearCombination, derivativeLinearCombination);
    }

    @Override
    public HighamHall54FieldStepInterpolator<T> create(Field<T> field, boolean z10, T[][] tArr, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative3, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative4, FieldEquationsMapper<T> fieldEquationsMapper) {
        return new HighamHall54FieldStepInterpolator<>(field, z10, tArr, fieldODEStateAndDerivative, fieldODEStateAndDerivative2, fieldODEStateAndDerivative3, fieldODEStateAndDerivative4, fieldEquationsMapper);
    }
}
