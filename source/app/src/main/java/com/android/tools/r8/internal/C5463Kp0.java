package com.android.tools.r8.internal;

import java.util.Set;

public final class C5463Kp0 implements InterfaceC5636Np0 {

    public static final boolean f41785a = true;

    /* JADX WARN: Type inference failed for: r0v7, types: [com.android.tools.r8.internal.Fp0, com.android.tools.r8.internal.Hp0, com.android.tools.r8.internal.yp0] */
    @Override
    public final boolean a(AbstractC5289Hp0 abstractC5289Hp0, AbstractC5289Hp0 abstractC5289Hp02, C5578Mp0 c5578Mp0) {
        boolean z10;
        C4999Cp0 c4999Cp0;
        C10319xp0 i10;
        String a10;
        if (c5578Mp0.f42411c.contains(abstractC5289Hp0) || c5578Mp0.f42412d.contains(abstractC5289Hp0) || !((((z10 = abstractC5289Hp02 instanceof C5231Gp0)) || (abstractC5289Hp02 instanceof C10152wp0)) && (c4999Cp0 = (C4999Cp0) c5578Mp0.f42415g.get(abstractC5289Hp0)) != null && c4999Cp0.p() && (i10 = c4999Cp0.n().i()) != null && i10.p() && abstractC5289Hp02.o() && abstractC5289Hp02.m() == i10 && (a10 = AbstractC5694Op0.a(i10, c5578Mp0)) != null)) {
            return false;
        }
        if (z10) {
            C5231Gp0 c5231Gp0 = (C5231Gp0) abstractC5289Hp02;
            c5578Mp0.f42409a.put(c5231Gp0.f40595e, new C7483gp0(a10));
            String str = (String) c5578Mp0.f42416h.put(c5231Gp0.f40595e.d(), a10);
            if (!f41785a && str != null) {
                throw new AssertionError();
            }
        } else {
            if (!f41785a && !(abstractC5289Hp02 instanceof C10152wp0)) {
                throw new AssertionError();
            }
            ?? r02 = abstractC5289Hp02.h().f53609e;
            r02.a(a10);
            c5578Mp0.f42409a.put(r02.a(), new C6816cp0(a10));
        }
        ((Set) c5578Mp0.f42414f.get(abstractC5289Hp0)).remove(abstractC5289Hp02);
        abstractC5289Hp02.s();
        return true;
    }
}
