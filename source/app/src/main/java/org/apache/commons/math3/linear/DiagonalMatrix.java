package org.apache.commons.math3.linear;

import java.io.Serializable;
import java.lang.reflect.Array;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathUtils;
import org.apache.commons.math3.util.Precision;

public class DiagonalMatrix extends AbstractRealMatrix implements Serializable {
    private static final long serialVersionUID = 20121229;
    private final double[] data;

    public DiagonalMatrix(int i10) throws NotStrictlyPositiveException {
        super(i10, i10);
        this.data = new double[i10];
    }

    private void ensureZero(double d10) throws NumberIsTooLargeException {
        if (!Precision.equals(0.0d, d10, 1)) {
            throw new NumberIsTooLargeException(Double.valueOf(FastMath.abs(d10)), 0, true);
        }
    }

    public DiagonalMatrix add(DiagonalMatrix diagonalMatrix) throws MatrixDimensionMismatchException {
        MatrixUtils.checkAdditionCompatible(this, diagonalMatrix);
        int rowDimension = getRowDimension();
        double[] dArr = new double[rowDimension];
        for (int i10 = 0; i10 < rowDimension; i10++) {
            dArr[i10] = this.data[i10] + diagonalMatrix.data[i10];
        }
        return new DiagonalMatrix(dArr, false);
    }

    @Override
    public void addToEntry(int i10, int i11, double d10) throws OutOfRangeException, NumberIsTooLargeException {
        if (i10 != i11) {
            ensureZero(d10);
            return;
        }
        MatrixUtils.checkRowIndex(this, i10);
        double[] dArr = this.data;
        dArr[i10] = dArr[i10] + d10;
    }

    @Override
    public RealMatrix copy() {
        return new DiagonalMatrix(this.data);
    }

    @Override
    public RealMatrix createMatrix(int i10, int i11) throws NotStrictlyPositiveException, DimensionMismatchException {
        if (i10 == i11) {
            return new DiagonalMatrix(i10);
        }
        throw new DimensionMismatchException(i10, i11);
    }

    @Override
    public int getColumnDimension() {
        return this.data.length;
    }

    @Override
    public double[][] getData() {
        int rowDimension = getRowDimension();
        double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, rowDimension, rowDimension);
        for (int i10 = 0; i10 < rowDimension; i10++) {
            dArr[i10][i10] = this.data[i10];
        }
        return dArr;
    }

    public double[] getDataRef() {
        return this.data;
    }

    @Override
    public double getEntry(int i10, int i11) throws OutOfRangeException {
        MatrixUtils.checkMatrixIndex(this, i10, i11);
        if (i10 == i11) {
            return this.data[i10];
        }
        return 0.0d;
    }

    @Override
    public int getRowDimension() {
        return this.data.length;
    }

    public DiagonalMatrix inverse() throws SingularMatrixException {
        return inverse(0.0d);
    }

    public boolean isSingular(double d10) {
        int i10 = 0;
        while (true) {
            double[] dArr = this.data;
            if (i10 >= dArr.length) {
                return false;
            }
            if (Precision.equals(dArr[i10], 0.0d, d10)) {
                return true;
            }
            i10++;
        }
    }

    public DiagonalMatrix multiply(DiagonalMatrix diagonalMatrix) throws DimensionMismatchException {
        MatrixUtils.checkMultiplicationCompatible(this, diagonalMatrix);
        int rowDimension = getRowDimension();
        double[] dArr = new double[rowDimension];
        for (int i10 = 0; i10 < rowDimension; i10++) {
            dArr[i10] = this.data[i10] * diagonalMatrix.data[i10];
        }
        return new DiagonalMatrix(dArr, false);
    }

    @Override
    public void multiplyEntry(int i10, int i11, double d10) throws OutOfRangeException {
        if (i10 == i11) {
            MatrixUtils.checkRowIndex(this, i10);
            double[] dArr = this.data;
            dArr[i10] = dArr[i10] * d10;
        }
    }

    @Override
    public double[] operate(double[] dArr) throws DimensionMismatchException {
        return multiply(new DiagonalMatrix(dArr, false)).getDataRef();
    }

    @Override
    public double[] preMultiply(double[] dArr) throws DimensionMismatchException {
        return operate(dArr);
    }

    @Override
    public void setEntry(int i10, int i11, double d10) throws OutOfRangeException, NumberIsTooLargeException {
        if (i10 != i11) {
            ensureZero(d10);
        } else {
            MatrixUtils.checkRowIndex(this, i10);
            this.data[i10] = d10;
        }
    }

    public DiagonalMatrix subtract(DiagonalMatrix diagonalMatrix) throws MatrixDimensionMismatchException {
        MatrixUtils.checkSubtractionCompatible(this, diagonalMatrix);
        int rowDimension = getRowDimension();
        double[] dArr = new double[rowDimension];
        for (int i10 = 0; i10 < rowDimension; i10++) {
            dArr[i10] = this.data[i10] - diagonalMatrix.data[i10];
        }
        return new DiagonalMatrix(dArr, false);
    }

    public DiagonalMatrix inverse(double d10) throws SingularMatrixException {
        if (!isSingular(d10)) {
            double[] dArr = new double[this.data.length];
            int i10 = 0;
            while (true) {
                double[] dArr2 = this.data;
                if (i10 < dArr2.length) {
                    dArr[i10] = 1.0d / dArr2[i10];
                    i10++;
                } else {
                    return new DiagonalMatrix(dArr, false);
                }
            }
        } else {
            throw new SingularMatrixException();
        }
    }

    @Override
    public RealVector preMultiply(RealVector realVector) throws DimensionMismatchException {
        double[] array;
        if (realVector instanceof ArrayRealVector) {
            array = ((ArrayRealVector) realVector).getDataRef();
        } else {
            array = realVector.toArray();
        }
        return MatrixUtils.createRealVector(preMultiply(array));
    }

    public DiagonalMatrix(double[] dArr) {
        this(dArr, true);
    }

    public DiagonalMatrix(double[] dArr, boolean z10) throws NullArgumentException {
        MathUtils.checkNotNull(dArr);
        this.data = z10 ? (double[]) dArr.clone() : dArr;
    }

    @Override
    public RealMatrix multiply(RealMatrix realMatrix) throws DimensionMismatchException {
        if (realMatrix instanceof DiagonalMatrix) {
            return multiply((DiagonalMatrix) realMatrix);
        }
        MatrixUtils.checkMultiplicationCompatible(this, realMatrix);
        int rowDimension = realMatrix.getRowDimension();
        int columnDimension = realMatrix.getColumnDimension();
        double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, rowDimension, columnDimension);
        for (int i10 = 0; i10 < rowDimension; i10++) {
            for (int i11 = 0; i11 < columnDimension; i11++) {
                dArr[i10][i11] = this.data[i10] * realMatrix.getEntry(i10, i11);
            }
        }
        return new Array2DRowRealMatrix(dArr, false);
    }
}
