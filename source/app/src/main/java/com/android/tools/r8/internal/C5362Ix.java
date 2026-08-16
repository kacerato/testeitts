package com.android.tools.r8.internal;

public final class C5362Ix extends AbstractC5420Jx {

    public final com.android.tools.r8.graph.F5 f41254e;

    public AbstractC5361Iw0 f41255f;

    public C5362Ix(com.android.tools.r8.graph.F5 f52, AbstractC5361Iw0 abstractC5361Iw0) {
        this.f41254e = f52;
        this.f41255f = abstractC5361Iw0;
    }

    @Override
    public final C5362Ix a() {
        return this;
    }

    @Override
    public final AbstractC5361Iw0 d() {
        return this.f41255f;
    }

    @Override
    public final com.android.tools.r8.graph.M2 e() {
        return this.f41254e.getReference().getType();
    }

    public final String toString() {
        return this.f41254e.r();
    }

    @Override
    public final void a(AbstractC5361Iw0 abstractC5361Iw0) {
        this.f41255f = abstractC5361Iw0;
    }
}
