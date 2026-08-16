package com.android.tools.r8.internal;

public final class NW extends IV {

    public static final boolean f42621f = true;

    public final AbstractC9530t40 f42622c;

    public final EnumC8071kK f42623d;

    public final com.android.tools.r8.graph.proto.j f42624e;

    public NW(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23, AbstractC9530t40 abstractC9530t40, EnumC8071kK enumC8071kK, com.android.tools.r8.graph.proto.j jVar) {
        super(a22, a23);
        this.f42622c = abstractC9530t40;
        this.f42623d = enumC8071kK;
        this.f42624e = jVar;
    }

    public final NW a(AbstractC5308Hz abstractC5308Hz) {
        boolean z10 = f42621f;
        if (!z10 && this.f41111a == null) {
            throw new AssertionError();
        }
        if (z10 || abstractC5308Hz.j() || (abstractC5308Hz instanceof C7358g3) || !abstractC5308Hz.d().f43775b.m() || ((com.android.tools.r8.graph.A2) this.f41111a).s0().E0() || a() || (abstractC5308Hz instanceof C5645Nu) || (abstractC5308Hz instanceof K10) || (abstractC5308Hz instanceof N7)) {
            return this;
        }
        throw new AssertionError(abstractC5308Hz);
    }
}
