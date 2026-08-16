package org.apache.commons.math3.linear;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.OutOfRangeException;

public interface RealMatrix extends AnyMatrix {
    RealMatrix add(RealMatrix realMatrix) throws MatrixDimensionMismatchException;

    void addToEntry(int i10, int i11, double d10) throws OutOfRangeException;

    RealMatrix copy();

    void copySubMatrix(int i10, int i11, int i12, int i13, double[][] dArr) throws OutOfRangeException, NumberIsTooSmallException, MatrixDimensionMismatchException;

    void copySubMatrix(int[] iArr, int[] iArr2, double[][] dArr) throws OutOfRangeException, NullArgumentException, NoDataException, MatrixDimensionMismatchException;

    RealMatrix createMatrix(int i10, int i11) throws NotStrictlyPositiveException;

    double[] getColumn(int i10) throws OutOfRangeException;

    RealMatrix getColumnMatrix(int i10) throws OutOfRangeException;

    RealVector getColumnVector(int i10) throws OutOfRangeException;

    double[][] getData();

    double getEntry(int i10, int i11) throws OutOfRangeException;

    double getFrobeniusNorm();

    double getNorm();

    double[] getRow(int i10) throws OutOfRangeException;

    RealMatrix getRowMatrix(int i10) throws OutOfRangeException;

    RealVector getRowVector(int i10) throws OutOfRangeException;

    RealMatrix getSubMatrix(int i10, int i11, int i12, int i13) throws OutOfRangeException, NumberIsTooSmallException;

    RealMatrix getSubMatrix(int[] iArr, int[] iArr2) throws NullArgumentException, NoDataException, OutOfRangeException;

    double getTrace() throws NonSquareMatrixException;

    RealMatrix multiply(RealMatrix realMatrix) throws DimensionMismatchException;

    void multiplyEntry(int i10, int i11, double d10) throws OutOfRangeException;

    RealVector operate(RealVector realVector) throws DimensionMismatchException;

    double[] operate(double[] dArr) throws DimensionMismatchException;

    RealMatrix power(int i10) throws NotPositiveException, NonSquareMatrixException;

    RealMatrix preMultiply(RealMatrix realMatrix) throws DimensionMismatchException;

    RealVector preMultiply(RealVector realVector) throws DimensionMismatchException;

    double[] preMultiply(double[] dArr) throws DimensionMismatchException;

    RealMatrix scalarAdd(double d10);

    RealMatrix scalarMultiply(double d10);

    void setColumn(int i10, double[] dArr) throws OutOfRangeException, MatrixDimensionMismatchException;

    void setColumnMatrix(int i10, RealMatrix realMatrix) throws OutOfRangeException, MatrixDimensionMismatchException;

    void setColumnVector(int i10, RealVector realVector) throws OutOfRangeException, MatrixDimensionMismatchException;

    void setEntry(int i10, int i11, double d10) throws OutOfRangeException;

    void setRow(int i10, double[] dArr) throws OutOfRangeException, MatrixDimensionMismatchException;

    void setRowMatrix(int i10, RealMatrix realMatrix) throws OutOfRangeException, MatrixDimensionMismatchException;

    void setRowVector(int i10, RealVector realVector) throws OutOfRangeException, MatrixDimensionMismatchException;

    void setSubMatrix(double[][] dArr, int i10, int i11) throws NoDataException, OutOfRangeException, DimensionMismatchException, NullArgumentException;

    RealMatrix subtract(RealMatrix realMatrix) throws MatrixDimensionMismatchException;

    RealMatrix transpose();

    double walkInColumnOrder(RealMatrixChangingVisitor realMatrixChangingVisitor);

    double walkInColumnOrder(RealMatrixChangingVisitor realMatrixChangingVisitor, int i10, int i11, int i12, int i13) throws OutOfRangeException, NumberIsTooSmallException;

    double walkInColumnOrder(RealMatrixPreservingVisitor realMatrixPreservingVisitor);

    double walkInColumnOrder(RealMatrixPreservingVisitor realMatrixPreservingVisitor, int i10, int i11, int i12, int i13) throws OutOfRangeException, NumberIsTooSmallException;

    double walkInOptimizedOrder(RealMatrixChangingVisitor realMatrixChangingVisitor);

    double walkInOptimizedOrder(RealMatrixChangingVisitor realMatrixChangingVisitor, int i10, int i11, int i12, int i13) throws OutOfRangeException, NumberIsTooSmallException;

    double walkInOptimizedOrder(RealMatrixPreservingVisitor realMatrixPreservingVisitor);

    double walkInOptimizedOrder(RealMatrixPreservingVisitor realMatrixPreservingVisitor, int i10, int i11, int i12, int i13) throws OutOfRangeException, NumberIsTooSmallException;

    double walkInRowOrder(RealMatrixChangingVisitor realMatrixChangingVisitor);

    double walkInRowOrder(RealMatrixChangingVisitor realMatrixChangingVisitor, int i10, int i11, int i12, int i13) throws OutOfRangeException, NumberIsTooSmallException;

    double walkInRowOrder(RealMatrixPreservingVisitor realMatrixPreservingVisitor);

    double walkInRowOrder(RealMatrixPreservingVisitor realMatrixPreservingVisitor, int i10, int i11, int i12, int i13) throws OutOfRangeException, NumberIsTooSmallException;
}
