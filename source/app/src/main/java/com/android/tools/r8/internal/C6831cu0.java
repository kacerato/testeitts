package com.android.tools.r8.internal;

public final class C6831cu0 extends AbstractC9997vt0 {
    @Override
    public final void a(C9075qL c9075qL, Object obj) {
        Boolean bool = (Boolean) obj;
        c9075qL.d(bool == null ? "null" : bool.toString());
    }

    @Override
    public final Object a(C8240lL c8240lL) {
        if (c8240lL.u() == 9) {
            c8240lL.r();
            return null;
        }
        return Boolean.valueOf(c8240lL.s());
    }
}
