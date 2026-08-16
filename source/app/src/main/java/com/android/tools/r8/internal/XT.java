package com.android.tools.r8.internal;

public final class XT extends AbstractC6758cU implements A30 {

    public C6425aU f45710h;

    public final C7091eU f45711i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public XT(C7091eU c7091eU) {
        super(c7091eU);
        this.f45711i = c7091eU;
    }

    @Override
    public final Object next() {
        C6425aU c6425aU = new C6425aU(this.f45711i, a());
        this.f45710h = c6425aU;
        return c6425aU;
    }

    @Override
    public final void remove() {
        super.remove();
        this.f45710h.f46545b = -1;
    }
}
