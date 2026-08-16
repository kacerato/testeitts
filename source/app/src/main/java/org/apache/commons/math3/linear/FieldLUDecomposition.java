package org.apache.commons.math3.linear;

import org.apache.commons.math3.Field;
import org.apache.commons.math3.FieldElement;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.util.MathArrays;

public class FieldLUDecomposition<T extends FieldElement<T>> {
    private FieldMatrix<T> cachedL;
    private FieldMatrix<T> cachedP;
    private FieldMatrix<T> cachedU;
    private boolean even;
    private final Field<T> field;
    private T[][] lu;
    private int[] pivot;
    private boolean singular;

    public static class Solver<T extends FieldElement<T>> implements FieldDecompositionSolver<T> {
        private final Field<T> field;
        private final T[][] lu;
        private final int[] pivot;
        private final boolean singular;

        @Override
        public FieldMatrix<T> getInverse() {
            int length = this.pivot.length;
            T one = this.field.getOne();
            FieldMatrix<T> array2DRowFieldMatrix = new Array2DRowFieldMatrix<>(this.field, length, length);
            for (int i10 = 0; i10 < length; i10++) {
                array2DRowFieldMatrix.setEntry(i10, i10, one);
            }
            return solve(array2DRowFieldMatrix);
        }

        @Override
        public boolean isNonSingular() {
            return !this.singular;
        }

        @Override
        public FieldVector<T> solve(FieldVector<T> fieldVector) {
            try {
                return solve((ArrayFieldVector) fieldVector);
            } catch (ClassCastException unused) {
                int length = this.pivot.length;
                if (fieldVector.getDimension() == length) {
                    if (!this.singular) {
                        FieldElement[] fieldElementArr = (FieldElement[]) MathArrays.buildArray(this.field, length);
                        for (int i10 = 0; i10 < length; i10++) {
                            fieldElementArr[i10] = fieldVector.getEntry(this.pivot[i10]);
                        }
                        int i11 = 0;
                        while (i11 < length) {
                            FieldElement fieldElement = fieldElementArr[i11];
                            int i12 = i11 + 1;
                            for (int i13 = i12; i13 < length; i13++) {
                                fieldElementArr[i13] = (FieldElement) fieldElementArr[i13].subtract(fieldElement.multiply(this.lu[i13][i11]));
                            }
                            i11 = i12;
                        }
                        for (int i14 = length - 1; i14 >= 0; i14--) {
                            FieldElement fieldElement2 = (FieldElement) fieldElementArr[i14].divide(this.lu[i14][i14]);
                            fieldElementArr[i14] = fieldElement2;
                            for (int i15 = 0; i15 < i14; i15++) {
                                fieldElementArr[i15] = (FieldElement) fieldElementArr[i15].subtract(fieldElement2.multiply(this.lu[i15][i14]));
                            }
                        }
                        return new ArrayFieldVector((Field) this.field, fieldElementArr, false);
                    }
                    throw new SingularMatrixException();
                }
                throw new DimensionMismatchException(fieldVector.getDimension(), length);
            }
        }

        private Solver(Field<T> field, T[][] tArr, int[] iArr, boolean z10) {
            this.field = field;
            this.lu = tArr;
            this.pivot = iArr;
            this.singular = z10;
        }

        public ArrayFieldVector<T> solve(ArrayFieldVector<T> arrayFieldVector) {
            int length = this.pivot.length;
            int dimension = arrayFieldVector.getDimension();
            if (dimension == length) {
                if (!this.singular) {
                    FieldElement[] fieldElementArr = (FieldElement[]) MathArrays.buildArray(this.field, length);
                    for (int i10 = 0; i10 < length; i10++) {
                        fieldElementArr[i10] = arrayFieldVector.getEntry(this.pivot[i10]);
                    }
                    int i11 = 0;
                    while (i11 < length) {
                        FieldElement fieldElement = fieldElementArr[i11];
                        int i12 = i11 + 1;
                        for (int i13 = i12; i13 < length; i13++) {
                            fieldElementArr[i13] = (FieldElement) fieldElementArr[i13].subtract(fieldElement.multiply(this.lu[i13][i11]));
                        }
                        i11 = i12;
                    }
                    for (int i14 = length - 1; i14 >= 0; i14--) {
                        FieldElement fieldElement2 = (FieldElement) fieldElementArr[i14].divide(this.lu[i14][i14]);
                        fieldElementArr[i14] = fieldElement2;
                        for (int i15 = 0; i15 < i14; i15++) {
                            fieldElementArr[i15] = (FieldElement) fieldElementArr[i15].subtract(fieldElement2.multiply(this.lu[i15][i14]));
                        }
                    }
                    return new ArrayFieldVector<>(fieldElementArr, false);
                }
                throw new SingularMatrixException();
            }
            throw new DimensionMismatchException(dimension, length);
        }

