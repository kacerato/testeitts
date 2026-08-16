package org.apache.commons.math3.linear;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.reflect.Array;
import java.util.Arrays;
import org.apache.commons.math3.Field;
import org.apache.commons.math3.FieldElement;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.ZeroException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.fraction.BigFraction;
import org.apache.commons.math3.fraction.Fraction;
import org.apache.commons.math3.geometry.VectorFormat;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.MathUtils;
import org.apache.commons.math3.util.Precision;

public class MatrixUtils {
    public static final RealMatrixFormat DEFAULT_FORMAT = RealMatrixFormat.getInstance();
    public static final RealMatrixFormat OCTAVE_FORMAT = new RealMatrixFormat("[", "]", "", "", VectorFormat.DEFAULT_SEPARATOR, ", ");

    public static class BigFractionMatrixConverter extends DefaultFieldMatrixPreservingVisitor<BigFraction> {
        private double[][] data;

        public BigFractionMatrixConverter() {
            super(BigFraction.ZERO);
        }

        public Array2DRowRealMatrix getConvertedMatrix() {
            return new Array2DRowRealMatrix(this.data, false);
        }

        @Override
        public void start(int i10, int i11, int i12, int i13, int i14, int i15) {
            this.data = (double[][]) Array.newInstance(Double.TYPE, i10, i11);
        }

        @Override
        public void visit(int i10, int i11, BigFraction bigFraction) {
            this.data[i10][i11] = bigFraction.doubleValue();
        }
    }

    public static class FractionMatrixConverter extends DefaultFieldMatrixPreservingVisitor<Fraction> {
        private double[][] data;

        public FractionMatrixConverter() {
            super(Fraction.ZERO);
        }

        public Array2DRowRealMatrix getConvertedMatrix() {
            return new Array2DRowRealMatrix(this.data, false);
        }

        @Override
        public void start(int i10, int i11, int i12, int i13, int i14, int i15) {
            this.data = (double[][]) Array.newInstance(Double.TYPE, i10, i11);
        }

        @Override
        public void visit(int i10, int i11, Fraction fraction) {
            this.data[i10][i11] = fraction.doubleValue();
        }
    }

    private MatrixUtils() {
    }

    public static Array2DRowRealMatrix bigFractionMatrixToRealMatrix(FieldMatrix<BigFraction> fieldMatrix) {
        BigFractionMatrixConverter bigFractionMatrixConverter = new BigFractionMatrixConverter();
        fieldMatrix.walkInOptimizedOrder(bigFractionMatrixConverter);
        return bigFractionMatrixConverter.getConvertedMatrix();
    }

