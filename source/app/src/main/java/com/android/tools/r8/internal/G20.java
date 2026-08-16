package com.android.tools.r8.internal;

public final class G20 extends K20 implements G30 {

    public final M20 f40377g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public G20(M20 m20) {
        super(m20);
        this.f40377g = m20;
    }

    @Override
    public final void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final Object next() {
        return this.f40377g.f42134b[b()];
    }

    @Override
    public final Object previous() {
        return this.f40377g.f42134b[d()];
    }

    @Override
    public final void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
