package com.android.tools.r8.internal;

public final class KG extends OG implements UH {

    public final QG f41629g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KG(QG qg2) {
        super(qg2);
        this.f41629g = qg2;
    }

    @Override
    public final void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final int c() {
        return this.f41629g.f43524b[d()];
    }

    @Override
    public final Object next() {
        return Integer.valueOf(this.f41629g.f43524b[b()]);
    }

    @Override
    public final Object previous() {
        return Integer.valueOf(this.f41629g.f43524b[d()]);
    }

    @Override
    public final int r() {
        return this.f41629g.f43524b[b()];
    }

    @Override
    public final void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
