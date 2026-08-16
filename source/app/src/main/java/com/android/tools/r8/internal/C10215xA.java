package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.function.Function;

public final class C10215xA extends AbstractC8947pd {

    public static final boolean f53706p = true;

    public final IdentityHashMap f53707n;

    public final CA f53708o;

    public C10215xA(C4798y c4798y, CA ca2, IdentityHashMap identityHashMap, C8534n6 c8534n6, C8200l6 c8200l6, C8534n6 c8534n62) {
        super(c4798y, c8534n6, c8200l6.f49890b, ca2.f39147a, c8534n62);
        this.f53707n = identityHashMap;
        this.f53708o = ca2;
    }

    @Override
    public final NW a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23, EnumC8071kK enumC8071kK, AbstractC9530t40 abstractC9530t40, AbstractC5308Hz abstractC5308Hz, InterfaceC5250Gz interfaceC5250Gz) {
        if (this == abstractC5308Hz) {
            return interfaceC5250Gz.a(new NW(a22, a22, AbstractC9530t40.f52519c, enumC8071kK, com.android.tools.r8.graph.proto.j.f37620d).a(this));
        }
        return super.a(a22, a23, enumC8071kK, abstractC9530t40, abstractC5308Hz, interfaceC5250Gz);
    }

    @Override
    public final C10215xA b() {
        return this;
    }

    @Override
    public final com.android.tools.r8.graph.M2 f(com.android.tools.r8.graph.M2 m22) {
        return m22;
    }

    @Override
    public final Iterable g(com.android.tools.r8.graph.M2 m22) {
        return AbstractC6114Vx.b(C9073qK.b(m22), this.f53708o.d(m22));
    }

    @Override
    public final C7835iw b(C7835iw c7835iw) {
        C7835iw b10 = super.b(c7835iw);
        if (((C4554l1) b10.f41111a).a((C4554l1) c7835iw.f41111a)) {
            return b10;
        }
        com.android.tools.r8.graph.M2 type = ((C4554l1) b10.f41111a).getType();
        com.android.tools.r8.graph.M2 e10 = e(((C4554l1) c7835iw.f41111a).getType());
        C4554l1 c4554l1 = (C4554l1) b10.f41111a;
        C4554l1 c4554l12 = (C4554l1) b10.f41112b;
        if (e10.a(type)) {
            e10 = null;
        }
        return new C7835iw(c4554l1, c4554l12, e10, c7835iw.b(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C10215xA.this.e((com.android.tools.r8.graph.M2) obj);
            }
        }));
    }

    public final com.android.tools.r8.graph.A2 f(com.android.tools.r8.graph.A2 a22) {
        com.android.tools.r8.graph.A2 a23 = (com.android.tools.r8.graph.A2) this.f49999g.apply(a22);
        return a23 != null ? a23 : a22;
    }

    @Override
    public final com.android.tools.r8.graph.proto.j f(AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.graph.A2 a22) {
        if (this == abstractC5308Hz) {
            return AbstractC5308Hz.g().f(abstractC5308Hz, a22);
        }
        com.android.tools.r8.graph.A2 d10 = d(a22);
        com.android.tools.r8.graph.proto.j f10 = this.f43777d.f(abstractC5308Hz, d10);
        if (a22.w0() <= d10.w0()) {
            return f10;
        }
        if (!f53706p) {
            C4724u1 c4724u1 = this.f43776c;
            c4724u1.getClass();
            if (d10.f38298g != c4724u1.f38067i1) {
                throw new AssertionError();
            }
        }
        List a10 = AbstractC5300Hv.a(d10, a22);
        com.android.tools.r8.graph.proto.j jVar = com.android.tools.r8.graph.proto.j.f37620d;
        return f10.a(com.android.tools.r8.graph.proto.j.a(a10, null, com.android.tools.r8.graph.proto.c.f37602f));
    }

    @Override
    public final NW a(NW nw, com.android.tools.r8.graph.A2 a22, AbstractC5308Hz abstractC5308Hz) {
        if (!nw.a()) {
            return super.a(nw, a22, abstractC5308Hz);
        }
        if (f53706p || nw.a()) {
            return super.a(nw, a22, abstractC5308Hz);
        }
        throw new AssertionError();
    }

    @Override
    public final com.android.tools.r8.graph.proto.j a(com.android.tools.r8.graph.proto.j jVar, com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23) {
        if (a23.w0() > a22.w0()) {
            if (!f53706p) {
                C4724u1 c4724u1 = this.f43776c;
                c4724u1.getClass();
                if (a22.f38298g != c4724u1.f38067i1) {
                    throw new AssertionError();
                }
            }
            List a10 = AbstractC5300Hv.a(a22, a23);
            com.android.tools.r8.graph.proto.j jVar2 = com.android.tools.r8.graph.proto.j.f37620d;
            com.android.tools.r8.graph.proto.j a11 = com.android.tools.r8.graph.proto.j.a(a10, null, com.android.tools.r8.graph.proto.c.f37602f);
            C4894Av c4894Av = (C4894Av) this.f53707n.get(a22);
            if (c4894Av != null) {
                a11.f37622a.set(0, c4894Av);
            }
            return jVar.a(a11);
        }
        if (f53706p || a23.w0() == a22.w0()) {
            return jVar;
        }
        throw new AssertionError();
    }
}
