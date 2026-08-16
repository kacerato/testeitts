package com.android.tools.r8.internal;

public final class C5424Jz extends AbstractC9997vt0 {
    @Override
    public final void a(C9075qL c9075qL, Object obj) {
        Number number = (Number) obj;
        if (number == null) {
            c9075qL.i();
            return;
        }
        float floatValue = number.floatValue();
        double d10 = floatValue;
        if (!Double.isNaN(d10) && !Double.isInfinite(d10)) {
            if (!(number instanceof Float)) {
                number = Float.valueOf(floatValue);
            }
            c9075qL.a(number);
        } else {
            throw new IllegalArgumentException(d10 + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    @Override
    public final Object a(C8240lL c8240lL) {
        if (c8240lL.u() == 9) {
            c8240lL.r();
            return null;
        }
        return Float.valueOf((float) c8240lL.n());
    }
}
