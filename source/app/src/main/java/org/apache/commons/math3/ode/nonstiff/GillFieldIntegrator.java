package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.Field;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.ode.FieldEquationsMapper;
import org.apache.commons.math3.ode.FieldODEStateAndDerivative;
import org.apache.commons.math3.util.MathArrays;

public class GillFieldIntegrator<T extends RealFieldElement<T>> extends RungeKuttaFieldIntegrator<T> {
    public GillFieldIntegrator(Field<T> field, T t10) {
        super(field, "Gill", t10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public T[][] getA() {
        RealFieldElement realFieldElement = (RealFieldElement) ((RealFieldElement) getField().getZero().add(2.0d)).sqrt();
        T[][] tArr = (T[][]) ((RealFieldElement[][]) MathArrays.buildArray(getField(), 3, -1));
        int i10 = 0;
        while (i10 < tArr.length) {
            int i11 = i10 + 1;
            tArr[i10] = (RealFieldElement[]) MathArrays.buildArray(getField(), i11);
            i10 = i11;
        }
        tArr[0][0] = fraction(1, 2);
        tArr[1][0] = (RealFieldElement) ((RealFieldElement) realFieldElement.subtract(1.0d)).multiply(0.5d);
        tArr[1][1] = (RealFieldElement) ((RealFieldElement) realFieldElement.subtract(2.0d)).multiply(-0.5d);
        tArr[2][0] = getField().getZero();
        tArr[2][1] = (RealFieldElement) realFieldElement.multiply(-0.5d);
        tArr[2][2] = (RealFieldElement) ((RealFieldElement) realFieldElement.add(2.0d)).multiply(0.5d);
        return tArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public T[] getB() {
        RealFieldElement realFieldElement = (RealFieldElement) ((RealFieldElement) getField().getZero().add(2.0d)).sqrt();
        T[] tArr = (T[]) ((RealFieldElement[]) MathArrays.buildArray(getField(), 4));
        tArr[0] = fraction(1, 6);
        tArr[1] = (RealFieldElement) ((RealFieldElement) realFieldElement.subtract(2.0d)).divide(-6.0d);
        tArr[2] = (RealFieldElement) ((RealFieldElement) realFieldElement.add(2.0d)).divide(6.0d);
        tArr[3] = tArr[0];
        return tArr;
    }

    @Override
    public T[] getC() {
        T[] tArr = (T[]) ((RealFieldElement[]) MathArrays.buildArray(getField(), 3));
        T fraction = fraction(1, 2);
        tArr[0] = fraction;
        tArr[1] = fraction;
        tArr[2] = getField().getOne();
        return tArr;
    }

    @Override
    public GillFieldStepInterpolator<T> createInterpolator(boolean z10, T[][] tArr, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldEquationsMapper<T> fieldEquationsMapper) {
        return new GillFieldStepInterpolator<>(getField(), z10, tArr, fieldODEStateAndDerivative, fieldODEStateAndDerivative2, fieldODEStateAndDerivative, fieldODEStateAndDerivative2, fieldEquationsMapper);
    }
}
