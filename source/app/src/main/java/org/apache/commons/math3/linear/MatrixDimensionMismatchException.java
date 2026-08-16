package org.apache.commons.math3.linear;

import org.apache.commons.math3.exception.MultiDimensionMismatchException;
import org.apache.commons.math3.exception.util.LocalizedFormats;

public class MatrixDimensionMismatchException extends MultiDimensionMismatchException {
    private static final long serialVersionUID = -8415396756375798143L;

    public MatrixDimensionMismatchException(int i10, int i11, int i12, int i13) {
        super(LocalizedFormats.DIMENSIONS_MISMATCH_2x2, new Integer[]{Integer.valueOf(i10), Integer.valueOf(i11)}, new Integer[]{Integer.valueOf(i12), Integer.valueOf(i13)});
    }

    public int getExpectedColumnDimension() {
        return getExpectedDimension(1);
    }

    public int getExpectedRowDimension() {
        return getExpectedDimension(0);
    }

    public int getWrongColumnDimension() {
        return getWrongDimension(1);
    }

    public int getWrongRowDimension() {
        return getWrongDimension(0);
    }
}
