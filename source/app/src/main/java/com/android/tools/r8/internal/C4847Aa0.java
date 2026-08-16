package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.IdentityHashMap;

public final class C4847Aa0 extends AbstractC5276Hj {

    public static final boolean f38632h = true;

    public final UY f38633f;

    public final IdentityHashMap f38634g;

    public C4847Aa0(C4798y c4798y, UY uy, IdentityHashMap identityHashMap) {
        super(c4798y);
        this.f38633f = uy;
        this.f38634g = identityHashMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final NW a(NW nw, com.android.tools.r8.graph.A2 a22, AbstractC5308Hz abstractC5308Hz) {
        if (!f38632h && !nw.a()) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.A2 a23 = (com.android.tools.r8.graph.A2) nw.f41112b;
        com.android.tools.r8.graph.A2 a24 = (com.android.tools.r8.graph.A2) ((C9201r6) this.f38633f).getOrDefault(a23, a23);
        if (a24.a(a23)) {
            return nw.a(this);
        }
        com.android.tools.r8.graph.A2 a25 = (com.android.tools.r8.graph.A2) nw.f41111a;
        return new NW(a25.a(a23) ? a24 : a24.a(a25.s0(), this.f43776c), a24, AbstractC9530t40.f52519c, nw.f42623d, nw.f42624e.a((com.android.tools.r8.graph.proto.j) this.f38634g.getOrDefault(a24, com.android.tools.r8.graph.proto.j.f37620d))).a(this);
    }

    @Override
    public final com.android.tools.r8.graph.A2 c(com.android.tools.r8.graph.A2 a22) {
        return (com.android.tools.r8.graph.A2) ((C9201r6) this.f38633f).getOrDefault(a22, a22);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final com.android.tools.r8.graph.A2 d(com.android.tools.r8.graph.A2 a22) {
        Object c10 = ((C9201r6) this.f38633f).c(a22);
        if (c10 != 0) {
            a22 = c10;
        }
        return a22;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final com.android.tools.r8.graph.proto.j f(AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.graph.A2 a22) {
        if (this == abstractC5308Hz) {
            return com.android.tools.r8.graph.proto.j.f37620d;
        }
        com.android.tools.r8.graph.A2 d10 = d(a22);
        com.android.tools.r8.graph.proto.j f10 = this.f43777d.f((AbstractC5308Hz) null, d10);
        return d10 == a22 ? f10 : f10.a((com.android.tools.r8.graph.proto.j) this.f38634g.getOrDefault(a22, com.android.tools.r8.graph.proto.j.f37620d));
    }
}
