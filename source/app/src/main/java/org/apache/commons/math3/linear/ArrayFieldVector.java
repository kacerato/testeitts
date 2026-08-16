package org.apache.commons.math3.linear;

import java.io.Serializable;
import java.util.Arrays;
import org.apache.commons.math3.Field;
import org.apache.commons.math3.FieldElement;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.ZeroException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.MathUtils;

public class ArrayFieldVector<T extends FieldElement<T>> implements FieldVector<T>, Serializable {
    private static final long serialVersionUID = 7648186910365927050L;
    private T[] data;
    private final Field<T> field;

    public ArrayFieldVector(Field<T> field) {
        this(field, 0);
    }

    private void checkIndex(int i10) throws OutOfRangeException {
        if (i10 < 0 || i10 >= getDimension()) {
            throw new OutOfRangeException(LocalizedFormats.INDEX, Integer.valueOf(i10), 0, Integer.valueOf(getDimension() - 1));
        }
    }

    private void checkIndices(int i10, int i11) throws NumberIsTooSmallException, OutOfRangeException {
        int dimension = getDimension();
        if (i10 < 0 || i10 >= dimension) {
            throw new OutOfRangeException(LocalizedFormats.INDEX, Integer.valueOf(i10), 0, Integer.valueOf(dimension - 1));
        }
        if (i11 < 0 || i11 >= dimension) {
            throw new OutOfRangeException(LocalizedFormats.INDEX, Integer.valueOf(i11), 0, Integer.valueOf(dimension - 1));
        }
        if (i11 < i10) {
            throw new NumberIsTooSmallException(LocalizedFormats.INITIAL_ROW_AFTER_FINAL_ROW, Integer.valueOf(i11), Integer.valueOf(i10), false);
        }
    }

    @Override
    public FieldVector<T> add(FieldVector<T> fieldVector) throws DimensionMismatchException {
        try {
            return add((ArrayFieldVector) fieldVector);
        } catch (ClassCastException unused) {
            checkVectorDimensions(fieldVector);
            FieldElement[] fieldElementArr = (FieldElement[]) MathArrays.buildArray(this.field, this.data.length);
            int i10 = 0;
            while (true) {
                T[] tArr = this.data;
                if (i10 < tArr.length) {
                    fieldElementArr[i10] = (FieldElement) tArr[i10].add(fieldVector.getEntry(i10));
                    i10++;
                } else {
                    return new ArrayFieldVector((Field) this.field, fieldElementArr, false);
                }
            }
        }
    }

    @Override
    public FieldVector<T> append(FieldVector<T> fieldVector) {
        try {
            return append((ArrayFieldVector) fieldVector);
        } catch (ClassCastException unused) {
            return new ArrayFieldVector((ArrayFieldVector) this, new ArrayFieldVector(fieldVector));
        }
    }

    public void checkVectorDimensions(FieldVector<T> fieldVector) throws DimensionMismatchException {
        checkVectorDimensions(fieldVector.getDimension());
    }

    @Override
    public FieldVector<T> copy() {
        return new ArrayFieldVector((ArrayFieldVector) this, true);
    }

    @Override
    public T dotProduct(FieldVector<T> fieldVector) throws DimensionMismatchException {
        try {
            return dotProduct((ArrayFieldVector) fieldVector);
        } catch (ClassCastException unused) {
            checkVectorDimensions(fieldVector);
            T zero = this.field.getZero();
            int i10 = 0;
            while (true) {
                T[] tArr = this.data;
                if (i10 >= tArr.length) {
                    return zero;
                }
                zero = (T) zero.add(tArr[i10].multiply(fieldVector.getEntry(i10)));
                i10++;
            }
        }
    }