    public static RealMatrix blockInverse(RealMatrix realMatrix, int i10) {
        int rowDimension = realMatrix.getRowDimension();
        if (realMatrix.getColumnDimension() != rowDimension) {
            throw new NonSquareMatrixException(realMatrix.getRowDimension(), realMatrix.getColumnDimension());
        }
        int i11 = i10 + 1;
        RealMatrix subMatrix = realMatrix.getSubMatrix(0, i10, 0, i10);
        int i12 = rowDimension - 1;
        RealMatrix subMatrix2 = realMatrix.getSubMatrix(0, i10, i11, i12);
        RealMatrix subMatrix3 = realMatrix.getSubMatrix(i11, i12, 0, i10);
        RealMatrix subMatrix4 = realMatrix.getSubMatrix(i11, i12, i11, i12);
        DecompositionSolver solver = new SingularValueDecomposition(subMatrix).getSolver();
        if (!solver.isNonSingular()) {
            throw new SingularMatrixException();
        }
        RealMatrix inverse = solver.getInverse();
        DecompositionSolver solver2 = new SingularValueDecomposition(subMatrix4).getSolver();
        if (!solver2.isNonSingular()) {
            throw new SingularMatrixException();
        }
        RealMatrix inverse2 = solver2.getInverse();
        DecompositionSolver solver3 = new SingularValueDecomposition(subMatrix.subtract(subMatrix2.multiply(inverse2).multiply(subMatrix3))).getSolver();
        if (!solver3.isNonSingular()) {
            throw new SingularMatrixException();
        }
        RealMatrix inverse3 = solver3.getInverse();
        DecompositionSolver solver4 = new SingularValueDecomposition(subMatrix4.subtract(subMatrix3.multiply(inverse).multiply(subMatrix2))).getSolver();
        if (!solver4.isNonSingular()) {
            throw new SingularMatrixException();
        }
        RealMatrix inverse4 = solver4.getInverse();
        RealMatrix scalarMultiply = inverse.multiply(subMatrix2).multiply(inverse4).scalarMultiply(-1.0d);
        RealMatrix scalarMultiply2 = inverse2.multiply(subMatrix3).multiply(inverse3).scalarMultiply(-1.0d);
        Array2DRowRealMatrix array2DRowRealMatrix = new Array2DRowRealMatrix(rowDimension, rowDimension);
        array2DRowRealMatrix.setSubMatrix(inverse3.getData(), 0, 0);
        array2DRowRealMatrix.setSubMatrix(scalarMultiply.getData(), 0, i11);
        array2DRowRealMatrix.setSubMatrix(scalarMultiply2.getData(), i11, 0);
        array2DRowRealMatrix.setSubMatrix(inverse4.getData(), i11, i11);
        return array2DRowRealMatrix;
    }

    public static void checkAdditionCompatible(AnyMatrix anyMatrix, AnyMatrix anyMatrix2) throws MatrixDimensionMismatchException {
        if (anyMatrix.getRowDimension() != anyMatrix2.getRowDimension() || anyMatrix.getColumnDimension() != anyMatrix2.getColumnDimension()) {
            throw new MatrixDimensionMismatchException(anyMatrix.getRowDimension(), anyMatrix.getColumnDimension(), anyMatrix2.getRowDimension(), anyMatrix2.getColumnDimension());
        }
    }

    public static void checkColumnIndex(AnyMatrix anyMatrix, int i10) throws OutOfRangeException {
        if (i10 < 0 || i10 >= anyMatrix.getColumnDimension()) {
            throw new OutOfRangeException(LocalizedFormats.COLUMN_INDEX, Integer.valueOf(i10), 0, Integer.valueOf(anyMatrix.getColumnDimension() - 1));
        }
    }

    public static void checkMatrixIndex(AnyMatrix anyMatrix, int i10, int i11) throws OutOfRangeException {
        checkRowIndex(anyMatrix, i10);
        checkColumnIndex(anyMatrix, i11);
    }

    public static void checkMultiplicationCompatible(AnyMatrix anyMatrix, AnyMatrix anyMatrix2) throws DimensionMismatchException {
        if (anyMatrix.getColumnDimension() != anyMatrix2.getRowDimension()) {
            throw new DimensionMismatchException(anyMatrix.getColumnDimension(), anyMatrix2.getRowDimension());
        }
    }

    public static void checkRowIndex(AnyMatrix anyMatrix, int i10) throws OutOfRangeException {
        if (i10 < 0 || i10 >= anyMatrix.getRowDimension()) {
            throw new OutOfRangeException(LocalizedFormats.ROW_INDEX, Integer.valueOf(i10), 0, Integer.valueOf(anyMatrix.getRowDimension() - 1));
        }
    }

    public static void checkSubMatrixIndex(AnyMatrix anyMatrix, int i10, int i11, int i12, int i13) throws NumberIsTooSmallException, OutOfRangeException {
        checkRowIndex(anyMatrix, i10);
        checkRowIndex(anyMatrix, i11);
        if (i11 >= i10) {
            checkColumnIndex(anyMatrix, i12);
            checkColumnIndex(anyMatrix, i13);
            if (i13 < i12) {
                throw new NumberIsTooSmallException(LocalizedFormats.INITIAL_COLUMN_AFTER_FINAL_COLUMN, Integer.valueOf(i13), Integer.valueOf(i12), false);
            }
            return;
        }
        throw new NumberIsTooSmallException(LocalizedFormats.INITIAL_ROW_AFTER_FINAL_ROW, Integer.valueOf(i11), Integer.valueOf(i10), false);
    }

