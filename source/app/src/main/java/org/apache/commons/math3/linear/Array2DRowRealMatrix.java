package org.apache.commons.math3.linear;

import java.io.Serializable;
import java.lang.reflect.Array;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.MathUtils;

public class Array2DRowRealMatrix extends AbstractRealMatrix implements Serializable {
    private static final long serialVersionUID = -1067294169172445528L;
    private double[][] data;

    public Array2DRowRealMatrix() {
    }

    private void copyIn(double[][] dArr) throws DimensionMismatchException, NoDataException, NullArgumentException {
        setSubMatrix(dArr, 0, 0);
    }

    private double[][] copyOut() {
        int rowDimension = getRowDimension();
        double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, rowDimension, getColumnDimension());
        for (int i10 = 0; i10 < rowDimension; i10++) {
            double[] dArr2 = this.data[i10];
            System.arraycopy(dArr2, 0, dArr[i10], 0, dArr2.length);
        }
        return dArr;
    }

    public Array2DRowRealMatrix add(Array2DRowRealMatrix array2DRowRealMatrix) throws MatrixDimensionMismatchException {
        MatrixUtils.checkAdditionCompatible(this, array2DRowRealMatrix);
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, rowDimension, columnDimension);
        for (int i10 = 0; i10 < rowDimension; i10++) {
            double[] dArr2 = this.data[i10];
            double[] dArr3 = array2DRowRealMatrix.data[i10];
            double[] dArr4 = dArr[i10];
            for (int i11 = 0; i11 < columnDimension; i11++) {
                dArr4[i11] = dArr2[i11] + dArr3[i11];
            }
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    @Override
    public void addToEntry(int i10, int i11, double d10) throws OutOfRangeException {
        MatrixUtils.checkMatrixIndex(this, i10, i11);
        double[] dArr = this.data[i10];
        dArr[i11] = dArr[i11] + d10;
    }

    @Override
    public RealMatrix copy() {
        return new Array2DRowRealMatrix(copyOut(), false);
    }

    @Override
    public RealMatrix createMatrix(int i10, int i11) throws NotStrictlyPositiveException {
        return new Array2DRowRealMatrix(i10, i11);
    }

    @Override
    public int getColumnDimension() {
        double[] dArr;
        double[][] dArr2 = this.data;
        if (dArr2 == null || (dArr = dArr2[0]) == null) {
            return 0;
        }
        return dArr.length;
    }

    @Override
    public double[][] getData() {
        return copyOut();
    }

    public double[][] getDataRef() {
        return this.data;
    }

    @Override
    public double getEntry(int i10, int i11) throws OutOfRangeException {
        MatrixUtils.checkMatrixIndex(this, i10, i11);
        return this.data[i10][i11];
    }

    @Override
    public int getRowDimension() {
        double[][] dArr = this.data;
        if (dArr == null) {
            return 0;
        }
        return dArr.length;
    }

    public Array2DRowRealMatrix multiply(Array2DRowRealMatrix array2DRowRealMatrix) throws DimensionMismatchException {
        MatrixUtils.checkMultiplicationCompatible(this, array2DRowRealMatrix);
        int rowDimension = getRowDimension();
        int columnDimension = array2DRowRealMatrix.getColumnDimension();
        int columnDimension2 = getColumnDimension();
        double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, rowDimension, columnDimension);
        double[] dArr2 = new double[columnDimension2];
        double[][] dArr3 = array2DRowRealMatrix.data;
        for (int i10 = 0; i10 < columnDimension; i10++) {
            for (int i11 = 0; i11 < columnDimension2; i11++) {
                dArr2[i11] = dArr3[i11][i10];
            }
            for (int i12 = 0; i12 < rowDimension; i12++) {
                double[] dArr4 = this.data[i12];
                double d10 = 0.0d;
                for (int i13 = 0; i13 < columnDimension2; i13++) {
                    d10 += dArr4[i13] * dArr2[i13];
                }
                dArr[i12][i10] = d10;
            }
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    @Override
    public void multiplyEntry(int i10, int i11, double d10) throws OutOfRangeException {
        MatrixUtils.checkMatrixIndex(this, i10, i11);
        double[] dArr = this.data[i10];
        dArr[i11] = dArr[i11] * d10;
    }

    @Override
    public double[] operate(double[] dArr) throws DimensionMismatchException {
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        if (dArr.length != columnDimension) {
            throw new DimensionMismatchException(dArr.length, columnDimension);
        }
        double[] dArr2 = new double[rowDimension];
        for (int i10 = 0; i10 < rowDimension; i10++) {
            double[] dArr3 = this.data[i10];
            double d10 = 0.0d;
            for (int i11 = 0; i11 < columnDimension; i11++) {
                d10 += dArr3[i11] * dArr[i11];
            }
            dArr2[i10] = d10;
        }
        return dArr2;
    }

    @Override
    public double[] preMultiply(double[] dArr) throws DimensionMismatchException {
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        if (dArr.length != rowDimension) {
            throw new DimensionMismatchException(dArr.length, rowDimension);
        }
        double[] dArr2 = new double[columnDimension];
        for (int i10 = 0; i10 < columnDimension; i10++) {
            double d10 = 0.0d;
            for (int i11 = 0; i11 < rowDimension; i11++) {
                d10 += this.data[i11][i10] * dArr[i11];
            }
            dArr2[i10] = d10;
        }
        return dArr2;
    }

    @Override
    public void setEntry(int i10, int i11, double d10) throws OutOfRangeException {
        MatrixUtils.checkMatrixIndex(this, i10, i11);
        this.data[i10][i11] = d10;
    }

    @Override
    public void setSubMatrix(double[][] dArr, int i10, int i11) throws NoDataException, OutOfRangeException, DimensionMismatchException, NullArgumentException {
        if (this.data != null) {
            super.setSubMatrix(dArr, i10, i11);
            return;
        }
        if (i10 > 0) {
            throw new MathIllegalStateException(LocalizedFormats.FIRST_ROWS_NOT_INITIALIZED_YET, Integer.valueOf(i10));
        }
        if (i11 > 0) {
            throw new MathIllegalStateException(LocalizedFormats.FIRST_COLUMNS_NOT_INITIALIZED_YET, Integer.valueOf(i11));
        }
        MathUtils.checkNotNull(dArr);
        if (dArr.length == 0) {
            throw new NoDataException(LocalizedFormats.AT_LEAST_ONE_ROW);
        }
        int length = dArr[0].length;
        if (length == 0) {
            throw new NoDataException(LocalizedFormats.AT_LEAST_ONE_COLUMN);
        }
        this.data = (double[][]) Array.newInstance(Double.TYPE, dArr.length, length);
        int i12 = 0;
        while (true) {
            double[][] dArr2 = this.data;
            if (i12 >= dArr2.length) {
                return;
            }
            double[] dArr3 = dArr[i12];
            if (dArr3.length != length) {
                throw new DimensionMismatchException(dArr[i12].length, length);
            }
            System.arraycopy(dArr3, 0, dArr2[i12 + i10], i11, length);
            i12++;
        }
    }

    public Array2DRowRealMatrix subtract(Array2DRowRealMatrix array2DRowRealMatrix) throws MatrixDimensionMismatchException {
        MatrixUtils.checkSubtractionCompatible(this, array2DRowRealMatrix);
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, rowDimension, columnDimension);
        for (int i10 = 0; i10 < rowDimension; i10++) {
            double[] dArr2 = this.data[i10];
            double[] dArr3 = array2DRowRealMatrix.data[i10];
            double[] dArr4 = dArr[i10];
            for (int i11 = 0; i11 < columnDimension; i11++) {
                dArr4[i11] = dArr2[i11] - dArr3[i11];
            }
        }
        return new Array2DRowRealMatrix(dArr, false);
    }

    @Override
    public double walkInColumnOrder(RealMatrixChangingVisitor realMatrixChangingVisitor) {
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        realMatrixChangingVisitor.start(rowDimension, columnDimension, 0, rowDimension - 1, 0, columnDimension - 1);
        for (int i10 = 0; i10 < columnDimension; i10++) {
            for (int i11 = 0; i11 < rowDimension; i11++) {
                double[] dArr = this.data[i11];
                dArr[i10] = realMatrixChangingVisitor.visit(i11, i10, dArr[i10]);
            }
        }
        return realMatrixChangingVisitor.end();
    }

    @Override
    public double walkInRowOrder(RealMatrixChangingVisitor realMatrixChangingVisitor) {
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        realMatrixChangingVisitor.start(rowDimension, columnDimension, 0, rowDimension - 1, 0, columnDimension - 1);
        for (int i10 = 0; i10 < rowDimension; i10++) {
            double[] dArr = this.data[i10];
            for (int i11 = 0; i11 < columnDimension; i11++) {
                dArr[i11] = realMatrixChangingVisitor.visit(i10, i11, dArr[i11]);
            }
        }
        return realMatrixChangingVisitor.end();
    }

    public Array2DRowRealMatrix(int i10, int i11) throws NotStrictlyPositiveException {
        super(i10, i11);
        this.data = (double[][]) Array.newInstance(Double.TYPE, i10, i11);
    }

    public Array2DRowRealMatrix(double[][] dArr) throws DimensionMismatchException, NoDataException, NullArgumentException {
        copyIn(dArr);
    }

    public Array2DRowRealMatrix(double[][] dArr, boolean z10) throws DimensionMismatchException, NoDataException, NullArgumentException {
        if (z10) {
            copyIn(dArr);
            return;
        }
        if (dArr != null) {
            int length = dArr.length;
            if (length != 0) {
                int length2 = dArr[0].length;
                if (length2 != 0) {
                    for (int i10 = 1; i10 < length; i10++) {
                        if (dArr[i10].length != length2) {
                            throw new DimensionMismatchException(dArr[i10].length, length2);
                        }
                    }
                    this.data = dArr;
                    return;
                }
                throw new NoDataException(LocalizedFormats.AT_LEAST_ONE_COLUMN);
            }
            throw new NoDataException(LocalizedFormats.AT_LEAST_ONE_ROW);
        }
        throw new NullArgumentException();
    }

    @Override
    public double walkInColumnOrder(RealMatrixPreservingVisitor realMatrixPreservingVisitor) {
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        realMatrixPreservingVisitor.start(rowDimension, columnDimension, 0, rowDimension - 1, 0, columnDimension - 1);
        for (int i10 = 0; i10 < columnDimension; i10++) {
            for (int i11 = 0; i11 < rowDimension; i11++) {
                realMatrixPreservingVisitor.visit(i11, i10, this.data[i11][i10]);
            }
        }
        return realMatrixPreservingVisitor.end();
    }

    @Override
    public double walkInRowOrder(RealMatrixPreservingVisitor realMatrixPreservingVisitor) {
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        realMatrixPreservingVisitor.start(rowDimension, columnDimension, 0, rowDimension - 1, 0, columnDimension - 1);
        for (int i10 = 0; i10 < rowDimension; i10++) {
            double[] dArr = this.data[i10];
            for (int i11 = 0; i11 < columnDimension; i11++) {
                realMatrixPreservingVisitor.visit(i10, i11, dArr[i11]);
            }
        }
        return realMatrixPreservingVisitor.end();
    }

    @Override
    public double walkInColumnOrder(RealMatrixChangingVisitor realMatrixChangingVisitor, int i10, int i11, int i12, int i13) throws OutOfRangeException, NumberIsTooSmallException {
        MatrixUtils.checkSubMatrixIndex(this, i10, i11, i12, i13);
        realMatrixChangingVisitor.start(getRowDimension(), getColumnDimension(), i10, i11, i12, i13);
        while (i12 <= i13) {
            for (int i14 = i10; i14 <= i11; i14++) {
                double[] dArr = this.data[i14];
                dArr[i12] = realMatrixChangingVisitor.visit(i14, i12, dArr[i12]);
            }
            i12++;
        }
        return realMatrixChangingVisitor.end();
    }

    @Override
    public double walkInRowOrder(RealMatrixChangingVisitor realMatrixChangingVisitor, int i10, int i11, int i12, int i13) throws OutOfRangeException, NumberIsTooSmallException {
        MatrixUtils.checkSubMatrixIndex(this, i10, i11, i12, i13);
        realMatrixChangingVisitor.start(getRowDimension(), getColumnDimension(), i10, i11, i12, i13);
        while (i10 <= i11) {
            double[] dArr = this.data[i10];
            for (int i14 = i12; i14 <= i13; i14++) {
                dArr[i14] = realMatrixChangingVisitor.visit(i10, i14, dArr[i14]);
            }
            i10++;
        }
        return realMatrixChangingVisitor.end();
    }

    public Array2DRowRealMatrix(double[] dArr) {
        int length = dArr.length;
        this.data = (double[][]) Array.newInstance(Double.TYPE, length, 1);
        for (int i10 = 0; i10 < length; i10++) {
            this.data[i10][0] = dArr[i10];
        }
    }

    @Override
    public double walkInColumnOrder(RealMatrixPreservingVisitor realMatrixPreservingVisitor, int i10, int i11, int i12, int i13) throws OutOfRangeException, NumberIsTooSmallException {
        MatrixUtils.checkSubMatrixIndex(this, i10, i11, i12, i13);
        realMatrixPreservingVisitor.start(getRowDimension(), getColumnDimension(), i10, i11, i12, i13);
        while (i12 <= i13) {
            for (int i14 = i10; i14 <= i11; i14++) {
                realMatrixPreservingVisitor.visit(i14, i12, this.data[i14][i12]);
            }
            i12++;
        }
        return realMatrixPreservingVisitor.end();
    }

    @Override
    public double walkInRowOrder(RealMatrixPreservingVisitor realMatrixPreservingVisitor, int i10, int i11, int i12, int i13) throws OutOfRangeException, NumberIsTooSmallException {
        MatrixUtils.checkSubMatrixIndex(this, i10, i11, i12, i13);
        realMatrixPreservingVisitor.start(getRowDimension(), getColumnDimension(), i10, i11, i12, i13);
        while (i10 <= i11) {
            double[] dArr = this.data[i10];
            for (int i14 = i12; i14 <= i13; i14++) {
                realMatrixPreservingVisitor.visit(i10, i14, dArr[i14]);
            }
            i10++;
        }
        return realMatrixPreservingVisitor.end();
    }
}
