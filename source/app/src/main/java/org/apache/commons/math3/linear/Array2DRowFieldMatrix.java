package org.apache.commons.math3.linear;

import java.io.Serializable;
import org.apache.commons.math3.Field;
import org.apache.commons.math3.FieldElement;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.MathUtils;

public class Array2DRowFieldMatrix<T extends FieldElement<T>> extends AbstractFieldMatrix<T> implements Serializable {
    private static final long serialVersionUID = 7260756672015356458L;
    private T[][] data;

    public Array2DRowFieldMatrix(Field<T> field) {
        super(field);
    }

    private void copyIn(T[][] tArr) throws NullArgumentException, NoDataException, DimensionMismatchException {
        setSubMatrix(tArr, 0, 0);
    }

    private T[][] copyOut() {
        int rowDimension = getRowDimension();
        T[][] tArr = (T[][]) ((FieldElement[][]) MathArrays.buildArray(getField(), rowDimension, getColumnDimension()));
        for (int i10 = 0; i10 < rowDimension; i10++) {
            T[] tArr2 = this.data[i10];
            System.arraycopy(tArr2, 0, tArr[i10], 0, tArr2.length);
        }
        return tArr;
    }

    public Array2DRowFieldMatrix<T> add(Array2DRowFieldMatrix<T> array2DRowFieldMatrix) throws MatrixDimensionMismatchException {
        checkAdditionCompatible(array2DRowFieldMatrix);
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        FieldElement[][] fieldElementArr = (FieldElement[][]) MathArrays.buildArray(getField(), rowDimension, columnDimension);
        for (int i10 = 0; i10 < rowDimension; i10++) {
            T[] tArr = this.data[i10];
            T[] tArr2 = array2DRowFieldMatrix.data[i10];
            FieldElement[] fieldElementArr2 = fieldElementArr[i10];
            for (int i11 = 0; i11 < columnDimension; i11++) {
                fieldElementArr2[i11] = (FieldElement) tArr[i11].add(tArr2[i11]);
            }
        }
        return new Array2DRowFieldMatrix<>((Field) getField(), fieldElementArr, false);
    }

    @Override
    public void addToEntry(int i10, int i11, T t10) throws OutOfRangeException {
        checkRowIndex(i10);
        checkColumnIndex(i11);
        FieldElement[] fieldElementArr = this.data[i10];
        fieldElementArr[i11] = (FieldElement) fieldElementArr[i11].add(t10);
    }

    @Override
    public FieldMatrix<T> copy() {
        return new Array2DRowFieldMatrix((Field) getField(), (FieldElement[][]) copyOut(), false);
    }

    @Override
    public FieldMatrix<T> createMatrix(int i10, int i11) throws NotStrictlyPositiveException {
        return new Array2DRowFieldMatrix(getField(), i10, i11);
    }

    @Override
    public int getColumnDimension() {
        T[] tArr;
        T[][] tArr2 = this.data;
        if (tArr2 == null || (tArr = tArr2[0]) == null) {
            return 0;
        }
        return tArr.length;
    }

    @Override
    public T[][] getData() {
        return copyOut();
    }

    public T[][] getDataRef() {
        return this.data;
    }

    @Override
    public T getEntry(int i10, int i11) throws OutOfRangeException {
        checkRowIndex(i10);
        checkColumnIndex(i11);
        return this.data[i10][i11];
    }

    @Override
    public int getRowDimension() {
        T[][] tArr = this.data;
        if (tArr == null) {
            return 0;
        }
        return tArr.length;
    }

    public Array2DRowFieldMatrix<T> multiply(Array2DRowFieldMatrix<T> array2DRowFieldMatrix) throws DimensionMismatchException {
        checkMultiplicationCompatible(array2DRowFieldMatrix);
        int rowDimension = getRowDimension();
        int columnDimension = array2DRowFieldMatrix.getColumnDimension();
        int columnDimension2 = getColumnDimension();
        FieldElement[][] fieldElementArr = (FieldElement[][]) MathArrays.buildArray(getField(), rowDimension, columnDimension);
        for (int i10 = 0; i10 < rowDimension; i10++) {
            T[] tArr = this.data[i10];
            FieldElement[] fieldElementArr2 = fieldElementArr[i10];
            for (int i11 = 0; i11 < columnDimension; i11++) {
                T zero = getField().getZero();
                for (int i12 = 0; i12 < columnDimension2; i12++) {
                    zero = (FieldElement) zero.add(tArr[i12].multiply(array2DRowFieldMatrix.data[i12][i11]));
                }
                fieldElementArr2[i11] = zero;
            }
        }
        return new Array2DRowFieldMatrix<>((Field) getField(), fieldElementArr, false);
    }