    public static void checkSubtractionCompatible(AnyMatrix anyMatrix, AnyMatrix anyMatrix2) throws MatrixDimensionMismatchException {
        if (anyMatrix.getRowDimension() != anyMatrix2.getRowDimension() || anyMatrix.getColumnDimension() != anyMatrix2.getColumnDimension()) {
            throw new MatrixDimensionMismatchException(anyMatrix.getRowDimension(), anyMatrix.getColumnDimension(), anyMatrix2.getRowDimension(), anyMatrix2.getColumnDimension());
        }
    }

    public static void checkSymmetric(RealMatrix realMatrix, double d10) {
        isSymmetricInternal(realMatrix, d10, true);
    }

    public static <T extends FieldElement<T>> FieldMatrix<T> createColumnFieldMatrix(T[] tArr) throws NoDataException, NullArgumentException {
        if (tArr == null) {
            throw new NullArgumentException();
        }
        int length = tArr.length;
        if (length == 0) {
            throw new NoDataException(LocalizedFormats.AT_LEAST_ONE_ROW);
        }
        FieldMatrix<T> createFieldMatrix = createFieldMatrix(tArr[0].getField(), length, 1);
        for (int i10 = 0; i10 < length; i10++) {
            createFieldMatrix.setEntry(i10, 0, tArr[i10]);
        }
        return createFieldMatrix;
    }

    public static RealMatrix createColumnRealMatrix(double[] dArr) throws NoDataException, NullArgumentException {
        if (dArr == null) {
            throw new NullArgumentException();
        }
        int length = dArr.length;
        RealMatrix createRealMatrix = createRealMatrix(length, 1);
        for (int i10 = 0; i10 < length; i10++) {
            createRealMatrix.setEntry(i10, 0, dArr[i10]);
        }
        return createRealMatrix;
    }

    public static <T extends FieldElement<T>> FieldMatrix<T> createFieldDiagonalMatrix(T[] tArr) {
        FieldMatrix<T> createFieldMatrix = createFieldMatrix(tArr[0].getField(), tArr.length, tArr.length);
        for (int i10 = 0; i10 < tArr.length; i10++) {
            createFieldMatrix.setEntry(i10, i10, tArr[i10]);
        }
        return createFieldMatrix;
    }

    public static <T extends FieldElement<T>> FieldMatrix<T> createFieldIdentityMatrix(Field<T> field, int i10) {
        T zero = field.getZero();
        T one = field.getOne();
        FieldElement[][] fieldElementArr = (FieldElement[][]) MathArrays.buildArray(field, i10, i10);
        for (int i11 = 0; i11 < i10; i11++) {
            FieldElement[] fieldElementArr2 = fieldElementArr[i11];
            Arrays.fill(fieldElementArr2, zero);
            fieldElementArr2[i11] = one;
        }
        return new Array2DRowFieldMatrix((Field) field, fieldElementArr, false);
    }

    public static <T extends FieldElement<T>> FieldMatrix<T> createFieldMatrix(Field<T> field, int i10, int i11) {
        return i10 * i11 <= 4096 ? new Array2DRowFieldMatrix(field, i10, i11) : new BlockFieldMatrix(field, i10, i11);
    }

    public static <T extends FieldElement<T>> FieldVector<T> createFieldVector(T[] tArr) throws NoDataException, NullArgumentException, ZeroException {
        if (tArr == null) {
            throw new NullArgumentException();
        }
        if (tArr.length != 0) {
            return new ArrayFieldVector(tArr[0].getField(), (FieldElement[]) tArr, true);
        }
        throw new ZeroException(LocalizedFormats.VECTOR_MUST_HAVE_AT_LEAST_ONE_ELEMENT, new Object[0]);
    }

