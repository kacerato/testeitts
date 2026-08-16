package org.apache.commons.math3.ode;

import org.apache.commons.math3.RealFieldElement;

public class FieldODEStateAndDerivative<T extends RealFieldElement<T>> extends FieldODEState<T> {
    private final T[] derivative;
    private final T[][] secondaryDerivative;

    public FieldODEStateAndDerivative(T t10, T[] tArr, T[] tArr2) {
        this(t10, tArr, tArr2, null, null);
    }

    public T[] getDerivative() {
        return (T[]) ((RealFieldElement[]) this.derivative.clone());
    }

    public T[] getSecondaryDerivative(int i10) {
        return (T[]) ((RealFieldElement[]) (i10 == 0 ? this.derivative.clone() : this.secondaryDerivative[i10 - 1].clone()));
    }

    public FieldODEStateAndDerivative(T t10, T[] tArr, T[] tArr2, T[][] tArr3, T[][] tArr4) {
        super(t10, tArr, tArr3);
        this.derivative = (T[]) ((RealFieldElement[]) tArr2.clone());
        this.secondaryDerivative = copy(t10.getField(), tArr4);
    }
}
