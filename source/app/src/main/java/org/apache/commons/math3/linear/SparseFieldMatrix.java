package org.apache.commons.math3.linear;

import org.apache.commons.math3.Field;
import org.apache.commons.math3.FieldElement;
import org.apache.commons.math3.util.OpenIntToFieldHashMap;

public class SparseFieldMatrix<T extends FieldElement<T>> extends AbstractFieldMatrix<T> {
    private final int columns;
    private final OpenIntToFieldHashMap<T> entries;
    private final int rows;

    public SparseFieldMatrix(Field<T> field) {
        super(field);
        this.rows = 0;
        this.columns = 0;
        this.entries = new OpenIntToFieldHashMap<>(field);
    }

    private int computeKey(int i10, int i11) {
        return (i10 * this.columns) + i11;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void addToEntry(int i10, int i11, T t10) {
        checkRowIndex(i10);
        checkColumnIndex(i11);
        int computeKey = computeKey(i10, i11);
        FieldElement fieldElement = (FieldElement) this.entries.get(computeKey).add(t10);
        if (getField().getZero().equals(fieldElement)) {
            this.entries.remove(computeKey);
        } else {
            this.entries.put(computeKey, fieldElement);
        }
    }

    @Override
    public FieldMatrix<T> copy() {
        return new SparseFieldMatrix((SparseFieldMatrix) this);
    }

    @Override
    public FieldMatrix<T> createMatrix(int i10, int i11) {
        return new SparseFieldMatrix(getField(), i10, i11);
    }

    @Override
    public int getColumnDimension() {
        return this.columns;
    }

    @Override
    public T getEntry(int i10, int i11) {
        checkRowIndex(i10);
        checkColumnIndex(i11);
        return this.entries.get(computeKey(i10, i11));
    }

    @Override
    public int getRowDimension() {
        return this.rows;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void multiplyEntry(int i10, int i11, T t10) {
        checkRowIndex(i10);
        checkColumnIndex(i11);
        int computeKey = computeKey(i10, i11);
        FieldElement fieldElement = (FieldElement) this.entries.get(computeKey).multiply(t10);
        if (getField().getZero().equals(fieldElement)) {
            this.entries.remove(computeKey);
        } else {
            this.entries.put(computeKey, fieldElement);
        }
    }

    @Override
    public void setEntry(int i10, int i11, T t10) {
        checkRowIndex(i10);
        checkColumnIndex(i11);
        if (getField().getZero().equals(t10)) {
            this.entries.remove(computeKey(i10, i11));
        } else {
            this.entries.put(computeKey(i10, i11), t10);
        }
    }

    public SparseFieldMatrix(Field<T> field, int i10, int i11) {
        super(field, i10, i11);
        this.rows = i10;
        this.columns = i11;
        this.entries = new OpenIntToFieldHashMap<>(field);
    }

    public SparseFieldMatrix(SparseFieldMatrix<T> sparseFieldMatrix) {
        super(sparseFieldMatrix.getField(), sparseFieldMatrix.getRowDimension(), sparseFieldMatrix.getColumnDimension());
        this.rows = sparseFieldMatrix.getRowDimension();
        this.columns = sparseFieldMatrix.getColumnDimension();
        this.entries = new OpenIntToFieldHashMap<>(sparseFieldMatrix.entries);
    }

    public SparseFieldMatrix(FieldMatrix<T> fieldMatrix) {
        super(fieldMatrix.getField(), fieldMatrix.getRowDimension(), fieldMatrix.getColumnDimension());
        this.rows = fieldMatrix.getRowDimension();
        this.columns = fieldMatrix.getColumnDimension();
        this.entries = new OpenIntToFieldHashMap<>(getField());
        for (int i10 = 0; i10 < this.rows; i10++) {
            for (int i11 = 0; i11 < this.columns; i11++) {
                setEntry(i10, i11, fieldMatrix.getEntry(i10, i11));
            }
        }
    }
}