    public static RealMatrix createRealDiagonalMatrix(double[] dArr) {
        RealMatrix createRealMatrix = createRealMatrix(dArr.length, dArr.length);
        for (int i10 = 0; i10 < dArr.length; i10++) {
            createRealMatrix.setEntry(i10, i10, dArr[i10]);
        }
        return createRealMatrix;
    }

    public static RealMatrix createRealIdentityMatrix(int i10) {
        RealMatrix createRealMatrix = createRealMatrix(i10, i10);
        for (int i11 = 0; i11 < i10; i11++) {
            createRealMatrix.setEntry(i11, i11, 1.0d);
        }
        return createRealMatrix;
    }

    public static RealMatrix createRealMatrix(int i10, int i11) {
        return i10 * i11 <= 4096 ? new Array2DRowRealMatrix(i10, i11) : new BlockRealMatrix(i10, i11);
    }

    public static RealVector createRealVector(double[] dArr) throws NoDataException, NullArgumentException {
        if (dArr != null) {
            return new ArrayRealVector(dArr, true);
        }
        throw new NullArgumentException();
    }

    public static <T extends FieldElement<T>> FieldMatrix<T> createRowFieldMatrix(T[] tArr) throws NoDataException, NullArgumentException {
        if (tArr == null) {
            throw new NullArgumentException();
        }
        int length = tArr.length;
        if (length == 0) {
            throw new NoDataException(LocalizedFormats.AT_LEAST_ONE_COLUMN);
        }
        FieldMatrix<T> createFieldMatrix = createFieldMatrix(tArr[0].getField(), 1, length);
        for (int i10 = 0; i10 < length; i10++) {
            createFieldMatrix.setEntry(0, i10, tArr[i10]);
        }
        return createFieldMatrix;
    }

    public static RealMatrix createRowRealMatrix(double[] dArr) throws NoDataException, NullArgumentException {
        if (dArr == null) {
            throw new NullArgumentException();
        }
        int length = dArr.length;
        RealMatrix createRealMatrix = createRealMatrix(1, length);
        for (int i10 = 0; i10 < length; i10++) {
            createRealMatrix.setEntry(0, i10, dArr[i10]);
        }
        return createRealMatrix;
    }

