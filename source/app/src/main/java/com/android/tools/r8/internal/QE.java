package com.android.tools.r8.internal;

public final class QE extends UE implements UH {

    public final WE f43508g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public QE(WE we2) {
        super(we2);
        this.f43508g = we2;
    }

    @Override
    public final void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final int c() {
        return this.f43508g.f45341c[d()];
    }

    @Override
    public final Object next() {
        return Integer.valueOf(this.f43508g.f45341c[b()]);
    }

    @Override
    public final Object previous() {
        return Integer.valueOf(this.f43508g.f45341c[d()]);
    }

    @Override
    public final int r() {
        return this.f43508g.f45341c[b()];
    }

    @Override
    public final void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
