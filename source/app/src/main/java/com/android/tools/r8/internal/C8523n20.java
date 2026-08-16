package com.android.tools.r8.internal;

public final class C8523n20 extends AbstractC9357s20 implements A30 {

    public C9024q20 f50488h;

    public final C9691u20 f50489i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8523n20(C9691u20 c9691u20) {
        super(c9691u20);
        this.f50489i = c9691u20;
    }

    @Override
    public final Object next() {
        C9024q20 c9024q20 = new C9024q20(this.f50489i, a());
        this.f50488h = c9024q20;
        return c9024q20;
    }

    @Override
    public final void remove() {
        super.remove();
        this.f50488h.f51701b = -1;
    }
}
