package org.apache.commons.math3.ode.nonstiff;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.math3.Field;
import org.apache.commons.math3.FieldElement;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.linear.Array2DRowFieldMatrix;
import org.apache.commons.math3.linear.ArrayFieldVector;
import org.apache.commons.math3.linear.FieldDecompositionSolver;
import org.apache.commons.math3.linear.FieldLUDecomposition;
import org.apache.commons.math3.linear.FieldMatrix;
import org.apache.commons.math3.util.MathArrays;

public class AdamsNordsieckFieldTransformer<T extends RealFieldElement<T>> {
    private static final Map<Integer, Map<Field<? extends RealFieldElement<?>>, AdamsNordsieckFieldTransformer<? extends RealFieldElement<?>>>> CACHE = new HashMap();

    private final T[] f100233c1;
    private final Field<T> field;
    private final Array2DRowFieldMatrix<T> update;

    private AdamsNordsieckFieldTransformer(Field<T> field, int i10) {
        this.field = field;
        int i11 = i10 - 1;
        FieldMatrix<T> buildP = buildP(i11);
        FieldDecompositionSolver solver = new FieldLUDecomposition(buildP).getSolver();
        RealFieldElement[] realFieldElementArr = (RealFieldElement[]) MathArrays.buildArray(field, i11);
        Arrays.fill(realFieldElementArr, field.getOne());
        this.f100233c1 = (T[]) ((RealFieldElement[]) solver.solve(new ArrayFieldVector((FieldElement[]) realFieldElementArr, false)).toArray());
        T[][] data = buildP.getData();
        for (int length = data.length - 1; length > 0; length--) {
            data[length] = data[length - 1];
        }
        RealFieldElement[] realFieldElementArr2 = (RealFieldElement[]) MathArrays.buildArray(field, i11);
        data[0] = realFieldElementArr2;
        Arrays.fill(realFieldElementArr2, field.getZero());
        this.update = new Array2DRowFieldMatrix<>(solver.solve(new Array2DRowFieldMatrix((FieldElement[][]) data, false)).getData());
    }

    private FieldMatrix<T> buildP(int i10) {
        RealFieldElement[][] realFieldElementArr = (RealFieldElement[][]) MathArrays.buildArray(this.field, i10, i10);
        for (int i11 = 1; i11 <= realFieldElementArr.length; i11++) {
            RealFieldElement[] realFieldElementArr2 = realFieldElementArr[i11 - 1];
            int i12 = -i11;
            RealFieldElement realFieldElement = (RealFieldElement) this.field.getZero().add(i12);
            int i13 = 1;
            while (i13 <= realFieldElementArr2.length) {
                int i14 = i13 - 1;
                i13++;
                realFieldElementArr2[i14] = (RealFieldElement) realFieldElement.multiply(i13);
                realFieldElement = (RealFieldElement) realFieldElement.multiply(i12);
            }
        }
        return new Array2DRowFieldMatrix((FieldElement[][]) realFieldElementArr, false);
    }