        @Override
        public FieldMatrix<T> solve(FieldMatrix<T> fieldMatrix) {
            int length = this.pivot.length;
            if (fieldMatrix.getRowDimension() == length) {
                if (!this.singular) {
                    int columnDimension = fieldMatrix.getColumnDimension();
                    FieldElement[][] fieldElementArr = (FieldElement[][]) MathArrays.buildArray(this.field, length, columnDimension);
                    for (int i10 = 0; i10 < length; i10++) {
                        FieldElement[] fieldElementArr2 = fieldElementArr[i10];
                        int i11 = this.pivot[i10];
                        for (int i12 = 0; i12 < columnDimension; i12++) {
                            fieldElementArr2[i12] = fieldMatrix.getEntry(i11, i12);
                        }
                    }
                    int i13 = 0;
                    while (i13 < length) {
                        FieldElement[] fieldElementArr3 = fieldElementArr[i13];
                        int i14 = i13 + 1;
                        for (int i15 = i14; i15 < length; i15++) {
                            FieldElement[] fieldElementArr4 = fieldElementArr[i15];
                            T t10 = this.lu[i15][i13];
                            for (int i16 = 0; i16 < columnDimension; i16++) {
                                fieldElementArr4[i16] = (FieldElement) fieldElementArr4[i16].subtract(fieldElementArr3[i16].multiply(t10));
                            }
                        }
                        i13 = i14;
                    }
                    for (int i17 = length - 1; i17 >= 0; i17--) {
                        FieldElement[] fieldElementArr5 = fieldElementArr[i17];
                        T t11 = this.lu[i17][i17];
                        for (int i18 = 0; i18 < columnDimension; i18++) {
                            fieldElementArr5[i18] = (FieldElement) fieldElementArr5[i18].divide(t11);
                        }
                        for (int i19 = 0; i19 < i17; i19++) {
                            FieldElement[] fieldElementArr6 = fieldElementArr[i19];
                            T t12 = this.lu[i19][i17];
                            for (int i20 = 0; i20 < columnDimension; i20++) {
                                fieldElementArr6[i20] = (FieldElement) fieldElementArr6[i20].subtract(fieldElementArr5[i20].multiply(t12));
                            }
                        }
                    }
                    return new Array2DRowFieldMatrix((Field) this.field, fieldElementArr, false);
                }
                throw new SingularMatrixException();
            }
            throw new DimensionMismatchException(fieldMatrix.getRowDimension(), length);
        }
    }

