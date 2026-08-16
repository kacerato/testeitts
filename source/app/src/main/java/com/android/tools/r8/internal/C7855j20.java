package com.android.tools.r8.internal;

public final class C7855j20 extends AbstractC7690i20 implements UH {

    public final C8022k20 f49140g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7855j20(C8022k20 c8022k20) {
        super(c8022k20);
        this.f49140g = c8022k20;
    }

    @Override
    public final void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final int c() {
        return this.f49140g.f49457d[d()];
    }

    @Override
    public final Object next() {
        return Integer.valueOf(this.f49140g.f49457d[b()]);
    }

    @Override
    public final Object previous() {
        return Integer.valueOf(this.f49140g.f49457d[d()]);
    }

    @Override
    public final int r() {
        return this.f49140g.f49457d[b()];
    }

    @Override
    public final void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
