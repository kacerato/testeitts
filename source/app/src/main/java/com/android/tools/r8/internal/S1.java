package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Set;

public final class S1 extends AbstractC5276Hj {

    public static final boolean f44059i = true;

    public final C9201r6 f44060f;

    public final Set f44061g;

    public final Set f44062h;

    public S1(C4798y c4798y, C9201r6 c9201r6, Set set, Set set2) {
        super(c4798y);
        this.f44060f = c9201r6;
        this.f44061g = set;
        this.f44062h = set2;
    }

    @Override
    public final NW a(NW nw, com.android.tools.r8.graph.A2 a22, AbstractC5308Hz abstractC5308Hz) {
        com.android.tools.r8.graph.A2 a23 = (com.android.tools.r8.graph.A2) nw.f41112b;
        com.android.tools.r8.graph.A2 a24 = (com.android.tools.r8.graph.A2) this.f44060f.getOrDefault(a23, a23);
        if (!f44059i && !a24.s0().a(((com.android.tools.r8.graph.A2) nw.f41112b).s0())) {
            throw new AssertionError();
        }
        EnumC8071kK enumC8071kK = nw.f42623d;
        enumC8071kK.getClass();
        if (enumC8071kK == EnumC8071kK.f49580d) {
            if (this.f44061g.contains(a24)) {
                enumC8071kK = EnumC8071kK.f49581e;
            } else if (this.f44062h.contains(a24)) {
                enumC8071kK = EnumC8071kK.f49584h;
            }
        }
        EnumC8071kK enumC8071kK2 = enumC8071kK;
        if (enumC8071kK2 == nw.f42623d && a24.a((com.android.tools.r8.graph.A2) nw.f41112b)) {
            return nw.a(this);
        }
        com.android.tools.r8.graph.A2 a10 = a24.a(nw.f41111a, this.f43776c);
        AbstractC9530t40 abstractC9530t40 = AbstractC9530t40.f52519c;
        com.android.tools.r8.graph.proto.j jVar = com.android.tools.r8.graph.proto.j.f37620d;
        return new NW(a10, a24, abstractC9530t40, enumC8071kK2, nw.f42624e).a(this);
    }

    @Override
    public final com.android.tools.r8.graph.A2 c(com.android.tools.r8.graph.A2 a22) {
        return (com.android.tools.r8.graph.A2) this.f44060f.getOrDefault(a22, a22);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final com.android.tools.r8.graph.A2 d(com.android.tools.r8.graph.A2 a22) {
        Object c10 = this.f44060f.c(a22);
        if (c10 != 0) {
            a22 = c10;
        }
        return a22;
    }
}
