package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;

public final class C8115ke extends AbstractC5276Hj {

    public static final boolean f49698f = true;

    public C8115ke(C4798y c4798y) {
        super(c4798y);
    }

    @Override
    public final boolean a(AbstractC5308Hz abstractC5308Hz) {
        return true;
    }

    @Override
    public final C7835iw b(C7835iw c7835iw) {
        throw new C5417Jv0();
    }

    @Override
    public final com.android.tools.r8.graph.proto.j f(AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.graph.A2 a22) {
        return AbstractC5308Hz.g().f(abstractC5308Hz, a22);
    }

    @Override
    public final C7835iw a(C4554l1 c4554l1, AbstractC5308Hz abstractC5308Hz, InterfaceC5192Fz interfaceC5192Fz) {
        return AbstractC5308Hz.g().a(c4554l1, abstractC5308Hz, interfaceC5192Fz);
    }

    @Override
    public final NW a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23, EnumC8071kK enumC8071kK, AbstractC9530t40 abstractC9530t40, AbstractC5308Hz abstractC5308Hz, InterfaceC5250Gz interfaceC5250Gz) {
        if (!f49698f && abstractC5308Hz != null && abstractC5308Hz != this) {
            throw new AssertionError();
        }
        AbstractC5308Hz g10 = AbstractC5308Hz.g();
        return g10.a(a22, a23, enumC8071kK, abstractC9530t40, g10, interfaceC5250Gz);
    }

    @Override
    public final NW a(NW nw, com.android.tools.r8.graph.A2 a22, AbstractC5308Hz abstractC5308Hz) {
        throw new C5417Jv0();
    }
}
