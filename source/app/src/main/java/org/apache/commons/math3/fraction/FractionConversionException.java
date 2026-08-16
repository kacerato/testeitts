package org.apache.commons.math3.fraction;

import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.util.LocalizedFormats;

public class FractionConversionException extends ConvergenceException {
    private static final long serialVersionUID = -4661812640132576263L;

    public FractionConversionException(double d10, int i10) {
        super(LocalizedFormats.FAILED_FRACTION_CONVERSION, Double.valueOf(d10), Integer.valueOf(i10));
    }

    public FractionConversionException(double d10, long j10, long j11) {
        super(LocalizedFormats.FRACTION_CONVERSION_OVERFLOW, Double.valueOf(d10), Long.valueOf(j10), Long.valueOf(j11));
    }
}
