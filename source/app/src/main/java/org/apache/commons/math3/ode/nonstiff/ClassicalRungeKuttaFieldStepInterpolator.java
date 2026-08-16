package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.Field;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.ode.FieldEquationsMapper;
import org.apache.commons.math3.ode.FieldODEStateAndDerivative;

class ClassicalRungeKuttaFieldStepInterpolator<T extends RealFieldElement<T>> extends RungeKuttaFieldStepInterpolator<T> {
    public ClassicalRungeKuttaFieldStepInterpolator(Field<T> field, boolean z10, T[][] tArr, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative3, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative4, FieldEquationsMapper<T> fieldEquationsMapper) {
        super(field, z10, tArr, fieldODEStateAndDerivative, fieldODEStateAndDerivative2, fieldODEStateAndDerivative3, fieldODEStateAndDerivative4, fieldEquationsMapper);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public FieldODEStateAndDerivative<T> computeInterpolatedStateAndDerivatives(FieldEquationsMapper<T> fieldEquationsMapper, T t10, T t11, T t12, T t13) {
        RealFieldElement[] currentStateLinearCombination;
        RealFieldElement[] derivativeLinearCombination;
        RealFieldElement realFieldElement = (RealFieldElement) t10.getField().getOne();
        RealFieldElement realFieldElement2 = (RealFieldElement) realFieldElement.subtract(t11);
        RealFieldElement realFieldElement3 = (RealFieldElement) realFieldElement.subtract((RealFieldElement) t11.multiply(2));
        RealFieldElement realFieldElement4 = (RealFieldElement) realFieldElement2.multiply(realFieldElement3);
        RealFieldElement realFieldElement5 = (RealFieldElement) ((RealFieldElement) t11.multiply(realFieldElement2)).multiply(2);
        RealFieldElement realFieldElement6 = (RealFieldElement) ((RealFieldElement) t11.multiply(realFieldElement3)).negate();
        if (getGlobalPreviousState() == null || t11.getReal() > 0.5d) {
            RealFieldElement realFieldElement7 = (RealFieldElement) t11.multiply(4);
            RealFieldElement realFieldElement8 = (RealFieldElement) t13.divide(6.0d);
            RealFieldElement realFieldElement9 = (RealFieldElement) realFieldElement8.multiply((RealFieldElement) ((RealFieldElement) t11.multiply(((RealFieldElement) realFieldElement7.negate()).add(5.0d))).subtract(1.0d));
            RealFieldElement realFieldElement10 = (RealFieldElement) realFieldElement8.multiply((RealFieldElement) ((RealFieldElement) t11.multiply(realFieldElement7.subtract(2.0d))).subtract(2.0d));
            currentStateLinearCombination = currentStateLinearCombination(realFieldElement9, realFieldElement10, realFieldElement10, (RealFieldElement) realFieldElement8.multiply((RealFieldElement) ((RealFieldElement) t11.multiply(((RealFieldElement) realFieldElement7.negate()).subtract(1.0d))).subtract(1.0d)));
            derivativeLinearCombination = derivativeLinearCombination(realFieldElement4, realFieldElement5, realFieldElement5, realFieldElement6);
        } else {
            RealFieldElement realFieldElement11 = (RealFieldElement) ((RealFieldElement) t11.multiply(t11)).multiply(4);
            RealFieldElement realFieldElement12 = (RealFieldElement) t12.divide(6.0d);
            RealFieldElement realFieldElement13 = (RealFieldElement) realFieldElement12.multiply((RealFieldElement) ((RealFieldElement) realFieldElement11.subtract((RealFieldElement) t11.multiply(9))).add(6.0d));
            RealFieldElement realFieldElement14 = (RealFieldElement) realFieldElement12.multiply((RealFieldElement) ((RealFieldElement) t11.multiply(6)).subtract(realFieldElement11));
            currentStateLinearCombination = previousStateLinearCombination(realFieldElement13, realFieldElement14, realFieldElement14, (RealFieldElement) realFieldElement12.multiply((RealFieldElement) realFieldElement11.subtract((RealFieldElement) t11.multiply(3))));
            derivativeLinearCombination = derivativeLinearCombination(realFieldElement4, realFieldElement5, realFieldElement5, realFieldElement6);
        }
        return new FieldODEStateAndDerivative<>(t10, currentStateLinearCombination, derivativeLinearCombination);
    }

    @Override
    public ClassicalRungeKuttaFieldStepInterpolator<T> create(Field<T> field, boolean z10, T[][] tArr, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative3, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative4, FieldEquationsMapper<T> fieldEquationsMapper) {
        return new ClassicalRungeKuttaFieldStepInterpolator<>(field, z10, tArr, fieldODEStateAndDerivative, fieldODEStateAndDerivative2, fieldODEStateAndDerivative3, fieldODEStateAndDerivative4, fieldEquationsMapper);
    }
}
