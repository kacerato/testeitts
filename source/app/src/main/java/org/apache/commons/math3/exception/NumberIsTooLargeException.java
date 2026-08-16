package org.apache.commons.math3.exception;

import org.apache.commons.math3.exception.util.Localizable;
import org.apache.commons.math3.exception.util.LocalizedFormats;

public class NumberIsTooLargeException extends MathIllegalNumberException {
    private static final long serialVersionUID = 4330003017885151975L;
    private final boolean boundIsAllowed;
    private final Number max;

    public NumberIsTooLargeException(Number number, Number number2, boolean z10) {
        this(z10 ? LocalizedFormats.NUMBER_TOO_LARGE : LocalizedFormats.NUMBER_TOO_LARGE_BOUND_EXCLUDED, number, number2, z10);
    }

    public boolean getBoundIsAllowed() {
        return this.boundIsAllowed;
    }

    public Number getMax() {
        return this.max;
    }

    public NumberIsTooLargeException(Localizable localizable, Number number, Number number2, boolean z10) {
        super(localizable, number, number2);
        this.max = number2;
        this.boundIsAllowed = z10;
    }
}
