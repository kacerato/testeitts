package com.android.tools.r8.internal;

public final class WG extends AbstractC6566bH implements A30 {

    public ZG f45358h;

    public final C6899dH f45359i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WG(C6899dH c6899dH) {
        super(c6899dH);
        this.f45359i = c6899dH;
    }

    @Override
    public final Object next() {
        ZG zg2 = new ZG(this.f45359i, a());
        this.f45358h = zg2;
        return zg2;
    }

    @Override
    public final void remove() {
        super.remove();
        this.f45358h.f46209b = -1;
    }
}
