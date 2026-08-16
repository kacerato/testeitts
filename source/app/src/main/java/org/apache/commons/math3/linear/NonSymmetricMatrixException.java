package org.apache.commons.math3.linear;

import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;

public class NonSymmetricMatrixException extends MathIllegalArgumentException {
    private static final long serialVersionUID = -7518495577824189882L;
    private final int column;
    private final int row;
    private final double threshold;

    public NonSymmetricMatrixException(int i10, int i11, double d10) {
        super(LocalizedFormats.NON_SYMMETRIC_MATRIX, Integer.valueOf(i10), Integer.valueOf(i11), Double.valueOf(d10));
        this.row = i10;
        this.column = i11;
        this.threshold = d10;
    }

    public int getColumn() {
        return this.column;
    }

    public int getRow() {
        return this.row;
    }

    public double getThreshold() {
        return this.threshold;
    }
}
