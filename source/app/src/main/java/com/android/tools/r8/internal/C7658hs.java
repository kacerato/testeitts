package com.android.tools.r8.internal;

public class C7658hs extends AbstractC6482ap {
    public C7658hs(int i10, C5693Op c5693Op) {
        super(i10, c5693Op);
    }

    @Override
    public final void a(C6382aB c6382aB) {
        T10 t10 = T10.f44369e;
        short s10 = this.f46633f;
        short s11 = this.f46634g;
        byte b10 = this.f46635h;
        boolean z10 = C6382aB.f46438D;
        if (z10) {
            c6382aB.getClass();
        } else {
            c6382aB.getClass();
            if (!C6382aB.b(t10)) {
                throw new AssertionError();
            }
        }
        C5918Sl0 c5918Sl0 = new C5918Sl0(t10, c6382aB.a(s10, 1, D70.a(t10)), c6382aB.b(s11, EnumC5592Mw0.a(t10)), c6382aB.a(b10));
        if (!z10 && c5918Sl0.o()) {
            throw new AssertionError();
        }
        c6382aB.a(c6382aB.f46462u.g(), c5918Sl0);
    }

    @Override
    public final String t() {
        return "ShrIntLit8";
    }

    @Override
    public final int v() {
        return 225;
    }

    @Override
    public final String z() {
        return "shr-int/lit8";
    }

    public C7658hs(int i10, int i11, int i12) {
        super(i10, i11, i12);
    }
}
