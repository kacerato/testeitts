package com.android.tools.r8.internal;

public final class C7526h30 extends AbstractC8359m30 implements G30 {

    public C8025k30 f48425g;

    public final C8693o30 f48426h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7526h30(C8693o30 c8693o30) {
        super(c8693o30);
        this.f48426h = c8693o30;
    }

    @Override
    public final void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final Object next() {
        C8025k30 c8025k30 = new C8025k30(this.f48426h, b());
        this.f48425g = c8025k30;
        return c8025k30;
    }

    @Override
    public final Object previous() {
        C8025k30 c8025k30 = new C8025k30(this.f48426h, d());
        this.f48425g = c8025k30;
        return c8025k30;
    }

    @Override
    public final void remove() {
        super.remove();
        this.f48425g.f49474b = -1;
    }

    @Override
    public final void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
