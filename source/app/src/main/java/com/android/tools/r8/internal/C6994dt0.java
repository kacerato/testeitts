package com.android.tools.r8.internal;

public final class C6994dt0 implements InterfaceC10164wt0 {

    public final C5009Cu0 f47539b;

    public final boolean f47540c;

    public final InterfaceC6740cL f47541d;

    public C6994dt0(InterfaceC6740cL interfaceC6740cL, C5009Cu0 c5009Cu0, boolean z10) {
        interfaceC6740cL = interfaceC6740cL == null ? null : interfaceC6740cL;
        this.f47541d = interfaceC6740cL;
        if (interfaceC6740cL == null) {
            throw new IllegalArgumentException();
        }
        this.f47539b = c5009Cu0;
        this.f47540c = z10;
    }

    @Override
    public final AbstractC9997vt0 a(C5713Oz c5713Oz, C5009Cu0 c5009Cu0) {
        if (this.f47539b.equals(c5009Cu0) || (this.f47540c && this.f47539b.f39379b == c5009Cu0.f39378a)) {
            return new C7161et0(this.f47541d, c5713Oz, c5009Cu0, this, true);
        }
        return null;
    }
}
