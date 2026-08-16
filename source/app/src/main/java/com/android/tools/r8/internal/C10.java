package com.android.tools.r8.internal;

import com.android.tools.r8.AbstractC4291c;

public final class C10 extends AbstractC9997vt0 {

    public static final B10 f39059b = new B10(new C10(EnumC9493ss0.f52475c));

    public final EnumC9493ss0 f39060a;

    public C10(EnumC9493ss0 enumC9493ss0) {
        this.f39060a = enumC9493ss0;
    }

    @Override
    public final void a(C9075qL c9075qL, Object obj) {
        c9075qL.a((Number) obj);
    }

    @Override
    public final Object a(C8240lL c8240lL) {
        int u10 = c8240lL.u();
        int b10 = AbstractC4291c.b(u10);
        if (b10 == 5 || b10 == 6) {
            return this.f39060a.a(c8240lL);
        }
        if (b10 == 8) {
            c8240lL.r();
            return null;
        }
        throw new C8407mL("Expecting number, got: " + AbstractC8574nL.a(u10) + "; at path " + c8240lL.i());
    }
}
