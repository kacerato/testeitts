package org.apache.commons.math3.linear;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathUtils;

public abstract class AbstractRealMatrix extends RealLinearOperator implements RealMatrix {
    private static final RealMatrixFormat DEFAULT_FORMAT;

    static {
        RealMatrixFormat realMatrixFormat = RealMatrixFormat.getInstance(Locale.US);
        DEFAULT_FORMAT = realMatrixFormat;
        realMatrixFormat.getFormat().setMinimumFractionDigits(1);
    }

    public AbstractRealMatrix() {
    }

    @Override
    public RealMatrix add(RealMatrix realMatrix) throws MatrixDimensionMismatchException {
        MatrixUtils.checkAdditionCompatible(this, realMatrix);
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        RealMatrix createMatrix = createMatrix(rowDimension, columnDimension);
        for (int i10 = 0; i10 < rowDimension; i10++) {
            for (int i11 = 0; i11 < columnDimension; i11++) {
                createMatrix.setEntry(i10, i11, getEntry(i10, i11) + realMatrix.getEntry(i10, i11));
            }
        }
        return createMatrix;
    }

    @Override
    public void addToEntry(int i10, int i11, double d10) throws OutOfRangeException {
        MatrixUtils.checkMatrixIndex(this, i10, i11);
        setEntry(i10, i11, getEntry(i10, i11) + d10);
    }

    @Override
    public abstract RealMatrix copy();

    @Override
    public void copySubMatrix(int i10, int i11, int i12, int i13, final double[][] dArr) throws OutOfRangeException, NumberIsTooSmallException, MatrixDimensionMismatchException {
        MatrixUtils.checkSubMatrixIndex(this, i10, i11, i12, i13);
        int i14 = (i11 + 1) - i10;
        int i15 = (i13 + 1) - i12;
        if (dArr.length >= i14 && dArr[0].length >= i15) {
            for (int i16 = 1; i16 < i14; i16++) {
                if (dArr[i16].length < i15) {
                    throw new MatrixDimensionMismatchException(dArr.length, dArr[i16].length, i14, i15);
                }
            }
            walkInOptimizedOrder(new DefaultRealMatrixPreservingVisitor() {
                private int startColumn;
                private int startRow;

                @Override
                public void start(int i17, int i18, int i19, int i20, int i21, int i22) {
                    this.startRow = i19;
                    this.startColumn = i21;
                }

                @Override
                public void visit(int i17, int i18, double d10) {
                    dArr[i17 - this.startRow][i18 - this.startColumn] = d10;
                }
            }, i10, i11, i12, i13);
            return;
        }
        throw new MatrixDimensionMismatchException(dArr.length, dArr[0].length, i14, i15);
    }