    public FieldLUDecomposition(FieldMatrix<T> fieldMatrix) {
        if (!fieldMatrix.isSquare()) {
            throw new NonSquareMatrixException(fieldMatrix.getRowDimension(), fieldMatrix.getColumnDimension());
        }
        int columnDimension = fieldMatrix.getColumnDimension();
        this.field = fieldMatrix.getField();
        this.lu = fieldMatrix.getData();
        this.pivot = new int[columnDimension];
        this.cachedL = null;
        this.cachedU = null;
        this.cachedP = null;
        for (int i10 = 0; i10 < columnDimension; i10++) {
            this.pivot[i10] = i10;
        }
        this.even = true;
        this.singular = false;
        int i11 = 0;
        while (i11 < columnDimension) {
            this.field.getZero();
            for (int i12 = 0; i12 < i11; i12++) {
                FieldElement[] fieldElementArr = this.lu[i12];
                FieldElement fieldElement = fieldElementArr[i11];
                for (int i13 = 0; i13 < i12; i13++) {
                    fieldElement = (FieldElement) fieldElement.subtract(fieldElementArr[i13].multiply(this.lu[i13][i11]));
                }
                fieldElementArr[i11] = fieldElement;
            }
            int i14 = i11;
            int i15 = i14;
            while (i14 < columnDimension) {
                FieldElement[] fieldElementArr2 = this.lu[i14];
                FieldElement fieldElement2 = fieldElementArr2[i11];
                for (int i16 = 0; i16 < i11; i16++) {
                    fieldElement2 = (FieldElement) fieldElement2.subtract(fieldElementArr2[i16].multiply(this.lu[i16][i11]));
                }
                fieldElementArr2[i11] = fieldElement2;
                if (this.lu[i15][i11].equals(this.field.getZero())) {
                    i15++;
                }
                i14++;
            }
            if (i15 >= columnDimension) {
                this.singular = true;
                return;
            }
            if (i15 != i11) {
                this.field.getZero();
                for (int i17 = 0; i17 < columnDimension; i17++) {
                    T[][] tArr = this.lu;
                    T[] tArr2 = tArr[i15];
                    T t10 = tArr2[i17];
                    tArr2[i17] = tArr[i11][i17];
                    tArr[i11][i17] = t10;
                }
                int[] iArr = this.pivot;
                int i18 = iArr[i15];
                iArr[i15] = iArr[i11];
                iArr[i11] = i18;
                this.even = !this.even;
            }
            T t11 = this.lu[i11][i11];
            int i19 = i11 + 1;
            for (int i20 = i19; i20 < columnDimension; i20++) {
                FieldElement[] fieldElementArr3 = this.lu[i20];
                fieldElementArr3[i11] = (FieldElement) fieldElementArr3[i11].divide(t11);
            }
            i11 = i19;
        }
    }

    public T getDeterminant() {
        if (this.singular) {
            return this.field.getZero();
        }
        int length = this.pivot.length;
        T t10 = (T) (this.even ? this.field.getOne() : this.field.getZero().subtract(this.field.getOne()));
        for (int i10 = 0; i10 < length; i10++) {
            t10 = (T) t10.multiply(this.lu[i10][i10]);
        }
        return t10;
    }

    public FieldMatrix<T> getL() {
        if (this.cachedL == null && !this.singular) {
            int length = this.pivot.length;
            this.cachedL = new Array2DRowFieldMatrix(this.field, length, length);
            for (int i10 = 0; i10 < length; i10++) {
                T[] tArr = this.lu[i10];
                for (int i11 = 0; i11 < i10; i11++) {
                    this.cachedL.setEntry(i10, i11, tArr[i11]);
                }
                this.cachedL.setEntry(i10, i10, this.field.getOne());
            }
        }
        return this.cachedL;
    }

    public FieldMatrix<T> getP() {
        if (this.cachedP == null && !this.singular) {
            int length = this.pivot.length;
            this.cachedP = new Array2DRowFieldMatrix(this.field, length, length);
            for (int i10 = 0; i10 < length; i10++) {
                this.cachedP.setEntry(i10, this.pivot[i10], this.field.getOne());
            }
        }
        return this.cachedP;
    }

    public int[] getPivot() {
        return (int[]) this.pivot.clone();
    }

    public FieldDecompositionSolver<T> getSolver() {
        return new Solver(this.field, this.lu, this.pivot, this.singular);
    }

    public FieldMatrix<T> getU() {
        if (this.cachedU == null && !this.singular) {
            int length = this.pivot.length;
            this.cachedU = new Array2DRowFieldMatrix(this.field, length, length);
            for (int i10 = 0; i10 < length; i10++) {
                T[] tArr = this.lu[i10];
                for (int i11 = i10; i11 < length; i11++) {
                    this.cachedU.setEntry(i10, i11, tArr[i11]);
                }
            }
        }
        return this.cachedU;
    }
}
