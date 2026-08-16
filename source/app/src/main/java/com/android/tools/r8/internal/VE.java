package com.android.tools.r8.internal;

public final class VE extends UE implements UH {

    public final WE f45002g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VE(WE we2) {
        super(we2);
        this.f45002g = we2;
    }

    @Override
    public final void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final int c() {
        return this.f45002g.f45342d[d()];
    }

    @Override
    public final Object next() {
        return Integer.valueOf(this.f45002g.f45342d[b()]);
    }

    @Override
    public final Object previous() {
        return Integer.valueOf(this.f45002g.f45342d[d()]);
    }

    @Override
    public final int r() {
        return this.f45002g.f45342d[b()];
    }

    @Override
    public final void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