    public static void deserializeRealMatrix(Object obj, String str, ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        try {
            int readInt = objectInputStream.readInt();
            int readInt2 = objectInputStream.readInt();
            double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, readInt, readInt2);
            for (int i10 = 0; i10 < readInt; i10++) {
                double[] dArr2 = dArr[i10];
                for (int i11 = 0; i11 < readInt2; i11++) {
                    dArr2[i11] = objectInputStream.readDouble();
                }
            }
            Array2DRowRealMatrix array2DRowRealMatrix = new Array2DRowRealMatrix(dArr, false);
            java.lang.reflect.Field declaredField = obj.getClass().getDeclaredField(str);
            declaredField.setAccessible(true);
            declaredField.set(obj, array2DRowRealMatrix);
        } catch (IllegalAccessException e10) {
            IOException iOException = new IOException();
            iOException.initCause(e10);
            throw iOException;
        } catch (NoSuchFieldException e11) {
            IOException iOException2 = new IOException();
            iOException2.initCause(e11);
            throw iOException2;
        }
    }

    public static void deserializeRealVector(Object obj, String str, ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        try {
            int readInt = objectInputStream.readInt();
            double[] dArr = new double[readInt];
            for (int i10 = 0; i10 < readInt; i10++) {
                dArr[i10] = objectInputStream.readDouble();
            }
            ArrayRealVector arrayRealVector = new ArrayRealVector(dArr, false);
            java.lang.reflect.Field declaredField = obj.getClass().getDeclaredField(str);
            declaredField.setAccessible(true);
            declaredField.set(obj, arrayRealVector);
        } catch (IllegalAccessException e10) {
            IOException iOException = new IOException();
            iOException.initCause(e10);
            throw iOException;
        } catch (NoSuchFieldException e11) {
            IOException iOException2 = new IOException();
            iOException2.initCause(e11);
            throw iOException2;
        }
    }

    public static Array2DRowRealMatrix fractionMatrixToRealMatrix(FieldMatrix<Fraction> fieldMatrix) {
        FractionMatrixConverter fractionMatrixConverter = new FractionMatrixConverter();
        fieldMatrix.walkInOptimizedOrder(fractionMatrixConverter);
        return fractionMatrixConverter.getConvertedMatrix();
    }

    public static RealMatrix inverse(RealMatrix realMatrix) throws NullArgumentException, SingularMatrixException, NonSquareMatrixException {
        return inverse(realMatrix, 0.0d);
    }

    public static boolean isSymmetric(RealMatrix realMatrix, double d10) {
        return isSymmetricInternal(realMatrix, d10, false);
    }

    private static boolean isSymmetricInternal(RealMatrix realMatrix, double d10, boolean z10) {
        int rowDimension = realMatrix.getRowDimension();
        if (rowDimension != realMatrix.getColumnDimension()) {
            if (z10) {
                throw new NonSquareMatrixException(rowDimension, realMatrix.getColumnDimension());
            }
            return false;
        }
        int i10 = 0;
        while (i10 < rowDimension) {
            int i11 = i10 + 1;
            for (int i12 = i11; i12 < rowDimension; i12++) {
                double entry = realMatrix.getEntry(i10, i12);
                double entry2 = realMatrix.getEntry(i12, i10);
                if (FastMath.abs(entry - entry2) > FastMath.max(FastMath.abs(entry), FastMath.abs(entry2)) * d10) {
                    if (z10) {
                        throw new NonSymmetricMatrixException(i10, i12, d10);
                    }
                    return false;
                }
            }
            i10 = i11;
        }
        return true;
    }

    public static void serializeRealMatrix(RealMatrix realMatrix, ObjectOutputStream objectOutputStream) throws IOException {
        int rowDimension = realMatrix.getRowDimension();
        int columnDimension = realMatrix.getColumnDimension();
        objectOutputStream.writeInt(rowDimension);
        objectOutputStream.writeInt(columnDimension);
        for (int i10 = 0; i10 < rowDimension; i10++) {
            for (int i11 = 0; i11 < columnDimension; i11++) {
                objectOutputStream.writeDouble(realMatrix.getEntry(i10, i11));
            }
        }
    }

    public static void serializeRealVector(RealVector realVector, ObjectOutputStream objectOutputStream) throws IOException {
        int dimension = realVector.getDimension();
        objectOutputStream.writeInt(dimension);
        for (int i10 = 0; i10 < dimension; i10++) {
            objectOutputStream.writeDouble(realVector.getEntry(i10));
        }
    }

    public static void solveLowerTriangularSystem(RealMatrix realMatrix, RealVector realVector) throws DimensionMismatchException, MathArithmeticException, NonSquareMatrixException {
        if (realMatrix == null || realVector == null || realMatrix.getRowDimension() != realVector.getDimension()) {
            throw new DimensionMismatchException(realMatrix == null ? 0 : realMatrix.getRowDimension(), realVector != null ? realVector.getDimension() : 0);
        }
        if (realMatrix.getColumnDimension() != realMatrix.getRowDimension()) {
            throw new NonSquareMatrixException(realMatrix.getRowDimension(), realMatrix.getColumnDimension());
        }
        int rowDimension = realMatrix.getRowDimension();
        int i10 = 0;
        while (i10 < rowDimension) {
            double entry = realMatrix.getEntry(i10, i10);
            if (FastMath.abs(entry) < Precision.SAFE_MIN) {
                throw new MathArithmeticException(LocalizedFormats.ZERO_DENOMINATOR, new Object[0]);
            }
            double entry2 = realVector.getEntry(i10) / entry;
            realVector.setEntry(i10, entry2);
            int i11 = i10 + 1;
            for (int i12 = i11; i12 < rowDimension; i12++) {
                realVector.setEntry(i12, realVector.getEntry(i12) - (realMatrix.getEntry(i12, i10) * entry2));
            }
            i10 = i11;
        }
    }

    public static void solveUpperTriangularSystem(RealMatrix realMatrix, RealVector realVector) throws DimensionMismatchException, MathArithmeticException, NonSquareMatrixException {
        if (realMatrix == null || realVector == null || realMatrix.getRowDimension() != realVector.getDimension()) {
            throw new DimensionMismatchException(realMatrix == null ? 0 : realMatrix.getRowDimension(), realVector != null ? realVector.getDimension() : 0);
        }
        if (realMatrix.getColumnDimension() != realMatrix.getRowDimension()) {
            throw new NonSquareMatrixException(realMatrix.getRowDimension(), realMatrix.getColumnDimension());
        }
        int rowDimension = realMatrix.getRowDimension();
        while (true) {
            rowDimension--;
            if (rowDimension <= -1) {
                return;
            }
            double entry = realMatrix.getEntry(rowDimension, rowDimension);
            if (FastMath.abs(entry) < Precision.SAFE_MIN) {
                throw new MathArithmeticException(LocalizedFormats.ZERO_DENOMINATOR, new Object[0]);
            }
            double entry2 = realVector.getEntry(rowDimension) / entry;
            realVector.setEntry(rowDimension, entry2);
            for (int i10 = rowDimension - 1; i10 > -1; i10--) {
                realVector.setEntry(i10, realVector.getEntry(i10) - (realMatrix.getEntry(i10, rowDimension) * entry2));
            }
        }
    }

    public static <T extends FieldElement<T>> FieldMatrix<T> createFieldMatrix(T[][] tArr) throws DimensionMismatchException, NoDataException, NullArgumentException {
        T[] tArr2;
        if (tArr == null || (tArr2 = tArr[0]) == null) {
            throw new NullArgumentException();
        }
        return tArr.length * tArr2.length <= 4096 ? new Array2DRowFieldMatrix(tArr) : new BlockFieldMatrix(tArr);
    }

    public static RealMatrix createRealMatrix(double[][] dArr) throws NullArgumentException, DimensionMismatchException, NoDataException {
        double[] dArr2;
        if (dArr == null || (dArr2 = dArr[0]) == null) {
            throw new NullArgumentException();
        }
        return dArr.length * dArr2.length <= 4096 ? new Array2DRowRealMatrix(dArr) : new BlockRealMatrix(dArr);
    }

    public static RealMatrix inverse(RealMatrix realMatrix, double d10) throws NullArgumentException, SingularMatrixException, NonSquareMatrixException {
        MathUtils.checkNotNull(realMatrix);
        if (realMatrix.isSquare()) {
            if (realMatrix instanceof DiagonalMatrix) {
                return ((DiagonalMatrix) realMatrix).inverse(d10);
            }
            return new QRDecomposition(realMatrix, d10).getSolver().getInverse();
        }
        throw new NonSquareMatrixException(realMatrix.getRowDimension(), realMatrix.getColumnDimension());
    }

    public static void checkSubMatrixIndex(AnyMatrix anyMatrix, int[] iArr, int[] iArr2) throws NoDataException, NullArgumentException, OutOfRangeException {
        if (iArr == null) {
            throw new NullArgumentException();
        }
        if (iArr2 != null) {
            if (iArr.length != 0) {
                if (iArr2.length != 0) {
                    for (int i10 : iArr) {
                        checkRowIndex(anyMatrix, i10);
                    }
                    for (int i11 : iArr2) {
                        checkColumnIndex(anyMatrix, i11);
                    }
                    return;
                }
                throw new NoDataException(LocalizedFormats.EMPTY_SELECTED_COLUMN_INDEX_ARRAY);
            }
            throw new NoDataException(LocalizedFormats.EMPTY_SELECTED_ROW_INDEX_ARRAY);
        }
        throw new NullArgumentException();
    }
}
