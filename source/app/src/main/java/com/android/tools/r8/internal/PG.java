package com.android.tools.r8.internal;

public final class PG extends OG implements G30 {

    public final QG f43177g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PG(QG qg2) {
        super(qg2);
        this.f43177g = qg2;
    }

    @Override
    public final void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final Object next() {
        return this.f43177g.f43525c[b()];
    }

    @Override
    public final Object previous() {
        return this.f43177g.f43525c[d()];
    }

    @Override
    public final void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
