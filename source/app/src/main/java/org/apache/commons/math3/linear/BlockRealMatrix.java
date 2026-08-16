package org.apache.commons.math3.linear;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.Arrays;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathUtils;

public class BlockRealMatrix extends AbstractRealMatrix implements Serializable {
    public static final int BLOCK_SIZE = 52;
    private static final long serialVersionUID = 4991895511313664478L;
    private final int blockColumns;
    private final int blockRows;
    private final double[][] blocks;
    private final int columns;
    private final int rows;

    public BlockRealMatrix(int i10, int i11) throws NotStrictlyPositiveException {
        super(i10, i11);
        this.rows = i10;
        this.columns = i11;
        this.blockRows = (i10 + 51) / 52;
        this.blockColumns = (i11 + 51) / 52;
        this.blocks = createBlocksLayout(i10, i11);
    }

    private int blockHeight(int i10) {
        if (i10 == this.blockRows - 1) {
            return this.rows - (i10 * 52);
        }
        return 52;
    }

    private int blockWidth(int i10) {
        if (i10 == this.blockColumns - 1) {
            return this.columns - (i10 * 52);
        }
        return 52;
    }

    private void copyBlockPart(double[] dArr, int i10, int i11, int i12, int i13, int i14, double[] dArr2, int i15, int i16, int i17) {
        int i18 = i14 - i13;
        int i19 = (i11 * i10) + i13;
        int i20 = (i16 * i15) + i17;
        while (i11 < i12) {
            System.arraycopy(dArr, i19, dArr2, i20, i18);
            i19 += i10;
            i20 += i15;
            i11++;
        }
    }

    public static double[][] createBlocksLayout(int i10, int i11) {
        int i12 = (i10 + 51) / 52;
        int i13 = (i11 + 51) / 52;
        double[][] dArr = new double[i12 * i13];
        int i14 = 0;
        for (int i15 = 0; i15 < i12; i15++) {
            int i16 = i15 * 52;
            int min = FastMath.min(i16 + 52, i10) - i16;
            for (int i17 = 0; i17 < i13; i17++) {
                int i18 = i17 * 52;
                dArr[i14] = new double[(FastMath.min(i18 + 52, i11) - i18) * min];
                i14++;
            }
        }
        return dArr;
    }

    public static double[][] toBlocksLayout(double[][] dArr) throws DimensionMismatchException {
        int length = dArr.length;
        int i10 = 0;
        int length2 = dArr[0].length;
        int i11 = (length + 51) / 52;
        int i12 = (length2 + 51) / 52;
        for (double[] dArr2 : dArr) {
            int length3 = dArr2.length;
            if (length3 != length2) {
                throw new DimensionMismatchException(length2, length3);
            }
        }
        double[][] dArr3 = new double[i11 * i12];
        int i13 = 0;
        int i14 = 0;
        while (i13 < i11) {
            int i15 = i13 * 52;
            int min = FastMath.min(i15 + 52, length);
            int i16 = min - i15;
            int i17 = i10;
            while (i17 < i12) {
                int i18 = i17 * 52;
                int min2 = FastMath.min(i18 + 52, length2) - i18;
                double[] dArr4 = new double[i16 * min2];
                dArr3[i14] = dArr4;
                int i19 = length;
                int i20 = i10;
                int i21 = i15;
                while (i21 < min) {
                    System.arraycopy(dArr[i21], i18, dArr4, i20, min2);
                    i20 += min2;
                    i21++;
                    length2 = length2;
                }
                i14++;
                i17++;
                length = i19;
                i10 = 0;
            }
            i13++;
            i10 = 0;
        }
        return dArr3;
    }

    @Override
    public void addToEntry(int i10, int i11, double d10) throws OutOfRangeException {
        MatrixUtils.checkMatrixIndex(this, i10, i11);
        int i12 = i10 / 52;
        int i13 = i11 / 52;
        int blockWidth = ((i10 - (i12 * 52)) * blockWidth(i13)) + (i11 - (i13 * 52));
        double[] dArr = this.blocks[(i12 * this.blockColumns) + i13];
        dArr[blockWidth] = dArr[blockWidth] + d10;
    }

    @Override
    public double[] getColumn(int i10) throws OutOfRangeException {
        MatrixUtils.checkColumnIndex(this, i10);
        double[] dArr = new double[this.rows];
        int i11 = i10 / 52;
        int i12 = i10 - (i11 * 52);
        int blockWidth = blockWidth(i11);
        int i13 = 0;
        for (int i14 = 0; i14 < this.blockRows; i14++) {
            int blockHeight = blockHeight(i14);
            double[] dArr2 = this.blocks[(this.blockColumns * i14) + i11];
            int i15 = 0;
            while (i15 < blockHeight) {
                dArr[i13] = dArr2[(i15 * blockWidth) + i12];
                i15++;
                i13++;
            }
        }
        return dArr;
    }

    @Override
    public int getColumnDimension() {
        return this.columns;
    }

    @Override
    public RealVector getColumnVector(int i10) throws OutOfRangeException {
        MatrixUtils.checkColumnIndex(this, i10);
        double[] dArr = new double[this.rows];
        int i11 = i10 / 52;
        int i12 = i10 - (i11 * 52);
        int blockWidth = blockWidth(i11);
        int i13 = 0;
        for (int i14 = 0; i14 < this.blockRows; i14++) {
            int blockHeight = blockHeight(i14);
            double[] dArr2 = this.blocks[(this.blockColumns * i14) + i11];
            int i15 = 0;
            while (i15 < blockHeight) {
                dArr[i13] = dArr2[(i15 * blockWidth) + i12];
                i15++;
                i13++;
            }
        }
        return new ArrayRealVector(dArr, false);
    }

