package org.apache.commons.math3.linear;

import java.io.Serializable;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.util.OpenIntToDoubleHashMap;

public class OpenMapRealMatrix extends AbstractRealMatrix implements SparseRealMatrix, Serializable {
    private static final long serialVersionUID = -5962461716457143437L;
    private final int columns;
    private final OpenIntToDoubleHashMap entries;
    private final int rows;

    public OpenMapRealMatrix(int i10, int i11) throws NotStrictlyPositiveException, NumberIsTooLargeException {
        super(i10, i11);
        long j10 = i10 * i11;
        if (j10 < 2147483647L) {
            this.rows = i10;
            this.columns = i11;
            this.entries = new OpenIntToDoubleHashMap(0.0d);
            return;
        }
        throw new NumberIsTooLargeException(Long.valueOf(j10), Integer.MAX_VALUE, false);
    }

    private int computeKey(int i10, int i11) {
        return (i10 * this.columns) + i11;
    }

    public OpenMapRealMatrix add(OpenMapRealMatrix openMapRealMatrix) throws MatrixDimensionMismatchException {
        MatrixUtils.checkAdditionCompatible(this, openMapRealMatrix);
        OpenMapRealMatrix openMapRealMatrix2 = new OpenMapRealMatrix(this);
        OpenIntToDoubleHashMap.Iterator it = openMapRealMatrix.entries.iterator();
        while (it.hasNext()) {
            it.advance();
            int key = it.key() / this.columns;
            int key2 = it.key() - (this.columns * key);
            openMapRealMatrix2.setEntry(key, key2, getEntry(key, key2) + it.value());
        }
        return openMapRealMatrix2;
    }

    @Override
    public void addToEntry(int i10, int i11, double d10) throws OutOfRangeException {
        MatrixUtils.checkRowIndex(this, i10);
        MatrixUtils.checkColumnIndex(this, i11);
        int computeKey = computeKey(i10, i11);
        double d11 = this.entries.get(computeKey) + d10;
        if (d11 == 0.0d) {
            this.entries.remove(computeKey);
        } else {
            this.entries.put(computeKey, d11);
        }
    }

    @Override
    public int getColumnDimension() {
        return this.columns;
    }

    @Override
    public double getEntry(int i10, int i11) throws OutOfRangeException {
        MatrixUtils.checkRowIndex(this, i10);
        MatrixUtils.checkColumnIndex(this, i11);
        return this.entries.get(computeKey(i10, i11));
    }

    @Override
    public int getRowDimension() {
        return this.rows;
    }

    @Override
    public RealMatrix multiply(RealMatrix realMatrix) throws DimensionMismatchException, NumberIsTooLargeException {
        try {
            return multiply((OpenMapRealMatrix) realMatrix);
        } catch (ClassCastException unused) {
            MatrixUtils.checkMultiplicationCompatible(this, realMatrix);
            int columnDimension = realMatrix.getColumnDimension();
            BlockRealMatrix blockRealMatrix = new BlockRealMatrix(this.rows, columnDimension);
            OpenIntToDoubleHashMap.Iterator it = this.entries.iterator();
            while (it.hasNext()) {
                it.advance();
                double value = it.value();
                int key = it.key();
                int i10 = this.columns;
                int i11 = key / i10;
                int i12 = key % i10;
                for (int i13 = 0; i13 < columnDimension; i13++) {
                    blockRealMatrix.addToEntry(i11, i13, realMatrix.getEntry(i12, i13) * value);
                }
            }
            return blockRealMatrix;
        }
    }

    @Override
    public void multiplyEntry(int i10, int i11, double d10) throws OutOfRangeException {
        MatrixUtils.checkRowIndex(this, i10);
        MatrixUtils.checkColumnIndex(this, i11);
        int computeKey = computeKey(i10, i11);
        double d11 = this.entries.get(computeKey) * d10;
        if (d11 == 0.0d) {
            this.entries.remove(computeKey);
        } else {
            this.entries.put(computeKey, d11);
        }
    }

    @Override
    public void setEntry(int i10, int i11, double d10) throws OutOfRangeException {
        MatrixUtils.checkRowIndex(this, i10);
        MatrixUtils.checkColumnIndex(this, i11);
        if (d10 == 0.0d) {
            this.entries.remove(computeKey(i10, i11));
        } else {
            this.entries.put(computeKey(i10, i11), d10);
        }
    }

    @Override
    public OpenMapRealMatrix copy() {
        return new OpenMapRealMatrix(this);
    }

    @Override
    public OpenMapRealMatrix createMatrix(int i10, int i11) throws NotStrictlyPositiveException, NumberIsTooLargeException {
        return new OpenMapRealMatrix(i10, i11);
    }

    @Override
    public OpenMapRealMatrix subtract(RealMatrix realMatrix) throws MatrixDimensionMismatchException {
        try {
            return subtract((OpenMapRealMatrix) realMatrix);
        } catch (ClassCastException unused) {
            return (OpenMapRealMatrix) super.subtract(realMatrix);
        }
    }

    public OpenMapRealMatrix subtract(OpenMapRealMatrix openMapRealMatrix) throws MatrixDimensionMismatchException {
        MatrixUtils.checkAdditionCompatible(this, openMapRealMatrix);
        OpenMapRealMatrix openMapRealMatrix2 = new OpenMapRealMatrix(this);
        OpenIntToDoubleHashMap.Iterator it = openMapRealMatrix.entries.iterator();
        while (it.hasNext()) {
            it.advance();
            int key = it.key() / this.columns;
            int key2 = it.key() - (this.columns * key);
            openMapRealMatrix2.setEntry(key, key2, getEntry(key, key2) - it.value());
        }
        return openMapRealMatrix2;
    }

    public OpenMapRealMatrix(OpenMapRealMatrix openMapRealMatrix) {
        this.rows = openMapRealMatrix.rows;
        this.columns = openMapRealMatrix.columns;
        this.entries = new OpenIntToDoubleHashMap(openMapRealMatrix.entries);
    }

    public OpenMapRealMatrix multiply(OpenMapRealMatrix openMapRealMatrix) throws DimensionMismatchException, NumberIsTooLargeException {
        MatrixUtils.checkMultiplicationCompatible(this, openMapRealMatrix);
        int columnDimension = openMapRealMatrix.getColumnDimension();
        OpenMapRealMatrix openMapRealMatrix2 = new OpenMapRealMatrix(this.rows, columnDimension);
        OpenIntToDoubleHashMap.Iterator it = this.entries.iterator();
        while (it.hasNext()) {
            it.advance();
            double value = it.value();
            int key = it.key();
            int i10 = this.columns;
            int i11 = key / i10;
            int i12 = key % i10;
            for (int i13 = 0; i13 < columnDimension; i13++) {
                int computeKey = openMapRealMatrix.computeKey(i12, i13);
                if (openMapRealMatrix.entries.containsKey(computeKey)) {
                    int computeKey2 = openMapRealMatrix2.computeKey(i11, i13);
                    double d10 = openMapRealMatrix2.entries.get(computeKey2) + (openMapRealMatrix.entries.get(computeKey) * value);
                    if (d10 == 0.0d) {
                        openMapRealMatrix2.entries.remove(computeKey2);
                    } else {
                        openMapRealMatrix2.entries.put(computeKey2, d10);
                    }
                }
            }
        }
        return openMapRealMatrix2;
    }
}
