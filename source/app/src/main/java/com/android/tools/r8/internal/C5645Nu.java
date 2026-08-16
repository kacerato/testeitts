package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.proto.k;
import java.util.IdentityHashMap;
import java.util.Objects;
import java.util.Set;

public final class C5645Nu extends AbstractC8435mZ {

    public static final boolean f42728t = true;

    public final G1 f42729p;

    public final AbstractC8552nC f42730q;

    public final C8664nu f42731r;

    public final Set f42732s;

    public C5645Nu(C4798y c4798y, C9201r6 c9201r6, C9035q6 c9035q6, C8534n6 c8534n6, IdentityHashMap identityHashMap, AbstractC8552nC abstractC8552nC, Set set) {
        super(c4798y, c9201r6, identityHashMap, c8534n6, c9035q6);
        if (!f42728t && c4798y.I().a()) {
            throw new AssertionError();
        }
        this.f42729p = c4798y.f38427t;
        this.f42730q = abstractC8552nC;
        this.f42731r = c4798y.I();
        this.f42732s = set;
    }

    @Override
    public final C5645Nu a() {
        return this;
    }

    @Override
    public final boolean g(AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.graph.A2 a22) {
        if (abstractC5308Hz == this) {
            return true;
        }
        boolean z10 = f42728t;
        if (!z10 && !this.f43777d.g(abstractC5308Hz, d(a22))) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.A2 a23 = (com.android.tools.r8.graph.A2) this.f43777d.e(abstractC5308Hz, d(a22)).f41111a;
        if (z10 || this.f42731r.c(a23.s0()) == a23.s0()) {
            return true;
        }
        throw new AssertionError();
    }

    @Override
    public final NW a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23, EnumC8071kK enumC8071kK, AbstractC9530t40 abstractC9530t40, AbstractC5308Hz abstractC5308Hz, InterfaceC5250Gz interfaceC5250Gz) {
        if (this == abstractC5308Hz) {
            return interfaceC5250Gz.a(new NW(a22, a22, AbstractC9530t40.f52519c, enumC8071kK, com.android.tools.r8.graph.proto.j.f37620d).a(this));
        }
        return super.a(a22, a23, enumC8071kK, abstractC9530t40, abstractC5308Hz, interfaceC5250Gz);
    }

    @Override
    public final boolean a(AbstractC5308Hz abstractC5308Hz) {
        if (abstractC5308Hz == this) {
            return true;
        }
        return this.f42731r.f51109b.isEmpty() && this.f43777d.a(abstractC5308Hz);
    }

    @Override
    public final NW a(NW nw, com.android.tools.r8.graph.A2 a22, AbstractC5308Hz abstractC5308Hz) {
        com.android.tools.r8.graph.A2 a23;
        boolean z10 = f42728t;
        if (!z10 && a22 == null && !g(abstractC5308Hz, (com.android.tools.r8.graph.A2) nw.f41111a)) {
            throw new AssertionError();
        }
        if (!z10 && a22 != null && nw.f42623d == null) {
            throw new AssertionError();
        }
        if (nw.f42623d != EnumC8071kK.f49583g) {
            a23 = (com.android.tools.r8.graph.A2) this.f49999g.apply((com.android.tools.r8.graph.A2) nw.f41111a);
        } else {
            if (!z10 && a22 == null) {
                throw new AssertionError();
            }
            com.android.tools.r8.graph.A2 d10 = d(a22);
            com.android.tools.r8.graph.M2 c10 = this.f42731r.c(d10.s0());
            if (this.f42731r.b(c10)) {
                if (!c10.a(d10.s0())) {
                    com.android.tools.r8.graph.A2 a24 = (com.android.tools.r8.graph.A2) nw.f41111a;
                    if (!a24.s0().a(c10)) {
                        a24 = a24.a(c10, this.f43776c);
                    }
                    a23 = (com.android.tools.r8.graph.A2) this.f50001i.b(a24);
                } else {
                    return nw.a(this);
                }
            } else {
                a23 = (com.android.tools.r8.graph.A2) this.f49999g.apply((com.android.tools.r8.graph.A2) nw.f41111a);
            }
        }
        com.android.tools.r8.graph.A2 a25 = a23;
        if (a25 == null) {
            return nw.a(this);
        }
        AbstractC9530t40 abstractC9530t40 = AbstractC9530t40.f52519c;
        com.android.tools.r8.graph.proto.j jVar = com.android.tools.r8.graph.proto.j.f37620d;
        return new NW(a25, null, abstractC9530t40, a(a25, a25, (com.android.tools.r8.graph.A2) nw.f41111a, nw.f42623d), a(nw.f42624e, (com.android.tools.r8.graph.A2) nw.f41111a, a25)).a(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0037  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final com.android.tools.r8.graph.proto.j a(com.android.tools.r8.graph.proto.j jVar, com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23) {
        com.android.tools.r8.graph.proto.k kVar;
        AbstractC5746Pm0 abstractC5746Pm0;
        AbstractC5746Pm0 abstractC5746Pm02;
        if (jVar.b() && (abstractC5746Pm0 = (kVar = jVar.f37624c).f37629e) != null) {
            if (abstractC5746Pm0.f0()) {
                if (this.f42731r.b(abstractC5746Pm0.N().f40306c)) {
                    abstractC5746Pm02 = this.f42729p.a(this.f42731r.a(r1.f40306c), AbstractC8999pu0.k());
                    if (abstractC5746Pm02 != abstractC5746Pm0) {
                        k.a d10 = com.android.tools.r8.graph.proto.k.d();
                        d10.f37630a = kVar.f37626b;
                        k.a a10 = d10.b(kVar.f()).a(kVar.e());
                        a10.f37633d = abstractC5746Pm02;
                        com.android.tools.r8.graph.proto.k a11 = a10.a();
                        if (!Objects.equals(jVar.f37624c, a11)) {
                            jVar = new com.android.tools.r8.graph.proto.j(jVar.f37622a, a11, jVar.f37623b);
                        }
                    }
                }
            }
            abstractC5746Pm02 = abstractC5746Pm0;
            if (abstractC5746Pm02 != abstractC5746Pm0) {
            }
        }
        AbstractC8552nC abstractC8552nC = this.f42730q;
        Object obj = com.android.tools.r8.graph.proto.j.f37620d;
        Object obj2 = abstractC8552nC.get(a23);
        if (obj2 != null) {
            obj = obj2;
        }
        return jVar.a((com.android.tools.r8.graph.proto.j) obj);
    }

    @Override
    public final EnumC8071kK a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23, com.android.tools.r8.graph.A2 a24, EnumC8071kK enumC8071kK) {
        if (!this.f50000h.containsKey(a24.s0())) {
            return enumC8071kK;
        }
        if (f42728t || a22 != a24) {
            return EnumC8071kK.f49582f;
        }
        throw new AssertionError();
    }
}
