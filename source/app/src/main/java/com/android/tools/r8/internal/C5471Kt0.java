package com.android.tools.r8.internal;

public final class C5471Kt0 extends AbstractC9997vt0 {
    @Override
    public final void a(C9075qL c9075qL, Object obj) {
        StringBuffer stringBuffer = (StringBuffer) obj;
        c9075qL.d(stringBuffer == null ? null : stringBuffer.toString());
    }

    @Override
    public final Object a(C8240lL c8240lL) {
        if (c8240lL.u() == 9) {
            c8240lL.r();
            return null;
        }
        return new StringBuffer(c8240lL.s());
    }
}
