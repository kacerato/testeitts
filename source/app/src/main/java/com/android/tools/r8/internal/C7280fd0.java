package com.android.tools.r8.internal;

public final class C7280fd0 extends AbstractC7113ed0 implements UH {

    public final C7447gd0 f48029g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7280fd0(C7447gd0 c7447gd0) {
        super(c7447gd0);
        this.f48029g = c7447gd0;
    }

    @Override
    public final void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final int c() {
        return this.f48029g.f48309d[d()];
    }

    @Override
    public final Object next() {
        return Integer.valueOf(this.f48029g.f48309d[b()]);
    }

    @Override
    public final Object previous() {
        return Integer.valueOf(this.f48029g.f48309d[d()]);
    }

    @Override
    public final int r() {
        return this.f48029g.f48309d[b()];
    }

    @Override
    public final void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
