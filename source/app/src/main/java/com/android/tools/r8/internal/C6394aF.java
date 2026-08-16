package com.android.tools.r8.internal;

public final class C6394aF extends AbstractC7227fF implements A30 {

    public C6894dF f46476h;

    public final C7561hF f46477i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6394aF(C7561hF c7561hF) {
        super(c7561hF);
        this.f46477i = c7561hF;
    }

    @Override
    public final Object next() {
        C6894dF c6894dF = new C6894dF(this.f46477i, a());
        this.f46476h = c6894dF;
        return c6894dF;
    }

    @Override
    public final void remove() {
        super.remove();
        this.f46476h.f47331b = -1;
    }
}
