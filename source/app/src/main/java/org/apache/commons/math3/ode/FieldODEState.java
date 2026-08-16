package org.apache.commons.math3.ode;

import org.apache.commons.math3.Field;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.util.MathArrays;

public class FieldODEState<T extends RealFieldElement<T>> {
    private final T[][] secondaryState;
    private final T[] state;
    private final T time;

    public FieldODEState(T t10, T[] tArr) {
        this(t10, tArr, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public T[][] copy(Field<T> field, T[][] tArr) {
        if (tArr == null) {
            return null;
        }
        T[][] tArr2 = (T[][]) ((RealFieldElement[][]) MathArrays.buildArray(field, tArr.length, -1));
        for (int i10 = 0; i10 < tArr.length; i10++) {
            tArr2[i10] = (RealFieldElement[]) tArr[i10].clone();
        }
        return tArr2;
    }

    public int getNumberOfSecondaryStates() {
        T[][] tArr = this.secondaryState;
        if (tArr == null) {
            return 0;
        }
        return tArr.length;
    }

    public T[] getSecondaryState(int i10) {
        return (T[]) ((RealFieldElement[]) (i10 == 0 ? this.state.clone() : this.secondaryState[i10 - 1].clone()));
    }

    public int getSecondaryStateDimension(int i10) {
        return i10 == 0 ? this.state.length : this.secondaryState[i10 - 1].length;
    }

    public T[] getState() {
        return (T[]) ((RealFieldElement[]) this.state.clone());
    }

    public int getStateDimension() {
        return this.state.length;
    }

    public T getTime() {
        return this.time;
    }

    public FieldODEState(T t10, T[] tArr, T[][] tArr2) {
        this.time = t10;
        this.state = (T[]) ((RealFieldElement[]) tArr.clone());
        this.secondaryState = copy(t10.getField(), tArr2);
    }
}
