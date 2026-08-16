package org.apache.commons.math3.linear;

import java.io.Serializable;
import org.apache.commons.math3.Field;
import org.apache.commons.math3.FieldElement;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.MathUtils;
import org.apache.commons.math3.util.OpenIntToFieldHashMap;

public class SparseFieldVector<T extends FieldElement<T>> implements FieldVector<T>, Serializable {
    private static final long serialVersionUID = 7841233292190413362L;
    private final OpenIntToFieldHashMap<T> entries;
    private final Field<T> field;
    private final int virtualSize;

    public SparseFieldVector(Field<T> field) {
        this(field, 0);
    }

    private void checkIndex(int i10) throws OutOfRangeException {
        if (i10 < 0 || i10 >= getDimension()) {
            throw new OutOfRangeException(Integer.valueOf(i10), 0, Integer.valueOf(getDimension() - 1));
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

    private OpenIntToFieldHashMap<T> getEntries() {
        return this.entries;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public FieldVector<T> add(SparseFieldVector<T> sparseFieldVector) throws DimensionMismatchException {
        checkVectorDimensions(sparseFieldVector.getDimension());
        SparseFieldVector sparseFieldVector2 = (SparseFieldVector) copy();
        OpenIntToFieldHashMap<T>.Iterator it = sparseFieldVector.getEntries().iterator();
        while (it.hasNext()) {
            it.advance();
            int key = it.key();
            T value = it.value();
            if (this.entries.containsKey(key)) {
                sparseFieldVector2.setEntry(key, (FieldElement) this.entries.get(key).add(value));
            } else {
                sparseFieldVector2.setEntry(key, value);
            }
        }
        return sparseFieldVector2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public FieldVector<T> append(SparseFieldVector<T> sparseFieldVector) {
        SparseFieldVector sparseFieldVector2 = new SparseFieldVector(this, sparseFieldVector.getDimension());
        OpenIntToFieldHashMap<T>.Iterator it = sparseFieldVector.entries.iterator();
        while (it.hasNext()) {
            it.advance();
            sparseFieldVector2.setEntry(it.key() + this.virtualSize, it.value());
        }
        return sparseFieldVector2;
    }

    public void checkVectorDimensions(int i10) throws DimensionMismatchException {
        if (getDimension() != i10) {
            throw new DimensionMismatchException(getDimension(), i10);
        }
    }

    @Override
    public FieldVector<T> copy() {
        return new SparseFieldVector(this);
    }

    @Override
    public T dotProduct(FieldVector<T> fieldVector) throws DimensionMismatchException {
        checkVectorDimensions(fieldVector.getDimension());
        T zero = this.field.getZero();
        OpenIntToFieldHashMap<T>.Iterator it = this.entries.iterator();
        while (it.hasNext()) {
            it.advance();
            zero = (T) zero.add(fieldVector.getEntry(it.key()).multiply(it.value()));
        }
        return zero;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [org.apache.commons.math3.FieldElement] */
    @Override
    public FieldVector<T> ebeDivide(FieldVector<T> fieldVector) throws DimensionMismatchException, MathArithmeticException {
        checkVectorDimensions(fieldVector.getDimension());
        SparseFieldVector sparseFieldVector = new SparseFieldVector(this);
        OpenIntToFieldHashMap<T>.Iterator it = sparseFieldVector.entries.iterator();
        while (it.hasNext()) {
            it.advance();
            sparseFieldVector.setEntry(it.key(), (FieldElement) it.value().divide(fieldVector.getEntry(it.key())));
        }
        return sparseFieldVector;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [org.apache.commons.math3.FieldElement] */
    @Override
    public FieldVector<T> ebeMultiply(FieldVector<T> fieldVector) throws DimensionMismatchException {
        checkVectorDimensions(fieldVector.getDimension());
        SparseFieldVector sparseFieldVector = new SparseFieldVector(this);
        OpenIntToFieldHashMap<T>.Iterator it = sparseFieldVector.entries.iterator();
        while (it.hasNext()) {
            it.advance();
            sparseFieldVector.setEntry(it.key(), (FieldElement) it.value().multiply(fieldVector.getEntry(it.key())));
        }
        return sparseFieldVector;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SparseFieldVector)) {
            return false;
        }
        SparseFieldVector sparseFieldVector = (SparseFieldVector) obj;
        Field<T> field = this.field;
        if (field == null) {
            if (sparseFieldVector.field != null) {
                return false;
            }
        } else if (!field.equals(sparseFieldVector.field)) {
            return false;
        }
        if (this.virtualSize != sparseFieldVector.virtualSize) {
            return false;
        }
        OpenIntToFieldHashMap<T>.Iterator it = this.entries.iterator();
        while (it.hasNext()) {
            it.advance();
            if (!sparseFieldVector.getEntry(it.key()).equals(it.value())) {
                return false;
            }
        }
        OpenIntToFieldHashMap<T>.Iterator it2 = sparseFieldVector.getEntries().iterator();
        while (it2.hasNext()) {
            it2.advance();
            if (!it2.value().equals(getEntry(it2.key()))) {
                return false;
            }
        }
        return true;
    }

    @Override
    @Deprecated
    public T[] getData() {
        return toArray();
    }

    @Override
    public int getDimension() {
        return this.virtualSize;
    }

    @Override
    public T getEntry(int i10) throws OutOfRangeException {
        checkIndex(i10);
        return this.entries.get(i10);
    }

    @Override
    public Field<T> getField() {
        return this.field;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public FieldVector<T> getSubVector(int i10, int i11) throws OutOfRangeException, NotPositiveException {
        if (i11 < 0) {
            throw new NotPositiveException(LocalizedFormats.NUMBER_OF_ELEMENTS_SHOULD_BE_POSITIVE, Integer.valueOf(i11));
        }
        checkIndex(i10);
        int i12 = i10 + i11;
        checkIndex(i12 - 1);
        SparseFieldVector sparseFieldVector = new SparseFieldVector(this.field, i11);
        OpenIntToFieldHashMap<T>.Iterator it = this.entries.iterator();
        while (it.hasNext()) {
            it.advance();
            int key = it.key();
            if (key >= i10 && key < i12) {
                sparseFieldVector.setEntry(key - i10, it.value());
            }
        }
        return sparseFieldVector;
    }

    public int hashCode() {
        Field<T> field = this.field;
        int hashCode = (((field == null ? 0 : field.hashCode()) + 31) * 31) + this.virtualSize;
        OpenIntToFieldHashMap<T>.Iterator it = this.entries.iterator();
        while (it.hasNext()) {
            it.advance();
            hashCode = (hashCode * 31) + it.value().hashCode();
        }
        return hashCode;
    }

    @Override
    public FieldVector<T> mapAdd(T t10) throws NullArgumentException {
        return copy().mapAddToSelf(t10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public FieldVector<T> mapAddToSelf(T t10) throws NullArgumentException {
        for (int i10 = 0; i10 < this.virtualSize; i10++) {
            setEntry(i10, (FieldElement) getEntry(i10).add(t10));
        }
        return this;
    }

    @Override
    public FieldVector<T> mapDivide(T t10) throws NullArgumentException, MathArithmeticException {
        return copy().mapDivideToSelf(t10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [org.apache.commons.math3.FieldElement] */
    @Override
    public FieldVector<T> mapDivideToSelf(T t10) throws NullArgumentException, MathArithmeticException {
        OpenIntToFieldHashMap<T>.Iterator it = this.entries.iterator();
        while (it.hasNext()) {
            it.advance();
            this.entries.put(it.key(), (FieldElement) it.value().divide(t10));
        }
        return this;
    }

    @Override
    public FieldVector<T> mapInv() throws MathArithmeticException {
        return copy().mapInvToSelf();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public FieldVector<T> mapInvToSelf() throws MathArithmeticException {
        for (int i10 = 0; i10 < this.virtualSize; i10++) {
            setEntry(i10, (FieldElement) this.field.getOne().divide(getEntry(i10)));
        }
        return this;
    }

    @Override
    public FieldVector<T> mapMultiply(T t10) throws NullArgumentException {
        return copy().mapMultiplyToSelf(t10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [org.apache.commons.math3.FieldElement] */
    @Override
    public FieldVector<T> mapMultiplyToSelf(T t10) throws NullArgumentException {
        OpenIntToFieldHashMap<T>.Iterator it = this.entries.iterator();
        while (it.hasNext()) {
            it.advance();
            this.entries.put(it.key(), (FieldElement) it.value().multiply(t10));
        }
        return this;
    }

    @Override
    public FieldVector<T> mapSubtract(T t10) throws NullArgumentException {
        return copy().mapSubtractToSelf(t10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public FieldVector<T> mapSubtractToSelf(T t10) throws NullArgumentException {
        return mapAddToSelf((FieldElement) this.field.getZero().subtract(t10));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [org.apache.commons.math3.FieldElement] */
    public FieldMatrix<T> outerProduct(SparseFieldVector<T> sparseFieldVector) {
        SparseFieldMatrix sparseFieldMatrix = new SparseFieldMatrix(this.field, this.virtualSize, sparseFieldVector.getDimension());
        OpenIntToFieldHashMap<T>.Iterator it = this.entries.iterator();
        while (it.hasNext()) {
            it.advance();
            OpenIntToFieldHashMap<T>.Iterator it2 = sparseFieldVector.entries.iterator();
            while (it2.hasNext()) {
                it2.advance();
                sparseFieldMatrix.setEntry(it.key(), it2.key(), (FieldElement) it.value().multiply(it2.value()));
            }
        }
        return sparseFieldMatrix;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public FieldVector<T> projection(FieldVector<T> fieldVector) throws DimensionMismatchException, MathArithmeticException {
        checkVectorDimensions(fieldVector.getDimension());
        return fieldVector.mapMultiply((FieldElement) dotProduct(fieldVector).divide(fieldVector.dotProduct(fieldVector)));
    }

    @Override
    public void set(T t10) {
        MathUtils.checkNotNull(t10);
        for (int i10 = 0; i10 < this.virtualSize; i10++) {
            setEntry(i10, t10);
        }
    }

    @Override
    public void setEntry(int i10, T t10) throws NullArgumentException, OutOfRangeException {
        MathUtils.checkNotNull(t10);
        checkIndex(i10);
        this.entries.put(i10, t10);
    }

    @Override
    public void setSubVector(int i10, FieldVector<T> fieldVector) throws OutOfRangeException {
        checkIndex(i10);
        checkIndex((fieldVector.getDimension() + i10) - 1);
        int dimension = fieldVector.getDimension();
        for (int i11 = 0; i11 < dimension; i11++) {
            setEntry(i11 + i10, fieldVector.getEntry(i11));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SparseFieldVector<T> subtract(SparseFieldVector<T> sparseFieldVector) throws DimensionMismatchException {
        checkVectorDimensions(sparseFieldVector.getDimension());
        SparseFieldVector<T> sparseFieldVector2 = (SparseFieldVector<T>) ((SparseFieldVector) copy());
        OpenIntToFieldHashMap<T>.Iterator it = sparseFieldVector.getEntries().iterator();
        while (it.hasNext()) {
            it.advance();
            int key = it.key();
            if (this.entries.containsKey(key)) {
                sparseFieldVector2.setEntry(key, (FieldElement) this.entries.get(key).subtract(it.value()));
            } else {
                sparseFieldVector2.setEntry(key, (FieldElement) this.field.getZero().subtract(it.value()));
            }
        }
        return sparseFieldVector2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public T[] toArray() {
        T[] tArr = (T[]) ((FieldElement[]) MathArrays.buildArray(this.field, this.virtualSize));
        OpenIntToFieldHashMap<T>.Iterator it = this.entries.iterator();
        while (it.hasNext()) {
            it.advance();
            tArr[it.key()] = it.value();
        }
        return tArr;
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

    public SparseFieldVector(Field<T> field, int i10) {
        this.field = field;
        this.virtualSize = i10;
        this.entries = new OpenIntToFieldHashMap<>(field);
    }

    public T walkInOptimizedOrder(FieldVectorPreservingVisitor<T> fieldVectorPreservingVisitor, int i10, int i11) throws NumberIsTooSmallException, OutOfRangeException {
        return walkInDefaultOrder(fieldVectorPreservingVisitor, i10, i11);
    }

    public T walkInOptimizedOrder(FieldVectorChangingVisitor<T> fieldVectorChangingVisitor) {
        return walkInDefaultOrder(fieldVectorChangingVisitor);
    }

    public T walkInOptimizedOrder(FieldVectorChangingVisitor<T> fieldVectorChangingVisitor, int i10, int i11) throws NumberIsTooSmallException, OutOfRangeException {
        return walkInDefaultOrder(fieldVectorChangingVisitor, i10, i11);
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

    public SparseFieldVector(SparseFieldVector<T> sparseFieldVector, int i10) {
        this.field = sparseFieldVector.field;
        this.virtualSize = sparseFieldVector.getDimension() + i10;
        this.entries = new OpenIntToFieldHashMap<>(sparseFieldVector.entries);
    }

    @Override
    public FieldVector<T> append(FieldVector<T> fieldVector) {
        if (fieldVector instanceof SparseFieldVector) {
            return append((SparseFieldVector) fieldVector);
        }
        int dimension = fieldVector.getDimension();
        SparseFieldVector sparseFieldVector = new SparseFieldVector(this, dimension);
        for (int i10 = 0; i10 < dimension; i10++) {
            sparseFieldVector.setEntry(this.virtualSize + i10, fieldVector.getEntry(i10));
        }
        return sparseFieldVector;
    }

    public T walkInDefaultOrder(FieldVectorChangingVisitor<T> fieldVectorChangingVisitor) {
        int dimension = getDimension();
        fieldVectorChangingVisitor.start(dimension, 0, dimension - 1);
        for (int i10 = 0; i10 < dimension; i10++) {
            setEntry(i10, fieldVectorChangingVisitor.visit(i10, getEntry(i10)));
        }
        return fieldVectorChangingVisitor.end();
    }

    public SparseFieldVector(Field<T> field, int i10, int i11) {
        this.field = field;
        this.virtualSize = i10;
        this.entries = new OpenIntToFieldHashMap<>(field, i11);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [org.apache.commons.math3.FieldElement] */
    @Override
    public FieldMatrix<T> outerProduct(FieldVector<T> fieldVector) {
        if (fieldVector instanceof SparseFieldVector) {
            return outerProduct((SparseFieldVector) fieldVector);
        }
        int dimension = fieldVector.getDimension();
        SparseFieldMatrix sparseFieldMatrix = new SparseFieldMatrix(this.field, this.virtualSize, dimension);
        OpenIntToFieldHashMap<T>.Iterator it = this.entries.iterator();
        while (it.hasNext()) {
            it.advance();
            int key = it.key();
            ?? value = it.value();
            for (int i10 = 0; i10 < dimension; i10++) {
                sparseFieldMatrix.setEntry(key, i10, (FieldElement) value.multiply(fieldVector.getEntry(i10)));
            }
        }
        return sparseFieldMatrix;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public FieldVector<T> subtract(FieldVector<T> fieldVector) throws DimensionMismatchException {
        if (fieldVector instanceof SparseFieldVector) {
            return subtract((SparseFieldVector) fieldVector);
        }
        int dimension = fieldVector.getDimension();
        checkVectorDimensions(dimension);
        SparseFieldVector sparseFieldVector = new SparseFieldVector(this);
        for (int i10 = 0; i10 < dimension; i10++) {
            if (this.entries.containsKey(i10)) {
                sparseFieldVector.setEntry(i10, (FieldElement) this.entries.get(i10).subtract(fieldVector.getEntry(i10)));
            } else {
                sparseFieldVector.setEntry(i10, (FieldElement) this.field.getZero().subtract(fieldVector.getEntry(i10)));
            }
        }
        return sparseFieldVector;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public FieldVector<T> add(FieldVector<T> fieldVector) throws DimensionMismatchException {
        if (fieldVector instanceof SparseFieldVector) {
            return add((SparseFieldVector) fieldVector);
        }
        int dimension = fieldVector.getDimension();
        checkVectorDimensions(dimension);
        SparseFieldVector sparseFieldVector = new SparseFieldVector(this.field, getDimension());
        for (int i10 = 0; i10 < dimension; i10++) {
            sparseFieldVector.setEntry(i10, (FieldElement) fieldVector.getEntry(i10).add(getEntry(i10)));
        }
        return sparseFieldVector;
    }

    @Override
    public FieldVector<T> append(T t10) throws NullArgumentException {
        MathUtils.checkNotNull(t10);
        SparseFieldVector sparseFieldVector = new SparseFieldVector(this, 1);
        sparseFieldVector.setEntry(this.virtualSize, t10);
        return sparseFieldVector;
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

    public SparseFieldVector(Field<T> field, T[] tArr) throws NullArgumentException {
        MathUtils.checkNotNull(tArr);
        this.field = field;
        this.virtualSize = tArr.length;
        this.entries = new OpenIntToFieldHashMap<>(field);
        for (int i10 = 0; i10 < tArr.length; i10++) {
            this.entries.put(i10, tArr[i10]);
        }
    }

    public SparseFieldVector(SparseFieldVector<T> sparseFieldVector) {
        this.field = sparseFieldVector.field;
        this.virtualSize = sparseFieldVector.getDimension();
        this.entries = new OpenIntToFieldHashMap<>(sparseFieldVector.getEntries());
    }
}
