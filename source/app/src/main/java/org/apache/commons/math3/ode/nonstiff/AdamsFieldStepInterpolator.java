package org.apache.commons.math3.ode.nonstiff;

import java.util.Arrays;
import org.apache.commons.math3.FieldElement;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.linear.Array2DRowFieldMatrix;
import org.apache.commons.math3.ode.FieldEquationsMapper;
import org.apache.commons.math3.ode.FieldODEStateAndDerivative;
import org.apache.commons.math3.ode.sampling.AbstractFieldStepInterpolator;
import org.apache.commons.math3.util.MathArrays;

class AdamsFieldStepInterpolator<T extends RealFieldElement<T>> extends AbstractFieldStepInterpolator<T> {
    private final Array2DRowFieldMatrix<T> nordsieck;
    private final FieldODEStateAndDerivative<T> reference;
    private final T[] scaled;
    private T scalingH;

    public AdamsFieldStepInterpolator(T t10, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, T[] tArr, Array2DRowFieldMatrix<T> array2DRowFieldMatrix, boolean z10, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative3, FieldEquationsMapper<T> fieldEquationsMapper) {
        this(t10, fieldODEStateAndDerivative, tArr, array2DRowFieldMatrix, z10, fieldODEStateAndDerivative2, fieldODEStateAndDerivative3, fieldODEStateAndDerivative2, fieldODEStateAndDerivative3, fieldEquationsMapper);
    }

    public static <S extends RealFieldElement<S>> FieldODEStateAndDerivative<S> taylor(FieldODEStateAndDerivative<S> fieldODEStateAndDerivative, S s10, S s11, S[] sArr, Array2DRowFieldMatrix<S> array2DRowFieldMatrix) {
        int i10;
        RealFieldElement realFieldElement = (RealFieldElement) s10.subtract(fieldODEStateAndDerivative.getTime());
        RealFieldElement realFieldElement2 = (RealFieldElement) realFieldElement.divide(s11);
        RealFieldElement[] realFieldElementArr = (RealFieldElement[]) MathArrays.buildArray(s10.getField(), sArr.length);
        Arrays.fill(realFieldElementArr, s10.getField().getZero());
        RealFieldElement[] realFieldElementArr2 = (RealFieldElement[]) MathArrays.buildArray(s10.getField(), sArr.length);
        Arrays.fill(realFieldElementArr2, s10.getField().getZero());
        S[][] dataRef = array2DRowFieldMatrix.getDataRef();
        int length = dataRef.length;
        while (true) {
            length--;
            i10 = 0;
            if (length < 0) {
                break;
            }
            int i11 = length + 2;
            S[] sArr2 = dataRef[length];
            RealFieldElement realFieldElement3 = (RealFieldElement) realFieldElement2.pow(i11);
            while (i10 < sArr2.length) {
                RealFieldElement realFieldElement4 = (RealFieldElement) sArr2[i10].multiply(realFieldElement3);
                realFieldElementArr[i10] = (RealFieldElement) realFieldElementArr[i10].add(realFieldElement4);
                realFieldElementArr2[i10] = (RealFieldElement) realFieldElementArr2[i10].add((RealFieldElement) realFieldElement4.multiply(i11));
                i10++;
            }
        }
        S[] state = fieldODEStateAndDerivative.getState();
        while (i10 < realFieldElementArr.length) {
            RealFieldElement realFieldElement5 = (RealFieldElement) realFieldElementArr[i10].add((RealFieldElement) sArr[i10].multiply(realFieldElement2));
            realFieldElementArr[i10] = realFieldElement5;
            state[i10] = (RealFieldElement) state[i10].add(realFieldElement5);
            realFieldElementArr2[i10] = (RealFieldElement) ((RealFieldElement) realFieldElementArr2[i10].add((RealFieldElement) sArr[i10].multiply(realFieldElement2))).divide(realFieldElement);
            i10++;
        }
        return new FieldODEStateAndDerivative<>(s10, state, realFieldElementArr2);
    }

    @Override
    public FieldODEStateAndDerivative<T> computeInterpolatedStateAndDerivatives(FieldEquationsMapper<T> fieldEquationsMapper, T t10, T t11, T t12, T t13) {
        return taylor(this.reference, t10, this.scalingH, this.scaled, this.nordsieck);
    }

    private AdamsFieldStepInterpolator(T t10, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, T[] tArr, Array2DRowFieldMatrix<T> array2DRowFieldMatrix, boolean z10, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative3, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative4, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative5, FieldEquationsMapper<T> fieldEquationsMapper) {
        super(z10, fieldODEStateAndDerivative2, fieldODEStateAndDerivative3, fieldODEStateAndDerivative4, fieldODEStateAndDerivative5, fieldEquationsMapper);
        this.scalingH = t10;
        this.reference = fieldODEStateAndDerivative;
        this.scaled = (T[]) ((RealFieldElement[]) tArr.clone());
        this.nordsieck = new Array2DRowFieldMatrix<>((FieldElement[][]) array2DRowFieldMatrix.getData(), false);
    }

    @Override
    public AdamsFieldStepInterpolator<T> create(boolean z10, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative2, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative3, FieldODEStateAndDerivative<T> fieldODEStateAndDerivative4, FieldEquationsMapper<T> fieldEquationsMapper) {
        return new AdamsFieldStepInterpolator<>(this.scalingH, this.reference, this.scaled, this.nordsieck, z10, fieldODEStateAndDerivative, fieldODEStateAndDerivative2, fieldODEStateAndDerivative3, fieldODEStateAndDerivative4, fieldEquationsMapper);
    }
}