    @Override
    public double[][] getData() {
        double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, getRowDimension(), getColumnDimension());
        int i10 = this.columns - ((this.blockColumns - 1) * 52);
        for (int i11 = 0; i11 < this.blockRows; i11++) {
            int i12 = i11 * 52;
            int min = FastMath.min(i12 + 52, this.rows);
            int i13 = 0;
            int i14 = 0;
            while (i12 < min) {
                double[] dArr2 = dArr[i12];
                int i15 = this.blockColumns * i11;
                int i16 = 0;
                int i17 = 0;
                while (i16 < this.blockColumns - 1) {
                    System.arraycopy(this.blocks[i15], i13, dArr2, i17, 52);
                    i17 += 52;
                    i16++;
                    i15++;
                }
                System.arraycopy(this.blocks[i15], i14, dArr2, i17, i10);
                i13 += 52;
                i14 += i10;
                i12++;
            }
        }
        return dArr;
    }

    @Override
    public double getEntry(int i10, int i11) throws OutOfRangeException {
        MatrixUtils.checkMatrixIndex(this, i10, i11);
        int i12 = i10 / 52;
        int i13 = i11 / 52;
        return this.blocks[(i12 * this.blockColumns) + i13][((i10 - (i12 * 52)) * blockWidth(i13)) + (i11 - (i13 * 52))];
    }

    @Override
    public double getFrobeniusNorm() {
        double d10 = 0.0d;
        int i10 = 0;
        while (true) {
            double[][] dArr = this.blocks;
            if (i10 >= dArr.length) {
                return FastMath.sqrt(d10);
            }
            for (double d11 : dArr[i10]) {
                d10 += d11 * d11;
            }
            i10++;
        }
    }

    @Override
    public double getNorm() {
        double[] dArr = new double[52];
        double d10 = 0.0d;
        for (int i10 = 0; i10 < this.blockColumns; i10++) {
            int blockWidth = blockWidth(i10);
            Arrays.fill(dArr, 0, blockWidth, 0.0d);
            for (int i11 = 0; i11 < this.blockRows; i11++) {
                int blockHeight = blockHeight(i11);
                double[] dArr2 = this.blocks[(this.blockColumns * i11) + i10];
                for (int i12 = 0; i12 < blockWidth; i12++) {
                    double d11 = 0.0d;
                    for (int i13 = 0; i13 < blockHeight; i13++) {
                        d11 += FastMath.abs(dArr2[(i13 * blockWidth) + i12]);
                    }
                    dArr[i12] = dArr[i12] + d11;
                }
            }
            for (int i14 = 0; i14 < blockWidth; i14++) {
                d10 = FastMath.max(d10, dArr[i14]);
            }
        }
        return d10;
    }

    @Override
    public double[] getRow(int i10) throws OutOfRangeException {
        MatrixUtils.checkRowIndex(this, i10);
        double[] dArr = new double[this.columns];
        int i11 = i10 / 52;
        int i12 = i10 - (i11 * 52);
        int i13 = 0;
        for (int i14 = 0; i14 < this.blockColumns; i14++) {
            int blockWidth = blockWidth(i14);
            System.arraycopy(this.blocks[(this.blockColumns * i11) + i14], i12 * blockWidth, dArr, i13, blockWidth);
            i13 += blockWidth;
        }
        return dArr;
    }

    @Override
    public int getRowDimension() {
        return this.rows;
    }

    @Override
    public RealVector getRowVector(int i10) throws OutOfRangeException {
        MatrixUtils.checkRowIndex(this, i10);
        double[] dArr = new double[this.columns];
        int i11 = i10 / 52;
        int i12 = i10 - (i11 * 52);
        int i13 = 0;
        for (int i14 = 0; i14 < this.blockColumns; i14++) {
            int blockWidth = blockWidth(i14);
            System.arraycopy(this.blocks[(this.blockColumns * i11) + i14], i12 * blockWidth, dArr, i13, blockWidth);
            i13 += blockWidth;
        }
        return new ArrayRealVector(dArr, false);
    }

    @Override
    public void multiplyEntry(int i10, int i11, double d10) throws OutOfRangeException {
        MatrixUtils.checkMatrixIndex(this, i10, i11);
        int i12 = i10 / 52;
        int i13 = i11 / 52;
        int blockWidth = ((i10 - (i12 * 52)) * blockWidth(i13)) + (i11 - (i13 * 52));
        double[] dArr = this.blocks[(i12 * this.blockColumns) + i13];
        dArr[blockWidth] = dArr[blockWidth] * d10;
    }

    @Override
    public double[] operate(double[] dArr) throws DimensionMismatchException {
        if (dArr.length != this.columns) {
            throw new DimensionMismatchException(dArr.length, this.columns);
        }
        double[] dArr2 = new double[this.rows];
        for (int i10 = 0; i10 < this.blockRows; i10++) {
            int i11 = i10 * 52;
            int min = FastMath.min(i11 + 52, this.rows);
            int i12 = 0;
            while (true) {
                int i13 = this.blockColumns;
                if (i12 < i13) {
                    double[] dArr3 = this.blocks[(i13 * i10) + i12];
                    int i14 = i12 * 52;
                    int min2 = FastMath.min(i14 + 52, this.columns);
                    int i15 = 0;
                    for (int i16 = i11; i16 < min; i16++) {
                        double d10 = 0.0d;
                        int i17 = i14;
                        while (i17 < min2 - 3) {
                            d10 += (dArr3[i15] * dArr[i17]) + (dArr3[i15 + 1] * dArr[i17 + 1]) + (dArr3[i15 + 2] * dArr[i17 + 2]) + (dArr3[i15 + 3] * dArr[i17 + 3]);
                            i15 += 4;
                            i17 += 4;
                        }
                        while (i17 < min2) {
                            d10 += dArr3[i15] * dArr[i17];
                            i17++;
                            i15++;
                        }
                        dArr2[i16] = dArr2[i16] + d10;
                    }
                    i12++;
                }
            }
        }
        return dArr2;
    }

    @Override
    public double[] preMultiply(double[] dArr) throws DimensionMismatchException {
        int i10;
        if (dArr.length != this.rows) {
            throw new DimensionMismatchException(dArr.length, this.rows);
        }
        double[] dArr2 = new double[this.columns];
        for (int i11 = 0; i11 < this.blockColumns; i11++) {
            int blockWidth = blockWidth(i11);
            int i12 = blockWidth + blockWidth;
            int i13 = i12 + blockWidth;
            int i14 = i13 + blockWidth;
            int i15 = i11 * 52;
            int min = FastMath.min(i15 + 52, this.columns);
            for (int i16 = 0; i16 < this.blockRows; i16++) {
                double[] dArr3 = this.blocks[(this.blockColumns * i16) + i11];
                int i17 = i16 * 52;
                int min2 = FastMath.min(i17 + 52, this.rows);
                int i18 = i15;
                while (i18 < min) {
                    int i19 = i18 - i15;
                    double d10 = 0.0d;
                    int i20 = i17;
                    while (true) {
                        i10 = i15;
                        if (i20 >= min2 - 3) {
                            break;
                        }
                        d10 += (dArr3[i19] * dArr[i20]) + (dArr3[i19 + blockWidth] * dArr[i20 + 1]) + (dArr3[i19 + i12] * dArr[i20 + 2]) + (dArr3[i19 + i13] * dArr[i20 + 3]);
                        i19 += i14;
                        i20 += 4;
                        i15 = i10;
                    }
                    while (i20 < min2) {
                        d10 += dArr3[i19] * dArr[i20];
                        i19 += blockWidth;
                        i20++;
                    }
                    dArr2[i18] = dArr2[i18] + d10;
                    i18++;
                    i15 = i10;
                }
            }
        }
        return dArr2;
    }

    @Override
    public RealMatrix scalarMultiply(double d10) {
        BlockRealMatrix blockRealMatrix = new BlockRealMatrix(this.rows, this.columns);
        int i10 = 0;
        while (true) {
            double[][] dArr = blockRealMatrix.blocks;
            if (i10 >= dArr.length) {
                return blockRealMatrix;
            }
            double[] dArr2 = dArr[i10];
            double[] dArr3 = this.blocks[i10];
            for (int i11 = 0; i11 < dArr2.length; i11++) {
                dArr2[i11] = dArr3[i11] * d10;
            }
            i10++;
        }
    }

    @Override
    public void setColumn(int i10, double[] dArr) throws OutOfRangeException, MatrixDimensionMismatchException {
        MatrixUtils.checkColumnIndex(this, i10);
        int rowDimension = getRowDimension();
        if (dArr.length != rowDimension) {
            throw new MatrixDimensionMismatchException(dArr.length, 1, rowDimension, 1);
        }
        int i11 = i10 / 52;
        int i12 = i10 - (i11 * 52);
        int blockWidth = blockWidth(i11);
        int i13 = 0;
        for (int i14 = 0; i14 < this.blockRows; i14++) {
            int blockHeight = blockHeight(i14);
            double[] dArr2 = this.blocks[(this.blockColumns * i14) + i11];
            int i15 = 0;
            while (i15 < blockHeight) {
                dArr2[(i15 * blockWidth) + i12] = dArr[i13];
                i15++;
                i13++;
            }
        }
    }

    @Override
    public void setColumnMatrix(int i10, RealMatrix realMatrix) throws OutOfRangeException, MatrixDimensionMismatchException {
        try {
            setColumnMatrix(i10, (BlockRealMatrix) realMatrix);
        } catch (ClassCastException unused) {
            super.setColumnMatrix(i10, realMatrix);
        }
    }

    @Override
    public void setColumnVector(int i10, RealVector realVector) throws OutOfRangeException, MatrixDimensionMismatchException {
        try {
            setColumn(i10, ((ArrayRealVector) realVector).getDataRef());
        } catch (ClassCastException unused) {
            super.setColumnVector(i10, realVector);
        }
    }

    @Override
    public void setEntry(int i10, int i11, double d10) throws OutOfRangeException {
        MatrixUtils.checkMatrixIndex(this, i10, i11);
        int i12 = i10 / 52;
        int i13 = i11 / 52;
        this.blocks[(i12 * this.blockColumns) + i13][((i10 - (i12 * 52)) * blockWidth(i13)) + (i11 - (i13 * 52))] = d10;
    }

    @Override
    public void setRow(int i10, double[] dArr) throws OutOfRangeException, MatrixDimensionMismatchException {
        MatrixUtils.checkRowIndex(this, i10);
        int columnDimension = getColumnDimension();
        if (dArr.length != columnDimension) {
            throw new MatrixDimensionMismatchException(1, dArr.length, 1, columnDimension);
        }
        int i11 = i10 / 52;
        int i12 = i10 - (i11 * 52);
        int i13 = 0;
        for (int i14 = 0; i14 < this.blockColumns; i14++) {
            int blockWidth = blockWidth(i14);
            System.arraycopy(dArr, i13, this.blocks[(this.blockColumns * i11) + i14], i12 * blockWidth, blockWidth);
            i13 += blockWidth;
        }
    }

    @Override
    public void setRowMatrix(int i10, RealMatrix realMatrix) throws OutOfRangeException, MatrixDimensionMismatchException {
        try {
            setRowMatrix(i10, (BlockRealMatrix) realMatrix);
        } catch (ClassCastException unused) {
            super.setRowMatrix(i10, realMatrix);
        }
    }

    @Override
    public void setRowVector(int i10, RealVector realVector) throws OutOfRangeException, MatrixDimensionMismatchException {
        try {
            setRow(i10, ((ArrayRealVector) realVector).getDataRef());
        } catch (ClassCastException unused) {
            super.setRowVector(i10, realVector);
        }
    }

    @Override
    public void setSubMatrix(double[][] dArr, int i10, int i11) throws OutOfRangeException, NoDataException, NullArgumentException, DimensionMismatchException {
        BlockRealMatrix blockRealMatrix = this;
        double[][] dArr2 = dArr;
        int i12 = i10;
        MathUtils.checkNotNull(dArr);
        int length = dArr2[0].length;
        if (length == 0) {
            throw new NoDataException(LocalizedFormats.AT_LEAST_ONE_COLUMN);
        }
        int length2 = dArr2.length + i12;
        int i13 = i11 + length;
        MatrixUtils.checkSubMatrixIndex(blockRealMatrix, i12, length2 - 1, i11, i13 - 1);
        for (double[] dArr3 : dArr2) {
            if (dArr3.length != length) {
                throw new DimensionMismatchException(length, dArr3.length);
            }
        }
        int i14 = i12 / 52;
        int i15 = (length2 + 51) / 52;
        int i16 = i11 / 52;
        int i17 = (i13 + 51) / 52;
        while (i14 < i15) {
            int blockHeight = blockRealMatrix.blockHeight(i14);
            int i18 = i14 * 52;
            int max = FastMath.max(i12, i18);
            int min = FastMath.min(length2, blockHeight + i18);
            int i19 = i16;
            while (i19 < i17) {
                int blockWidth = blockRealMatrix.blockWidth(i19);
                int i20 = i19 * 52;
                int max2 = FastMath.max(i11, i20);
                int i21 = i15;
                int min2 = FastMath.min(i13, i20 + blockWidth) - max2;
                int i22 = length2;
                int i23 = i16;
                double[] dArr4 = blockRealMatrix.blocks[(blockRealMatrix.blockColumns * i14) + i19];
                int i24 = max;
                while (i24 < min) {
                    System.arraycopy(dArr2[i24 - i12], max2 - i11, dArr4, ((i24 - i18) * blockWidth) + (max2 - i20), min2);
                    i24++;
                    dArr2 = dArr;
                    i12 = i10;
                }
                i19++;
                blockRealMatrix = this;
                dArr2 = dArr;
                i12 = i10;
                i15 = i21;
                length2 = i22;
                i16 = i23;
            }
            i14++;
            blockRealMatrix = this;
            dArr2 = dArr;
            i12 = i10;
        }
    }

    @Override
    public double walkInOptimizedOrder(RealMatrixChangingVisitor realMatrixChangingVisitor) {
        int i10 = this.rows;
        int i11 = this.columns;
        realMatrixChangingVisitor.start(i10, i11, 0, i10 - 1, 0, i11 - 1);
        int i12 = 0;
        for (int i13 = 0; i13 < this.blockRows; i13++) {
            int i14 = i13 * 52;
            int min = FastMath.min(i14 + 52, this.rows);
            for (int i15 = 0; i15 < this.blockColumns; i15++) {
                int i16 = i15 * 52;
                int min2 = FastMath.min(i16 + 52, this.columns);
                double[] dArr = this.blocks[i12];
                int i17 = 0;
                for (int i18 = i14; i18 < min; i18++) {
                    for (int i19 = i16; i19 < min2; i19++) {
                        dArr[i17] = realMatrixChangingVisitor.visit(i18, i19, dArr[i17]);
                        i17++;
                    }
                }
                i12++;
            }
        }
        return realMatrixChangingVisitor.end();
    }

    @Override
    public double walkInRowOrder(RealMatrixChangingVisitor realMatrixChangingVisitor) {
        int i10 = this.rows;
        int i11 = this.columns;
        realMatrixChangingVisitor.start(i10, i11, 0, i10 - 1, 0, i11 - 1);
        for (int i12 = 0; i12 < this.blockRows; i12++) {
            int i13 = i12 * 52;
            int min = FastMath.min(i13 + 52, this.rows);
            for (int i14 = i13; i14 < min; i14++) {
                for (int i15 = 0; i15 < this.blockColumns; i15++) {
                    int blockWidth = blockWidth(i15);
                    int i16 = i15 * 52;
                    int min2 = FastMath.min(i16 + 52, this.columns);
                    double[] dArr = this.blocks[(this.blockColumns * i12) + i15];
                    int i17 = (i14 - i13) * blockWidth;
                    while (i16 < min2) {
                        dArr[i17] = realMatrixChangingVisitor.visit(i14, i16, dArr[i17]);
                        i17++;
                        i16++;
                    }
                }
            }
        }
        return realMatrixChangingVisitor.end();
    }

    @Override
    public BlockRealMatrix add(RealMatrix realMatrix) throws MatrixDimensionMismatchException {
        try {
            return add((BlockRealMatrix) realMatrix);
        } catch (ClassCastException unused) {
            MatrixUtils.checkAdditionCompatible(this, realMatrix);
            BlockRealMatrix blockRealMatrix = new BlockRealMatrix(this.rows, this.columns);
            int i10 = 0;
            for (int i11 = 0; i11 < blockRealMatrix.blockRows; i11++) {
                for (int i12 = 0; i12 < blockRealMatrix.blockColumns; i12++) {
                    double[] dArr = blockRealMatrix.blocks[i10];
                    double[] dArr2 = this.blocks[i10];
                    int i13 = i11 * 52;
                    int min = FastMath.min(i13 + 52, this.rows);
                    int i14 = i12 * 52;
                    int min2 = FastMath.min(i14 + 52, this.columns);
                    int i15 = 0;
                    while (i13 < min) {
                        for (int i16 = i14; i16 < min2; i16++) {
                            dArr[i15] = dArr2[i15] + realMatrix.getEntry(i13, i16);
                            i15++;
                        }
                        i13++;
                    }
                    i10++;
                }
            }
            return blockRealMatrix;
        }
    }

    @Override
    public BlockRealMatrix copy() {
        BlockRealMatrix blockRealMatrix = new BlockRealMatrix(this.rows, this.columns);
        int i10 = 0;
        while (true) {
            double[][] dArr = this.blocks;
            if (i10 >= dArr.length) {
                return blockRealMatrix;
            }
            double[] dArr2 = dArr[i10];
            System.arraycopy(dArr2, 0, blockRealMatrix.blocks[i10], 0, dArr2.length);
            i10++;
        }
    }

    @Override
    public BlockRealMatrix createMatrix(int i10, int i11) throws NotStrictlyPositiveException {
        return new BlockRealMatrix(i10, i11);
    }

    @Override
    public BlockRealMatrix getColumnMatrix(int i10) throws OutOfRangeException {
        MatrixUtils.checkColumnIndex(this, i10);
        BlockRealMatrix blockRealMatrix = new BlockRealMatrix(this.rows, 1);
        int i11 = i10 / 52;
        int i12 = i10 - (i11 * 52);
        int blockWidth = blockWidth(i11);
        double[] dArr = blockRealMatrix.blocks[0];
        int i13 = 0;
        int i14 = 0;
        for (int i15 = 0; i15 < this.blockRows; i15++) {
            int blockHeight = blockHeight(i15);
            double[] dArr2 = this.blocks[(this.blockColumns * i15) + i11];
            int i16 = 0;
            while (i16 < blockHeight) {
                if (i13 >= dArr.length) {
                    i14++;
                    dArr = blockRealMatrix.blocks[i14];
                    i13 = 0;
                }
                dArr[i13] = dArr2[(i16 * blockWidth) + i12];
                i16++;
                i13++;
            }
        }
        return blockRealMatrix;
    }

    @Override
    public BlockRealMatrix getRowMatrix(int i10) throws OutOfRangeException {
        MatrixUtils.checkRowIndex(this, i10);
        BlockRealMatrix blockRealMatrix = new BlockRealMatrix(1, this.columns);
        int i11 = i10 / 52;
        int i12 = i10 - (i11 * 52);
        double[] dArr = blockRealMatrix.blocks[0];
        int i13 = 0;
        int i14 = 0;
        for (int i15 = 0; i15 < this.blockColumns; i15++) {
            int blockWidth = blockWidth(i15);
            double[] dArr2 = this.blocks[(this.blockColumns * i11) + i15];
            int length = dArr.length - i13;
            if (blockWidth > length) {
                int i16 = i12 * blockWidth;
                System.arraycopy(dArr2, i16, dArr, i13, length);
                i14++;
                dArr = blockRealMatrix.blocks[i14];
                int i17 = blockWidth - length;
                System.arraycopy(dArr2, i16, dArr, 0, i17);
                i13 = i17;
            } else {
                System.arraycopy(dArr2, i12 * blockWidth, dArr, i13, blockWidth);
                i13 += blockWidth;
            }
        }
        return blockRealMatrix;
    }

    @Override
    public BlockRealMatrix getSubMatrix(int i10, int i11, int i12, int i13) throws OutOfRangeException, NumberIsTooSmallException {
        int i14;
        int i15;
        int i16;
        MatrixUtils.checkSubMatrixIndex(this, i10, i11, i12, i13);
        BlockRealMatrix blockRealMatrix = new BlockRealMatrix((i11 - i10) + 1, (i13 - i12) + 1);
        int i17 = i10 % 52;
        int i18 = i12 / 52;
        int i19 = i12 % 52;
        int i20 = i10 / 52;
        int i21 = 0;
        while (i21 < blockRealMatrix.blockRows) {
            int blockHeight = blockRealMatrix.blockHeight(i21);
            int i22 = i18;
            int i23 = 0;
            while (i23 < blockRealMatrix.blockColumns) {
                int blockWidth = blockRealMatrix.blockWidth(i23);
                double[] dArr = blockRealMatrix.blocks[(blockRealMatrix.blockColumns * i21) + i23];
                int i24 = (this.blockColumns * i20) + i22;
                int blockWidth2 = blockWidth(i22);
                int i25 = blockHeight + i17;
                int i26 = i25 - 52;
                int i27 = blockWidth + i19;
                int i28 = i27 - 52;
                if (i26 <= 0) {
                    i14 = i22;
                    i15 = i23;
                    i16 = i21;
                    if (i28 > 0) {
                        int blockWidth3 = blockWidth(i14 + 1);
                        copyBlockPart(this.blocks[i24], blockWidth2, i17, i25, i19, 52, dArr, blockWidth, 0, 0);
                        copyBlockPart(this.blocks[i24 + 1], blockWidth3, i17, i25, 0, i28, dArr, blockWidth, 0, blockWidth - i28);
                    } else {
                        copyBlockPart(this.blocks[i24], blockWidth2, i17, i25, i19, i27, dArr, blockWidth, 0, 0);
                    }
                } else if (i28 > 0) {
                    int blockWidth4 = blockWidth(i22 + 1);
                    i14 = i22;
                    i15 = i23;
                    i16 = i21;
                    copyBlockPart(this.blocks[i24], blockWidth2, i17, 52, i19, 52, dArr, blockWidth, 0, 0);
                    int i29 = blockWidth - i28;
                    copyBlockPart(this.blocks[i24 + 1], blockWidth4, i17, 52, 0, i28, dArr, blockWidth, 0, i29);
                    int i30 = blockHeight - i26;
                    copyBlockPart(this.blocks[i24 + this.blockColumns], blockWidth2, 0, i26, i19, 52, dArr, blockWidth, i30, 0);
                    copyBlockPart(this.blocks[i24 + this.blockColumns + 1], blockWidth4, 0, i26, 0, i28, dArr, blockWidth, i30, i29);
                } else {
                    i14 = i22;
                    i15 = i23;
                    i16 = i21;
                    copyBlockPart(this.blocks[i24], blockWidth2, i17, 52, i19, i27, dArr, blockWidth, 0, 0);
                    copyBlockPart(this.blocks[i24 + this.blockColumns], blockWidth2, 0, i26, i19, i27, dArr, blockWidth, blockHeight - i26, 0);
                }
                i22 = i14 + 1;
                i23 = i15 + 1;
                i21 = i16;
            }
            i20++;
            i21++;
        }
        return blockRealMatrix;
    }

    @Override
    public BlockRealMatrix multiply(RealMatrix realMatrix) throws DimensionMismatchException {
        BlockRealMatrix blockRealMatrix = this;
        try {
            return blockRealMatrix.multiply((BlockRealMatrix) realMatrix);
        } catch (ClassCastException unused) {
            MatrixUtils.checkMultiplicationCompatible(this, realMatrix);
            BlockRealMatrix blockRealMatrix2 = new BlockRealMatrix(blockRealMatrix.rows, realMatrix.getColumnDimension());
            int i10 = 0;
            int i11 = 0;
            while (i10 < blockRealMatrix2.blockRows) {
                int i12 = i10 * 52;
                int min = FastMath.min(i12 + 52, blockRealMatrix.rows);
                int i13 = 0;
                while (i13 < blockRealMatrix2.blockColumns) {
                    int i14 = i13 * 52;
                    int min2 = FastMath.min(i14 + 52, realMatrix.getColumnDimension());
                    double[] dArr = blockRealMatrix2.blocks[i11];
                    int i15 = 0;
                    while (i15 < blockRealMatrix.blockColumns) {
                        int blockWidth = blockRealMatrix.blockWidth(i15);
                        double[] dArr2 = blockRealMatrix.blocks[(blockRealMatrix.blockColumns * i10) + i15];
                        int i16 = i15 * 52;
                        int i17 = i12;
                        int i18 = 0;
                        while (i17 < min) {
                            int i19 = (i17 - i12) * blockWidth;
                            int i20 = i19 + blockWidth;
                            int i21 = i12;
                            int i22 = i14;
                            while (i22 < min2) {
                                double d10 = 0.0d;
                                int i23 = min;
                                int i24 = i14;
                                int i25 = i16;
                                for (int i26 = i19; i26 < i20; i26++) {
                                    d10 += dArr2[i26] * realMatrix.getEntry(i25, i22);
                                    i25++;
                                }
                                dArr[i18] = dArr[i18] + d10;
                                i18++;
                                i22++;
                                min = i23;
                                i14 = i24;
                            }
                            i17++;
                            i12 = i21;
                        }
                        i15++;
                        blockRealMatrix = this;
                    }
                    i11++;
                    i13++;
                    blockRealMatrix = this;
                }
                i10++;
                blockRealMatrix = this;
            }
            return blockRealMatrix2;
        }
    }

    @Override
    public BlockRealMatrix scalarAdd(double d10) {
        BlockRealMatrix blockRealMatrix = new BlockRealMatrix(this.rows, this.columns);
        int i10 = 0;
        while (true) {
            double[][] dArr = blockRealMatrix.blocks;
            if (i10 >= dArr.length) {
                return blockRealMatrix;
            }
            double[] dArr2 = dArr[i10];
            double[] dArr3 = this.blocks[i10];
            for (int i11 = 0; i11 < dArr2.length; i11++) {
                dArr2[i11] = dArr3[i11] + d10;
            }
            i10++;
        }
    }

    @Override
    public BlockRealMatrix subtract(RealMatrix realMatrix) throws MatrixDimensionMismatchException {
        try {
            return subtract((BlockRealMatrix) realMatrix);
        } catch (ClassCastException unused) {
            MatrixUtils.checkSubtractionCompatible(this, realMatrix);
            BlockRealMatrix blockRealMatrix = new BlockRealMatrix(this.rows, this.columns);
            int i10 = 0;
            for (int i11 = 0; i11 < blockRealMatrix.blockRows; i11++) {
                for (int i12 = 0; i12 < blockRealMatrix.blockColumns; i12++) {
                    double[] dArr = blockRealMatrix.blocks[i10];
                    double[] dArr2 = this.blocks[i10];
                    int i13 = i11 * 52;
                    int min = FastMath.min(i13 + 52, this.rows);
                    int i14 = i12 * 52;
                    int min2 = FastMath.min(i14 + 52, this.columns);
                    int i15 = 0;
                    while (i13 < min) {
                        for (int i16 = i14; i16 < min2; i16++) {
                            dArr[i15] = dArr2[i15] - realMatrix.getEntry(i13, i16);
                            i15++;
                        }
                        i13++;
                    }
                    i10++;
                }
            }
            return blockRealMatrix;
        }
    }

    @Override
    public BlockRealMatrix transpose() {
        BlockRealMatrix blockRealMatrix = new BlockRealMatrix(getColumnDimension(), getRowDimension());
        int i10 = 0;
        for (int i11 = 0; i11 < this.blockColumns; i11++) {
            for (int i12 = 0; i12 < this.blockRows; i12++) {
                double[] dArr = blockRealMatrix.blocks[i10];
                double[] dArr2 = this.blocks[(this.blockColumns * i12) + i11];
                int i13 = i11 * 52;
                int min = FastMath.min(i13 + 52, this.columns);
                int i14 = i12 * 52;
                int min2 = FastMath.min(i14 + 52, this.rows);
                int i15 = 0;
                for (int i16 = i13; i16 < min; i16++) {
                    int i17 = min - i13;
                    int i18 = i16 - i13;
                    for (int i19 = i14; i19 < min2; i19++) {
                        dArr[i15] = dArr2[i18];
                        i15++;
                        i18 += i17;
                    }
                }
                i10++;
            }
        }
        return blockRealMatrix;
    }

    public void setColumnMatrix(int i10, BlockRealMatrix blockRealMatrix) throws OutOfRangeException, MatrixDimensionMismatchException {
        MatrixUtils.checkColumnIndex(this, i10);
        int rowDimension = getRowDimension();
        if (blockRealMatrix.getRowDimension() == rowDimension && blockRealMatrix.getColumnDimension() == 1) {
            int i11 = i10 / 52;
            int i12 = i10 - (i11 * 52);
            int blockWidth = blockWidth(i11);
            double[] dArr = blockRealMatrix.blocks[0];
            int i13 = 0;
            int i14 = 0;
            for (int i15 = 0; i15 < this.blockRows; i15++) {
                int blockHeight = blockHeight(i15);
                double[] dArr2 = this.blocks[(this.blockColumns * i15) + i11];
                int i16 = 0;
                while (i16 < blockHeight) {
                    if (i13 >= dArr.length) {
                        i14++;
                        dArr = blockRealMatrix.blocks[i14];
                        i13 = 0;
                    }
                    dArr2[(i16 * blockWidth) + i12] = dArr[i13];
                    i16++;
                    i13++;
                }
            }
            return;
        }
        throw new MatrixDimensionMismatchException(blockRealMatrix.getRowDimension(), blockRealMatrix.getColumnDimension(), rowDimension, 1);
    }

    public void setRowMatrix(int i10, BlockRealMatrix blockRealMatrix) throws OutOfRangeException, MatrixDimensionMismatchException {
        MatrixUtils.checkRowIndex(this, i10);
        int columnDimension = getColumnDimension();
        if (blockRealMatrix.getRowDimension() == 1 && blockRealMatrix.getColumnDimension() == columnDimension) {
            int i11 = i10 / 52;
            int i12 = i10 - (i11 * 52);
            double[] dArr = blockRealMatrix.blocks[0];
            int i13 = 0;
            int i14 = 0;
            for (int i15 = 0; i15 < this.blockColumns; i15++) {
                int blockWidth = blockWidth(i15);
                double[] dArr2 = this.blocks[(this.blockColumns * i11) + i15];
                int length = dArr.length - i13;
                if (blockWidth > length) {
                    int i16 = i12 * blockWidth;
                    System.arraycopy(dArr, i13, dArr2, i16, length);
                    i14++;
                    dArr = blockRealMatrix.blocks[i14];
                    int i17 = blockWidth - length;
                    System.arraycopy(dArr, 0, dArr2, i16, i17);
                    i13 = i17;
                } else {
                    System.arraycopy(dArr, i13, dArr2, i12 * blockWidth, blockWidth);
                    i13 += blockWidth;
                }
            }
            return;
        }
        throw new MatrixDimensionMismatchException(blockRealMatrix.getRowDimension(), blockRealMatrix.getColumnDimension(), 1, columnDimension);
    }

    public BlockRealMatrix(double[][] dArr) throws DimensionMismatchException, NotStrictlyPositiveException {
        this(dArr.length, dArr[0].length, toBlocksLayout(dArr), false);
    }

    public BlockRealMatrix(int i10, int i11, double[][] dArr, boolean z10) throws DimensionMismatchException, NotStrictlyPositiveException {
        super(i10, i11);
        this.rows = i10;
        this.columns = i11;
        int i12 = (i10 + 51) / 52;
        this.blockRows = i12;
        int i13 = (i11 + 51) / 52;
        this.blockColumns = i13;
        if (z10) {
            this.blocks = new double[i12 * i13];
        } else {
            this.blocks = dArr;
        }
        int i14 = 0;
        for (int i15 = 0; i15 < this.blockRows; i15++) {
            int blockHeight = blockHeight(i15);
            int i16 = 0;
            while (i16 < this.blockColumns) {
                if (dArr[i14].length != blockWidth(i16) * blockHeight) {
                    throw new DimensionMismatchException(dArr[i14].length, blockHeight * blockWidth(i16));
                }
                if (z10) {
                    this.blocks[i14] = (double[]) dArr[i14].clone();
                }
                i16++;
                i14++;
            }
        }
    }

    @Override
    public double walkInOptimizedOrder(RealMatrixPreservingVisitor realMatrixPreservingVisitor) {
        int i10 = this.rows;
        int i11 = this.columns;
        realMatrixPreservingVisitor.start(i10, i11, 0, i10 - 1, 0, i11 - 1);
        int i12 = 0;
        for (int i13 = 0; i13 < this.blockRows; i13++) {
            int i14 = i13 * 52;
            int min = FastMath.min(i14 + 52, this.rows);
            for (int i15 = 0; i15 < this.blockColumns; i15++) {
                int i16 = i15 * 52;
                int min2 = FastMath.min(i16 + 52, this.columns);
                double[] dArr = this.blocks[i12];
                int i17 = 0;
                for (int i18 = i14; i18 < min; i18++) {
                    for (int i19 = i16; i19 < min2; i19++) {
                        realMatrixPreservingVisitor.visit(i18, i19, dArr[i17]);
                        i17++;
                    }
                }
                i12++;
            }
        }
        return realMatrixPreservingVisitor.end();
    }

    @Override
    public double walkInRowOrder(RealMatrixPreservingVisitor realMatrixPreservingVisitor) {
        int i10 = this.rows;
        int i11 = this.columns;
        realMatrixPreservingVisitor.start(i10, i11, 0, i10 - 1, 0, i11 - 1);
        for (int i12 = 0; i12 < this.blockRows; i12++) {
            int i13 = i12 * 52;
            int min = FastMath.min(i13 + 52, this.rows);
            for (int i14 = i13; i14 < min; i14++) {
                for (int i15 = 0; i15 < this.blockColumns; i15++) {
                    int blockWidth = blockWidth(i15);
                    int i16 = i15 * 52;
                    int min2 = FastMath.min(i16 + 52, this.columns);
                    double[] dArr = this.blocks[(this.blockColumns * i12) + i15];
                    int i17 = (i14 - i13) * blockWidth;
                    while (i16 < min2) {
                        realMatrixPreservingVisitor.visit(i14, i16, dArr[i17]);
                        i17++;
                        i16++;
                    }
                }
            }
        }
        return realMatrixPreservingVisitor.end();
    }

    public BlockRealMatrix add(BlockRealMatrix blockRealMatrix) throws MatrixDimensionMismatchException {
        MatrixUtils.checkAdditionCompatible(this, blockRealMatrix);
        BlockRealMatrix blockRealMatrix2 = new BlockRealMatrix(this.rows, this.columns);
        int i10 = 0;
        while (true) {
            double[][] dArr = blockRealMatrix2.blocks;
            if (i10 >= dArr.length) {
                return blockRealMatrix2;
            }
            double[] dArr2 = dArr[i10];
            double[] dArr3 = this.blocks[i10];
            double[] dArr4 = blockRealMatrix.blocks[i10];
            for (int i11 = 0; i11 < dArr2.length; i11++) {
                dArr2[i11] = dArr3[i11] + dArr4[i11];
            }
            i10++;
        }
    }

    public BlockRealMatrix subtract(BlockRealMatrix blockRealMatrix) throws MatrixDimensionMismatchException {
        MatrixUtils.checkSubtractionCompatible(this, blockRealMatrix);
        BlockRealMatrix blockRealMatrix2 = new BlockRealMatrix(this.rows, this.columns);
        int i10 = 0;
        while (true) {
            double[][] dArr = blockRealMatrix2.blocks;
            if (i10 >= dArr.length) {
                return blockRealMatrix2;
            }
            double[] dArr2 = dArr[i10];
            double[] dArr3 = this.blocks[i10];
            double[] dArr4 = blockRealMatrix.blocks[i10];
            for (int i11 = 0; i11 < dArr2.length; i11++) {
                dArr2[i11] = dArr3[i11] - dArr4[i11];
            }
            i10++;
        }
    }

    public BlockRealMatrix multiply(BlockRealMatrix blockRealMatrix) throws DimensionMismatchException {
        int i10;
        BlockRealMatrix blockRealMatrix2 = this;
        BlockRealMatrix blockRealMatrix3 = blockRealMatrix;
        MatrixUtils.checkMultiplicationCompatible(this, blockRealMatrix);
        BlockRealMatrix blockRealMatrix4 = new BlockRealMatrix(blockRealMatrix2.rows, blockRealMatrix3.columns);
        int i11 = 0;
        int i12 = 0;
        while (i11 < blockRealMatrix4.blockRows) {
            int i13 = i11 * 52;
            int min = FastMath.min(i13 + 52, blockRealMatrix2.rows);
            int i14 = 0;
            while (i14 < blockRealMatrix4.blockColumns) {
                int blockWidth = blockRealMatrix4.blockWidth(i14);
                int i15 = blockWidth + blockWidth;
                int i16 = i15 + blockWidth;
                int i17 = i16 + blockWidth;
                double[] dArr = blockRealMatrix4.blocks[i12];
                int i18 = 0;
                while (i18 < blockRealMatrix2.blockColumns) {
                    int blockWidth2 = blockRealMatrix2.blockWidth(i18);
                    BlockRealMatrix blockRealMatrix5 = blockRealMatrix4;
                    double[] dArr2 = blockRealMatrix2.blocks[(blockRealMatrix2.blockColumns * i11) + i18];
                    double[] dArr3 = blockRealMatrix3.blocks[(blockRealMatrix3.blockColumns * i18) + i14];
                    int i19 = i13;
                    int i20 = 0;
                    while (i19 < min) {
                        int i21 = (i19 - i13) * blockWidth2;
                        int i22 = i21 + blockWidth2;
                        int i23 = i13;
                        int i24 = 0;
                        while (i24 < blockWidth) {
                            double d10 = 0.0d;
                            int i25 = i24;
                            int i26 = min;
                            int i27 = i21;
                            while (true) {
                                i10 = blockWidth2;
                                if (i27 >= i22 - 3) {
                                    break;
                                }
                                d10 += (dArr2[i27] * dArr3[i25]) + (dArr2[i27 + 1] * dArr3[i25 + blockWidth]) + (dArr2[i27 + 2] * dArr3[i25 + i15]) + (dArr2[i27 + 3] * dArr3[i25 + i16]);
                                i27 += 4;
                                i25 += i17;
                                blockWidth2 = i10;
                            }
                            while (i27 < i22) {
                                d10 += dArr2[i27] * dArr3[i25];
                                i25 += blockWidth;
                                i27++;
                            }
                            dArr[i20] = dArr[i20] + d10;
                            i20++;
                            i24++;
                            min = i26;
                            blockWidth2 = i10;
                        }
                        i19++;
                        i13 = i23;
                    }
                    i18++;
                    blockRealMatrix2 = this;
                    blockRealMatrix3 = blockRealMatrix;
                    blockRealMatrix4 = blockRealMatrix5;
                }
                i12++;
                i14++;
                blockRealMatrix2 = this;
                blockRealMatrix3 = blockRealMatrix;
            }
            i11++;
            blockRealMatrix2 = this;
            blockRealMatrix3 = blockRealMatrix;
        }
        return blockRealMatrix4;
    }

    @Override
    public double walkInOptimizedOrder(RealMatrixChangingVisitor realMatrixChangingVisitor, int i10, int i11, int i12, int i13) throws OutOfRangeException, NumberIsTooSmallException {
        BlockRealMatrix blockRealMatrix = this;
        MatrixUtils.checkSubMatrixIndex(blockRealMatrix, i10, i11, i12, i13);
        realMatrixChangingVisitor.start(blockRealMatrix.rows, blockRealMatrix.columns, i10, i11, i12, i13);
        int i14 = i10 / 52;
        while (i14 < (i11 / 52) + 1) {
            int i15 = i14 * 52;
            int max = FastMath.max(i10, i15);
            int i16 = i14 + 1;
            int min = FastMath.min(i16 * 52, i11 + 1);
            int i17 = i12 / 52;
            while (i17 < (i13 / 52) + 1) {
                int blockWidth = blockRealMatrix.blockWidth(i17);
                int i18 = i17 * 52;
                int max2 = FastMath.max(i12, i18);
                int i19 = i17 + 1;
                int i20 = max;
                int min2 = FastMath.min(i19 * 52, i13 + 1);
                int i21 = i16;
                double[] dArr = blockRealMatrix.blocks[(blockRealMatrix.blockColumns * i14) + i17];
                int i22 = i20;
                while (i22 < min) {
                    int i23 = (((i22 - i15) * blockWidth) + max2) - i18;
                    int i24 = max2;
                    while (i24 < min2) {
                        dArr[i23] = realMatrixChangingVisitor.visit(i22, i24, dArr[i23]);
                        i23++;
                        i24++;
                        i14 = i14;
                        i15 = i15;
                        min2 = min2;
                    }
                    i22++;
                    min2 = min2;
                }
                blockRealMatrix = this;
                i17 = i19;
                max = i20;
                i16 = i21;
            }
            blockRealMatrix = this;
            i14 = i16;
        }
        return realMatrixChangingVisitor.end();
    }

    @Override
    public double walkInRowOrder(RealMatrixChangingVisitor realMatrixChangingVisitor, int i10, int i11, int i12, int i13) throws OutOfRangeException, NumberIsTooSmallException {
        BlockRealMatrix blockRealMatrix = this;
        MatrixUtils.checkSubMatrixIndex(blockRealMatrix, i10, i11, i12, i13);
        realMatrixChangingVisitor.start(blockRealMatrix.rows, blockRealMatrix.columns, i10, i11, i12, i13);
        int i14 = i10 / 52;
        while (i14 < (i11 / 52) + 1) {
            int i15 = i14 * 52;
            int max = FastMath.max(i10, i15);
            int i16 = i14 + 1;
            int min = FastMath.min(i16 * 52, i11 + 1);
            while (max < min) {
                int i17 = i12 / 52;
                while (i17 < (i13 / 52) + 1) {
                    int blockWidth = blockRealMatrix.blockWidth(i17);
                    int i18 = i17 * 52;
                    int max2 = FastMath.max(i12, i18);
                    int i19 = i17 + 1;
                    int i20 = i16;
                    int min2 = FastMath.min(i19 * 52, i13 + 1);
                    int i21 = min;
                    double[] dArr = blockRealMatrix.blocks[(blockRealMatrix.blockColumns * i14) + i17];
                    int i22 = (((max - i15) * blockWidth) + max2) - i18;
                    while (max2 < min2) {
                        dArr[i22] = realMatrixChangingVisitor.visit(max, max2, dArr[i22]);
                        i22++;
                        max2++;
                        i14 = i14;
                    }
                    blockRealMatrix = this;
                    i17 = i19;
                    i16 = i20;
                    min = i21;
                }
                max++;
                blockRealMatrix = this;
            }
            blockRealMatrix = this;
            i14 = i16;
        }
        return realMatrixChangingVisitor.end();
    }

    @Override
    public double walkInOptimizedOrder(RealMatrixPreservingVisitor realMatrixPreservingVisitor, int i10, int i11, int i12, int i13) throws OutOfRangeException, NumberIsTooSmallException {
        BlockRealMatrix blockRealMatrix = this;
        MatrixUtils.checkSubMatrixIndex(blockRealMatrix, i10, i11, i12, i13);
        realMatrixPreservingVisitor.start(blockRealMatrix.rows, blockRealMatrix.columns, i10, i11, i12, i13);
        int i14 = i10 / 52;
        while (i14 < (i11 / 52) + 1) {
            int i15 = i14 * 52;
            int max = FastMath.max(i10, i15);
            int i16 = i14 + 1;
            int min = FastMath.min(i16 * 52, i11 + 1);
            int i17 = i12 / 52;
            while (i17 < (i13 / 52) + 1) {
                int blockWidth = blockRealMatrix.blockWidth(i17);
                int i18 = i17 * 52;
                int max2 = FastMath.max(i12, i18);
                int i19 = i17 + 1;
                int i20 = max;
                int min2 = FastMath.min(i19 * 52, i13 + 1);
                int i21 = i16;
                double[] dArr = blockRealMatrix.blocks[(blockRealMatrix.blockColumns * i14) + i17];
                int i22 = i20;
                while (i22 < min) {
                    int i23 = (((i22 - i15) * blockWidth) + max2) - i18;
                    int i24 = max2;
                    while (i24 < min2) {
                        realMatrixPreservingVisitor.visit(i22, i24, dArr[i23]);
                        i23++;
                        i24++;
                        i14 = i14;
                        i15 = i15;
                        min2 = min2;
                    }
                    i22++;
                    min2 = min2;
                }
                blockRealMatrix = this;
                i17 = i19;
                max = i20;
                i16 = i21;
            }
            blockRealMatrix = this;
            i14 = i16;
        }
        return realMatrixPreservingVisitor.end();
    }

    @Override
    public double walkInRowOrder(RealMatrixPreservingVisitor realMatrixPreservingVisitor, int i10, int i11, int i12, int i13) throws OutOfRangeException, NumberIsTooSmallException {
        BlockRealMatrix blockRealMatrix = this;
        MatrixUtils.checkSubMatrixIndex(blockRealMatrix, i10, i11, i12, i13);
        realMatrixPreservingVisitor.start(blockRealMatrix.rows, blockRealMatrix.columns, i10, i11, i12, i13);
        int i14 = i10 / 52;
        while (i14 < (i11 / 52) + 1) {
            int i15 = i14 * 52;
            int max = FastMath.max(i10, i15);
            int i16 = i14 + 1;
            int min = FastMath.min(i16 * 52, i11 + 1);
            while (max < min) {
                int i17 = i12 / 52;
                while (i17 < (i13 / 52) + 1) {
                    int blockWidth = blockRealMatrix.blockWidth(i17);
                    int i18 = i17 * 52;
                    int max2 = FastMath.max(i12, i18);
                    int i19 = i17 + 1;
                    int i20 = i16;
                    int min2 = FastMath.min(i19 * 52, i13 + 1);
                    int i21 = min;
                    double[] dArr = blockRealMatrix.blocks[(blockRealMatrix.blockColumns * i14) + i17];
                    int i22 = (((max - i15) * blockWidth) + max2) - i18;
                    while (max2 < min2) {
                        realMatrixPreservingVisitor.visit(max, max2, dArr[i22]);
                        i22++;
                        max2++;
                        i14 = i14;
                    }
                    blockRealMatrix = this;
                    i17 = i19;
                    i16 = i20;
                    min = i21;
                }
                max++;
                blockRealMatrix = this;
            }
            blockRealMatrix = this;
            i14 = i16;
        }
        return realMatrixPreservingVisitor.end();
    }
}
