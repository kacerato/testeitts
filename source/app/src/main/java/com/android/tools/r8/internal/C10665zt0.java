package com.android.tools.r8.internal;

public final class C10665zt0 extends AbstractC9997vt0 {
    @Override
    public final void a(C9075qL c9075qL, Object obj) {
        Number number = (Number) obj;
        if (number == null) {
            c9075qL.i();
        } else {
            c9075qL.a(number.longValue());
        }
    }

    @Override
    public final Object a(C8240lL c8240lL) {
        if (c8240lL.u() == 9) {
            c8240lL.r();
            return null;
        }
        try {
            return Long.valueOf(c8240lL.p());
        } catch (NumberFormatException e10) {
            throw new C8407mL(e10);
        }
    }
}
