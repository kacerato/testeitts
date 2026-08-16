package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import java.util.IdentityHashMap;

public final class C9693u3 extends C8268lZ {

    public static final boolean f52773o = true;

    public final IdentityHashMap f52774n;

    public C9693u3(C4798y c4798y, UY uy, UY uy2, IdentityHashMap identityHashMap) {
        super(c4798y, uy, ((C9201r6) uy2).f51964b, C8268lZ.f49996l, uy2);
        this.f52774n = identityHashMap;
    }

    @Override
    public final EnumC8071kK a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23, com.android.tools.r8.graph.A2 a24, EnumC8071kK enumC8071kK) {
        return (this.f52774n.containsKey(a23) && f(a23).f37623b.f37607d) ? EnumC8071kK.f49582f : enumC8071kK;
    }

    @Override
    public final C7835iw b(C7835iw c7835iw) {
        C7835iw b10 = super.b(c7835iw);
        if (((C4554l1) b10.f41111a).getType().a(((C4554l1) c7835iw.f41111a).getType())) {
            return b10;
        }
        C4554l1 c4554l1 = (C4554l1) b10.f41112b;
        C4554l1 c4554l12 = (C4554l1) b10.f41111a;
        return new C7835iw(c4554l12, c4554l1, b10.f49118c, c4554l12.getType());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final com.android.tools.r8.graph.proto.j f(com.android.tools.r8.graph.A2 a22) {
        if (f52773o || this.f52774n.containsKey(a22)) {
            return (com.android.tools.r8.graph.proto.j) this.f52774n.getOrDefault(a22, com.android.tools.r8.graph.proto.j.f37620d);
        }
        throw new AssertionError();
    }

    @Override
    public final boolean n() {
        return true;
    }

    @Override
    public final com.android.tools.r8.graph.proto.j a(com.android.tools.r8.graph.proto.j jVar, com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23) {
        com.android.tools.r8.graph.A2 d10 = d(a23);
        if (!this.f52774n.containsKey(a23)) {
            return jVar;
        }
        com.android.tools.r8.graph.proto.j a10 = jVar.a(f(a23));
        if (f52773o || d10.z0().S0() || !a23.z0().S0() || a10.b()) {
            return a10;
        }
        throw new AssertionError();
    }
}
