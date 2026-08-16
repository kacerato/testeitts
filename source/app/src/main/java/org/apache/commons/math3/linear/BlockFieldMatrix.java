package org.apache.commons.math3.linear;

import java.io.Serializable;
import org.apache.commons.math3.Field;
import org.apache.commons.math3.FieldElement;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.Decimal64;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.MathUtils;

public class BlockFieldMatrix<T extends FieldElement<T>> extends AbstractFieldMatrix<T> implements Serializable {
    public static final int BLOCK_SIZE = 36;
    private static final long serialVersionUID = -4602336630143123183L;
    private final int blockColumns;
    private final int blockRows;
    private final T[][] blocks;
    private final int columns;
    private final int rows;

    public BlockFieldMatrix(Field<T> field, int i10, int i11) throws NotStrictlyPositiveException {
        super(field, i10, i11);
        this.rows = i10;
        this.columns = i11;
        this.blockRows = (i10 + 35) / 36;
        this.blockColumns = (i11 + 35) / 36;
        this.blocks = (T[][]) createBlocksLayout(field, i10, i11);
    }

    private int blockHeight(int i10) {
        if (i10 == this.blockRows - 1) {
            return this.rows - (i10 * 36);
        }
        return 36;
    }

    private int blockWidth(int i10) {
        if (i10 == this.blockColumns - 1) {
            return this.columns - (i10 * 36);
        }
        return 36;
    }

