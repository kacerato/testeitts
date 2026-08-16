package org.apache.commons.math3.ode;

import java.io.Serializable;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.MathArrays;

public class FieldEquationsMapper<T extends RealFieldElement<T>> implements Serializable {
    private static final long serialVersionUID = 20151114;
    private final int[] start;

    public FieldEquationsMapper(FieldEquationsMapper<T> fieldEquationsMapper, int i10) {
        int numberOfEquations = fieldEquationsMapper == null ? 0 : fieldEquationsMapper.getNumberOfEquations();
        int[] iArr = new int[numberOfEquations + 2];
        this.start = iArr;
        if (fieldEquationsMapper == null) {
            iArr[0] = 0;
        } else {
            System.arraycopy(fieldEquationsMapper.start, 0, iArr, 0, numberOfEquations + 1);
        }
        iArr[numberOfEquations + 1] = iArr[numberOfEquations] + i10;
    }

    private void checkIndex(int i10) throws MathIllegalArgumentException {
        if (i10 < 0 || i10 > this.start.length - 2) {
            throw new MathIllegalArgumentException(LocalizedFormats.ARGUMENT_OUTSIDE_DOMAIN, Integer.valueOf(i10), 0, Integer.valueOf(this.start.length - 2));
        }
    }

    public T[] extractEquationData(int i10, T[] tArr) throws MathIllegalArgumentException, DimensionMismatchException {
        checkIndex(i10);
        int[] iArr = this.start;
        int i11 = iArr[i10];
        int i12 = iArr[i10 + 1];
        if (tArr.length < i12) {
            throw new DimensionMismatchException(tArr.length, i12);
        }
        int i13 = i12 - i11;
        T[] tArr2 = (T[]) ((RealFieldElement[]) MathArrays.buildArray(tArr[0].getField(), i13));
        System.arraycopy(tArr, i11, tArr2, 0, i13);
        return tArr2;
    }

    public int getNumberOfEquations() {
        return this.start.length - 1;
    }

    public int getTotalDimension() {
        return this.start[r0.length - 1];
    }

    public void insertEquationData(int i10, T[] tArr, T[] tArr2) throws DimensionMismatchException {
        checkIndex(i10);
        int[] iArr = this.start;
        int i11 = iArr[i10];
        int i12 = iArr[i10 + 1];
        int i13 = i12 - i11;
        if (tArr2.length < i12) {
            throw new DimensionMismatchException(tArr2.length, i12);
        }
        if (tArr.length != i13) {
            throw new DimensionMismatchException(tArr.length, i13);
        }
        System.arraycopy(tArr, 0, tArr2, i11, i13);
    }

    public T[] mapDerivative(FieldODEStateAndDerivative<T> fieldODEStateAndDerivative) {
        T[] tArr = (T[]) ((RealFieldElement[]) MathArrays.buildArray(fieldODEStateAndDerivative.getTime().getField(), getTotalDimension()));
        int i10 = 0;
        insertEquationData(0, fieldODEStateAndDerivative.getDerivative(), tArr);
        while (true) {
            i10++;
            if (i10 >= getNumberOfEquations()) {
                return tArr;
            }
            insertEquationData(i10, fieldODEStateAndDerivative.getSecondaryDerivative(i10), tArr);
        }
    }

    public T[] mapState(FieldODEState<T> fieldODEState) {
        T[] tArr = (T[]) ((RealFieldElement[]) MathArrays.buildArray(fieldODEState.getTime().getField(), getTotalDimension()));
        int i10 = 0;
        insertEquationData(0, fieldODEState.getState(), tArr);
        while (true) {
            i10++;
            if (i10 >= getNumberOfEquations()) {
                return tArr;
            }
            insertEquationData(i10, fieldODEState.getSecondaryState(i10), tArr);
        }
    }

    public FieldODEStateAndDerivative<T> mapStateAndDerivative(T t10, T[] tArr, T[] tArr2) throws DimensionMismatchException {
        if (tArr.length != getTotalDimension()) {
            throw new DimensionMismatchException(tArr.length, getTotalDimension());
        }
        if (tArr2.length != getTotalDimension()) {
            throw new DimensionMismatchException(tArr2.length, getTotalDimension());
        }
        int numberOfEquations = getNumberOfEquations();
        int i10 = 0;
        T[] extractEquationData = extractEquationData(0, tArr);
        T[] extractEquationData2 = extractEquationData(0, tArr2);
        if (numberOfEquations < 2) {
            return new FieldODEStateAndDerivative<>(t10, extractEquationData, extractEquationData2);
        }
        int i11 = numberOfEquations - 1;
        RealFieldElement[][] realFieldElementArr = (RealFieldElement[][]) MathArrays.buildArray(t10.getField(), i11, -1);
        RealFieldElement[][] realFieldElementArr2 = (RealFieldElement[][]) MathArrays.buildArray(t10.getField(), i11, -1);
        while (true) {
            int i12 = i10 + 1;
            if (i12 >= getNumberOfEquations()) {
                return new FieldODEStateAndDerivative<>(t10, extractEquationData, extractEquationData2, realFieldElementArr, realFieldElementArr2);
            }
            realFieldElementArr[i10] = extractEquationData(i12, tArr);
            realFieldElementArr2[i10] = extractEquationData(i12, tArr2);
            i10 = i12;
        }
    }
}
