package com.android.tools.r8.internal;

public final class C7022e20 extends AbstractC7690i20 implements G30 {

    public final C8022k20 f47581g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7022e20(C8022k20 c8022k20) {
        super(c8022k20);
        this.f47581g = c8022k20;
    }

    @Override
    public final void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final Object next() {
        return this.f47581g.f49456c[b()];
    }

    @Override
    public final Object previous() {
        return this.f47581g.f49456c[d()];
    }

    @Override
    public final void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