    public static <T extends RealFieldElement<T>> AdamsNordsieckFieldTransformer<T> getInstance(Field<T> field, int i10) {
        AdamsNordsieckFieldTransformer<T> adamsNordsieckFieldTransformer;
        Map<Integer, Map<Field<? extends RealFieldElement<?>>, AdamsNordsieckFieldTransformer<? extends RealFieldElement<?>>>> map = CACHE;
        synchronized (map) {
            try {
                Map<Field<? extends RealFieldElement<?>>, AdamsNordsieckFieldTransformer<? extends RealFieldElement<?>>> map2 = map.get(Integer.valueOf(i10));
                if (map2 == null) {
                    map2 = new HashMap<>();
                    map.put(Integer.valueOf(i10), map2);
                }
                adamsNordsieckFieldTransformer = (AdamsNordsieckFieldTransformer) map2.get(field);
                if (adamsNordsieckFieldTransformer == null) {
                    adamsNordsieckFieldTransformer = new AdamsNordsieckFieldTransformer<>(field, i10);
                    map2.put(field, adamsNordsieckFieldTransformer);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return adamsNordsieckFieldTransformer;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Array2DRowFieldMatrix<T> initializeHighOrderDerivatives(T t10, T[] tArr, T[][] tArr2, T[][] tArr3) {
        Field<T> field = this.field;
        T[] tArr4 = this.f100233c1;
        int i10 = 1;
        RealFieldElement[][] realFieldElementArr = (RealFieldElement[][]) MathArrays.buildArray(field, tArr4.length + 1, tArr4.length + 1);
        int i11 = 0;
        RealFieldElement[][] realFieldElementArr2 = (RealFieldElement[][]) MathArrays.buildArray(this.field, this.f100233c1.length + 1, tArr2[0].length);
        T[] tArr5 = tArr2[0];
        T[] tArr6 = tArr3[0];
        int i12 = 1;
        while (i12 < tArr2.length) {
            RealFieldElement realFieldElement = (RealFieldElement) tArr[i12].subtract(tArr[i11]);
            RealFieldElement realFieldElement2 = (RealFieldElement) realFieldElement.divide(t10);
            RealFieldElement realFieldElement3 = (RealFieldElement) t10.reciprocal();
            int i13 = i12 * 2;
            int i14 = i13 - 2;
            RealFieldElement[] realFieldElementArr3 = realFieldElementArr[i14];
            int i15 = i13 - i10;
            RealFieldElement[] realFieldElementArr4 = i15 < realFieldElementArr.length ? realFieldElementArr[i15] : null;
            while (i11 < realFieldElementArr3.length) {
                realFieldElement3 = (RealFieldElement) realFieldElement3.multiply(realFieldElement2);
                realFieldElementArr3[i11] = (RealFieldElement) realFieldElement.multiply(realFieldElement3);
                if (realFieldElementArr4 != null) {
                    realFieldElementArr4[i11] = (RealFieldElement) realFieldElement3.multiply(i11 + 2);
                }
                i11++;
            }
            T[] tArr7 = tArr2[i12];
            T[] tArr8 = tArr3[i12];
            RealFieldElement[] realFieldElementArr5 = realFieldElementArr2[i14];
            RealFieldElement[] realFieldElementArr6 = i15 < realFieldElementArr2.length ? realFieldElementArr2[i15] : null;
            for (int i16 = 0; i16 < tArr7.length; i16++) {
                realFieldElementArr5[i16] = (RealFieldElement) ((RealFieldElement) tArr7[i16].subtract(tArr5[i16])).subtract((RealFieldElement) realFieldElement.multiply(tArr6[i16]));
                if (realFieldElementArr6 != null) {
                    realFieldElementArr6[i16] = (RealFieldElement) tArr8[i16].subtract(tArr6[i16]);
                }
            }
            i12++;
            i10 = 1;
            i11 = 0;
        }
        FieldMatrix solve = new FieldLUDecomposition(new Array2DRowFieldMatrix((FieldElement[][]) realFieldElementArr, false)).getSolver().solve(new Array2DRowFieldMatrix((FieldElement[][]) realFieldElementArr2, false));
        Array2DRowFieldMatrix<T> array2DRowFieldMatrix = (Array2DRowFieldMatrix<T>) new Array2DRowFieldMatrix(this.field, solve.getRowDimension() - 1, solve.getColumnDimension());
        for (int i17 = 0; i17 < array2DRowFieldMatrix.getRowDimension(); i17++) {
            for (int i18 = 0; i18 < array2DRowFieldMatrix.getColumnDimension(); i18++) {
                array2DRowFieldMatrix.setEntry(i17, i18, solve.getEntry(i17, i18));
            }
        }
        return array2DRowFieldMatrix;
    }

    public Array2DRowFieldMatrix<T> updateHighOrderDerivativesPhase1(Array2DRowFieldMatrix<T> array2DRowFieldMatrix) {
        return this.update.multiply(array2DRowFieldMatrix);
    }

    public void updateHighOrderDerivativesPhase2(T[] tArr, T[] tArr2, Array2DRowFieldMatrix<T> array2DRowFieldMatrix) {
        T[][] dataRef = array2DRowFieldMatrix.getDataRef();
        for (int i10 = 0; i10 < dataRef.length; i10++) {
            FieldElement[] fieldElementArr = dataRef[i10];
            T t10 = this.f100233c1[i10];
            for (int i11 = 0; i11 < fieldElementArr.length; i11++) {
                fieldElementArr[i11] = (RealFieldElement) fieldElementArr[i11].add(t10.multiply(tArr[i11].subtract(tArr2[i11])));
            }
        }
    }
}