    private void copyBlockPart(T[] tArr, int i10, int i11, int i12, int i13, int i14, T[] tArr2, int i15, int i16, int i17) {
        int i18 = i14 - i13;
        int i19 = (i11 * i10) + i13;
        int i20 = (i16 * i15) + i17;
        while (i11 < i12) {
            System.arraycopy(tArr, i19, tArr2, i20, i18);
            i19 += i10;
            i20 += i15;
            i11++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T extends FieldElement<T>> T[][] createBlocksLayout(Field<T> field, int i10, int i11) {
        int i12 = (i10 + 35) / 36;
        int i13 = (i11 + 35) / 36;
        T[][] tArr = (T[][]) ((FieldElement[][]) MathArrays.buildArray(field, i12 * i13, -1));
        int i14 = 0;
        for (int i15 = 0; i15 < i12; i15++) {
            int i16 = i15 * 36;
            int min = FastMath.min(i16 + 36, i10) - i16;
            for (int i17 = 0; i17 < i13; i17++) {
                int i18 = i17 * 36;
                tArr[i14] = (FieldElement[]) MathArrays.buildArray(field, (FastMath.min(i18 + 36, i11) - i18) * min);
                i14++;
            }
        }
        return tArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T extends FieldElement<T>> T[][] toBlocksLayout(T[][] tArr) throws DimensionMismatchException {
        int length = tArr.length;
        int i10 = 0;
        int length2 = tArr[0].length;
        int i11 = (length + 35) / 36;
        int i12 = (length2 + 35) / 36;
        for (T[] tArr2 : tArr) {
            int length3 = tArr2.length;
            if (length3 != length2) {
                throw new DimensionMismatchException(length2, length3);
            }
        }
        Field extractField = AbstractFieldMatrix.extractField(tArr);
        T[][] tArr3 = (T[][]) ((FieldElement[][]) MathArrays.buildArray(extractField, i11 * i12, -1));
        int i13 = 0;
        int i14 = 0;
        while (i13 < i11) {
            int i15 = i13 * 36;
            int min = FastMath.min(i15 + 36, length);
            int i16 = min - i15;
            int i17 = i10;
            while (i17 < i12) {
                int i18 = i17 * 36;
                int min2 = FastMath.min(i18 + 36, length2) - i18;
                FieldElement[] fieldElementArr = (FieldElement[]) MathArrays.buildArray(extractField, i16 * min2);
                tArr3[i14] = fieldElementArr;
                int i19 = length;
                int i20 = length2;
                int i21 = i15;
                int i22 = 0;
                while (i21 < min) {
                    System.arraycopy(tArr[i21], i18, fieldElementArr, i22, min2);
                    i22 += min2;
                    i21++;
                    i11 = i11;
                }
                i14++;
                i17++;
                length = i19;
                length2 = i20;
            }
            i13++;
            i10 = 0;
        }
        return tArr3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public FieldMatrix<T> add(FieldMatrix<T> fieldMatrix) throws MatrixDimensionMismatchException {
        try {
            return add((BlockFieldMatrix) fieldMatrix);
        } catch (ClassCastException unused) {
            checkAdditionCompatible(fieldMatrix);
            BlockFieldMatrix blockFieldMatrix = new BlockFieldMatrix(getField(), this.rows, this.columns);
            int i10 = 0;
            for (int i11 = 0; i11 < blockFieldMatrix.blockRows; i11++) {
                for (int i12 = 0; i12 < blockFieldMatrix.blockColumns; i12++) {
                    FieldElement[] fieldElementArr = ((T[][]) blockFieldMatrix.blocks)[i10];
                    T[] tArr = this.blocks[i10];
                    int i13 = i11 * 36;
                    int min = FastMath.min(i13 + 36, this.rows);
                    int i14 = i12 * 36;
                    int min2 = FastMath.min(i14 + 36, this.columns);
                    int i15 = 0;
                    while (i13 < min) {
                        for (int i16 = i14; i16 < min2; i16++) {
                            fieldElementArr[i15] = (FieldElement) tArr[i15].add(fieldMatrix.getEntry(i13, i16));
                            i15++;
                        }
                        i13++;
                    }
                    i10++;
                }
            }
            return blockFieldMatrix;
        }
    }

    @Override
    public void addToEntry(int i10, int i11, T t10) throws OutOfRangeException {
        checkRowIndex(i10);
        checkColumnIndex(i11);
        int i12 = i10 / 36;
        int i13 = i11 / 36;
        int blockWidth = ((i10 - (i12 * 36)) * blockWidth(i13)) + (i11 - (i13 * 36));
        FieldElement[] fieldElementArr = this.blocks[(i12 * this.blockColumns) + i13];
        fieldElementArr[blockWidth] = (FieldElement) fieldElementArr[blockWidth].add(t10);
    }

    @Override
    public FieldMatrix<T> copy() {
        BlockFieldMatrix blockFieldMatrix = new BlockFieldMatrix(getField(), this.rows, this.columns);
        int i10 = 0;
        while (true) {
            T[][] tArr = this.blocks;
            if (i10 >= tArr.length) {
                return blockFieldMatrix;
            }
            T[] tArr2 = tArr[i10];
            System.arraycopy(tArr2, 0, blockFieldMatrix.blocks[i10], 0, tArr2.length);
            i10++;
        }
    }

    @Override
    public FieldMatrix<T> createMatrix(int i10, int i11) throws NotStrictlyPositiveException {
        return new BlockFieldMatrix(getField(), i10, i11);
    }

    @Override
    public T[] getColumn(int i10) throws OutOfRangeException {
        checkColumnIndex(i10);
        T[] tArr = (T[]) ((FieldElement[]) MathArrays.buildArray(getField(), this.rows));
        int i11 = i10 / 36;
        int i12 = i10 - (i11 * 36);
        int blockWidth = blockWidth(i11);
        int i13 = 0;
        for (int i14 = 0; i14 < this.blockRows; i14++) {
            int blockHeight = blockHeight(i14);
            T[] tArr2 = this.blocks[(this.blockColumns * i14) + i11];
            int i15 = 0;
            while (i15 < blockHeight) {
                tArr[i13] = tArr2[(i15 * blockWidth) + i12];
                i15++;
                i13++;
            }
        }
        return tArr;
    }

    @Override
    public int getColumnDimension() {
        return this.columns;
    }

    @Override
    public FieldMatrix<T> getColumnMatrix(int i10) throws OutOfRangeException {
        checkColumnIndex(i10);
        BlockFieldMatrix blockFieldMatrix = new BlockFieldMatrix(getField(), this.rows, 1);
        int i11 = i10 / 36;
        int i12 = i10 - (i11 * 36);
        int blockWidth = blockWidth(i11);
        T[] tArr = blockFieldMatrix.blocks[0];
        int i13 = 0;
        int i14 = 0;
        for (int i15 = 0; i15 < this.blockRows; i15++) {
            int blockHeight = blockHeight(i15);
            T[] tArr2 = this.blocks[(this.blockColumns * i15) + i11];
            int i16 = 0;
            while (i16 < blockHeight) {
                if (i13 >= tArr.length) {
                    i14++;
                    tArr = blockFieldMatrix.blocks[i14];
                    i13 = 0;
                }
                tArr[i13] = tArr2[(i16 * blockWidth) + i12];
                i16++;
                i13++;
            }
        }
        return blockFieldMatrix;
    }

    @Override
    public FieldVector<T> getColumnVector(int i10) throws OutOfRangeException {
        checkColumnIndex(i10);
        FieldElement[] fieldElementArr = (FieldElement[]) MathArrays.buildArray(getField(), this.rows);
        int i11 = i10 / 36;
        int i12 = i10 - (i11 * 36);
        int blockWidth = blockWidth(i11);
        int i13 = 0;
        for (int i14 = 0; i14 < this.blockRows; i14++) {
            int blockHeight = blockHeight(i14);
            T[] tArr = this.blocks[(this.blockColumns * i14) + i11];
            int i15 = 0;
            while (i15 < blockHeight) {
                fieldElementArr[i13] = tArr[(i15 * blockWidth) + i12];
                i15++;
                i13++;
            }
        }
        return new ArrayFieldVector((Field) getField(), fieldElementArr, false);
    }

    @Override
    public T[][] getData() {
        T[][] tArr = (T[][]) ((FieldElement[][]) MathArrays.buildArray(getField(), getRowDimension(), getColumnDimension()));
        int i10 = this.columns - ((this.blockColumns - 1) * 36);
        for (int i11 = 0; i11 < this.blockRows; i11++) {
            int i12 = i11 * 36;
            int min = FastMath.min(i12 + 36, this.rows);
            int i13 = 0;
            int i14 = 0;
            while (i12 < min) {
                T[] tArr2 = tArr[i12];
                int i15 = this.blockColumns * i11;
                int i16 = 0;
                int i17 = 0;
                while (i16 < this.blockColumns - 1) {
                    System.arraycopy(this.blocks[i15], i13, tArr2, i17, 36);
                    i17 += 36;
                    i16++;
                    i15++;
                }
                System.arraycopy(this.blocks[i15], i14, tArr2, i17, i10);
                i13 += 36;
                i14 += i10;
                i12++;
            }
        }
        return tArr;
    }

    @Override
    public T getEntry(int i10, int i11) throws OutOfRangeException {
        checkRowIndex(i10);
        checkColumnIndex(i11);
        int i12 = i10 / 36;
        int i13 = i11 / 36;
        return this.blocks[(i12 * this.blockColumns) + i13][((i10 - (i12 * 36)) * blockWidth(i13)) + (i11 - (i13 * 36))];
    }

    @Override
    public T[] getRow(int i10) throws OutOfRangeException {
        checkRowIndex(i10);
        T[] tArr = (T[]) ((FieldElement[]) MathArrays.buildArray(getField(), this.columns));
        int i11 = i10 / 36;
        int i12 = i10 - (i11 * 36);
        int i13 = 0;
        for (int i14 = 0; i14 < this.blockColumns; i14++) {
            int blockWidth = blockWidth(i14);
            System.arraycopy(this.blocks[(this.blockColumns * i11) + i14], i12 * blockWidth, tArr, i13, blockWidth);
            i13 += blockWidth;
        }
        return tArr;
    }

    @Override
    public int getRowDimension() {
        return this.rows;
    }

    @Override
    public FieldMatrix<T> getRowMatrix(int i10) throws OutOfRangeException {
        checkRowIndex(i10);
        BlockFieldMatrix blockFieldMatrix = new BlockFieldMatrix(getField(), 1, this.columns);
        int i11 = i10 / 36;
        int i12 = i10 - (i11 * 36);
        T[] tArr = blockFieldMatrix.blocks[0];
        int i13 = 0;
        int i14 = 0;
        for (int i15 = 0; i15 < this.blockColumns; i15++) {
            int blockWidth = blockWidth(i15);
            T[] tArr2 = this.blocks[(this.blockColumns * i11) + i15];
            int length = tArr.length - i13;
            if (blockWidth > length) {
                int i16 = i12 * blockWidth;
                System.arraycopy(tArr2, i16, tArr, i13, length);
                i14++;
                tArr = blockFieldMatrix.blocks[i14];
                int i17 = blockWidth - length;
                System.arraycopy(tArr2, i16, tArr, 0, i17);
                i13 = i17;
            } else {
                System.arraycopy(tArr2, i12 * blockWidth, tArr, i13, blockWidth);
                i13 += blockWidth;
            }
        }
        return blockFieldMatrix;
    }

    @Override
    public FieldVector<T> getRowVector(int i10) throws OutOfRangeException {
        checkRowIndex(i10);
        FieldElement[] fieldElementArr = (FieldElement[]) MathArrays.buildArray(getField(), this.columns);
        int i11 = i10 / 36;
        int i12 = i10 - (i11 * 36);
        int i13 = 0;
        for (int i14 = 0; i14 < this.blockColumns; i14++) {
            int blockWidth = blockWidth(i14);
            System.arraycopy(this.blocks[(this.blockColumns * i11) + i14], i12 * blockWidth, fieldElementArr, i13, blockWidth);
            i13 += blockWidth;
        }
        return new ArrayFieldVector((Field) getField(), fieldElementArr, false);
    }

    @Override
    public FieldMatrix<T> getSubMatrix(int i10, int i11, int i12, int i13) throws OutOfRangeException, NumberIsTooSmallException {
        int i14;
        int i15;
        int i16;
        checkSubMatrixIndex(i10, i11, i12, i13);
        BlockFieldMatrix blockFieldMatrix = new BlockFieldMatrix(getField(), (i11 - i10) + 1, (i13 - i12) + 1);
        int i17 = i10 % 36;
        int i18 = i12 / 36;
        int i19 = i12 % 36;
        int i20 = i10 / 36;
        int i21 = 0;
        while (i21 < blockFieldMatrix.blockRows) {
            int blockHeight = blockFieldMatrix.blockHeight(i21);
            int i22 = i18;
            int i23 = 0;
            while (i23 < blockFieldMatrix.blockColumns) {
                int blockWidth = blockFieldMatrix.blockWidth(i23);
                T[] tArr = blockFieldMatrix.blocks[(blockFieldMatrix.blockColumns * i21) + i23];
                int i24 = (this.blockColumns * i20) + i22;
                int blockWidth2 = blockWidth(i22);
                int i25 = blockHeight + i17;
                int i26 = i25 - 36;
                int i27 = blockWidth + i19;
                int i28 = i27 - 36;
                if (i26 <= 0) {
                    i14 = i22;
                    i15 = i23;
                    i16 = i21;
                    if (i28 > 0) {
                        int blockWidth3 = blockWidth(i14 + 1);
                        copyBlockPart(this.blocks[i24], blockWidth2, i17, i25, i19, 36, tArr, blockWidth, 0, 0);
                        copyBlockPart(this.blocks[i24 + 1], blockWidth3, i17, i25, 0, i28, tArr, blockWidth, 0, blockWidth - i28);
                    } else {
                        copyBlockPart(this.blocks[i24], blockWidth2, i17, i25, i19, i27, tArr, blockWidth, 0, 0);
                    }
                } else if (i28 > 0) {
                    int blockWidth4 = blockWidth(i22 + 1);
                    i14 = i22;
                    i15 = i23;
                    i16 = i21;
                    copyBlockPart(this.blocks[i24], blockWidth2, i17, 36, i19, 36, tArr, blockWidth, 0, 0);
                    int i29 = blockWidth - i28;
                    copyBlockPart(this.blocks[i24 + 1], blockWidth4, i17, 36, 0, i28, tArr, blockWidth, 0, i29);
                    int i30 = blockHeight - i26;
                    copyBlockPart(this.blocks[i24 + this.blockColumns], blockWidth2, 0, i26, i19, 36, tArr, blockWidth, i30, 0);
                    copyBlockPart(this.blocks[i24 + this.blockColumns + 1], blockWidth4, 0, i26, 0, i28, tArr, blockWidth, i30, i29);
                } else {
                    i14 = i22;
                    i15 = i23;
                    i16 = i21;
                    copyBlockPart(this.blocks[i24], blockWidth2, i17, 36, i19, i27, tArr, blockWidth, 0, 0);
                    copyBlockPart(this.blocks[i24 + this.blockColumns], blockWidth2, 0, i26, i19, i27, tArr, blockWidth, blockHeight - i26, 0);
                }
                i22 = i14 + 1;
                i23 = i15 + 1;
                i21 = i16;
            }
            i20++;
            i21++;
        }
        return blockFieldMatrix;
    }

    @Override
    public FieldMatrix<T> multiply(FieldMatrix<T> fieldMatrix) throws DimensionMismatchException {
        BlockFieldMatrix<T> blockFieldMatrix = this;
        try {
            return blockFieldMatrix.multiply((BlockFieldMatrix) fieldMatrix);
        } catch (ClassCastException unused) {
            checkMultiplicationCompatible(fieldMatrix);
            BlockFieldMatrix blockFieldMatrix2 = new BlockFieldMatrix(getField(), blockFieldMatrix.rows, fieldMatrix.getColumnDimension());
            T zero = getField().getZero();
            int i10 = 0;
            int i11 = 0;
            while (i10 < blockFieldMatrix2.blockRows) {
                int i12 = i10 * 36;
                int min = FastMath.min(i12 + 36, blockFieldMatrix.rows);
                int i13 = 0;
                while (i13 < blockFieldMatrix2.blockColumns) {
                    int i14 = i13 * 36;
                    int min2 = FastMath.min(i14 + 36, fieldMatrix.getColumnDimension());
                    FieldElement[] fieldElementArr = blockFieldMatrix2.blocks[i11];
                    int i15 = 0;
                    while (i15 < blockFieldMatrix.blockColumns) {
                        int blockWidth = blockFieldMatrix.blockWidth(i15);
                        T[] tArr = blockFieldMatrix.blocks[(blockFieldMatrix.blockColumns * i10) + i15];
                        int i16 = i15 * 36;
                        int i17 = i12;
                        int i18 = 0;
                        while (i17 < min) {
                            int i19 = (i17 - i12) * blockWidth;
                            T t10 = zero;
                            int i20 = i19 + blockWidth;
                            int i21 = i12;
                            int i22 = i14;
                            while (i22 < min2) {
                                int i23 = min;
                                int i24 = i14;
                                int i25 = min2;
                                int i26 = i16;
                                int i27 = i19;
                                FieldElement fieldElement = t10;
                                while (i27 < i20) {
                                    fieldElement = (FieldElement) fieldElement.add(tArr[i27].multiply(fieldMatrix.getEntry(i26, i22)));
                                    i26++;
                                    i27++;
                                    i20 = i20;
                                    tArr = tArr;
                                }
                                fieldElementArr[i18] = (FieldElement) fieldElementArr[i18].add(fieldElement);
                                i18++;
                                i22++;
                                min = i23;
                                i14 = i24;
                                min2 = i25;
                                i20 = i20;
                            }
                            i17++;
                            zero = t10;
                            i12 = i21;
                        }
                        i15++;
                        blockFieldMatrix = this;
                    }
                    i11++;
                    i13++;
                    blockFieldMatrix = this;
                }
                i10++;
                blockFieldMatrix = this;
            }
            return blockFieldMatrix2;
        }
    }

    @Override
    public void multiplyEntry(int i10, int i11, T t10) throws OutOfRangeException {
        checkRowIndex(i10);
        checkColumnIndex(i11);
        int i12 = i10 / 36;
        int i13 = i11 / 36;
        int blockWidth = ((i10 - (i12 * 36)) * blockWidth(i13)) + (i11 - (i13 * 36));
        FieldElement[] fieldElementArr = this.blocks[(i12 * this.blockColumns) + i13];
        fieldElementArr[blockWidth] = (FieldElement) fieldElementArr[blockWidth].multiply(t10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public T[] operate(T[] tArr) throws DimensionMismatchException {
        if (tArr.length != this.columns) {
            throw new DimensionMismatchException(tArr.length, this.columns);
        }
        T[] tArr2 = (T[]) ((FieldElement[]) MathArrays.buildArray(getField(), this.rows));
        T zero = getField().getZero();
        for (int i10 = 0; i10 < this.blockRows; i10++) {
            int i11 = i10 * 36;
            int min = FastMath.min(i11 + 36, this.rows);
            int i12 = 0;
            while (true) {
                int i13 = this.blockColumns;
                if (i12 < i13) {
                    T[] tArr3 = this.blocks[(i13 * i10) + i12];
                    int i14 = i12 * 36;
                    int min2 = FastMath.min(i14 + 36, this.columns);
                    int i15 = i11;
                    int i16 = 0;
                    while (i15 < min) {
                        FieldElement fieldElement = zero;
                        int i17 = i14;
                        while (i17 < min2 - 3) {
                            fieldElement = (FieldElement) ((FieldElement) ((FieldElement) ((FieldElement) fieldElement.add(tArr3[i16].multiply(tArr[i17]))).add(tArr3[i16 + 1].multiply(tArr[i17 + 1]))).add(tArr3[i16 + 2].multiply(tArr[i17 + 2]))).add(tArr3[i16 + 3].multiply(tArr[i17 + 3]));
                            i16 += 4;
                            i17 += 4;
                            zero = zero;
                        }
                        T t10 = zero;
                        while (i17 < min2) {
                            fieldElement = (FieldElement) fieldElement.add(tArr3[i16].multiply(tArr[i17]));
                            i17++;
                            i16++;
                        }
                        tArr2[i15] = (FieldElement) tArr2[i15].add((Decimal64) fieldElement);
                        i15++;
                        zero = t10;
                    }
                    i12++;
                }
            }
        }
        return tArr2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public T[] preMultiply(T[] tArr) throws DimensionMismatchException {
        int i10;
        if (tArr.length != this.rows) {
            throw new DimensionMismatchException(tArr.length, this.rows);
        }
        T[] tArr2 = (T[]) ((FieldElement[]) MathArrays.buildArray(getField(), this.columns));
        T zero = getField().getZero();
        for (int i11 = 0; i11 < this.blockColumns; i11++) {
            int blockWidth = blockWidth(i11);
            int i12 = blockWidth + blockWidth;
            int i13 = i12 + blockWidth;
            int i14 = i13 + blockWidth;
            int i15 = i11 * 36;
            int min = FastMath.min(i15 + 36, this.columns);
            for (int i16 = 0; i16 < this.blockRows; i16++) {
                T[] tArr3 = this.blocks[(this.blockColumns * i16) + i11];
                int i17 = i16 * 36;
                int min2 = FastMath.min(i17 + 36, this.rows);
                int i18 = i15;
                while (i18 < min) {
                    int i19 = i18 - i15;
                    T t10 = zero;
                    int i20 = i15;
                    FieldElement fieldElement = t10;
                    int i21 = i17;
                    while (true) {
                        i10 = min;
                        if (i21 >= min2 - 3) {
                            break;
                        }
                        fieldElement = (FieldElement) ((FieldElement) ((FieldElement) ((FieldElement) fieldElement.add(tArr3[i19].multiply(tArr[i21]))).add(tArr3[i19 + blockWidth].multiply(tArr[i21 + 1]))).add(tArr3[i19 + i12].multiply(tArr[i21 + 2]))).add(tArr3[i19 + i13].multiply(tArr[i21 + 3]));
                        i19 += i14;
                        i21 += 4;
                        min = i10;
                        i17 = i17;
                    }
                    int i22 = i17;
                    while (i21 < min2) {
                        fieldElement = (FieldElement) fieldElement.add(tArr3[i19].multiply(tArr[i21]));
                        i19 += blockWidth;
                        i21++;
                    }
                    tArr2[i18] = (FieldElement) tArr2[i18].add((Decimal64) fieldElement);
                    i18++;
                    zero = t10;
                    i15 = i20;
                    min = i10;
                    i17 = i22;
                }
            }
        }
        return tArr2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public FieldMatrix<T> scalarAdd(T t10) {
        BlockFieldMatrix blockFieldMatrix = new BlockFieldMatrix(getField(), this.rows, this.columns);
        int i10 = 0;
        while (true) {
            FieldElement[][] fieldElementArr = (T[][]) blockFieldMatrix.blocks;
            if (i10 >= fieldElementArr.length) {
                return blockFieldMatrix;
            }
            FieldElement[] fieldElementArr2 = fieldElementArr[i10];
            T[] tArr = this.blocks[i10];
            for (int i11 = 0; i11 < fieldElementArr2.length; i11++) {
                fieldElementArr2[i11] = (FieldElement) tArr[i11].add(t10);
            }
            i10++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public FieldMatrix<T> scalarMultiply(T t10) {
        BlockFieldMatrix blockFieldMatrix = new BlockFieldMatrix(getField(), this.rows, this.columns);
        int i10 = 0;
        while (true) {
            FieldElement[][] fieldElementArr = (T[][]) blockFieldMatrix.blocks;
            if (i10 >= fieldElementArr.length) {
                return blockFieldMatrix;
            }
            FieldElement[] fieldElementArr2 = fieldElementArr[i10];
            T[] tArr = this.blocks[i10];
            for (int i11 = 0; i11 < fieldElementArr2.length; i11++) {
                fieldElementArr2[i11] = (FieldElement) tArr[i11].multiply(t10);
            }
            i10++;
        }
    }

    @Override
    public void setColumn(int i10, T[] tArr) throws MatrixDimensionMismatchException, OutOfRangeException {
        checkColumnIndex(i10);
        int rowDimension = getRowDimension();
        if (tArr.length != rowDimension) {
            throw new MatrixDimensionMismatchException(tArr.length, 1, rowDimension, 1);
        }
        int i11 = i10 / 36;
        int i12 = i10 - (i11 * 36);
        int blockWidth = blockWidth(i11);
        int i13 = 0;
        for (int i14 = 0; i14 < this.blockRows; i14++) {
            int blockHeight = blockHeight(i14);
            T[] tArr2 = this.blocks[(this.blockColumns * i14) + i11];
            int i15 = 0;
            while (i15 < blockHeight) {
                tArr2[(i15 * blockWidth) + i12] = tArr[i13];
                i15++;
                i13++;
            }
        }
    }

    @Override
    public void setColumnMatrix(int i10, FieldMatrix<T> fieldMatrix) throws MatrixDimensionMismatchException, OutOfRangeException {
        try {
            setColumnMatrix(i10, (BlockFieldMatrix) fieldMatrix);
        } catch (ClassCastException unused) {
            super.setColumnMatrix(i10, fieldMatrix);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void setColumnVector(int i10, FieldVector<T> fieldVector) throws OutOfRangeException, MatrixDimensionMismatchException {
        try {
            setColumn(i10, ((ArrayFieldVector) fieldVector).getDataRef());
        } catch (ClassCastException unused) {
            super.setColumnVector(i10, fieldVector);
        }
    }

    @Override
    public void setEntry(int i10, int i11, T t10) throws OutOfRangeException {
        checkRowIndex(i10);
        checkColumnIndex(i11);
        int i12 = i10 / 36;
        int i13 = i11 / 36;
        this.blocks[(i12 * this.blockColumns) + i13][((i10 - (i12 * 36)) * blockWidth(i13)) + (i11 - (i13 * 36))] = t10;
    }

    @Override
    public void setRow(int i10, T[] tArr) throws OutOfRangeException, MatrixDimensionMismatchException {
        checkRowIndex(i10);
        int columnDimension = getColumnDimension();
        if (tArr.length != columnDimension) {
            throw new MatrixDimensionMismatchException(1, tArr.length, 1, columnDimension);
        }
        int i11 = i10 / 36;
        int i12 = i10 - (i11 * 36);
        int i13 = 0;
        for (int i14 = 0; i14 < this.blockColumns; i14++) {
            int blockWidth = blockWidth(i14);
            System.arraycopy(tArr, i13, this.blocks[(this.blockColumns * i11) + i14], i12 * blockWidth, blockWidth);
            i13 += blockWidth;
        }
    }

    @Override
    public void setRowMatrix(int i10, FieldMatrix<T> fieldMatrix) throws MatrixDimensionMismatchException, OutOfRangeException {
        try {
            setRowMatrix(i10, (BlockFieldMatrix) fieldMatrix);
        } catch (ClassCastException unused) {
            super.setRowMatrix(i10, fieldMatrix);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void setRowVector(int i10, FieldVector<T> fieldVector) throws MatrixDimensionMismatchException, OutOfRangeException {
        try {
            setRow(i10, ((ArrayFieldVector) fieldVector).getDataRef());
        } catch (ClassCastException unused) {
            super.setRowVector(i10, fieldVector);
        }
    }

    @Override
    public void setSubMatrix(T[][] tArr, int i10, int i11) throws DimensionMismatchException, OutOfRangeException, NoDataException, NullArgumentException {
        BlockFieldMatrix<T> blockFieldMatrix = this;
        T[][] tArr2 = tArr;
        int i12 = i10;
        MathUtils.checkNotNull(tArr);
        int length = tArr2[0].length;
        if (length == 0) {
            throw new NoDataException(LocalizedFormats.AT_LEAST_ONE_COLUMN);
        }
        int length2 = tArr2.length + i12;
        int i13 = i11 + length;
        blockFieldMatrix.checkSubMatrixIndex(i12, length2 - 1, i11, i13 - 1);
        for (T[] tArr3 : tArr2) {
            if (tArr3.length != length) {
                throw new DimensionMismatchException(length, tArr3.length);
            }
        }
        int i14 = i12 / 36;
        int i15 = (length2 + 35) / 36;
        int i16 = i11 / 36;
        int i17 = (i13 + 35) / 36;
        while (i14 < i15) {
            int blockHeight = blockFieldMatrix.blockHeight(i14);
            int i18 = i14 * 36;
            int max = FastMath.max(i12, i18);
            int min = FastMath.min(length2, blockHeight + i18);
            int i19 = i16;
            while (i19 < i17) {
                int blockWidth = blockFieldMatrix.blockWidth(i19);
                int i20 = i19 * 36;
                int max2 = FastMath.max(i11, i20);
                int i21 = i15;
                int min2 = FastMath.min(i13, i20 + blockWidth) - max2;
                int i22 = length2;
                int i23 = i16;
                T[] tArr4 = blockFieldMatrix.blocks[(blockFieldMatrix.blockColumns * i14) + i19];
                int i24 = max;
                while (i24 < min) {
                    System.arraycopy(tArr2[i24 - i12], max2 - i11, tArr4, ((i24 - i18) * blockWidth) + (max2 - i20), min2);
                    i24++;
                    tArr2 = tArr;
                    i12 = i10;
                }
                i19++;
                blockFieldMatrix = this;
                tArr2 = tArr;
                i12 = i10;
                i15 = i21;
                length2 = i22;
                i16 = i23;
            }
            i14++;
            blockFieldMatrix = this;
            tArr2 = tArr;
            i12 = i10;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public FieldMatrix<T> subtract(FieldMatrix<T> fieldMatrix) throws MatrixDimensionMismatchException {
        try {
            return subtract((BlockFieldMatrix) fieldMatrix);
        } catch (ClassCastException unused) {
            checkSubtractionCompatible(fieldMatrix);
            BlockFieldMatrix blockFieldMatrix = new BlockFieldMatrix(getField(), this.rows, this.columns);
            int i10 = 0;
            for (int i11 = 0; i11 < blockFieldMatrix.blockRows; i11++) {
                for (int i12 = 0; i12 < blockFieldMatrix.blockColumns; i12++) {
                    FieldElement[] fieldElementArr = ((T[][]) blockFieldMatrix.blocks)[i10];
                    T[] tArr = this.blocks[i10];
                    int i13 = i11 * 36;
                    int min = FastMath.min(i13 + 36, this.rows);
                    int i14 = i12 * 36;
                    int min2 = FastMath.min(i14 + 36, this.columns);
                    int i15 = 0;
                    while (i13 < min) {
                        for (int i16 = i14; i16 < min2; i16++) {
                            fieldElementArr[i15] = (FieldElement) tArr[i15].subtract(fieldMatrix.getEntry(i13, i16));
                            i15++;
                        }
                        i13++;
                    }
                    i10++;
                }
            }
            return blockFieldMatrix;
        }
    }

    @Override
    public FieldMatrix<T> transpose() {
        int rowDimension = getRowDimension();
        BlockFieldMatrix blockFieldMatrix = new BlockFieldMatrix(getField(), getColumnDimension(), rowDimension);
        int i10 = 0;
        for (int i11 = 0; i11 < this.blockColumns; i11++) {
            for (int i12 = 0; i12 < this.blockRows; i12++) {
                T[] tArr = blockFieldMatrix.blocks[i10];
                T[] tArr2 = this.blocks[(this.blockColumns * i12) + i11];
                int i13 = i11 * 36;
                int min = FastMath.min(i13 + 36, this.columns);
                int i14 = i12 * 36;
                int min2 = FastMath.min(i14 + 36, this.rows);
                int i15 = 0;
                for (int i16 = i13; i16 < min; i16++) {
                    int i17 = min - i13;
                    int i18 = i16 - i13;
                    for (int i19 = i14; i19 < min2; i19++) {
                        tArr[i15] = tArr2[i18];
                        i15++;
                        i18 += i17;
                    }
                }
                i10++;
            }
        }
        return blockFieldMatrix;
    }

    @Override
    public T walkInOptimizedOrder(FieldMatrixChangingVisitor<T> fieldMatrixChangingVisitor) {
        int i10 = this.rows;
        int i11 = this.columns;
        fieldMatrixChangingVisitor.start(i10, i11, 0, i10 - 1, 0, i11 - 1);
        int i12 = 0;
        for (int i13 = 0; i13 < this.blockRows; i13++) {
            int i14 = i13 * 36;
            int min = FastMath.min(i14 + 36, this.rows);
            for (int i15 = 0; i15 < this.blockColumns; i15++) {
                int i16 = i15 * 36;
                int min2 = FastMath.min(i16 + 36, this.columns);
                T[] tArr = this.blocks[i12];
                int i17 = 0;
                for (int i18 = i14; i18 < min; i18++) {
                    for (int i19 = i16; i19 < min2; i19++) {
                        tArr[i17] = fieldMatrixChangingVisitor.visit(i18, i19, tArr[i17]);
                        i17++;
                    }
                }
                i12++;
            }
        }
        return fieldMatrixChangingVisitor.end();
    }

    @Override
    public T walkInRowOrder(FieldMatrixChangingVisitor<T> fieldMatrixChangingVisitor) {
        int i10 = this.rows;
        int i11 = this.columns;
        fieldMatrixChangingVisitor.start(i10, i11, 0, i10 - 1, 0, i11 - 1);
        for (int i12 = 0; i12 < this.blockRows; i12++) {
            int i13 = i12 * 36;
            int min = FastMath.min(i13 + 36, this.rows);
            for (int i14 = i13; i14 < min; i14++) {
                for (int i15 = 0; i15 < this.blockColumns; i15++) {
                    int blockWidth = blockWidth(i15);
                    int i16 = i15 * 36;
                    int min2 = FastMath.min(i16 + 36, this.columns);
                    T[] tArr = this.blocks[(this.blockColumns * i12) + i15];
                    int i17 = (i14 - i13) * blockWidth;
                    while (i16 < min2) {
                        tArr[i17] = fieldMatrixChangingVisitor.visit(i14, i16, tArr[i17]);
                        i17++;
                        i16++;
                    }
                }
            }
        }
        return fieldMatrixChangingVisitor.end();
    }

    public void setColumnMatrix(int i10, BlockFieldMatrix<T> blockFieldMatrix) throws MatrixDimensionMismatchException, OutOfRangeException {
        checkColumnIndex(i10);
        int rowDimension = getRowDimension();
        if (blockFieldMatrix.getRowDimension() == rowDimension && blockFieldMatrix.getColumnDimension() == 1) {
            int i11 = i10 / 36;
            int i12 = i10 - (i11 * 36);
            int blockWidth = blockWidth(i11);
            T[] tArr = blockFieldMatrix.blocks[0];
            int i13 = 0;
            int i14 = 0;
            for (int i15 = 0; i15 < this.blockRows; i15++) {
                int blockHeight = blockHeight(i15);
                T[] tArr2 = this.blocks[(this.blockColumns * i15) + i11];
                int i16 = 0;
                while (i16 < blockHeight) {
                    if (i13 >= tArr.length) {
                        i14++;
                        tArr = blockFieldMatrix.blocks[i14];
                        i13 = 0;
                    }
                    tArr2[(i16 * blockWidth) + i12] = tArr[i13];
                    i16++;
                    i13++;
                }
            }
            return;
        }
        throw new MatrixDimensionMismatchException(blockFieldMatrix.getRowDimension(), blockFieldMatrix.getColumnDimension(), rowDimension, 1);
    }

    public void setRowMatrix(int i10, BlockFieldMatrix<T> blockFieldMatrix) throws MatrixDimensionMismatchException, OutOfRangeException {
        checkRowIndex(i10);
        int columnDimension = getColumnDimension();
        if (blockFieldMatrix.getRowDimension() == 1 && blockFieldMatrix.getColumnDimension() == columnDimension) {
            int i11 = i10 / 36;
            int i12 = i10 - (i11 * 36);
            T[] tArr = blockFieldMatrix.blocks[0];
            int i13 = 0;
            int i14 = 0;
            for (int i15 = 0; i15 < this.blockColumns; i15++) {
                int blockWidth = blockWidth(i15);
                T[] tArr2 = this.blocks[(this.blockColumns * i11) + i15];
                int length = tArr.length - i13;
                if (blockWidth > length) {
                    int i16 = i12 * blockWidth;
                    System.arraycopy(tArr, i13, tArr2, i16, length);
                    i14++;
                    tArr = blockFieldMatrix.blocks[i14];
                    int i17 = blockWidth - length;
                    System.arraycopy(tArr, 0, tArr2, i16, i17);
                    i13 = i17;
                } else {
                    System.arraycopy(tArr, i13, tArr2, i12 * blockWidth, blockWidth);
                    i13 += blockWidth;
                }
            }
            return;
        }
        throw new MatrixDimensionMismatchException(blockFieldMatrix.getRowDimension(), blockFieldMatrix.getColumnDimension(), 1, columnDimension);
    }

    public BlockFieldMatrix(T[][] tArr) throws DimensionMismatchException {
        this(tArr.length, tArr[0].length, toBlocksLayout(tArr), false);
    }

    public BlockFieldMatrix(int i10, int i11, T[][] tArr, boolean z10) throws DimensionMismatchException, NotStrictlyPositiveException {
        super(AbstractFieldMatrix.extractField(tArr), i10, i11);
        this.rows = i10;
        this.columns = i11;
        int i12 = (i10 + 35) / 36;
        this.blockRows = i12;
        int i13 = (i11 + 35) / 36;
        this.blockColumns = i13;
        if (z10) {
            this.blocks = (T[][]) ((FieldElement[][]) MathArrays.buildArray(getField(), i12 * i13, -1));
        } else {
            this.blocks = tArr;
        }
        int i14 = 0;
        for (int i15 = 0; i15 < this.blockRows; i15++) {
            int blockHeight = blockHeight(i15);
            int i16 = 0;
            while (i16 < this.blockColumns) {
                if (tArr[i14].length != blockWidth(i16) * blockHeight) {
                    throw new DimensionMismatchException(tArr[i14].length, blockHeight * blockWidth(i16));
                }
                if (z10) {
                    ((T[][]) this.blocks)[i14] = (FieldElement[]) tArr[i14].clone();
                }
                i16++;
                i14++;
            }
        }
    }

    @Override
    public T walkInOptimizedOrder(FieldMatrixPreservingVisitor<T> fieldMatrixPreservingVisitor) {
        int i10 = this.rows;
        int i11 = this.columns;
        fieldMatrixPreservingVisitor.start(i10, i11, 0, i10 - 1, 0, i11 - 1);
        int i12 = 0;
        for (int i13 = 0; i13 < this.blockRows; i13++) {
            int i14 = i13 * 36;
            int min = FastMath.min(i14 + 36, this.rows);
            for (int i15 = 0; i15 < this.blockColumns; i15++) {
                int i16 = i15 * 36;
                int min2 = FastMath.min(i16 + 36, this.columns);
                T[] tArr = this.blocks[i12];
                int i17 = 0;
                for (int i18 = i14; i18 < min; i18++) {
                    for (int i19 = i16; i19 < min2; i19++) {
                        fieldMatrixPreservingVisitor.visit(i18, i19, tArr[i17]);
                        i17++;
                    }
                }
                i12++;
            }
        }
        return fieldMatrixPreservingVisitor.end();
    }

    @Override
    public T walkInRowOrder(FieldMatrixPreservingVisitor<T> fieldMatrixPreservingVisitor) {
        int i10 = this.rows;
        int i11 = this.columns;
        fieldMatrixPreservingVisitor.start(i10, i11, 0, i10 - 1, 0, i11 - 1);
        for (int i12 = 0; i12 < this.blockRows; i12++) {
            int i13 = i12 * 36;
            int min = FastMath.min(i13 + 36, this.rows);
            for (int i14 = i13; i14 < min; i14++) {
                for (int i15 = 0; i15 < this.blockColumns; i15++) {
                    int blockWidth = blockWidth(i15);
                    int i16 = i15 * 36;
                    int min2 = FastMath.min(i16 + 36, this.columns);
                    T[] tArr = this.blocks[(this.blockColumns * i12) + i15];
                    int i17 = (i14 - i13) * blockWidth;
                    while (i16 < min2) {
                        fieldMatrixPreservingVisitor.visit(i14, i16, tArr[i17]);
                        i17++;
                        i16++;
                    }
                }
            }
        }
        return fieldMatrixPreservingVisitor.end();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public BlockFieldMatrix<T> add(BlockFieldMatrix<T> blockFieldMatrix) throws MatrixDimensionMismatchException {
        checkAdditionCompatible(blockFieldMatrix);
        BlockFieldMatrix<T> blockFieldMatrix2 = new BlockFieldMatrix<>(getField(), this.rows, this.columns);
        int i10 = 0;
        while (true) {
            FieldElement[][] fieldElementArr = (T[][]) blockFieldMatrix2.blocks;
            if (i10 >= fieldElementArr.length) {
                return blockFieldMatrix2;
            }
            FieldElement[] fieldElementArr2 = fieldElementArr[i10];
            T[] tArr = this.blocks[i10];
            T[] tArr2 = blockFieldMatrix.blocks[i10];
            for (int i11 = 0; i11 < fieldElementArr2.length; i11++) {
                fieldElementArr2[i11] = (FieldElement) tArr[i11].add(tArr2[i11]);
            }
            i10++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public BlockFieldMatrix<T> subtract(BlockFieldMatrix<T> blockFieldMatrix) throws MatrixDimensionMismatchException {
        checkSubtractionCompatible(blockFieldMatrix);
        BlockFieldMatrix<T> blockFieldMatrix2 = new BlockFieldMatrix<>(getField(), this.rows, this.columns);
        int i10 = 0;
        while (true) {
            FieldElement[][] fieldElementArr = (T[][]) blockFieldMatrix2.blocks;
            if (i10 >= fieldElementArr.length) {
                return blockFieldMatrix2;
            }
            FieldElement[] fieldElementArr2 = fieldElementArr[i10];
            T[] tArr = this.blocks[i10];
            T[] tArr2 = blockFieldMatrix.blocks[i10];
            for (int i11 = 0; i11 < fieldElementArr2.length; i11++) {
                fieldElementArr2[i11] = (FieldElement) tArr[i11].subtract(tArr2[i11]);
            }
            i10++;
        }
    }

    public BlockFieldMatrix<T> multiply(BlockFieldMatrix<T> blockFieldMatrix) throws DimensionMismatchException {
        int i10;
        BlockFieldMatrix<T> blockFieldMatrix2 = this;
        BlockFieldMatrix<T> blockFieldMatrix3 = blockFieldMatrix;
        checkMultiplicationCompatible(blockFieldMatrix);
        BlockFieldMatrix<T> blockFieldMatrix4 = new BlockFieldMatrix<>(getField(), blockFieldMatrix2.rows, blockFieldMatrix3.columns);
        T zero = getField().getZero();
        int i11 = 0;
        int i12 = 0;
        while (i11 < blockFieldMatrix4.blockRows) {
            int i13 = i11 * 36;
            int min = FastMath.min(i13 + 36, blockFieldMatrix2.rows);
            int i14 = 0;
            while (i14 < blockFieldMatrix4.blockColumns) {
                int blockWidth = blockFieldMatrix4.blockWidth(i14);
                int i15 = blockWidth + blockWidth;
                int i16 = i15 + blockWidth;
                int i17 = i16 + blockWidth;
                FieldElement[] fieldElementArr = blockFieldMatrix4.blocks[i12];
                int i18 = 0;
                while (i18 < blockFieldMatrix2.blockColumns) {
                    int blockWidth2 = blockFieldMatrix2.blockWidth(i18);
                    T t10 = zero;
                    BlockFieldMatrix<T> blockFieldMatrix5 = blockFieldMatrix4;
                    T[] tArr = blockFieldMatrix2.blocks[(blockFieldMatrix2.blockColumns * i11) + i18];
                    T[] tArr2 = blockFieldMatrix3.blocks[(blockFieldMatrix3.blockColumns * i18) + i14];
                    int i19 = i13;
                    int i20 = 0;
                    while (i19 < min) {
                        int i21 = (i19 - i13) * blockWidth2;
                        int i22 = i21 + blockWidth2;
                        int i23 = blockWidth2;
                        int i24 = 0;
                        while (i24 < blockWidth) {
                            int i25 = i24;
                            int i26 = i13;
                            int i27 = min;
                            FieldElement fieldElement = t10;
                            int i28 = i21;
                            while (true) {
                                i10 = i11;
                                if (i28 >= i22 - 3) {
                                    break;
                                }
                                fieldElement = (FieldElement) ((FieldElement) ((FieldElement) ((FieldElement) fieldElement.add(tArr[i28].multiply(tArr2[i25]))).add(tArr[i28 + 1].multiply(tArr2[i25 + blockWidth]))).add(tArr[i28 + 2].multiply(tArr2[i25 + i15]))).add(tArr[i28 + 3].multiply(tArr2[i25 + i16]));
                                i28 += 4;
                                i25 += i17;
                                i11 = i10;
                                i14 = i14;
                            }
                            int i29 = i14;
                            while (i28 < i22) {
                                fieldElement = (FieldElement) fieldElement.add(tArr[i28].multiply(tArr2[i25]));
                                i25 += blockWidth;
                                i28++;
                            }
                            fieldElementArr[i20] = (FieldElement) fieldElementArr[i20].add(fieldElement);
                            i20++;
                            i24++;
                            i13 = i26;
                            min = i27;
                            i11 = i10;
                            i14 = i29;
                        }
                        i19++;
                        blockWidth2 = i23;
                    }
                    i18++;
                    blockFieldMatrix2 = this;
                    blockFieldMatrix3 = blockFieldMatrix;
                    zero = t10;
                    blockFieldMatrix4 = blockFieldMatrix5;
                }
                i12++;
                i14++;
                blockFieldMatrix2 = this;
                blockFieldMatrix3 = blockFieldMatrix;
            }
            i11++;
            blockFieldMatrix2 = this;
            blockFieldMatrix3 = blockFieldMatrix;
        }
        return blockFieldMatrix4;
    }

    @Override
    public T walkInOptimizedOrder(FieldMatrixChangingVisitor<T> fieldMatrixChangingVisitor, int i10, int i11, int i12, int i13) throws OutOfRangeException, NumberIsTooSmallException {
        BlockFieldMatrix<T> blockFieldMatrix = this;
        blockFieldMatrix.checkSubMatrixIndex(i10, i11, i12, i13);
        fieldMatrixChangingVisitor.start(blockFieldMatrix.rows, blockFieldMatrix.columns, i10, i11, i12, i13);
        int i14 = i10 / 36;
        while (i14 < (i11 / 36) + 1) {
            int i15 = i14 * 36;
            int max = FastMath.max(i10, i15);
            int i16 = i14 + 1;
            int min = FastMath.min(i16 * 36, i11 + 1);
            int i17 = i12 / 36;
            while (i17 < (i13 / 36) + 1) {
                int blockWidth = blockFieldMatrix.blockWidth(i17);
                int i18 = i17 * 36;
                int max2 = FastMath.max(i12, i18);
                int i19 = i17 + 1;
                int i20 = max;
                int min2 = FastMath.min(i19 * 36, i13 + 1);
                int i21 = i16;
                T[] tArr = blockFieldMatrix.blocks[(blockFieldMatrix.blockColumns * i14) + i17];
                int i22 = i20;
                while (i22 < min) {
                    int i23 = (((i22 - i15) * blockWidth) + max2) - i18;
                    int i24 = max2;
                    while (i24 < min2) {
                        tArr[i23] = fieldMatrixChangingVisitor.visit(i22, i24, tArr[i23]);
                        i23++;
                        i24++;
                        i14 = i14;
                        i15 = i15;
                    }
                    i22++;
                    i15 = i15;
                }
                blockFieldMatrix = this;
                i17 = i19;
                max = i20;
                i16 = i21;
                i15 = i15;
            }
            blockFieldMatrix = this;
            i14 = i16;
        }
        return fieldMatrixChangingVisitor.end();
    }

    @Override
    public T walkInRowOrder(FieldMatrixChangingVisitor<T> fieldMatrixChangingVisitor, int i10, int i11, int i12, int i13) throws OutOfRangeException, NumberIsTooSmallException {
        int i14;
        checkSubMatrixIndex(i10, i11, i12, i13);
        fieldMatrixChangingVisitor.start(this.rows, this.columns, i10, i11, i12, i13);
        for (int i15 = i10 / 36; i15 < (i11 / 36) + 1; i15 = i14) {
            int i16 = i15 * 36;
            i14 = i15 + 1;
            int min = FastMath.min(i14 * 36, i11 + 1);
            for (int max = FastMath.max(i10, i16); max < min; max++) {
                int i17 = i12 / 36;
                while (i17 < (i13 / 36) + 1) {
                    int blockWidth = blockWidth(i17);
                    int i18 = i17 * 36;
                    int max2 = FastMath.max(i12, i18);
                    int i19 = i17 + 1;
                    int i20 = i14;
                    int min2 = FastMath.min(i19 * 36, i13 + 1);
                    int i21 = min;
                    T[] tArr = this.blocks[(this.blockColumns * i15) + i17];
                    int i22 = (((max - i16) * blockWidth) + max2) - i18;
                    while (max2 < min2) {
                        tArr[i22] = fieldMatrixChangingVisitor.visit(max, max2, tArr[i22]);
                        i22++;
                        max2++;
                    }
                    i17 = i19;
                    i14 = i20;
                    min = i21;
                }
            }
        }
        return fieldMatrixChangingVisitor.end();
    }

    @Override
    public T walkInOptimizedOrder(FieldMatrixPreservingVisitor<T> fieldMatrixPreservingVisitor, int i10, int i11, int i12, int i13) throws OutOfRangeException, NumberIsTooSmallException {
        BlockFieldMatrix<T> blockFieldMatrix = this;
        blockFieldMatrix.checkSubMatrixIndex(i10, i11, i12, i13);
        fieldMatrixPreservingVisitor.start(blockFieldMatrix.rows, blockFieldMatrix.columns, i10, i11, i12, i13);
        int i14 = i10 / 36;
        while (i14 < (i11 / 36) + 1) {
            int i15 = i14 * 36;
            int max = FastMath.max(i10, i15);
            int i16 = i14 + 1;
            int min = FastMath.min(i16 * 36, i11 + 1);
            int i17 = i12 / 36;
            while (i17 < (i13 / 36) + 1) {
                int blockWidth = blockFieldMatrix.blockWidth(i17);
                int i18 = i17 * 36;
                int max2 = FastMath.max(i12, i18);
                int i19 = i17 + 1;
                int i20 = max;
                int min2 = FastMath.min(i19 * 36, i13 + 1);
                int i21 = i16;
                T[] tArr = blockFieldMatrix.blocks[(blockFieldMatrix.blockColumns * i14) + i17];
                int i22 = i20;
                while (i22 < min) {
                    int i23 = (((i22 - i15) * blockWidth) + max2) - i18;
                    int i24 = max2;
                    while (i24 < min2) {
                        fieldMatrixPreservingVisitor.visit(i22, i24, tArr[i23]);
                        i23++;
                        i24++;
                        i14 = i14;
                        i15 = i15;
                    }
                    i22++;
                    i15 = i15;
                }
                blockFieldMatrix = this;
                i17 = i19;
                max = i20;
                i16 = i21;
                i15 = i15;
            }
            blockFieldMatrix = this;
            i14 = i16;
        }
        return fieldMatrixPreservingVisitor.end();
    }

    @Override
    public T walkInRowOrder(FieldMatrixPreservingVisitor<T> fieldMatrixPreservingVisitor, int i10, int i11, int i12, int i13) throws OutOfRangeException, NumberIsTooSmallException {
        int i14;
        checkSubMatrixIndex(i10, i11, i12, i13);
        fieldMatrixPreservingVisitor.start(this.rows, this.columns, i10, i11, i12, i13);
        for (int i15 = i10 / 36; i15 < (i11 / 36) + 1; i15 = i14) {
            int i16 = i15 * 36;
            i14 = i15 + 1;
            int min = FastMath.min(i14 * 36, i11 + 1);
            for (int max = FastMath.max(i10, i16); max < min; max++) {
                int i17 = i12 / 36;
                while (i17 < (i13 / 36) + 1) {
                    int blockWidth = blockWidth(i17);
                    int i18 = i17 * 36;
                    int max2 = FastMath.max(i12, i18);
                    int i19 = i17 + 1;
                    int i20 = i14;
                    int min2 = FastMath.min(i19 * 36, i13 + 1);
                    int i21 = min;
                    T[] tArr = this.blocks[(this.blockColumns * i15) + i17];
                    int i22 = (((max - i16) * blockWidth) + max2) - i18;
                    while (max2 < min2) {
                        fieldMatrixPreservingVisitor.visit(max, max2, tArr[i22]);
                        i22++;
                        max2++;
                    }
                    i17 = i19;
                    i14 = i20;
                    min = i21;
                }
            }
        }
        return fieldMatrixPreservingVisitor.end();
    }
}
