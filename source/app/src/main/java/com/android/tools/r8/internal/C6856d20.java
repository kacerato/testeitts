package com.android.tools.r8.internal;

public final class C6856d20 extends AbstractC7690i20 implements G30 {

    public C7356g20 f47255g;

    public final C8022k20 f47256h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6856d20(C8022k20 c8022k20) {
        super(c8022k20);
        this.f47256h = c8022k20;
    }

    @Override
    public final void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final Object next() {
        C7356g20 c7356g20 = new C7356g20(this.f47256h, b());
        this.f47255g = c7356g20;
        return c7356g20;
    }

    @Override
    public final Object previous() {
        C7356g20 c7356g20 = new C7356g20(this.f47256h, d());
        this.f47255g = c7356g20;
        return c7356g20;
    }

    @Override
    public final void remove() {
        super.remove();
        this.f47255g.f48170b = -1;
    }

    @Override
    public final void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
