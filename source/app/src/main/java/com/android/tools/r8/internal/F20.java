package com.android.tools.r8.internal;

public final class F20 extends K20 implements G30 {

    public I20 f40078g;

    public final M20 f40079h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public F20(M20 m20) {
        super(m20);
        this.f40079h = m20;
    }

    @Override
    public final void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final Object next() {
        I20 i20 = new I20(this.f40079h, b());
        this.f40078g = i20;
        return i20;
    }

    @Override
    public final Object previous() {
        I20 i20 = new I20(this.f40079h, d());
        this.f40078g = i20;
        return i20;
    }

    @Override
    public final void remove() {
        super.remove();
        this.f40078g.f40962b = -1;
    }

    @Override
    public final void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
