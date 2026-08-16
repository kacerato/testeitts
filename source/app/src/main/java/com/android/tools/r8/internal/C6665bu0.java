package com.android.tools.r8.internal;

public final class C6665bu0 extends AbstractC9997vt0 {
    @Override
    public final void a(C9075qL c9075qL, Object obj) {
        Boolean bool = (Boolean) obj;
        if (bool == null) {
            c9075qL.i();
            return;
        }
        c9075qL.j();
        c9075qL.c();
        c9075qL.f51757a.write(bool.booleanValue() ? "true" : "false");
    }

    @Override
    public final Object a(C8240lL c8240lL) {
        int u10 = c8240lL.u();
        if (u10 == 9) {
            c8240lL.r();
            return null;
        }
        if (u10 == 6) {
            return Boolean.valueOf(Boolean.parseBoolean(c8240lL.s()));
        }
        return Boolean.valueOf(c8240lL.m());
    }
}
