package org.apache.commons.math3.exception;

import org.apache.commons.math3.exception.util.Localizable;
import org.apache.commons.math3.exception.util.LocalizedFormats;

public class NoBracketingException extends MathIllegalArgumentException {
    private static final long serialVersionUID = -3629324471511904459L;
    private final double fHi;
    private final double fLo;

    private final double f100158hi;
    private final double lo;

    public NoBracketingException(double d10, double d11, double d12, double d13) {
        this(LocalizedFormats.SAME_SIGN_AT_ENDPOINTS, d10, d11, d12, d13, new Object[0]);
    }

    public double getFHi() {
        return this.fHi;
    }

    public double getFLo() {
        return this.fLo;
    }

    public double getHi() {
        return this.f100158hi;
    }

    public double getLo() {
        return this.lo;
    }

    public NoBracketingException(Localizable localizable, double d10, double d11, double d12, double d13, Object... objArr) {
        super(localizable, Double.valueOf(d10), Double.valueOf(d11), Double.valueOf(d12), Double.valueOf(d13), objArr);
        this.lo = d10;
        this.f100158hi = d11;
        this.fLo = d12;
        this.fHi = d13;
    }
}
