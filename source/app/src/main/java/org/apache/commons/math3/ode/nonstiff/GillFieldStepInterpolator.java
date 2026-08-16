package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.Field;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.ode.FieldEquationsMapper;
import org.apache.commons.math3.ode.FieldODEStateAndDerivative;

class GillFieldStepInterpolator<T extends RealFieldElement<T>> extends RungeKuttaFieldStepInterpolator<T> {
    private final T one_minus_inv_sqrt_2;
    private final T one_plus_inv_sqrt_2;

    public GillFieldStepInterpolator(Field<T> field, boolean z10, T[][] tArr, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative3, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative4, FieldEquationsMapper<T> fieldEquationsMapper) {
        super(field, z10, tArr, fieldODEStateAndDerivative, fieldODEStateAndDerivative2, fieldODEStateAndDerivative3, fieldODEStateAndDerivative4, fieldEquationsMapper);
        RealFieldElement realFieldElement = (RealFieldElement) ((RealFieldElement) field.getZero().add(0.5d)).sqrt();
        this.one_minus_inv_sqrt_2 = (T) field.getOne().subtract(realFieldElement);
        this.one_plus_inv_sqrt_2 = (T) field.getOne().add(realFieldElement);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public FieldODEStateAndDerivative<T> computeInterpolatedStateAndDerivatives(FieldEquationsMapper<T> fieldEquationsMapper, T t10, T t11, T t12, T t13) {
        RealFieldElement[] currentStateLinearCombination;
        RealFieldElement[] derivativeLinearCombination;
        RealFieldElement realFieldElement = (RealFieldElement) t10.getField().getOne();
        RealFieldElement realFieldElement2 = (RealFieldElement) t11.multiply(2);
        RealFieldElement realFieldElement3 = (RealFieldElement) realFieldElement2.multiply(realFieldElement2);
        RealFieldElement realFieldElement4 = (RealFieldElement) ((RealFieldElement) t11.multiply(realFieldElement2.subtract(3.0d))).add(1.0d);
        RealFieldElement realFieldElement5 = (RealFieldElement) realFieldElement2.multiply((RealFieldElement) realFieldElement.subtract(t11));
        RealFieldElement realFieldElement6 = (RealFieldElement) realFieldElement5.multiply(this.one_minus_inv_sqrt_2);
        RealFieldElement realFieldElement7 = (RealFieldElement) realFieldElement5.multiply(this.one_plus_inv_sqrt_2);
        RealFieldElement realFieldElement8 = (RealFieldElement) t11.multiply(realFieldElement2.subtract(1.0d));
        if (getGlobalPreviousState() == null || t11.getReal() > 0.5d) {
            RealFieldElement realFieldElement9 = (RealFieldElement) t13.divide(-6.0d);
            RealFieldElement realFieldElement10 = (RealFieldElement) realFieldElement9.multiply((RealFieldElement) ((RealFieldElement) realFieldElement2.add(2.0d)).subtract(realFieldElement3));
            currentStateLinearCombination = currentStateLinearCombination((RealFieldElement) realFieldElement9.multiply((RealFieldElement) ((RealFieldElement) realFieldElement3.subtract((RealFieldElement) t11.multiply(5))).add(1.0d)), (RealFieldElement) realFieldElement10.multiply(this.one_minus_inv_sqrt_2), (RealFieldElement) realFieldElement10.multiply(this.one_plus_inv_sqrt_2), (RealFieldElement) realFieldElement9.multiply((RealFieldElement) ((RealFieldElement) realFieldElement3.add(t11)).add(1.0d)));
            derivativeLinearCombination = derivativeLinearCombination(realFieldElement4, realFieldElement6, realFieldElement7, realFieldElement8);
        } else {
            RealFieldElement realFieldElement11 = (RealFieldElement) t12.divide(6.0d);
            RealFieldElement realFieldElement12 = (RealFieldElement) realFieldElement11.multiply((RealFieldElement) ((RealFieldElement) t11.multiply(6)).subtract(realFieldElement3));
            currentStateLinearCombination = previousStateLinearCombination((RealFieldElement) realFieldElement11.multiply((RealFieldElement) ((RealFieldElement) realFieldElement3.subtract((RealFieldElement) t11.multiply(9))).add(6.0d)), (RealFieldElement) realFieldElement12.multiply(this.one_minus_inv_sqrt_2), (RealFieldElement) realFieldElement12.multiply(this.one_plus_inv_sqrt_2), (RealFieldElement) realFieldElement11.multiply((RealFieldElement) realFieldElement3.subtract((RealFieldElement) t11.multiply(3))));
            derivativeLinearCombination = derivativeLinearCombination(realFieldElement4, realFieldElement6, realFieldElement7, realFieldElement8);
        }
        return new FieldODEStateAndDerivative<>(t10, currentStateLinearCombination, derivativeLinearCombination);
    }

    @Override
    public GillFieldStepInterpolator<T> create(Field<T> field, boolean z10, T[][] tArr, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative3, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative4, FieldEquationsMapper<T> fieldEquationsMapper) {
        return new GillFieldStepInterpolator<>(field, z10, tArr, fieldODEStateAndDerivative, fieldODEStateAndDerivative2, fieldODEStateAndDerivative3, fieldODEStateAndDerivative4, fieldEquationsMapper);
    }
}
