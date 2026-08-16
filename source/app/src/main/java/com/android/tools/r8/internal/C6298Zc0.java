package com.android.tools.r8.internal;

public final class C6298Zc0 extends AbstractC7113ed0 implements G30 {

    public C6780cd0 f46300g;

    public final C7447gd0 f46301h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6298Zc0(C7447gd0 c7447gd0) {
        super(c7447gd0);
        this.f46301h = c7447gd0;
    }

    @Override
    public final void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final Object next() {
        C6780cd0 c6780cd0 = new C6780cd0(this.f46301h, b());
        this.f46300g = c6780cd0;
        return c6780cd0;
    }

    @Override
    public final Object previous() {
        C6780cd0 c6780cd0 = new C6780cd0(this.f46301h, d());
        this.f46300g = c6780cd0;
        return c6780cd0;
    }

    @Override
    public final void remove() {
        super.remove();
        this.f46300g.f47119b = -1;
    }

    @Override
    public final void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
