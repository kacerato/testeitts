package org.apache.commons.math3.exception;

import org.apache.commons.math3.exception.util.Localizable;
import org.apache.commons.math3.exception.util.LocalizedFormats;

public class DimensionMismatchException extends MathIllegalNumberException {
    private static final long serialVersionUID = -8415396756375798143L;
    private final int dimension;

    public DimensionMismatchException(Localizable localizable, int i10, int i11) {
        super(localizable, Integer.valueOf(i10), Integer.valueOf(i11));
        this.dimension = i11;
    }

    public int getDimension() {
        return this.dimension;
    }

    public DimensionMismatchException(int i10, int i11) {
        this(LocalizedFormats.DIMENSIONS_MISMATCH_SIMPLE, i10, i11);
    }
}
