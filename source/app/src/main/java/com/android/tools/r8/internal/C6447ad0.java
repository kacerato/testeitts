package com.android.tools.r8.internal;

public final class C6447ad0 extends AbstractC7113ed0 implements G30 {

    public final C7447gd0 f46566g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6447ad0(C7447gd0 c7447gd0) {
        super(c7447gd0);
        this.f46566g = c7447gd0;
    }

    @Override
    public final void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final Object next() {
        return this.f46566g.f48308c[b()];
    }

    @Override
    public final Object previous() {
        return this.f46566g.f48308c[d()];
    }

    @Override
    public final void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
