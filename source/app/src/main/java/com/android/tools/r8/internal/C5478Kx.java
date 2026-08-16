package com.android.tools.r8.internal;

public final class C5478Kx extends AbstractC5420Jx {

    public static final boolean f41830i = true;

    public final com.android.tools.r8.graph.H5 f41831e;

    public final InterfaceC10100wX f41832f;

    public final int f41833g;

    public final com.android.tools.r8.graph.M2 f41834h;

    public C5478Kx(com.android.tools.r8.graph.H5 h52, InterfaceC10100wX interfaceC10100wX, int i10, com.android.tools.r8.graph.M2 m22) {
        if (!f41830i && !interfaceC10100wX.f() && !interfaceC10100wX.isUnknown()) {
            throw new AssertionError();
        }
        this.f41831e = h52;
        this.f41832f = interfaceC10100wX;
        this.f41833g = i10;
        this.f41834h = m22;
    }

    @Override
    public final void a(AbstractC5361Iw0 abstractC5361Iw0) {
        if (this.f41832f.f()) {
            this.f41832f.b().a(this.f41833g, abstractC5361Iw0);
        } else {
            if (f41830i) {
                return;
            }
            abstractC5361Iw0.getClass();
            if (!(abstractC5361Iw0 instanceof C10671zv0)) {
                throw new AssertionError();
            }
        }
    }

    @Override
    public final C5478Kx b() {
        return this;
    }

    @Override
    public final AbstractC5361Iw0 d() {
        if (!this.f41832f.f()) {
            return C10671zv0.f54579b;
        }
        C8622ng b10 = this.f41832f.b();
        return (AbstractC5361Iw0) b10.f51020c.get(this.f41833g);
    }

    @Override
    public final com.android.tools.r8.graph.M2 e() {
        return this.f41834h;
    }

    @Override
    public final boolean f() {
        return !this.f41831e.getAccessFlags().n() && this.f41833g == 0;
    }

    public final String toString() {
        return new C6431aX(this.f41831e, this.f41833g).toString();
    }
}
