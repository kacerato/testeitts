package com.android.tools.r8.internal;

public final class C7331fu0 extends AbstractC9997vt0 {
    @Override
    public final void a(C9075qL c9075qL, Object obj) {
        if (((Number) obj) == null) {
            c9075qL.i();
        } else {
            c9075qL.a(r4.intValue());
        }
    }

    @Override
    public final Object a(C8240lL c8240lL) {
        if (c8240lL.u() == 9) {
            c8240lL.r();
            return null;
        }
        try {
            return Integer.valueOf(c8240lL.o());
        } catch (NumberFormatException e10) {
            throw new C8407mL(e10);
        }
    }
}
