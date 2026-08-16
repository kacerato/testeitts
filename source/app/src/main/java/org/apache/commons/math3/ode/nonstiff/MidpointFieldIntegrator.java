package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.Field;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.ode.FieldEquationsMapper;
import org.apache.commons.math3.ode.FieldODEStateAndDerivative;
import org.apache.commons.math3.util.MathArrays;

public class MidpointFieldIntegrator<T extends RealFieldElement<T>> extends RungeKuttaFieldIntegrator<T> {
    public MidpointFieldIntegrator(Field<T> field, T t10) {
        super(field, "midpoint", t10);
    }

    @Override
    public T[][] getA() {
        T[][] tArr = (T[][]) ((RealFieldElement[][]) MathArrays.buildArray(getField(), 1, 1));
        tArr[0][0] = fraction(1, 2);
        return tArr;
    }

    @Override
    public T[] getB() {
        T[] tArr = (T[]) ((RealFieldElement[]) MathArrays.buildArray(getField(), 2));
        tArr[0] = getField().getZero();
        tArr[1] = getField().getOne();
        return tArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public T[] getC() {
        T[] tArr = (T[]) ((RealFieldElement[]) MathArrays.buildArray(getField(), 1));
        tArr[0] = (RealFieldElement) getField().getOne().multiply(0.5d);
        return tArr;
    }

    @Override
    public MidpointFieldStepInterpolator<T> createInterpolator(boolean z10, T[][] tArr, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldEquationsMapper<T> fieldEquationsMapper) {
        return new MidpointFieldStepInterpolator<>(getField(), z10, tArr, fieldODEStateAndDerivative, fieldODEStateAndDerivative2, fieldODEStateAndDerivative, fieldODEStateAndDerivative2, fieldEquationsMapper);
    }
}
