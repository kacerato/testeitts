package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.Field;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.ode.FieldEquationsMapper;
import org.apache.commons.math3.ode.FieldODEStateAndDerivative;
import org.apache.commons.math3.util.MathArrays;

public class ClassicalRungeKuttaFieldIntegrator<T extends RealFieldElement<T>> extends RungeKuttaFieldIntegrator<T> {
    public ClassicalRungeKuttaFieldIntegrator(Field<T> field, T t10) {
        super(field, "classical Runge-Kutta", t10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public T[][] getA() {
        T[][] tArr = (T[][]) ((RealFieldElement[][]) MathArrays.buildArray(getField(), 3, -1));
        int i10 = 0;
        while (i10 < tArr.length) {
            int i11 = i10 + 1;
            tArr[i10] = (RealFieldElement[]) MathArrays.buildArray(getField(), i11);
            i10 = i11;
        }
        tArr[0][0] = fraction(1, 2);
        tArr[1][0] = getField().getZero();
        tArr[1][1] = tArr[0][0];
        tArr[2][0] = getField().getZero();
        tArr[2][1] = getField().getZero();
        tArr[2][2] = getField().getOne();
        return tArr;
    }

    @Override
    public T[] getB() {
        T[] tArr = (T[]) ((RealFieldElement[]) MathArrays.buildArray(getField(), 4));
        tArr[0] = fraction(1, 6);
        T fraction = fraction(1, 3);
        tArr[1] = fraction;
        tArr[2] = fraction;
        tArr[3] = tArr[0];
        return tArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public T[] getC() {
        T[] tArr = (T[]) ((RealFieldElement[]) MathArrays.buildArray(getField(), 3));
        RealFieldElement realFieldElement = (RealFieldElement) getField().getOne().multiply(0.5d);
        tArr[0] = realFieldElement;
        tArr[1] = realFieldElement;
        tArr[2] = getField().getOne();
        return tArr;
    }

    @Override
    public ClassicalRungeKuttaFieldStepInterpolator<T> createInterpolator(boolean z10, T[][] tArr, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldEquationsMapper<T> fieldEquationsMapper) {
        return new ClassicalRungeKuttaFieldStepInterpolator<>(getField(), z10, tArr, fieldODEStateAndDerivative, fieldODEStateAndDerivative2, fieldODEStateAndDerivative, fieldODEStateAndDerivative2, fieldEquationsMapper);
    }
}