    @Override
    public FieldVector<T> ebeDivide(FieldVector<T> fieldVector) throws DimensionMismatchException, MathArithmeticException {
        try {
            return ebeDivide((ArrayFieldVector) fieldVector);
        } catch (ClassCastException unused) {
            checkVectorDimensions(fieldVector);
            FieldElement[] fieldElementArr = (FieldElement[]) MathArrays.buildArray(this.field, this.data.length);
            int i10 = 0;
            while (true) {
                T[] tArr = this.data;
                if (i10 < tArr.length) {
                    try {
                        fieldElementArr[i10] = (FieldElement) tArr[i10].divide(fieldVector.getEntry(i10));
                        i10++;
                    } catch (MathArithmeticException unused2) {
                        throw new MathArithmeticException(LocalizedFormats.INDEX, Integer.valueOf(i10));
                    }
                } else {
                    return new ArrayFieldVector((Field) this.field, fieldElementArr, false);
                }
            }
        }
    }

    @Override
    public FieldVector<T> ebeMultiply(FieldVector<T> fieldVector) throws DimensionMismatchException {
        try {
            return ebeMultiply((ArrayFieldVector) fieldVector);
        } catch (ClassCastException unused) {
            checkVectorDimensions(fieldVector);
            FieldElement[] fieldElementArr = (FieldElement[]) MathArrays.buildArray(this.field, this.data.length);
            int i10 = 0;
            while (true) {
                T[] tArr = this.data;
                if (i10 < tArr.length) {
                    fieldElementArr[i10] = (FieldElement) tArr[i10].multiply(fieldVector.getEntry(i10));
                    i10++;
                } else {
                    return new ArrayFieldVector((Field) this.field, fieldElementArr, false);
                }
            }
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        try {
            FieldVector fieldVector = (FieldVector) obj;
            if (this.data.length != fieldVector.getDimension()) {
                return false;
            }
            int i10 = 0;
            while (true) {
                T[] tArr = this.data;
                if (i10 >= tArr.length) {
                    return true;
                }
                if (!tArr[i10].equals(fieldVector.getEntry(i10))) {
                    return false;
                }
                i10++;
            }
        } catch (ClassCastException unused) {
            return false;
        }
    }

    @Override
    public T[] getData() {
        return (T[]) ((FieldElement[]) this.data.clone());
    }

    public T[] getDataRef() {
        return this.data;
    }

    @Override
    public int getDimension() {
        return this.data.length;
    }

    @Override
    public T getEntry(int i10) {
        return this.data[i10];
    }

    @Override
    public Field<T> getField() {
        return this.field;
    }

    @Override
    public FieldVector<T> getSubVector(int i10, int i11) throws OutOfRangeException, NotPositiveException {
        if (i11 < 0) {
            throw new NotPositiveException(LocalizedFormats.NUMBER_OF_ELEMENTS_SHOULD_BE_POSITIVE, Integer.valueOf(i11));
        }
        ArrayFieldVector arrayFieldVector = new ArrayFieldVector(this.field, i11);
        try {
            System.arraycopy(this.data, i10, arrayFieldVector.data, 0, i11);
        } catch (IndexOutOfBoundsException unused) {
            checkIndex(i10);
            checkIndex((i10 + i11) - 1);
        }
        return arrayFieldVector;
    }

    public int hashCode() {
        int i10 = 3542;
        for (T t10 : this.data) {
            i10 ^= t10.hashCode();
        }
        return i10;
    }

    @Override
    public FieldVector<T> mapAdd(T t10) throws NullArgumentException {
        FieldElement[] fieldElementArr = (FieldElement[]) MathArrays.buildArray(this.field, this.data.length);
        int i10 = 0;
        while (true) {
            T[] tArr = this.data;
            if (i10 >= tArr.length) {
                return new ArrayFieldVector((Field) this.field, fieldElementArr, false);
            }
            fieldElementArr[i10] = (FieldElement) tArr[i10].add(t10);
            i10++;
        }
    }

    @Override
    public FieldVector<T> mapAddToSelf(T t10) throws NullArgumentException {
        int i10 = 0;
        while (true) {
            FieldElement[] fieldElementArr = this.data;
            if (i10 >= fieldElementArr.length) {
                return this;
            }
            fieldElementArr[i10] = (FieldElement) fieldElementArr[i10].add(t10);
            i10++;
        }
    }

    @Override
    public FieldVector<T> mapDivide(T t10) throws NullArgumentException, MathArithmeticException {
        MathUtils.checkNotNull(t10);
        FieldElement[] fieldElementArr = (FieldElement[]) MathArrays.buildArray(this.field, this.data.length);
        int i10 = 0;
        while (true) {
            T[] tArr = this.data;
            if (i10 >= tArr.length) {
                return new ArrayFieldVector((Field) this.field, fieldElementArr, false);
            }
            fieldElementArr[i10] = (FieldElement) tArr[i10].divide(t10);
            i10++;
        }
    }

    @Override
    public FieldVector<T> mapDivideToSelf(T t10) throws NullArgumentException, MathArithmeticException {
        MathUtils.checkNotNull(t10);
        int i10 = 0;
        while (true) {
            FieldElement[] fieldElementArr = this.data;
            if (i10 >= fieldElementArr.length) {
                return this;
            }
            fieldElementArr[i10] = (FieldElement) fieldElementArr[i10].divide(t10);
            i10++;
        }
    }

    @Override
    public FieldVector<T> mapInv() throws MathArithmeticException {
        FieldElement[] fieldElementArr = (FieldElement[]) MathArrays.buildArray(this.field, this.data.length);
        T one = this.field.getOne();
        int i10 = 0;
        while (true) {
            T[] tArr = this.data;
            if (i10 >= tArr.length) {
                return new ArrayFieldVector((Field) this.field, fieldElementArr, false);
            }
            try {
                fieldElementArr[i10] = (FieldElement) one.divide(tArr[i10]);
                i10++;
            } catch (MathArithmeticException unused) {
                throw new MathArithmeticException(LocalizedFormats.INDEX, Integer.valueOf(i10));
            }
        }
    }

    @Override
    public FieldVector<T> mapInvToSelf() throws MathArithmeticException {
        T one = this.field.getOne();
        int i10 = 0;
        while (true) {
            T[] tArr = this.data;
            if (i10 >= tArr.length) {
                return this;
            }
            try {
                tArr[i10] = (FieldElement) one.divide(tArr[i10]);
                i10++;
            } catch (MathArithmeticException unused) {
                throw new MathArithmeticException(LocalizedFormats.INDEX, Integer.valueOf(i10));
            }
        }
    }

    @Override
    public FieldVector<T> mapMultiply(T t10) throws NullArgumentException {
        FieldElement[] fieldElementArr = (FieldElement[]) MathArrays.buildArray(this.field, this.data.length);
        int i10 = 0;
        while (true) {
            T[] tArr = this.data;
            if (i10 >= tArr.length) {
                return new ArrayFieldVector((Field) this.field, fieldElementArr, false);
            }
            fieldElementArr[i10] = (FieldElement) tArr[i10].multiply(t10);
            i10++;
        }
    }

    @Override
    public FieldVector<T> mapMultiplyToSelf(T t10) throws NullArgumentException {
        int i10 = 0;
        while (true) {
            FieldElement[] fieldElementArr = this.data;
            if (i10 >= fieldElementArr.length) {
                return this;
            }
            fieldElementArr[i10] = (FieldElement) fieldElementArr[i10].multiply(t10);
            i10++;
        }
    }

    @Override
    public FieldVector<T> mapSubtract(T t10) throws NullArgumentException {
        FieldElement[] fieldElementArr = (FieldElement[]) MathArrays.buildArray(this.field, this.data.length);
        int i10 = 0;
        while (true) {
            T[] tArr = this.data;
            if (i10 >= tArr.length) {
                return new ArrayFieldVector((Field) this.field, fieldElementArr, false);
            }
            fieldElementArr[i10] = (FieldElement) tArr[i10].subtract(t10);
            i10++;
        }
    }

    @Override
    public FieldVector<T> mapSubtractToSelf(T t10) throws NullArgumentException {
        int i10 = 0;
        while (true) {
            FieldElement[] fieldElementArr = this.data;
            if (i10 >= fieldElementArr.length) {
                return this;
            }
            fieldElementArr[i10] = (FieldElement) fieldElementArr[i10].subtract(t10);
            i10++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public FieldMatrix<T> outerProduct(FieldVector<T> fieldVector) {
        try {
            return outerProduct((ArrayFieldVector) fieldVector);
        } catch (ClassCastException unused) {
            int length = this.data.length;
            int dimension = fieldVector.getDimension();
            Array2DRowFieldMatrix array2DRowFieldMatrix = new Array2DRowFieldMatrix(this.field, length, dimension);
            for (int i10 = 0; i10 < length; i10++) {
                for (int i11 = 0; i11 < dimension; i11++) {
                    array2DRowFieldMatrix.setEntry(i10, i11, (FieldElement) this.data[i10].multiply(fieldVector.getEntry(i11)));
                }
            }
            return array2DRowFieldMatrix;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public FieldVector<T> projection(FieldVector<T> fieldVector) throws DimensionMismatchException, MathArithmeticException {
        return fieldVector.mapMultiply((FieldElement) dotProduct(fieldVector).divide(fieldVector.dotProduct(fieldVector)));
    }

    public void set(int i10, ArrayFieldVector<T> arrayFieldVector) throws OutOfRangeException {
        try {
            T[] tArr = arrayFieldVector.data;
            System.arraycopy(tArr, 0, this.data, i10, tArr.length);
        } catch (IndexOutOfBoundsException unused) {
            checkIndex(i10);
            checkIndex((i10 + arrayFieldVector.data.length) - 1);
        }
    }

    @Override
    public void setEntry(int i10, T t10) {
        try {
            this.data[i10] = t10;
        } catch (IndexOutOfBoundsException unused) {
            checkIndex(i10);
        }
    }

    @Override
    public void setSubVector(int i10, FieldVector<T> fieldVector) throws OutOfRangeException {
        try {
            try {
                set(i10, (ArrayFieldVector) fieldVector);
            } catch (ClassCastException unused) {
                for (int i11 = i10; i11 < fieldVector.getDimension() + i10; i11++) {
                    this.data[i11] = fieldVector.getEntry(i11 - i10);
                }
            }
        } catch (IndexOutOfBoundsException unused2) {
            checkIndex(i10);
            checkIndex((i10 + fieldVector.getDimension()) - 1);
        }
    }

    @Override
    public FieldVector<T> subtract(FieldVector<T> fieldVector) throws DimensionMismatchException {
        try {
            return subtract((ArrayFieldVector) fieldVector);
        } catch (ClassCastException unused) {
            checkVectorDimensions(fieldVector);
            FieldElement[] fieldElementArr = (FieldElement[]) MathArrays.buildArray(this.field, this.data.length);
            int i10 = 0;
            while (true) {
                T[] tArr = this.data;
                if (i10 < tArr.length) {
                    fieldElementArr[i10] = (FieldElement) tArr[i10].subtract(fieldVector.getEntry(i10));
                    i10++;
                } else {
                    return new ArrayFieldVector((Field) this.field, fieldElementArr, false);
                }
            }
        }
    }

    @Override
    public T[] toArray() {
        return (T[]) ((FieldElement[]) this.data.clone());
    }

    public T walkInDefaultOrder(FieldVectorPreservingVisitor<T> fieldVectorPreservingVisitor) {
        int dimension = getDimension();
        fieldVectorPreservingVisitor.start(dimension, 0, dimension - 1);
        for (int i10 = 0; i10 < dimension; i10++) {
            fieldVectorPreservingVisitor.visit(i10, getEntry(i10));
        }
        return fieldVectorPreservingVisitor.end();
    }

    public T walkInOptimizedOrder(FieldVectorPreservingVisitor<T> fieldVectorPreservingVisitor) {
        return walkInDefaultOrder(fieldVectorPreservingVisitor);
    }

    public ArrayFieldVector(Field<T> field, int i10) {
        this.field = field;
        this.data = (T[]) ((FieldElement[]) MathArrays.buildArray(field, i10));
    }

    public void checkVectorDimensions(int i10) throws DimensionMismatchException {
        if (this.data.length != i10) {
            throw new DimensionMismatchException(this.data.length, i10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ArrayFieldVector<T> projection(ArrayFieldVector<T> arrayFieldVector) throws DimensionMismatchException, MathArithmeticException {
        return (ArrayFieldVector) arrayFieldVector.mapMultiply((FieldElement) dotProduct((ArrayFieldVector) arrayFieldVector).divide(arrayFieldVector.dotProduct((ArrayFieldVector) arrayFieldVector)));
    }

    public T walkInOptimizedOrder(FieldVectorPreservingVisitor<T> fieldVectorPreservingVisitor, int i10, int i11) throws NumberIsTooSmallException, OutOfRangeException {
        return walkInDefaultOrder(fieldVectorPreservingVisitor, i10, i11);
    }

    public ArrayFieldVector<T> append(ArrayFieldVector<T> arrayFieldVector) {
        return new ArrayFieldVector<>((ArrayFieldVector) this, (ArrayFieldVector) arrayFieldVector);
    }

    public T walkInOptimizedOrder(FieldVectorChangingVisitor<T> fieldVectorChangingVisitor) {
        return walkInDefaultOrder(fieldVectorChangingVisitor);
    }

    @Override
    public FieldVector<T> append(T t10) {
        FieldElement[] fieldElementArr = (FieldElement[]) MathArrays.buildArray(this.field, this.data.length + 1);
        T[] tArr = this.data;
        System.arraycopy(tArr, 0, fieldElementArr, 0, tArr.length);
        fieldElementArr[this.data.length] = t10;
        return new ArrayFieldVector((Field) this.field, fieldElementArr, false);
    }

    @Override
    public void set(T t10) {
        Arrays.fill(this.data, t10);
    }

    public T walkInOptimizedOrder(FieldVectorChangingVisitor<T> fieldVectorChangingVisitor, int i10, int i11) throws NumberIsTooSmallException, OutOfRangeException {
        return walkInDefaultOrder(fieldVectorChangingVisitor, i10, i11);
    }

    public ArrayFieldVector(int i10, T t10) {
        this(t10.getField(), i10);
        Arrays.fill(this.data, t10);
    }

    public T walkInDefaultOrder(FieldVectorPreservingVisitor<T> fieldVectorPreservingVisitor, int i10, int i11) throws NumberIsTooSmallException, OutOfRangeException {
        checkIndices(i10, i11);
        fieldVectorPreservingVisitor.start(getDimension(), i10, i11);
        while (i10 <= i11) {
            fieldVectorPreservingVisitor.visit(i10, getEntry(i10));
            i10++;
        }
        return fieldVectorPreservingVisitor.end();
    }

    public T dotProduct(ArrayFieldVector<T> arrayFieldVector) throws DimensionMismatchException {
        checkVectorDimensions(arrayFieldVector.data.length);
        T zero = this.field.getZero();
        int i10 = 0;
        while (true) {
            T[] tArr = this.data;
            if (i10 >= tArr.length) {
                return zero;
            }
            zero = (T) zero.add(tArr[i10].multiply(arrayFieldVector.data[i10]));
            i10++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public FieldMatrix<T> outerProduct(ArrayFieldVector<T> arrayFieldVector) {
        int length = this.data.length;
        int length2 = arrayFieldVector.data.length;
        Array2DRowFieldMatrix array2DRowFieldMatrix = new Array2DRowFieldMatrix(this.field, length, length2);
        for (int i10 = 0; i10 < length; i10++) {
            for (int i11 = 0; i11 < length2; i11++) {
                array2DRowFieldMatrix.setEntry(i10, i11, (FieldElement) this.data[i10].multiply(arrayFieldVector.data[i11]));
            }
        }
        return array2DRowFieldMatrix;
    }

    public ArrayFieldVector(T[] tArr) throws NullArgumentException, ZeroException {
        MathUtils.checkNotNull(tArr);
        try {
            this.field = tArr[0].getField();
            this.data = (T[]) ((FieldElement[]) tArr.clone());
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ZeroException(LocalizedFormats.VECTOR_MUST_HAVE_AT_LEAST_ONE_ELEMENT, new Object[0]);
        }
    }

    public ArrayFieldVector<T> add(ArrayFieldVector<T> arrayFieldVector) throws DimensionMismatchException {
        checkVectorDimensions(arrayFieldVector.data.length);
        FieldElement[] fieldElementArr = (FieldElement[]) MathArrays.buildArray(this.field, this.data.length);
        int i10 = 0;
        while (true) {
            T[] tArr = this.data;
            if (i10 < tArr.length) {
                fieldElementArr[i10] = (FieldElement) tArr[i10].add(arrayFieldVector.data[i10]);
                i10++;
            } else {
                return new ArrayFieldVector<>((Field) this.field, fieldElementArr, false);
            }
        }
    }

    public ArrayFieldVector<T> ebeMultiply(ArrayFieldVector<T> arrayFieldVector) throws DimensionMismatchException {
        checkVectorDimensions(arrayFieldVector.data.length);
        FieldElement[] fieldElementArr = (FieldElement[]) MathArrays.buildArray(this.field, this.data.length);
        int i10 = 0;
        while (true) {
            T[] tArr = this.data;
            if (i10 < tArr.length) {
                fieldElementArr[i10] = (FieldElement) tArr[i10].multiply(arrayFieldVector.data[i10]);
                i10++;
            } else {
                return new ArrayFieldVector<>((Field) this.field, fieldElementArr, false);
            }
        }
    }

    public ArrayFieldVector<T> subtract(ArrayFieldVector<T> arrayFieldVector) throws DimensionMismatchException {
        checkVectorDimensions(arrayFieldVector.data.length);
        FieldElement[] fieldElementArr = (FieldElement[]) MathArrays.buildArray(this.field, this.data.length);
        int i10 = 0;
        while (true) {
            T[] tArr = this.data;
            if (i10 < tArr.length) {
                fieldElementArr[i10] = (FieldElement) tArr[i10].subtract(arrayFieldVector.data[i10]);
                i10++;
            } else {
                return new ArrayFieldVector<>((Field) this.field, fieldElementArr, false);
            }
        }
    }

    public ArrayFieldVector<T> ebeDivide(ArrayFieldVector<T> arrayFieldVector) throws DimensionMismatchException, MathArithmeticException {
        checkVectorDimensions(arrayFieldVector.data.length);
        FieldElement[] fieldElementArr = (FieldElement[]) MathArrays.buildArray(this.field, this.data.length);
        int i10 = 0;
        while (true) {
            T[] tArr = this.data;
            if (i10 < tArr.length) {
                try {
                    fieldElementArr[i10] = (FieldElement) tArr[i10].divide(arrayFieldVector.data[i10]);
                    i10++;
                } catch (MathArithmeticException unused) {
                    throw new MathArithmeticException(LocalizedFormats.INDEX, Integer.valueOf(i10));
                }
            } else {
                return new ArrayFieldVector<>((Field) this.field, fieldElementArr, false);
            }
        }
    }

    public T walkInDefaultOrder(FieldVectorChangingVisitor<T> fieldVectorChangingVisitor) {
        int dimension = getDimension();
        fieldVectorChangingVisitor.start(dimension, 0, dimension - 1);
        for (int i10 = 0; i10 < dimension; i10++) {
            setEntry(i10, fieldVectorChangingVisitor.visit(i10, getEntry(i10)));
        }
        return fieldVectorChangingVisitor.end();
    }

    public ArrayFieldVector(Field<T> field, T[] tArr) throws NullArgumentException {
        MathUtils.checkNotNull(tArr);
        this.field = field;
        this.data = (T[]) ((FieldElement[]) tArr.clone());
    }

    public T walkInDefaultOrder(FieldVectorChangingVisitor<T> fieldVectorChangingVisitor, int i10, int i11) throws NumberIsTooSmallException, OutOfRangeException {
        checkIndices(i10, i11);
        fieldVectorChangingVisitor.start(getDimension(), i10, i11);
        while (i10 <= i11) {
            setEntry(i10, fieldVectorChangingVisitor.visit(i10, getEntry(i10)));
            i10++;
        }
        return fieldVectorChangingVisitor.end();
    }

    public ArrayFieldVector(T[] tArr, boolean z10) throws NullArgumentException, ZeroException {
        MathUtils.checkNotNull(tArr);
        if (tArr.length != 0) {
            this.field = tArr[0].getField();
            this.data = z10 ? (T[]) ((FieldElement[]) tArr.clone()) : tArr;
            return;
        }
        throw new ZeroException(LocalizedFormats.VECTOR_MUST_HAVE_AT_LEAST_ONE_ELEMENT, new Object[0]);
    }

    public ArrayFieldVector(Field<T> field, T[] tArr, boolean z10) throws NullArgumentException {
        MathUtils.checkNotNull(tArr);
        this.field = field;
        this.data = z10 ? (T[]) ((FieldElement[]) tArr.clone()) : tArr;
    }

    public ArrayFieldVector(T[] tArr, int i10, int i11) throws NullArgumentException, NumberIsTooLargeException {
        MathUtils.checkNotNull(tArr);
        int i12 = i10 + i11;
        if (tArr.length >= i12) {
            Field<T> field = tArr[0].getField();
            this.field = field;
            T[] tArr2 = (T[]) ((FieldElement[]) MathArrays.buildArray(field, i11));
            this.data = tArr2;
            System.arraycopy(tArr, i10, tArr2, 0, i11);
            return;
        }
        throw new NumberIsTooLargeException(Integer.valueOf(i12), Integer.valueOf(tArr.length), true);
    }

    public ArrayFieldVector(Field<T> field, T[] tArr, int i10, int i11) throws NullArgumentException, NumberIsTooLargeException {
        MathUtils.checkNotNull(tArr);
        int i12 = i10 + i11;
        if (tArr.length >= i12) {
            this.field = field;
            T[] tArr2 = (T[]) ((FieldElement[]) MathArrays.buildArray(field, i11));
            this.data = tArr2;
            System.arraycopy(tArr, i10, tArr2, 0, i11);
            return;
        }
        throw new NumberIsTooLargeException(Integer.valueOf(i12), Integer.valueOf(tArr.length), true);
    }

    public ArrayFieldVector(FieldVector<T> fieldVector) throws NullArgumentException {
        MathUtils.checkNotNull(fieldVector);
        Field<T> field = fieldVector.getField();
        this.field = field;
        this.data = (T[]) ((FieldElement[]) MathArrays.buildArray(field, fieldVector.getDimension()));
        int i10 = 0;
        while (true) {
            T[] tArr = this.data;
            if (i10 >= tArr.length) {
                return;
            }
            tArr[i10] = fieldVector.getEntry(i10);
            i10++;
        }
    }

    public ArrayFieldVector(ArrayFieldVector<T> arrayFieldVector) throws NullArgumentException {
        MathUtils.checkNotNull(arrayFieldVector);
        this.field = arrayFieldVector.getField();
        this.data = (T[]) ((FieldElement[]) arrayFieldVector.data.clone());
    }

    public ArrayFieldVector(ArrayFieldVector<T> arrayFieldVector, boolean z10) throws NullArgumentException {
        MathUtils.checkNotNull(arrayFieldVector);
        this.field = arrayFieldVector.getField();
        T[] tArr = arrayFieldVector.data;
        this.data = z10 ? (T[]) ((FieldElement[]) tArr.clone()) : tArr;
    }

    @Deprecated
    public ArrayFieldVector(ArrayFieldVector<T> arrayFieldVector, ArrayFieldVector<T> arrayFieldVector2) throws NullArgumentException {
        this((FieldVector) arrayFieldVector, (FieldVector) arrayFieldVector2);
    }

    public ArrayFieldVector(FieldVector<T> fieldVector, FieldVector<T> fieldVector2) throws NullArgumentException {
        MathUtils.checkNotNull(fieldVector);
        MathUtils.checkNotNull(fieldVector2);
        Field<T> field = fieldVector.getField();
        this.field = field;
        T[] array = fieldVector instanceof ArrayFieldVector ? ((ArrayFieldVector) fieldVector).data : fieldVector.toArray();
        T[] array2 = fieldVector2 instanceof ArrayFieldVector ? ((ArrayFieldVector) fieldVector2).data : fieldVector2.toArray();
        T[] tArr = (T[]) ((FieldElement[]) MathArrays.buildArray(field, array.length + array2.length));
        this.data = tArr;
        System.arraycopy(array, 0, tArr, 0, array.length);
        System.arraycopy(array2, 0, this.data, array.length, array2.length);
    }

    @Deprecated
    public ArrayFieldVector(ArrayFieldVector<T> arrayFieldVector, T[] tArr) throws NullArgumentException {
        this((FieldVector) arrayFieldVector, (FieldElement[]) tArr);
    }

    public ArrayFieldVector(FieldVector<T> fieldVector, T[] tArr) throws NullArgumentException {
        MathUtils.checkNotNull(fieldVector);
        MathUtils.checkNotNull(tArr);
        Field<T> field = fieldVector.getField();
        this.field = field;
        T[] array = fieldVector instanceof ArrayFieldVector ? ((ArrayFieldVector) fieldVector).data : fieldVector.toArray();
        T[] tArr2 = (T[]) ((FieldElement[]) MathArrays.buildArray(field, array.length + tArr.length));
        this.data = tArr2;
        System.arraycopy(array, 0, tArr2, 0, array.length);
        System.arraycopy(tArr, 0, this.data, array.length, tArr.length);
    }

    @Deprecated
    public ArrayFieldVector(T[] tArr, ArrayFieldVector<T> arrayFieldVector) throws NullArgumentException {
        this((FieldElement[]) tArr, (FieldVector) arrayFieldVector);
    }

    public ArrayFieldVector(T[] tArr, FieldVector<T> fieldVector) throws NullArgumentException {
        MathUtils.checkNotNull(tArr);
        MathUtils.checkNotNull(fieldVector);
        Field<T> field = fieldVector.getField();
        this.field = field;
        T[] array = fieldVector instanceof ArrayFieldVector ? ((ArrayFieldVector) fieldVector).data : fieldVector.toArray();
        T[] tArr2 = (T[]) ((FieldElement[]) MathArrays.buildArray(field, tArr.length + array.length));
        this.data = tArr2;
        System.arraycopy(tArr, 0, tArr2, 0, tArr.length);
        System.arraycopy(array, 0, this.data, tArr.length, array.length);
    }

    public ArrayFieldVector(T[] tArr, T[] tArr2) throws NullArgumentException, ZeroException {
        MathUtils.checkNotNull(tArr);
        MathUtils.checkNotNull(tArr2);
        if (tArr.length + tArr2.length != 0) {
            T[] tArr3 = (T[]) ((FieldElement[]) MathArrays.buildArray(tArr[0].getField(), tArr.length + tArr2.length));
            this.data = tArr3;
            System.arraycopy(tArr, 0, tArr3, 0, tArr.length);
            System.arraycopy(tArr2, 0, this.data, tArr.length, tArr2.length);
            this.field = this.data[0].getField();
            return;
        }
        throw new ZeroException(LocalizedFormats.VECTOR_MUST_HAVE_AT_LEAST_ONE_ELEMENT, new Object[0]);
    }

    public ArrayFieldVector(Field<T> field, T[] tArr, T[] tArr2) throws NullArgumentException, ZeroException {
        MathUtils.checkNotNull(tArr);
        MathUtils.checkNotNull(tArr2);
        if (tArr.length + tArr2.length != 0) {
            T[] tArr3 = (T[]) ((FieldElement[]) MathArrays.buildArray(field, tArr.length + tArr2.length));
            this.data = tArr3;
            System.arraycopy(tArr, 0, tArr3, 0, tArr.length);
            System.arraycopy(tArr2, 0, this.data, tArr.length, tArr2.length);
            this.field = field;
            return;
        }
        throw new ZeroException(LocalizedFormats.VECTOR_MUST_HAVE_AT_LEAST_ONE_ELEMENT, new Object[0]);
    }
}
