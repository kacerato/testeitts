package com.android.tools.r8.internal;

public final class L20 extends K20 implements G30 {

    public final M20 f41849g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public L20(M20 m20) {
        super(m20);
        this.f41849g = m20;
    }

    @Override
    public final void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final Object next() {
        return this.f41849g.f42135c[b()];
    }

    @Override
    public final Object previous() {
        return this.f41849g.f42135c[d()];
    }

    @Override
    public final void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
