package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.Field;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.ode.FieldEquationsMapper;
import org.apache.commons.math3.ode.FieldODEStateAndDerivative;
import org.apache.commons.math3.ode.sampling.AbstractFieldStepInterpolator;
import org.apache.commons.math3.util.Decimal64;
import org.apache.commons.math3.util.MathArrays;

abstract class RungeKuttaFieldStepInterpolator<T extends RealFieldElement<T>> extends AbstractFieldStepInterpolator<T> {
    private final Field<T> field;
    private final T[][] yDotK;

    public RungeKuttaFieldStepInterpolator(Field<T> field, boolean z10, T[][] tArr, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative3, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative4, FieldEquationsMapper<T> fieldEquationsMapper) {
        super(z10, fieldODEStateAndDerivative, fieldODEStateAndDerivative2, fieldODEStateAndDerivative3, fieldODEStateAndDerivative4, fieldEquationsMapper);
        this.field = field;
        this.yDotK = (T[][]) ((RealFieldElement[][]) MathArrays.buildArray(field, tArr.length, -1));
        for (int i10 = 0; i10 < tArr.length; i10++) {
            ((T[][]) this.yDotK)[i10] = (RealFieldElement[]) tArr[i10].clone();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private T[] combine(T[] tArr, T... tArr2) {
        for (int i10 = 0; i10 < tArr.length; i10++) {
            for (int i11 = 0; i11 < tArr2.length; i11++) {
                tArr[i10] = (RealFieldElement) tArr[i10].add((Decimal64) tArr2[i11].multiply(this.yDotK[i11][i10]));
            }
        }
        return tArr;
    }

    public abstract RungeKuttaFieldStepInterpolator<T> create(Field<T> field, boolean z10, T[][] tArr, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative3, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative4, FieldEquationsMapper<T> fieldEquationsMapper);

    public T[] currentStateLinearCombination(T... tArr) {
        return combine(getCurrentState().getState(), tArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public T[] derivativeLinearCombination(T... tArr) {
        return (T[]) combine((RealFieldElement[]) MathArrays.buildArray(this.field, this.yDotK[0].length), tArr);
    }

    public final T[] previousStateLinearCombination(T... tArr) {
        return combine(getPreviousState().getState(), tArr);
    }

    @Override
    public RungeKuttaFieldStepInterpolator<T> create(boolean z10, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative3, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative4, FieldEquationsMapper<T> fieldEquationsMapper) {
        return create(this.field, z10, this.yDotK, fieldODEStateAndDerivative, fieldODEStateAndDerivative2, fieldODEStateAndDerivative3, fieldODEStateAndDerivative4, fieldEquationsMapper);
    }
}
