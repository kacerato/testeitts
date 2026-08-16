package org.apache.commons.math3.linear;

import java.util.ArrayList;
import java.util.Iterator;
import org.apache.commons.math3.Field;
import org.apache.commons.math3.FieldElement;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.geometry.VectorFormat;
import org.apache.commons.math3.util.MathArrays;
import org.openjdk.tools.doclint.DocLint;

public abstract class AbstractFieldMatrix<T extends FieldElement<T>> implements FieldMatrix<T> {
    private final Field<T> field;

    public AbstractFieldMatrix() {
        this.field = null;
    }

    @Deprecated
    public static <T extends FieldElement<T>> T[][] buildArray(Field<T> field, int i10, int i11) {
        return (T[][]) ((FieldElement[][]) MathArrays.buildArray(field, i10, i11));
    }

    public static <T extends FieldElement<T>> Field<T> extractField(T[][] tArr) throws NoDataException, NullArgumentException {
        if (tArr != null) {
            if (tArr.length != 0) {
                T[] tArr2 = tArr[0];
                if (tArr2.length != 0) {
                    return tArr2[0].getField();
                }
                throw new NoDataException(LocalizedFormats.AT_LEAST_ONE_COLUMN);
            }
            throw new NoDataException(LocalizedFormats.AT_LEAST_ONE_ROW);
        }
        throw new NullArgumentException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public FieldMatrix<T> add(FieldMatrix<T> fieldMatrix) throws MatrixDimensionMismatchException {
        checkAdditionCompatible(fieldMatrix);
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        FieldMatrix<T> createMatrix = createMatrix(rowDimension, columnDimension);
        for (int i10 = 0; i10 < rowDimension; i10++) {
            for (int i11 = 0; i11 < columnDimension; i11++) {
                createMatrix.setEntry(i10, i11, (FieldElement) getEntry(i10, i11).add(fieldMatrix.getEntry(i10, i11)));
            }
        }
        return createMatrix;
    }

    @Override
    public abstract void addToEntry(int i10, int i11, T t10) throws OutOfRangeException;

    public void checkAdditionCompatible(FieldMatrix<T> fieldMatrix) throws MatrixDimensionMismatchException {
        if (getRowDimension() != fieldMatrix.getRowDimension() || getColumnDimension() != fieldMatrix.getColumnDimension()) {
            throw new MatrixDimensionMismatchException(fieldMatrix.getRowDimension(), fieldMatrix.getColumnDimension(), getRowDimension(), getColumnDimension());
        }
    }

    public void checkColumnIndex(int i10) throws OutOfRangeException {
        if (i10 < 0 || i10 >= getColumnDimension()) {
            throw new OutOfRangeException(LocalizedFormats.COLUMN_INDEX, Integer.valueOf(i10), 0, Integer.valueOf(getColumnDimension() - 1));
        }
    }

    public void checkMultiplicationCompatible(FieldMatrix<T> fieldMatrix) throws DimensionMismatchException {
        if (getColumnDimension() != fieldMatrix.getRowDimension()) {
            throw new DimensionMismatchException(fieldMatrix.getRowDimension(), getColumnDimension());
        }
    }

    public void checkRowIndex(int i10) throws OutOfRangeException {
        if (i10 < 0 || i10 >= getRowDimension()) {
            throw new OutOfRangeException(LocalizedFormats.ROW_INDEX, Integer.valueOf(i10), 0, Integer.valueOf(getRowDimension() - 1));
        }
    }

    public void checkSubMatrixIndex(int i10, int i11, int i12, int i13) throws NumberIsTooSmallException, OutOfRangeException {
        checkRowIndex(i10);
        checkRowIndex(i11);
        if (i11 >= i10) {
            checkColumnIndex(i12);
            checkColumnIndex(i13);
            if (i13 < i12) {
                throw new NumberIsTooSmallException(LocalizedFormats.INITIAL_COLUMN_AFTER_FINAL_COLUMN, Integer.valueOf(i13), Integer.valueOf(i12), true);
            }
            return;
        }
        throw new NumberIsTooSmallException(LocalizedFormats.INITIAL_ROW_AFTER_FINAL_ROW, Integer.valueOf(i11), Integer.valueOf(i10), true);
    }

    public void checkSubtractionCompatible(FieldMatrix<T> fieldMatrix) throws MatrixDimensionMismatchException {
        if (getRowDimension() != fieldMatrix.getRowDimension() || getColumnDimension() != fieldMatrix.getColumnDimension()) {
            throw new MatrixDimensionMismatchException(fieldMatrix.getRowDimension(), fieldMatrix.getColumnDimension(), getRowDimension(), getColumnDimension());
        }
    }

    @Override
    public abstract FieldMatrix<T> copy();

    @Override
    public void copySubMatrix(int i10, int i11, int i12, int i13, final T[][] tArr) throws MatrixDimensionMismatchException, NumberIsTooSmallException, OutOfRangeException {
        checkSubMatrixIndex(i10, i11, i12, i13);
        int i14 = (i11 + 1) - i10;
        int i15 = (i13 + 1) - i12;
        if (tArr.length >= i14 && tArr[0].length >= i15) {
            walkInOptimizedOrder(new DefaultFieldMatrixPreservingVisitor<T>(this.field.getZero()) {
                private int startColumn;
                private int startRow;

                @Override
                public void start(int i16, int i17, int i18, int i19, int i20, int i21) {
                    this.startRow = i18;
                    this.startColumn = i20;
                }

                @Override
                public void visit(int i16, int i17, T t10) {
                    tArr[i16 - this.startRow][i17 - this.startColumn] = t10;
                }
            }, i10, i11, i12, i13);
            return;
        }
        throw new MatrixDimensionMismatchException(tArr.length, tArr[0].length, i14, i15);
    }

    @Override
    public abstract FieldMatrix<T> createMatrix(int i10, int i11) throws NotStrictlyPositiveException;

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof FieldMatrix)) {
            return false;
        }
        FieldMatrix fieldMatrix = (FieldMatrix) obj;
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        if (fieldMatrix.getColumnDimension() != columnDimension || fieldMatrix.getRowDimension() != rowDimension) {
            return false;
        }
        for (int i10 = 0; i10 < rowDimension; i10++) {
            for (int i11 = 0; i11 < columnDimension; i11++) {
                if (!getEntry(i10, i11).equals(fieldMatrix.getEntry(i10, i11))) {
                    return false;
                }
            }
        }
        return true;
    }

    @Override
    public T[] getColumn(int i10) throws OutOfRangeException {
        checkColumnIndex(i10);
        int rowDimension = getRowDimension();
        T[] tArr = (T[]) ((FieldElement[]) MathArrays.buildArray(this.field, rowDimension));
        for (int i11 = 0; i11 < rowDimension; i11++) {
            tArr[i11] = getEntry(i11, i10);
        }
        return tArr;
    }

    @Override
    public abstract int getColumnDimension();

    @Override
    public FieldMatrix<T> getColumnMatrix(int i10) throws OutOfRangeException {
        checkColumnIndex(i10);
        int rowDimension = getRowDimension();
        FieldMatrix<T> createMatrix = createMatrix(rowDimension, 1);
        for (int i11 = 0; i11 < rowDimension; i11++) {
            createMatrix.setEntry(i11, 0, getEntry(i11, i10));
        }
        return createMatrix;
    }

    @Override
    public FieldVector<T> getColumnVector(int i10) throws OutOfRangeException {
        return new ArrayFieldVector((Field) this.field, (FieldElement[]) getColumn(i10), false);
    }

    @Override
    public T[][] getData() {
        T[][] tArr = (T[][]) ((FieldElement[][]) MathArrays.buildArray(this.field, getRowDimension(), getColumnDimension()));
        for (int i10 = 0; i10 < tArr.length; i10++) {
            T[] tArr2 = tArr[i10];
            for (int i11 = 0; i11 < tArr2.length; i11++) {
                tArr2[i11] = getEntry(i10, i11);
            }
        }
        return tArr;
    }

    @Override
    public abstract T getEntry(int i10, int i11) throws OutOfRangeException;

    @Override
    public Field<T> getField() {
        return this.field;
    }

    @Override
    public T[] getRow(int i10) throws OutOfRangeException {
        checkRowIndex(i10);
        int columnDimension = getColumnDimension();
        T[] tArr = (T[]) ((FieldElement[]) MathArrays.buildArray(this.field, columnDimension));
        for (int i11 = 0; i11 < columnDimension; i11++) {
            tArr[i11] = getEntry(i10, i11);
        }
        return tArr;
    }

    @Override
    public abstract int getRowDimension();

    @Override
    public FieldMatrix<T> getRowMatrix(int i10) throws OutOfRangeException {
        checkRowIndex(i10);
        int columnDimension = getColumnDimension();
        FieldMatrix<T> createMatrix = createMatrix(1, columnDimension);
        for (int i11 = 0; i11 < columnDimension; i11++) {
            createMatrix.setEntry(0, i11, getEntry(i10, i11));
        }
        return createMatrix;
    }

    @Override
    public FieldVector<T> getRowVector(int i10) throws OutOfRangeException {
        return new ArrayFieldVector((Field) this.field, (FieldElement[]) getRow(i10), false);
    }

    @Override
    public FieldMatrix<T> getSubMatrix(int i10, int i11, int i12, int i13) throws NumberIsTooSmallException, OutOfRangeException {
        checkSubMatrixIndex(i10, i11, i12, i13);
        FieldMatrix<T> createMatrix = createMatrix((i11 - i10) + 1, (i13 - i12) + 1);
        for (int i14 = i10; i14 <= i11; i14++) {
            for (int i15 = i12; i15 <= i13; i15++) {
                createMatrix.setEntry(i14 - i10, i15 - i12, getEntry(i14, i15));
            }
        }
        return createMatrix;
    }

    @Override
    public T getTrace() throws NonSquareMatrixException {
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        if (rowDimension != columnDimension) {
            throw new NonSquareMatrixException(rowDimension, columnDimension);
        }
        T zero = this.field.getZero();
        for (int i10 = 0; i10 < rowDimension; i10++) {
            zero = (T) zero.add(getEntry(i10, i10));
        }
        return zero;
    }

    public int hashCode() {
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        int i10 = ((9999422 + rowDimension) * 31) + columnDimension;
        for (int i11 = 0; i11 < rowDimension; i11++) {
            int i12 = 0;
            while (i12 < columnDimension) {
                int i13 = i12 + 1;
                i10 = (i10 * 31) + ((((i11 + 1) * 11) + (i13 * 17)) * getEntry(i11, i12).hashCode());
                i12 = i13;
            }
        }
        return i10;
    }

    @Override
    public boolean isSquare() {
        return getColumnDimension() == getRowDimension();
    }

    @Override
    public FieldMatrix<T> multiply(FieldMatrix<T> fieldMatrix) throws DimensionMismatchException {
        checkMultiplicationCompatible(fieldMatrix);
        int rowDimension = getRowDimension();
        int columnDimension = fieldMatrix.getColumnDimension();
        int columnDimension2 = getColumnDimension();
        FieldMatrix<T> createMatrix = createMatrix(rowDimension, columnDimension);
        for (int i10 = 0; i10 < rowDimension; i10++) {
            for (int i11 = 0; i11 < columnDimension; i11++) {
                T zero = this.field.getZero();
                for (int i12 = 0; i12 < columnDimension2; i12++) {
                    zero = (T) zero.add(getEntry(i10, i12).multiply(fieldMatrix.getEntry(i12, i11)));
                }
                createMatrix.setEntry(i10, i11, zero);
            }
        }
        return createMatrix;
    }

    @Override
    public abstract void multiplyEntry(int i10, int i11, T t10) throws OutOfRangeException;

    @Override
    public T[] operate(T[] tArr) throws DimensionMismatchException {
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        if (tArr.length == columnDimension) {
            T[] tArr2 = (T[]) ((FieldElement[]) MathArrays.buildArray(this.field, rowDimension));
            for (int i10 = 0; i10 < rowDimension; i10++) {
                T zero = this.field.getZero();
                for (int i11 = 0; i11 < columnDimension; i11++) {
                    zero = (T) zero.add(getEntry(i10, i11).multiply(tArr[i11]));
                }
                tArr2[i10] = zero;
            }
            return tArr2;
        }
        throw new DimensionMismatchException(tArr.length, columnDimension);
    }

    @Override
    public FieldMatrix<T> power(int i10) throws NonSquareMatrixException, NotPositiveException {
        if (i10 < 0) {
            throw new NotPositiveException(Integer.valueOf(i10));
        }
        if (!isSquare()) {
            throw new NonSquareMatrixException(getRowDimension(), getColumnDimension());
        }
        if (i10 == 0) {
            return MatrixUtils.createFieldIdentityMatrix(getField(), getRowDimension());
        }
        if (i10 == 1) {
            return copy();
        }
        char[] charArray = Integer.toBinaryString(i10 - 1).toCharArray();
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < charArray.length; i11++) {
            if (charArray[i11] == '1') {
                arrayList.add(Integer.valueOf((charArray.length - i11) - 1));
            }
        }
        ArrayList arrayList2 = new ArrayList(charArray.length);
        arrayList2.add(0, copy());
        for (int i12 = 1; i12 < charArray.length; i12++) {
            FieldMatrix<T> fieldMatrix = (FieldMatrix) arrayList2.get(i12 - 1);
            arrayList2.add(i12, fieldMatrix.multiply(fieldMatrix));
        }
        FieldMatrix<T> copy = copy();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            copy = copy.multiply((FieldMatrix) arrayList2.get(((Integer) it.next()).intValue()));
        }
        return copy;
    }

    @Override
    public FieldMatrix<T> preMultiply(FieldMatrix<T> fieldMatrix) throws DimensionMismatchException {
        return fieldMatrix.multiply(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public FieldMatrix<T> scalarAdd(T t10) {
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        FieldMatrix<T> createMatrix = createMatrix(rowDimension, columnDimension);
        for (int i10 = 0; i10 < rowDimension; i10++) {
            for (int i11 = 0; i11 < columnDimension; i11++) {
                createMatrix.setEntry(i10, i11, (FieldElement) getEntry(i10, i11).add(t10));
            }
        }
        return createMatrix;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public FieldMatrix<T> scalarMultiply(T t10) {
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        FieldMatrix<T> createMatrix = createMatrix(rowDimension, columnDimension);
        for (int i10 = 0; i10 < rowDimension; i10++) {
            for (int i11 = 0; i11 < columnDimension; i11++) {
                createMatrix.setEntry(i10, i11, (FieldElement) getEntry(i10, i11).multiply(t10));
            }
        }
        return createMatrix;
    }

    @Override
    public void setColumn(int i10, T[] tArr) throws OutOfRangeException, MatrixDimensionMismatchException {
        checkColumnIndex(i10);
        int rowDimension = getRowDimension();
        if (tArr.length != rowDimension) {
            throw new MatrixDimensionMismatchException(tArr.length, 1, rowDimension, 1);
        }
        for (int i11 = 0; i11 < rowDimension; i11++) {
            setEntry(i11, i10, tArr[i11]);
        }
    }

    @Override
    public void setColumnMatrix(int i10, FieldMatrix<T> fieldMatrix) throws OutOfRangeException, MatrixDimensionMismatchException {
        checkColumnIndex(i10);
        int rowDimension = getRowDimension();
        if (fieldMatrix.getRowDimension() != rowDimension || fieldMatrix.getColumnDimension() != 1) {
            throw new MatrixDimensionMismatchException(fieldMatrix.getRowDimension(), fieldMatrix.getColumnDimension(), rowDimension, 1);
        }
        for (int i11 = 0; i11 < rowDimension; i11++) {
            setEntry(i11, i10, fieldMatrix.getEntry(i11, 0));
        }
    }

    @Override
    public void setColumnVector(int i10, FieldVector<T> fieldVector) throws OutOfRangeException, MatrixDimensionMismatchException {
        checkColumnIndex(i10);
        int rowDimension = getRowDimension();
        if (fieldVector.getDimension() != rowDimension) {
            throw new MatrixDimensionMismatchException(fieldVector.getDimension(), 1, rowDimension, 1);
        }
        for (int i11 = 0; i11 < rowDimension; i11++) {
            setEntry(i11, i10, fieldVector.getEntry(i11));
        }
    }

    @Override
    public abstract void setEntry(int i10, int i11, T t10) throws OutOfRangeException;

    @Override
    public void setRow(int i10, T[] tArr) throws OutOfRangeException, MatrixDimensionMismatchException {
        checkRowIndex(i10);
        int columnDimension = getColumnDimension();
        if (tArr.length != columnDimension) {
            throw new MatrixDimensionMismatchException(1, tArr.length, 1, columnDimension);
        }
        for (int i11 = 0; i11 < columnDimension; i11++) {
            setEntry(i10, i11, tArr[i11]);
        }
    }

    @Override
    public void setRowMatrix(int i10, FieldMatrix<T> fieldMatrix) throws OutOfRangeException, MatrixDimensionMismatchException {
        checkRowIndex(i10);
        int columnDimension = getColumnDimension();
        if (fieldMatrix.getRowDimension() != 1 || fieldMatrix.getColumnDimension() != columnDimension) {
            throw new MatrixDimensionMismatchException(fieldMatrix.getRowDimension(), fieldMatrix.getColumnDimension(), 1, columnDimension);
        }
        for (int i11 = 0; i11 < columnDimension; i11++) {
            setEntry(i10, i11, fieldMatrix.getEntry(0, i11));
        }
    }

    @Override
    public void setRowVector(int i10, FieldVector<T> fieldVector) throws OutOfRangeException, MatrixDimensionMismatchException {
        checkRowIndex(i10);
        int columnDimension = getColumnDimension();
        if (fieldVector.getDimension() != columnDimension) {
            throw new MatrixDimensionMismatchException(1, fieldVector.getDimension(), 1, columnDimension);
        }
        for (int i11 = 0; i11 < columnDimension; i11++) {
            setEntry(i10, i11, fieldVector.getEntry(i11));
        }
    }

    @Override
    public void setSubMatrix(T[][] tArr, int i10, int i11) throws DimensionMismatchException, OutOfRangeException, NoDataException, NullArgumentException {
        if (tArr == null) {
            throw new NullArgumentException();
        }
        int length = tArr.length;
        if (length == 0) {
            throw new NoDataException(LocalizedFormats.AT_LEAST_ONE_ROW);
        }
        int length2 = tArr[0].length;
        if (length2 == 0) {
            throw new NoDataException(LocalizedFormats.AT_LEAST_ONE_COLUMN);
        }
        for (int i12 = 1; i12 < length; i12++) {
            if (tArr[i12].length != length2) {
                throw new DimensionMismatchException(length2, tArr[i12].length);
            }
        }
        checkRowIndex(i10);
        checkColumnIndex(i11);
        checkRowIndex((length + i10) - 1);
        checkColumnIndex((length2 + i11) - 1);
        for (int i13 = 0; i13 < length; i13++) {
            for (int i14 = 0; i14 < length2; i14++) {
                setEntry(i10 + i13, i11 + i14, tArr[i13][i14]);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public FieldMatrix<T> subtract(FieldMatrix<T> fieldMatrix) throws MatrixDimensionMismatchException {
        checkSubtractionCompatible(fieldMatrix);
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        FieldMatrix<T> createMatrix = createMatrix(rowDimension, columnDimension);
        for (int i10 = 0; i10 < rowDimension; i10++) {
            for (int i11 = 0; i11 < columnDimension; i11++) {
                createMatrix.setEntry(i10, i11, (FieldElement) getEntry(i10, i11).subtract(fieldMatrix.getEntry(i10, i11)));
            }
        }
        return createMatrix;
    }

    public String toString() {
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        StringBuffer stringBuffer = new StringBuffer();
        String name = getClass().getName();
        stringBuffer.append(name.substring(name.lastIndexOf(46) + 1));
        stringBuffer.append("{");
        for (int i10 = 0; i10 < rowDimension; i10++) {
            if (i10 > 0) {
                stringBuffer.append(DocLint.SEPARATOR);
            }
            stringBuffer.append("{");
            for (int i11 = 0; i11 < columnDimension; i11++) {
                if (i11 > 0) {
                    stringBuffer.append(DocLint.SEPARATOR);
                }
                stringBuffer.append((Object) getEntry(i10, i11));
            }
            stringBuffer.append(VectorFormat.DEFAULT_SUFFIX);
        }
        stringBuffer.append(VectorFormat.DEFAULT_SUFFIX);
        return stringBuffer.toString();
    }

    @Override
    public FieldMatrix<T> transpose() {
        final FieldMatrix<T> createMatrix = createMatrix(getColumnDimension(), getRowDimension());
        walkInOptimizedOrder(new DefaultFieldMatrixPreservingVisitor<T>(this.field.getZero()) {
            @Override
            public void visit(int i10, int i11, T t10) {
                createMatrix.setEntry(i11, i10, t10);
            }
        });
        return createMatrix;
    }

    @Override
    public T walkInColumnOrder(FieldMatrixChangingVisitor<T> fieldMatrixChangingVisitor) {
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        fieldMatrixChangingVisitor.start(rowDimension, columnDimension, 0, rowDimension - 1, 0, columnDimension - 1);
        for (int i10 = 0; i10 < columnDimension; i10++) {
            for (int i11 = 0; i11 < rowDimension; i11++) {
                setEntry(i11, i10, fieldMatrixChangingVisitor.visit(i11, i10, getEntry(i11, i10)));
            }
        }
        return fieldMatrixChangingVisitor.end();
    }

    @Override
    public T walkInOptimizedOrder(FieldMatrixChangingVisitor<T> fieldMatrixChangingVisitor) {
        return walkInRowOrder(fieldMatrixChangingVisitor);
    }

    @Override
    public T walkInRowOrder(FieldMatrixChangingVisitor<T> fieldMatrixChangingVisitor) {
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        fieldMatrixChangingVisitor.start(rowDimension, columnDimension, 0, rowDimension - 1, 0, columnDimension - 1);
        for (int i10 = 0; i10 < rowDimension; i10++) {
            for (int i11 = 0; i11 < columnDimension; i11++) {
                setEntry(i10, i11, fieldMatrixChangingVisitor.visit(i10, i11, getEntry(i10, i11)));
            }
        }
        return fieldMatrixChangingVisitor.end();
    }

    @Deprecated
    public static <T extends FieldElement<T>> T[] buildArray(Field<T> field, int i10) {
        return (T[]) ((FieldElement[]) MathArrays.buildArray(field, i10));
    }

    @Override
    public T[] preMultiply(T[] tArr) throws DimensionMismatchException {
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        if (tArr.length == rowDimension) {
            T[] tArr2 = (T[]) ((FieldElement[]) MathArrays.buildArray(this.field, columnDimension));
            for (int i10 = 0; i10 < columnDimension; i10++) {
                T zero = this.field.getZero();
                for (int i11 = 0; i11 < rowDimension; i11++) {
                    zero = (T) zero.add(getEntry(i11, i10).multiply(tArr[i11]));
                }
                tArr2[i10] = zero;
            }
            return tArr2;
        }
        throw new DimensionMismatchException(tArr.length, rowDimension);
    }

    @Override
    public T walkInOptimizedOrder(FieldMatrixPreservingVisitor<T> fieldMatrixPreservingVisitor) {
        return walkInRowOrder(fieldMatrixPreservingVisitor);
    }

    public AbstractFieldMatrix(Field<T> field) {
        this.field = field;
    }

    @Override
    public T walkInOptimizedOrder(FieldMatrixChangingVisitor<T> fieldMatrixChangingVisitor, int i10, int i11, int i12, int i13) throws NumberIsTooSmallException, OutOfRangeException {
        return walkInRowOrder(fieldMatrixChangingVisitor, i10, i11, i12, i13);
    }

    @Override
    public FieldMatrix<T> getSubMatrix(final int[] iArr, final int[] iArr2) throws NoDataException, NullArgumentException, OutOfRangeException {
        checkSubMatrixIndex(iArr, iArr2);
        FieldMatrix<T> createMatrix = createMatrix(iArr.length, iArr2.length);
        createMatrix.walkInOptimizedOrder(new DefaultFieldMatrixChangingVisitor<T>(this.field.getZero()) {
            @Override
            public T visit(int i10, int i11, T t10) {
                return (T) AbstractFieldMatrix.this.getEntry(iArr[i10], iArr2[i11]);
            }
        });
        return createMatrix;
    }

    @Override
    public T walkInOptimizedOrder(FieldMatrixPreservingVisitor<T> fieldMatrixPreservingVisitor, int i10, int i11, int i12, int i13) throws NumberIsTooSmallException, OutOfRangeException {
        return walkInRowOrder(fieldMatrixPreservingVisitor, i10, i11, i12, i13);
    }

    public AbstractFieldMatrix(Field<T> field, int i10, int i11) throws NotStrictlyPositiveException {
        if (i10 <= 0) {
            throw new NotStrictlyPositiveException(LocalizedFormats.DIMENSION, Integer.valueOf(i10));
        }
        if (i11 > 0) {
            this.field = field;
            return;
        }
        throw new NotStrictlyPositiveException(LocalizedFormats.DIMENSION, Integer.valueOf(i11));
    }

    @Override
    public void copySubMatrix(int[] iArr, int[] iArr2, T[][] tArr) throws MatrixDimensionMismatchException, NoDataException, NullArgumentException, OutOfRangeException {
        checkSubMatrixIndex(iArr, iArr2);
        if (tArr.length >= iArr.length && tArr[0].length >= iArr2.length) {
            for (int i10 = 0; i10 < iArr.length; i10++) {
                T[] tArr2 = tArr[i10];
                for (int i11 = 0; i11 < iArr2.length; i11++) {
                    tArr2[i11] = getEntry(iArr[i10], iArr2[i11]);
                }
            }
            return;
        }
        throw new MatrixDimensionMismatchException(tArr.length, tArr[0].length, iArr.length, iArr2.length);
    }

    public static <T extends FieldElement<T>> Field<T> extractField(T[] tArr) throws NoDataException {
        if (tArr.length != 0) {
            return tArr[0].getField();
        }
        throw new NoDataException(LocalizedFormats.AT_LEAST_ONE_ROW);
    }

    public void checkSubMatrixIndex(int[] iArr, int[] iArr2) throws NoDataException, NullArgumentException, OutOfRangeException {
        if (iArr != null && iArr2 != null) {
            if (iArr.length != 0 && iArr2.length != 0) {
                for (int i10 : iArr) {
                    checkRowIndex(i10);
                }
                for (int i11 : iArr2) {
                    checkColumnIndex(i11);
                }
                return;
            }
            throw new NoDataException();
        }
        throw new NullArgumentException();
    }

    @Override
    public T walkInColumnOrder(FieldMatrixPreservingVisitor<T> fieldMatrixPreservingVisitor) {
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        fieldMatrixPreservingVisitor.start(rowDimension, columnDimension, 0, rowDimension - 1, 0, columnDimension - 1);
        for (int i10 = 0; i10 < columnDimension; i10++) {
            for (int i11 = 0; i11 < rowDimension; i11++) {
                fieldMatrixPreservingVisitor.visit(i11, i10, getEntry(i11, i10));
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
            for (int i11 = 0; i11 < columnDimension; i11++) {
                fieldMatrixPreservingVisitor.visit(i10, i11, getEntry(i10, i11));
            }
        }
        return fieldMatrixPreservingVisitor.end();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public FieldVector<T> operate(FieldVector<T> fieldVector) throws DimensionMismatchException {
        try {
            return new ArrayFieldVector((Field) this.field, operate(((ArrayFieldVector) fieldVector).getDataRef()), false);
        } catch (ClassCastException unused) {
            int rowDimension = getRowDimension();
            int columnDimension = getColumnDimension();
            if (fieldVector.getDimension() == columnDimension) {
                FieldElement[] fieldElementArr = (FieldElement[]) MathArrays.buildArray(this.field, rowDimension);
                for (int i10 = 0; i10 < rowDimension; i10++) {
                    T zero = this.field.getZero();
                    for (int i11 = 0; i11 < columnDimension; i11++) {
                        zero = (T) zero.add(getEntry(i10, i11).multiply(fieldVector.getEntry(i11)));
                    }
                    fieldElementArr[i10] = zero;
                }
                return new ArrayFieldVector((Field) this.field, fieldElementArr, false);
            }
            throw new DimensionMismatchException(fieldVector.getDimension(), columnDimension);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public FieldVector<T> preMultiply(FieldVector<T> fieldVector) throws DimensionMismatchException {
        try {
            return new ArrayFieldVector((Field) this.field, preMultiply(((ArrayFieldVector) fieldVector).getDataRef()), false);
        } catch (ClassCastException unused) {
            int rowDimension = getRowDimension();
            int columnDimension = getColumnDimension();
            if (fieldVector.getDimension() == rowDimension) {
                FieldElement[] fieldElementArr = (FieldElement[]) MathArrays.buildArray(this.field, columnDimension);
                for (int i10 = 0; i10 < columnDimension; i10++) {
                    T zero = this.field.getZero();
                    for (int i11 = 0; i11 < rowDimension; i11++) {
                        zero = (T) zero.add(getEntry(i11, i10).multiply(fieldVector.getEntry(i11)));
                    }
                    fieldElementArr[i10] = zero;
                }
                return new ArrayFieldVector((Field) this.field, fieldElementArr, false);
            }
            throw new DimensionMismatchException(fieldVector.getDimension(), rowDimension);
        }
    }

    @Override
    public T walkInColumnOrder(FieldMatrixChangingVisitor<T> fieldMatrixChangingVisitor, int i10, int i11, int i12, int i13) throws NumberIsTooSmallException, OutOfRangeException {
        checkSubMatrixIndex(i10, i11, i12, i13);
        fieldMatrixChangingVisitor.start(getRowDimension(), getColumnDimension(), i10, i11, i12, i13);
        while (i12 <= i13) {
            for (int i14 = i10; i14 <= i11; i14++) {
                setEntry(i14, i12, fieldMatrixChangingVisitor.visit(i14, i12, getEntry(i14, i12)));
            }
            i12++;
        }
        return fieldMatrixChangingVisitor.end();
    }

    @Override
    public T walkInRowOrder(FieldMatrixChangingVisitor<T> fieldMatrixChangingVisitor, int i10, int i11, int i12, int i13) throws NumberIsTooSmallException, OutOfRangeException {
        checkSubMatrixIndex(i10, i11, i12, i13);
        fieldMatrixChangingVisitor.start(getRowDimension(), getColumnDimension(), i10, i11, i12, i13);
        while (i10 <= i11) {
            for (int i14 = i12; i14 <= i13; i14++) {
                setEntry(i10, i14, fieldMatrixChangingVisitor.visit(i10, i14, getEntry(i10, i14)));
            }
            i10++;
        }
        return fieldMatrixChangingVisitor.end();
    }

    @Override
    public T walkInColumnOrder(FieldMatrixPreservingVisitor<T> fieldMatrixPreservingVisitor, int i10, int i11, int i12, int i13) throws NumberIsTooSmallException, OutOfRangeException {
        checkSubMatrixIndex(i10, i11, i12, i13);
        fieldMatrixPreservingVisitor.start(getRowDimension(), getColumnDimension(), i10, i11, i12, i13);
        while (i12 <= i13) {
            for (int i14 = i10; i14 <= i11; i14++) {
                fieldMatrixPreservingVisitor.visit(i14, i12, getEntry(i14, i12));
            }
            i12++;
        }
        return fieldMatrixPreservingVisitor.end();
    }

    @Override
    public T walkInRowOrder(FieldMatrixPreservingVisitor<T> fieldMatrixPreservingVisitor, int i10, int i11, int i12, int i13) throws NumberIsTooSmallException, OutOfRangeException {
        checkSubMatrixIndex(i10, i11, i12, i13);
        fieldMatrixPreservingVisitor.start(getRowDimension(), getColumnDimension(), i10, i11, i12, i13);
        while (i10 <= i11) {
            for (int i14 = i12; i14 <= i13; i14++) {
                fieldMatrixPreservingVisitor.visit(i10, i14, getEntry(i10, i14));
            }
            i10++;
        }
        return fieldMatrixPreservingVisitor.end();
    }
}