    @Override
    public void multiplyEntry(int i10, int i11, T t10) throws OutOfRangeException {
        checkRowIndex(i10);
        checkColumnIndex(i11);
        FieldElement[] fieldElementArr = this.data[i10];
        fieldElementArr[i11] = (FieldElement) fieldElementArr[i11].multiply(t10);
    }

    @Override
    public T[] operate(T[] tArr) throws DimensionMismatchException {
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        if (tArr.length != columnDimension) {
            throw new DimensionMismatchException(tArr.length, columnDimension);
        }
        T[] tArr2 = (T[]) ((FieldElement[]) MathArrays.buildArray(getField(), rowDimension));
        for (int i10 = 0; i10 < rowDimension; i10++) {
            T[] tArr3 = this.data[i10];
            T zero = getField().getZero();
            for (int i11 = 0; i11 < columnDimension; i11++) {
                zero = (T) zero.add(tArr3[i11].multiply(tArr[i11]));
            }
            tArr2[i10] = zero;
        }
        return tArr2;
    }

    @Override
    public T[] preMultiply(T[] tArr) throws DimensionMismatchException {
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        if (tArr.length != rowDimension) {
            throw new DimensionMismatchException(tArr.length, rowDimension);
        }
        T[] tArr2 = (T[]) ((FieldElement[]) MathArrays.buildArray(getField(), columnDimension));
        for (int i10 = 0; i10 < columnDimension; i10++) {
            T zero = getField().getZero();
            for (int i11 = 0; i11 < rowDimension; i11++) {
                zero = (T) zero.add(this.data[i11][i10].multiply(tArr[i11]));
            }
            tArr2[i10] = zero;
        }
        return tArr2;
    }

    @Override
    public void setEntry(int i10, int i11, T t10) throws OutOfRangeException {
        checkRowIndex(i10);
        checkColumnIndex(i11);
        this.data[i10][i11] = t10;
    }

    @Override
    public void setSubMatrix(T[][] tArr, int i10, int i11) throws OutOfRangeException, NullArgumentException, NoDataException, DimensionMismatchException {
        if (this.data != null) {
            super.setSubMatrix(tArr, i10, i11);
            return;
        }
        if (i10 > 0) {
            throw new MathIllegalStateException(LocalizedFormats.FIRST_ROWS_NOT_INITIALIZED_YET, Integer.valueOf(i10));
        }
        if (i11 > 0) {
            throw new MathIllegalStateException(LocalizedFormats.FIRST_COLUMNS_NOT_INITIALIZED_YET, Integer.valueOf(i11));
        }
        if (tArr.length == 0) {
            throw new NoDataException(LocalizedFormats.AT_LEAST_ONE_ROW);
        }
        int length = tArr[0].length;
        if (length == 0) {
            throw new NoDataException(LocalizedFormats.AT_LEAST_ONE_COLUMN);
        }
        this.data = (T[][]) ((FieldElement[][]) MathArrays.buildArray(getField(), tArr.length, length));
        int i12 = 0;
        while (true) {
            T[][] tArr2 = this.data;
            if (i12 >= tArr2.length) {
                return;
            }
            T[] tArr3 = tArr[i12];
            if (tArr3.length != length) {
                throw new DimensionMismatchException(length, tArr[i12].length);
            }
            System.arraycopy(tArr3, 0, tArr2[i12 + i10], i11, length);
            i12++;
        }
    }

