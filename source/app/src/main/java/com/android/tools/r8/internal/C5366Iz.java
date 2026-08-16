package com.android.tools.r8.internal;

public final class C5366Iz extends AbstractC9997vt0 {
    @Override
    public final void a(C9075qL c9075qL, Object obj) {
        Number number = (Number) obj;
        if (number == null) {
            c9075qL.i();
            return;
        }
        double doubleValue = number.doubleValue();
        if (!Double.isNaN(doubleValue) && !Double.isInfinite(doubleValue)) {
            c9075qL.a(doubleValue);
            return;
        }
        throw new IllegalArgumentException(doubleValue + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
    }

    @Override
    public final Object a(C8240lL c8240lL) {
        if (c8240lL.u() == 9) {
            c8240lL.r();
            return null;
        }
        return Double.valueOf(c8240lL.n());
    }
}
