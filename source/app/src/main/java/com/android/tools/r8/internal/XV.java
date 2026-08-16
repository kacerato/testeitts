package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4744v2;
import com.android.tools.r8.graph.C4798y;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Map;

public final class XV extends AbstractC5276Hj {

    public static final int f45722g = 0;

    public final IdentityHashMap f45723f;

    public XV(C4798y c4798y, IdentityHashMap identityHashMap) {
        super(c4798y);
        this.f45723f = identityHashMap;
    }

    @Override
    public final NW a(NW nw, com.android.tools.r8.graph.A2 a22, AbstractC5308Hz abstractC5308Hz) {
        com.android.tools.r8.graph.E0 g10;
        EnumC8071kK enumC8071kK;
        Map map = (Map) this.f45723f.getOrDefault(nw.f42623d, Collections.EMPTY_MAP);
        AbstractC4744v2 abstractC4744v2 = nw.f41111a;
        com.android.tools.r8.graph.A2 a23 = (com.android.tools.r8.graph.A2) map.getOrDefault(abstractC4744v2, (com.android.tools.r8.graph.A2) abstractC4744v2);
        AbstractC9530t40 abstractC9530t40 = AbstractC9530t40.f52519c;
        com.android.tools.r8.graph.proto.j jVar = com.android.tools.r8.graph.proto.j.f37620d;
        com.android.tools.r8.graph.proto.j jVar2 = nw.f42624e;
        C4798y c4798y = this.f43775b;
        com.android.tools.r8.graph.A2 a24 = (com.android.tools.r8.graph.A2) nw.f41111a;
        EnumC8071kK enumC8071kK2 = nw.f42623d;
        C5412Jt c5412Jt = C8268lZ.f49994j;
        EnumC8071kK enumC8071kK3 = EnumC8071kK.f49584h;
        if ((enumC8071kK2 == enumC8071kK3 || enumC8071kK2 == EnumC8071kK.f49581e) && (g10 = c4798y.g(a23.s0())) != null) {
            com.android.tools.r8.graph.E0 g11 = c4798y.g(a24.s0());
            if (g11 != null) {
                boolean isInterface = g11.isInterface();
                EnumC8071kK enumC8071kK4 = EnumC8071kK.f49581e;
                if ((enumC8071kK2 == enumC8071kK4) ^ isInterface) {
                    if (!g10.f36246f.J()) {
                        enumC8071kK = enumC8071kK4;
                        return new NW(a23, a23, abstractC9530t40, enumC8071kK, jVar2).a(this);
                    }
                    enumC8071kK = enumC8071kK3;
                    return new NW(a23, a23, abstractC9530t40, enumC8071kK, jVar2).a(this);
                }
            }
            if (g10.f36246f.J()) {
                enumC8071kK2 = EnumC8071kK.f49581e;
            }
            enumC8071kK = enumC8071kK3;
            return new NW(a23, a23, abstractC9530t40, enumC8071kK, jVar2).a(this);
        }
        enumC8071kK = enumC8071kK2;
        return new NW(a23, a23, abstractC9530t40, enumC8071kK, jVar2).a(this);
    }

    @Override
    public final C7835iw b(C7835iw c7835iw) {
        return c7835iw;
    }

    @Override
    public final boolean b(AbstractC5308Hz abstractC5308Hz) {
        if (this == abstractC5308Hz) {
            return true;
        }
        return this.f43777d.b(abstractC5308Hz);
    }
}
