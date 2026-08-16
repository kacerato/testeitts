package org.apache.commons.math3.linear;

import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.ExceptionContext;
import org.apache.commons.math3.exception.util.LocalizedFormats;

public class NonPositiveDefiniteMatrixException extends NumberIsTooSmallException {
    private static final long serialVersionUID = 1641613838113738061L;
    private final int index;
    private final double threshold;

    public NonPositiveDefiniteMatrixException(double d10, int i10, double d11) {
        super(Double.valueOf(d10), Double.valueOf(d11), false);
        this.index = i10;
        this.threshold = d11;
        ExceptionContext context = getContext();
        context.addMessage(LocalizedFormats.NOT_POSITIVE_DEFINITE_MATRIX, new Object[0]);
        context.addMessage(LocalizedFormats.ARRAY_ELEMENT, Double.valueOf(d10), Integer.valueOf(i10));
    }

    public int getColumn() {
        return this.index;
    }

    public int getRow() {
        return this.index;
    }

    public double getThreshold() {
        return this.threshold;
    }
}
