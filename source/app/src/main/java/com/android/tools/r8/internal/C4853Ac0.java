package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.IdentityHashMap;
import java.util.Set;

public final class C4853Ac0 extends AbstractC5276Hj {

    public final Set f38643f;

    public final IdentityHashMap f38644g;

    public C4853Ac0(C4798y c4798y, Set set, IdentityHashMap identityHashMap) {
        super(c4798y);
        this.f38643f = set;
        this.f38644g = identityHashMap;
    }

    @Override
    public final NW a(NW nw, com.android.tools.r8.graph.A2 a22, AbstractC5308Hz abstractC5308Hz) {
        com.android.tools.r8.graph.A2 a23;
        if (!this.f38644g.containsKey(nw.f41111a)) {
            return nw.a(this);
        }
        com.android.tools.r8.graph.A2 a24 = (com.android.tools.r8.graph.A2) nw.f41111a;
        while (true) {
            a23 = (com.android.tools.r8.graph.A2) this.f38644g.get(a24);
            if (!this.f38644g.containsKey(a23)) {
                break;
            }
            a24 = a23;
        }
        boolean contains = this.f38643f.contains(a23.s0());
        if (nw.f42623d.d() && contains) {
            AbstractC9530t40 abstractC9530t40 = AbstractC9530t40.f52519c;
            com.android.tools.r8.graph.proto.j jVar = com.android.tools.r8.graph.proto.j.f37620d;
            return new NW((com.android.tools.r8.graph.A2) nw.f41111a, a23, abstractC9530t40, nw.f42623d, nw.f42624e).a(this);
        }
        AbstractC9530t40 abstractC9530t402 = AbstractC9530t40.f52519c;
        com.android.tools.r8.graph.proto.j jVar2 = com.android.tools.r8.graph.proto.j.f37620d;
        return new NW(a23, a23, abstractC9530t402, (contains && nw.f42623d.e()) ? EnumC8071kK.f49581e : nw.f42623d, nw.f42624e).a(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final com.android.tools.r8.graph.A2 c(com.android.tools.r8.graph.A2 a22) {
        return (com.android.tools.r8.graph.A2) this.f38644g.getOrDefault(a22, a22);
    }
}