    public Array2DRowFieldMatrix<T> subtract(Array2DRowFieldMatrix<T> array2DRowFieldMatrix) throws MatrixDimensionMismatchException {
        checkSubtractionCompatible(array2DRowFieldMatrix);
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        FieldElement[][] fieldElementArr = (FieldElement[][]) MathArrays.buildArray(getField(), rowDimension, columnDimension);
        for (int i10 = 0; i10 < rowDimension; i10++) {
            T[] tArr = this.data[i10];
            T[] tArr2 = array2DRowFieldMatrix.data[i10];
            FieldElement[] fieldElementArr2 = fieldElementArr[i10];
            for (int i11 = 0; i11 < columnDimension; i11++) {
                fieldElementArr2[i11] = (FieldElement) tArr[i11].subtract(tArr2[i11]);
            }
        }
        return new Array2DRowFieldMatrix<>((Field) getField(), fieldElementArr, false);
    }

    @Override
    public T walkInColumnOrder(FieldMatrixChangingVisitor<T> fieldMatrixChangingVisitor) {
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        fieldMatrixChangingVisitor.start(rowDimension, columnDimension, 0, rowDimension - 1, 0, columnDimension - 1);
        for (int i10 = 0; i10 < columnDimension; i10++) {
            for (int i11 = 0; i11 < rowDimension; i11++) {
                T[] tArr = this.data[i11];
                tArr[i10] = fieldMatrixChangingVisitor.visit(i11, i10, tArr[i10]);
            }
        }
        return fieldMatrixChangingVisitor.end();
    }

    @Override
    public T walkInRowOrder(FieldMatrixChangingVisitor<T> fieldMatrixChangingVisitor) {
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        fieldMatrixChangingVisitor.start(rowDimension, columnDimension, 0, rowDimension - 1, 0, columnDimension - 1);
        for (int i10 = 0; i10 < rowDimension; i10++) {
            T[] tArr = this.data[i10];
            for (int i11 = 0; i11 < columnDimension; i11++) {
                tArr[i11] = fieldMatrixChangingVisitor.visit(i10, i11, tArr[i11]);
            }
        }
        return fieldMatrixChangingVisitor.end();
    }

    public Array2DRowFieldMatrix(Field<T> field, int i10, int i11) throws NotStrictlyPositiveException {
        super(field, i10, i11);
        this.data = (T[][]) ((FieldElement[][]) MathArrays.buildArray(field, i10, i11));
    }

    public Array2DRowFieldMatrix(T[][] tArr) throws DimensionMismatchException, NullArgumentException, NoDataException {
        this(AbstractFieldMatrix.extractField(tArr), tArr);
    }

    public Array2DRowFieldMatrix(Field<T> field, T[][] tArr) throws DimensionMismatchException, NullArgumentException, NoDataException {
        super(field);
        copyIn(tArr);
    }

    public Array2DRowFieldMatrix(T[][] tArr, boolean z10) throws DimensionMismatchException, NoDataException, NullArgumentException {
        this(AbstractFieldMatrix.extractField(tArr), tArr, z10);
    }

    @Override
    public T walkInColumnOrder(FieldMatrixPreservingVisitor<T> fieldMatrixPreservingVisitor) {
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        fieldMatrixPreservingVisitor.start(rowDimension, columnDimension, 0, rowDimension - 1, 0, columnDimension - 1);
        for (int i10 = 0; i10 < columnDimension; i10++) {
            for (int i11 = 0; i11 < rowDimension; i11++) {
                fieldMatrixPreservingVisitor.visit(i11, i10, this.data[i11][i10]);
            }
        }
        return fieldMatrixPreservingVisitor.end();
    }

    @Override
    public T walkInRowOrder(FieldMatrixPreservingVisitor<T> fieldMatrixPreservingVisitor) {
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        fieldMatrixPreservingVisitor.start(rowDimension, columnDimension, 0, rowDimension - 1, 0, columnDimension - 1);
        for (int i10 = 0; i10 < rowDimension; i10++) {
            T[] tArr = this.data[i10];
            for (int i11 = 0; i11 < columnDimension; i11++) {
                fieldMatrixPreservingVisitor.visit(i10, i11, tArr[i11]);
            }
        }
        return fieldMatrixPreservingVisitor.end();
    }

