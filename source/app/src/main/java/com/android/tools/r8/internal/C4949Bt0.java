package com.android.tools.r8.internal;

public final class C4949Bt0 extends AbstractC9997vt0 {
    @Override
    public final void a(C9075qL c9075qL, Object obj) {
        Number number = (Number) obj;
        if (number == null) {
            c9075qL.i();
        } else {
            c9075qL.a(number.doubleValue());
        }
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