    @Override
    public abstract RealMatrix createMatrix(int i10, int i11) throws NotStrictlyPositiveException;

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RealMatrix)) {
            return false;
        }
        RealMatrix realMatrix = (RealMatrix) obj;
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        if (realMatrix.getColumnDimension() != columnDimension || realMatrix.getRowDimension() != rowDimension) {
            return false;
        }
        for (int i10 = 0; i10 < rowDimension; i10++) {
            for (int i11 = 0; i11 < columnDimension; i11++) {
                if (getEntry(i10, i11) != realMatrix.getEntry(i10, i11)) {
                    return false;
                }
            }
        }
        return true;
    }

    @Override
    public double[] getColumn(int i10) throws OutOfRangeException {
        MatrixUtils.checkColumnIndex(this, i10);
        int rowDimension = getRowDimension();
        double[] dArr = new double[rowDimension];
        for (int i11 = 0; i11 < rowDimension; i11++) {
            dArr[i11] = getEntry(i11, i10);
        }
        return dArr;
    }

    @Override
    public abstract int getColumnDimension();

    @Override
    public RealMatrix getColumnMatrix(int i10) throws OutOfRangeException {
        MatrixUtils.checkColumnIndex(this, i10);
        int rowDimension = getRowDimension();
        RealMatrix createMatrix = createMatrix(rowDimension, 1);
        for (int i11 = 0; i11 < rowDimension; i11++) {
            createMatrix.setEntry(i11, 0, getEntry(i11, i10));
        }
        return createMatrix;
    }

    @Override
    public RealVector getColumnVector(int i10) throws OutOfRangeException {
        return new ArrayRealVector(getColumn(i10), false);
    }

    @Override
    public double[][] getData() {
        double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, getRowDimension(), getColumnDimension());
        for (int i10 = 0; i10 < dArr.length; i10++) {
            double[] dArr2 = dArr[i10];
            for (int i11 = 0; i11 < dArr2.length; i11++) {
                dArr2[i11] = getEntry(i10, i11);
            }
        }
        return dArr;
    }

    @Override
    public abstract double getEntry(int i10, int i11) throws OutOfRangeException;

    @Override
    public double getFrobeniusNorm() {
        return walkInOptimizedOrder(new RealMatrixPreservingVisitor() {
            private double sum;

            @Override
            public double end() {
                return FastMath.sqrt(this.sum);
            }

            @Override
            public void start(int i10, int i11, int i12, int i13, int i14, int i15) {
                this.sum = 0.0d;
            }

            @Override
            public void visit(int i10, int i11, double d10) {
                this.sum += d10 * d10;
            }
        });
    }

    @Override
    public double getNorm() {
        return walkInColumnOrder(new RealMatrixPreservingVisitor() {
            private double columnSum;
            private double endRow;
            private double maxColSum;

            @Override
            public double end() {
                return this.maxColSum;
            }

            @Override
            public void start(int i10, int i11, int i12, int i13, int i14, int i15) {
                this.endRow = i13;
                this.columnSum = 0.0d;
                this.maxColSum = 0.0d;
            }

            @Override
            public void visit(int i10, int i11, double d10) {
                double abs = this.columnSum + FastMath.abs(d10);
                this.columnSum = abs;
                if (i10 == this.endRow) {
                    this.maxColSum = FastMath.max(this.maxColSum, abs);
                    this.columnSum = 0.0d;
                }
            }
        });
    }

    @Override
    public double[] getRow(int i10) throws OutOfRangeException {
        MatrixUtils.checkRowIndex(this, i10);
        int columnDimension = getColumnDimension();
        double[] dArr = new double[columnDimension];
        for (int i11 = 0; i11 < columnDimension; i11++) {
            dArr[i11] = getEntry(i10, i11);
        }
        return dArr;
    }

    @Override
    public abstract int getRowDimension();

    @Override
    public RealMatrix getRowMatrix(int i10) throws OutOfRangeException {
        MatrixUtils.checkRowIndex(this, i10);
        int columnDimension = getColumnDimension();
        RealMatrix createMatrix = createMatrix(1, columnDimension);
        for (int i11 = 0; i11 < columnDimension; i11++) {
            createMatrix.setEntry(0, i11, getEntry(i10, i11));
        }
        return createMatrix;
    }

    @Override
    public RealVector getRowVector(int i10) throws OutOfRangeException {
        return new ArrayRealVector(getRow(i10), false);
    }

    @Override
    public RealMatrix getSubMatrix(int i10, int i11, int i12, int i13) throws OutOfRangeException, NumberIsTooSmallException {
        MatrixUtils.checkSubMatrixIndex(this, i10, i11, i12, i13);
        RealMatrix createMatrix = createMatrix((i11 - i10) + 1, (i13 - i12) + 1);
        for (int i14 = i10; i14 <= i11; i14++) {
            for (int i15 = i12; i15 <= i13; i15++) {
                createMatrix.setEntry(i14 - i10, i15 - i12, getEntry(i14, i15));
            }
        }
        return createMatrix;
    }

    @Override
    public double getTrace() throws NonSquareMatrixException {
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        if (rowDimension != columnDimension) {
            throw new NonSquareMatrixException(rowDimension, columnDimension);
        }
        double d10 = 0.0d;
        for (int i10 = 0; i10 < rowDimension; i10++) {
            d10 += getEntry(i10, i10);
        }
        return d10;
    }

    public int hashCode() {
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        int i10 = ((217 + rowDimension) * 31) + columnDimension;
        for (int i11 = 0; i11 < rowDimension; i11++) {
            int i12 = 0;
            while (i12 < columnDimension) {
                int i13 = i12 + 1;
                i10 = (i10 * 31) + ((((i11 + 1) * 11) + (i13 * 17)) * MathUtils.hash(getEntry(i11, i12)));
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
    public RealMatrix multiply(RealMatrix realMatrix) throws DimensionMismatchException {
        MatrixUtils.checkMultiplicationCompatible(this, realMatrix);
        int rowDimension = getRowDimension();
        int columnDimension = realMatrix.getColumnDimension();
        int columnDimension2 = getColumnDimension();
        RealMatrix createMatrix = createMatrix(rowDimension, columnDimension);
        for (int i10 = 0; i10 < rowDimension; i10++) {
            for (int i11 = 0; i11 < columnDimension; i11++) {
                double d10 = 0.0d;
                for (int i12 = 0; i12 < columnDimension2; i12++) {
                    d10 += getEntry(i10, i12) * realMatrix.getEntry(i12, i11);
                }
                createMatrix.setEntry(i10, i11, d10);
            }
        }
        return createMatrix;
    }

    @Override
    public void multiplyEntry(int i10, int i11, double d10) throws OutOfRangeException {
        MatrixUtils.checkMatrixIndex(this, i10, i11);
        setEntry(i10, i11, getEntry(i10, i11) * d10);
    }

    @Override
    public double[] operate(double[] dArr) throws DimensionMismatchException {
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        if (dArr.length == columnDimension) {
            double[] dArr2 = new double[rowDimension];
            for (int i10 = 0; i10 < rowDimension; i10++) {
                double d10 = 0.0d;
                for (int i11 = 0; i11 < columnDimension; i11++) {
                    d10 += getEntry(i10, i11) * dArr[i11];
                }
                dArr2[i10] = d10;
            }
            return dArr2;
        }
        throw new DimensionMismatchException(dArr.length, columnDimension);
    }

    @Override
    public RealMatrix power(int i10) throws NotPositiveException, NonSquareMatrixException {
        if (i10 < 0) {
            throw new NotPositiveException(LocalizedFormats.NOT_POSITIVE_EXPONENT, Integer.valueOf(i10));
        }
        if (!isSquare()) {
            throw new NonSquareMatrixException(getRowDimension(), getColumnDimension());
        }
        if (i10 == 0) {
            return MatrixUtils.createRealIdentityMatrix(getRowDimension());
        }
        if (i10 == 1) {
            return copy();
        }
        char[] charArray = Integer.toBinaryString(i10 - 1).toCharArray();
        ArrayList arrayList = new ArrayList();
        int i11 = -1;
        for (int i12 = 0; i12 < charArray.length; i12++) {
            if (charArray[i12] == '1') {
                int length = (charArray.length - i12) - 1;
                arrayList.add(Integer.valueOf(length));
                if (i11 == -1) {
                    i11 = length;
                }
            }
        }
        RealMatrix[] realMatrixArr = new RealMatrix[i11 + 1];
        realMatrixArr[0] = copy();
        for (int i13 = 1; i13 <= i11; i13++) {
            RealMatrix realMatrix = realMatrixArr[i13 - 1];
            realMatrixArr[i13] = realMatrix.multiply(realMatrix);
        }
        RealMatrix copy = copy();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            copy = copy.multiply(realMatrixArr[((Integer) it.next()).intValue()]);
        }
        return copy;
    }

    @Override
    public RealMatrix preMultiply(RealMatrix realMatrix) throws DimensionMismatchException {
        return realMatrix.multiply(this);
    }

    @Override
    public RealMatrix scalarAdd(double d10) {
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        RealMatrix createMatrix = createMatrix(rowDimension, columnDimension);
        for (int i10 = 0; i10 < rowDimension; i10++) {
            for (int i11 = 0; i11 < columnDimension; i11++) {
                createMatrix.setEntry(i10, i11, getEntry(i10, i11) + d10);
            }
        }
        return createMatrix;
    }

    @Override
    public RealMatrix scalarMultiply(double d10) {
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        RealMatrix createMatrix = createMatrix(rowDimension, columnDimension);
        for (int i10 = 0; i10 < rowDimension; i10++) {
            for (int i11 = 0; i11 < columnDimension; i11++) {
                createMatrix.setEntry(i10, i11, getEntry(i10, i11) * d10);
            }
        }
        return createMatrix;
    }

    @Override
    public void setColumn(int i10, double[] dArr) throws OutOfRangeException, MatrixDimensionMismatchException {
        MatrixUtils.checkColumnIndex(this, i10);
        int rowDimension = getRowDimension();
        if (dArr.length != rowDimension) {
            throw new MatrixDimensionMismatchException(dArr.length, 1, rowDimension, 1);
        }
        for (int i11 = 0; i11 < rowDimension; i11++) {
            setEntry(i11, i10, dArr[i11]);
        }
    }

    @Override
    public void setColumnMatrix(int i10, RealMatrix realMatrix) throws OutOfRangeException, MatrixDimensionMismatchException {
        MatrixUtils.checkColumnIndex(this, i10);
        int rowDimension = getRowDimension();
        if (realMatrix.getRowDimension() != rowDimension || realMatrix.getColumnDimension() != 1) {
            throw new MatrixDimensionMismatchException(realMatrix.getRowDimension(), realMatrix.getColumnDimension(), rowDimension, 1);
        }
        for (int i11 = 0; i11 < rowDimension; i11++) {
            setEntry(i11, i10, realMatrix.getEntry(i11, 0));
        }
    }

    @Override
    public void setColumnVector(int i10, RealVector realVector) throws OutOfRangeException, MatrixDimensionMismatchException {
        MatrixUtils.checkColumnIndex(this, i10);
        int rowDimension = getRowDimension();
        if (realVector.getDimension() != rowDimension) {
            throw new MatrixDimensionMismatchException(realVector.getDimension(), 1, rowDimension, 1);
        }
        for (int i11 = 0; i11 < rowDimension; i11++) {
            setEntry(i11, i10, realVector.getEntry(i11));
        }
    }

    @Override
    public abstract void setEntry(int i10, int i11, double d10) throws OutOfRangeException;

    @Override
    public void setRow(int i10, double[] dArr) throws OutOfRangeException, MatrixDimensionMismatchException {
        MatrixUtils.checkRowIndex(this, i10);
        int columnDimension = getColumnDimension();
        if (dArr.length != columnDimension) {
            throw new MatrixDimensionMismatchException(1, dArr.length, 1, columnDimension);
        }
        for (int i11 = 0; i11 < columnDimension; i11++) {
            setEntry(i10, i11, dArr[i11]);
        }
    }

    @Override
    public void setRowMatrix(int i10, RealMatrix realMatrix) throws OutOfRangeException, MatrixDimensionMismatchException {
        MatrixUtils.checkRowIndex(this, i10);
        int columnDimension = getColumnDimension();
        if (realMatrix.getRowDimension() != 1 || realMatrix.getColumnDimension() != columnDimension) {
            throw new MatrixDimensionMismatchException(realMatrix.getRowDimension(), realMatrix.getColumnDimension(), 1, columnDimension);
        }
        for (int i11 = 0; i11 < columnDimension; i11++) {
            setEntry(i10, i11, realMatrix.getEntry(0, i11));
        }
    }

    @Override
    public void setRowVector(int i10, RealVector realVector) throws OutOfRangeException, MatrixDimensionMismatchException {
        MatrixUtils.checkRowIndex(this, i10);
        int columnDimension = getColumnDimension();
        if (realVector.getDimension() != columnDimension) {
            throw new MatrixDimensionMismatchException(1, realVector.getDimension(), 1, columnDimension);
        }
        for (int i11 = 0; i11 < columnDimension; i11++) {
            setEntry(i10, i11, realVector.getEntry(i11));
        }
    }

    @Override
    public void setSubMatrix(double[][] dArr, int i10, int i11) throws NoDataException, OutOfRangeException, DimensionMismatchException, NullArgumentException {
        MathUtils.checkNotNull(dArr);
        int length = dArr.length;
        if (length == 0) {
            throw new NoDataException(LocalizedFormats.AT_LEAST_ONE_ROW);
        }
        int length2 = dArr[0].length;
        if (length2 == 0) {
            throw new NoDataException(LocalizedFormats.AT_LEAST_ONE_COLUMN);
        }
        for (int i12 = 1; i12 < length; i12++) {
            if (dArr[i12].length != length2) {
                throw new DimensionMismatchException(length2, dArr[i12].length);
            }
        }
        MatrixUtils.checkRowIndex(this, i10);
        MatrixUtils.checkColumnIndex(this, i11);
        MatrixUtils.checkRowIndex(this, (length + i10) - 1);
        MatrixUtils.checkColumnIndex(this, (length2 + i11) - 1);
        for (int i13 = 0; i13 < length; i13++) {
            for (int i14 = 0; i14 < length2; i14++) {
                setEntry(i10 + i13, i11 + i14, dArr[i13][i14]);
            }
        }
    }

    @Override
    public RealMatrix subtract(RealMatrix realMatrix) throws MatrixDimensionMismatchException {
        MatrixUtils.checkSubtractionCompatible(this, realMatrix);
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        RealMatrix createMatrix = createMatrix(rowDimension, columnDimension);
        for (int i10 = 0; i10 < rowDimension; i10++) {
            for (int i11 = 0; i11 < columnDimension; i11++) {
                createMatrix.setEntry(i10, i11, getEntry(i10, i11) - realMatrix.getEntry(i10, i11));
            }
        }
        return createMatrix;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        String name = getClass().getName();
        sb2.append(name.substring(name.lastIndexOf(46) + 1));
        sb2.append(DEFAULT_FORMAT.format(this));
        return sb2.toString();
    }

    @Override
    public RealMatrix transpose() {
        final RealMatrix createMatrix = createMatrix(getColumnDimension(), getRowDimension());
        walkInOptimizedOrder(new DefaultRealMatrixPreservingVisitor() {
            @Override
            public void visit(int i10, int i11, double d10) {
                createMatrix.setEntry(i11, i10, d10);
            }
        });
        return createMatrix;
    }

    @Override
    public double walkInColumnOrder(RealMatrixChangingVisitor realMatrixChangingVisitor) {
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        realMatrixChangingVisitor.start(rowDimension, columnDimension, 0, rowDimension - 1, 0, columnDimension - 1);
        for (int i10 = 0; i10 < columnDimension; i10++) {
            for (int i11 = 0; i11 < rowDimension; i11++) {
                setEntry(i11, i10, realMatrixChangingVisitor.visit(i11, i10, getEntry(i11, i10)));
            }
        }
        return realMatrixChangingVisitor.end();
    }

    @Override
    public double walkInOptimizedOrder(RealMatrixChangingVisitor realMatrixChangingVisitor) {
        return walkInRowOrder(realMatrixChangingVisitor);
    }

    @Override
    public double walkInRowOrder(RealMatrixChangingVisitor realMatrixChangingVisitor) {
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        realMatrixChangingVisitor.start(rowDimension, columnDimension, 0, rowDimension - 1, 0, columnDimension - 1);
        for (int i10 = 0; i10 < rowDimension; i10++) {
            for (int i11 = 0; i11 < columnDimension; i11++) {
                setEntry(i10, i11, realMatrixChangingVisitor.visit(i10, i11, getEntry(i10, i11)));
            }
        }
        return realMatrixChangingVisitor.end();
    }

    public AbstractRealMatrix(int i10, int i11) throws NotStrictlyPositiveException {
        if (i10 < 1) {
            throw new NotStrictlyPositiveException(Integer.valueOf(i10));
        }
        if (i11 < 1) {
            throw new NotStrictlyPositiveException(Integer.valueOf(i11));
        }
    }

    @Override
    public double[] preMultiply(double[] dArr) throws DimensionMismatchException {
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        if (dArr.length == rowDimension) {
            double[] dArr2 = new double[columnDimension];
            for (int i10 = 0; i10 < columnDimension; i10++) {
                double d10 = 0.0d;
                for (int i11 = 0; i11 < rowDimension; i11++) {
                    d10 += getEntry(i11, i10) * dArr[i11];
                }
                dArr2[i10] = d10;
            }
            return dArr2;
        }
        throw new DimensionMismatchException(dArr.length, rowDimension);
    }

    @Override
    public double walkInOptimizedOrder(RealMatrixPreservingVisitor realMatrixPreservingVisitor) {
        return walkInRowOrder(realMatrixPreservingVisitor);
    }

    @Override
    public double walkInOptimizedOrder(RealMatrixChangingVisitor realMatrixChangingVisitor, int i10, int i11, int i12, int i13) throws OutOfRangeException, NumberIsTooSmallException {
        return walkInRowOrder(realMatrixChangingVisitor, i10, i11, i12, i13);
    }

    @Override
    public RealMatrix getSubMatrix(final int[] iArr, final int[] iArr2) throws NullArgumentException, NoDataException, OutOfRangeException {
        MatrixUtils.checkSubMatrixIndex(this, iArr, iArr2);
        RealMatrix createMatrix = createMatrix(iArr.length, iArr2.length);
        createMatrix.walkInOptimizedOrder(new DefaultRealMatrixChangingVisitor() {
            @Override
            public double visit(int i10, int i11, double d10) {
                return AbstractRealMatrix.this.getEntry(iArr[i10], iArr2[i11]);
            }
        });
        return createMatrix;
    }

    @Override
    public double walkInOptimizedOrder(RealMatrixPreservingVisitor realMatrixPreservingVisitor, int i10, int i11, int i12, int i13) throws OutOfRangeException, NumberIsTooSmallException {
        return walkInRowOrder(realMatrixPreservingVisitor, i10, i11, i12, i13);
    }

    @Override
    public void copySubMatrix(int[] iArr, int[] iArr2, double[][] dArr) throws OutOfRangeException, NullArgumentException, NoDataException, MatrixDimensionMismatchException {
        MatrixUtils.checkSubMatrixIndex(this, iArr, iArr2);
        int length = iArr2.length;
        if (dArr.length >= iArr.length && dArr[0].length >= length) {
            for (int i10 = 0; i10 < iArr.length; i10++) {
                double[] dArr2 = dArr[i10];
                if (dArr2.length >= length) {
                    for (int i11 = 0; i11 < iArr2.length; i11++) {
                        dArr2[i11] = getEntry(iArr[i10], iArr2[i11]);
                    }
                } else {
                    throw new MatrixDimensionMismatchException(dArr.length, dArr2.length, iArr.length, iArr2.length);
                }
            }
            return;
        }
        throw new MatrixDimensionMismatchException(dArr.length, dArr[0].length, iArr.length, iArr2.length);
    }

    @Override
    public RealVector operate(RealVector realVector) throws DimensionMismatchException {
        try {
            return new ArrayRealVector(operate(((ArrayRealVector) realVector).getDataRef()), false);
        } catch (ClassCastException unused) {
            int rowDimension = getRowDimension();
            int columnDimension = getColumnDimension();
            if (realVector.getDimension() == columnDimension) {
                double[] dArr = new double[rowDimension];
                for (int i10 = 0; i10 < rowDimension; i10++) {
                    double d10 = 0.0d;
                    for (int i11 = 0; i11 < columnDimension; i11++) {
                        d10 += getEntry(i10, i11) * realVector.getEntry(i11);
                    }
                    dArr[i10] = d10;
                }
                return new ArrayRealVector(dArr, false);
            }
            throw new DimensionMismatchException(realVector.getDimension(), columnDimension);
        }
    }

    @Override
    public double walkInColumnOrder(RealMatrixPreservingVisitor realMatrixPreservingVisitor) {
        int rowDimension = getRowDimension();
        int columnDimension = getColumnDimension();
        realMatrixPreservingVisitor.start(rowDimension, columnDimension, 0, rowDimension - 1, 0, columnDimension - 1);
        for (int i10 = 0; i10 < columnDimension; i10++) {
            for (int i11 = 0; i11 < rowDimension; i11++) {
                realMatrixPreservingVisitor.visit(i11, i10, getEntry(i11, i10));
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
            for (int i11 = 0; i11 < columnDimension; i11++) {
                realMatrixPreservingVisitor.visit(i10, i11, getEntry(i10, i11));
            }
        }
        return realMatrixPreservingVisitor.end();
    }

    @Override
    public RealVector preMultiply(RealVector realVector) throws DimensionMismatchException {
        try {
            return new ArrayRealVector(preMultiply(((ArrayRealVector) realVector).getDataRef()), false);
        } catch (ClassCastException unused) {
            int rowDimension = getRowDimension();
            int columnDimension = getColumnDimension();
            if (realVector.getDimension() == rowDimension) {
                double[] dArr = new double[columnDimension];
                for (int i10 = 0; i10 < columnDimension; i10++) {
                    double d10 = 0.0d;
                    for (int i11 = 0; i11 < rowDimension; i11++) {
                        d10 += getEntry(i11, i10) * realVector.getEntry(i11);
                    }
                    dArr[i10] = d10;
                }
                return new ArrayRealVector(dArr, false);
            }
            throw new DimensionMismatchException(realVector.getDimension(), rowDimension);
        }
    }

    @Override
    public double walkInColumnOrder(RealMatrixChangingVisitor realMatrixChangingVisitor, int i10, int i11, int i12, int i13) throws OutOfRangeException, NumberIsTooSmallException {
        MatrixUtils.checkSubMatrixIndex(this, i10, i11, i12, i13);
        realMatrixChangingVisitor.start(getRowDimension(), getColumnDimension(), i10, i11, i12, i13);
        while (i12 <= i13) {
            for (int i14 = i10; i14 <= i11; i14++) {
                setEntry(i14, i12, realMatrixChangingVisitor.visit(i14, i12, getEntry(i14, i12)));
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
            for (int i14 = i12; i14 <= i13; i14++) {
                setEntry(i10, i14, realMatrixChangingVisitor.visit(i10, i14, getEntry(i10, i14)));
            }
            i10++;
        }
        return realMatrixChangingVisitor.end();
    }

    @Override
    public double walkInColumnOrder(RealMatrixPreservingVisitor realMatrixPreservingVisitor, int i10, int i11, int i12, int i13) throws OutOfRangeException, NumberIsTooSmallException {
        MatrixUtils.checkSubMatrixIndex(this, i10, i11, i12, i13);
        realMatrixPreservingVisitor.start(getRowDimension(), getColumnDimension(), i10, i11, i12, i13);
        while (i12 <= i13) {
            for (int i14 = i10; i14 <= i11; i14++) {
                realMatrixPreservingVisitor.visit(i14, i12, getEntry(i14, i12));
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
            for (int i14 = i12; i14 <= i13; i14++) {
                realMatrixPreservingVisitor.visit(i10, i14, getEntry(i10, i14));
            }
            i10++;
        }
        return realMatrixPreservingVisitor.end();
    }
}