    public Array2DRowFieldMatrix(Field<T> field, T[][] tArr, boolean z10) throws DimensionMismatchException, NoDataException, NullArgumentException {
        super(field);
        if (z10) {
            copyIn(tArr);
            return;
        }
        MathUtils.checkNotNull(tArr);
        int length = tArr.length;
        if (length != 0) {
            int length2 = tArr[0].length;
            if (length2 != 0) {
                for (int i10 = 1; i10 < length; i10++) {
                    if (tArr[i10].length != length2) {
                        throw new DimensionMismatchException(length2, tArr[i10].length);
                    }
                }
                this.data = tArr;
                return;
            }
            throw new NoDataException(LocalizedFormats.AT_LEAST_ONE_COLUMN);
        }
        throw new NoDataException(LocalizedFormats.AT_LEAST_ONE_ROW);
    }

    @Override
    public T walkInColumnOrder(FieldMatrixChangingVisitor<T> fieldMatrixChangingVisitor, int i10, int i11, int i12, int i13) throws OutOfRangeException, NumberIsTooSmallException {
        checkSubMatrixIndex(i10, i11, i12, i13);
        fieldMatrixChangingVisitor.start(getRowDimension(), getColumnDimension(), i10, i11, i12, i13);
        while (i12 <= i13) {
            for (int i14 = i10; i14 <= i11; i14++) {
                T[] tArr = this.data[i14];
                tArr[i12] = fieldMatrixChangingVisitor.visit(i14, i12, tArr[i12]);
            }
            i12++;
        }
        return fieldMatrixChangingVisitor.end();
    }

    @Override
    public T walkInRowOrder(FieldMatrixChangingVisitor<T> fieldMatrixChangingVisitor, int i10, int i11, int i12, int i13) throws OutOfRangeException, NumberIsTooSmallException {
        checkSubMatrixIndex(i10, i11, i12, i13);
        fieldMatrixChangingVisitor.start(getRowDimension(), getColumnDimension(), i10, i11, i12, i13);
        while (i10 <= i11) {
            T[] tArr = this.data[i10];
            for (int i14 = i12; i14 <= i13; i14++) {
                tArr[i14] = fieldMatrixChangingVisitor.visit(i10, i14, tArr[i14]);
            }
            i10++;
        }
        return fieldMatrixChangingVisitor.end();
    }

    @Override
    public T walkInColumnOrder(FieldMatrixPreservingVisitor<T> fieldMatrixPreservingVisitor, int i10, int i11, int i12, int i13) throws OutOfRangeException, NumberIsTooSmallException {
        checkSubMatrixIndex(i10, i11, i12, i13);
        fieldMatrixPreservingVisitor.start(getRowDimension(), getColumnDimension(), i10, i11, i12, i13);
        while (i12 <= i13) {
            for (int i14 = i10; i14 <= i11; i14++) {
                fieldMatrixPreservingVisitor.visit(i14, i12, this.data[i14][i12]);
            }
            i12++;
        }
        return fieldMatrixPreservingVisitor.end();
    }

    public Array2DRowFieldMatrix(T[] tArr) throws NoDataException {
        this(AbstractFieldMatrix.extractField(tArr), tArr);
    }

    @Override
    public T walkInRowOrder(FieldMatrixPreservingVisitor<T> fieldMatrixPreservingVisitor, int i10, int i11, int i12, int i13) throws OutOfRangeException, NumberIsTooSmallException {
        checkSubMatrixIndex(i10, i11, i12, i13);
        fieldMatrixPreservingVisitor.start(getRowDimension(), getColumnDimension(), i10, i11, i12, i13);
        while (i10 <= i11) {
            T[] tArr = this.data[i10];
            for (int i14 = i12; i14 <= i13; i14++) {
                fieldMatrixPreservingVisitor.visit(i10, i14, tArr[i14]);
            }
            i10++;
        }
        return fieldMatrixPreservingVisitor.end();
    }

    public Array2DRowFieldMatrix(Field<T> field, T[] tArr) {
        super(field);
        int length = tArr.length;
        this.data = (T[][]) ((FieldElement[][]) MathArrays.buildArray(getField(), length, 1));
        for (int i10 = 0; i10 < length; i10++) {
            this.data[i10][0] = tArr[i10];
        }
    }
}
