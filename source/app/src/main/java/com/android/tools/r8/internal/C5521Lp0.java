package com.android.tools.r8.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Set;

public final class C5521Lp0 implements InterfaceC5636Np0 {

    public static final boolean f42082a = true;

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0074, code lost:
    
        if (r3 == false) goto L36;
     */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.android.tools.r8.internal.Fp0, com.android.tools.r8.internal.Hp0, com.android.tools.r8.internal.yp0] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean a(AbstractC5289Hp0 abstractC5289Hp0, AbstractC5289Hp0 abstractC5289Hp02, C5578Mp0 c5578Mp0) {
        boolean z10;
        C4999Cp0 c4999Cp0;
        C10319xp0 i10;
        if (c5578Mp0.f42411c.contains(abstractC5289Hp0) || c5578Mp0.f42412d.contains(abstractC5289Hp0) || !abstractC5289Hp02.o() || !((((z10 = abstractC5289Hp02 instanceof C5231Gp0)) || (abstractC5289Hp02 instanceof C10152wp0)) && (c4999Cp0 = (C4999Cp0) c5578Mp0.f42415g.get(abstractC5289Hp0)) != null && c4999Cp0.p() && (i10 = c4999Cp0.n().i()) != null && i10.p())) {
            return false;
        }
        boolean b10 = c5578Mp0.f42410b.b((WJ) i10.f53847e);
        C9818up0 c9818up0 = i10;
        if (b10) {
            boolean equals = "".equals(i10.f53849g);
            c9818up0 = i10;
            if (equals) {
                boolean p10 = i10.p();
                c9818up0 = i10;
                if (p10) {
                    C9818up0 g10 = i10.n().g();
                    if (g10 != null && g10.o()) {
                        boolean p11 = g10.p();
                        c9818up0 = g10;
                    }
                    return false;
                }
            }
        }
        if (!c9818up0.d() && !c9818up0.e()) {
            return false;
        }
        ArrayList arrayList = new ArrayList(CT.a(1));
        Collections.addAll(arrayList, c9818up0);
        if (abstractC5289Hp02.m() != c9818up0) {
            C9818up0 g11 = c9818up0.n().g();
            C9818up0 g12 = abstractC5289Hp02.m().g();
            if (g11 == null || g11 != g12 || (!g11.d() && !g11.e())) {
                return false;
            }
            arrayList.add(g11);
        }
        if (AbstractC9907vK.a(arrayList, new V60() {
            @Override
            public final boolean apply(Object obj) {
                return ((InterfaceC10486yp0) obj).d();
            }
        })) {
            return false;
        }
        InterfaceC10486yp0 interfaceC10486yp0 = (InterfaceC10486yp0) arrayList.get(0);
        if (z10) {
            VJ vj2 = ((C5231Gp0) abstractC5289Hp02).f40595e;
            if (arrayList.size() == 1) {
                c5578Mp0.f42409a.put(vj2, new C7650hp0(interfaceC10486yp0.b()));
            } else {
                InterfaceC10486yp0 interfaceC10486yp02 = (InterfaceC10486yp0) arrayList.get(1);
                c5578Mp0.f42409a.put(vj2, interfaceC10486yp0.d() ? new C7816ip0(null, interfaceC10486yp02.b(), interfaceC10486yp0.c()) : interfaceC10486yp02.d() ? new C7816ip0(interfaceC10486yp0.b(), null, interfaceC10486yp02.c()) : new C7816ip0(interfaceC10486yp0.b(), interfaceC10486yp02.b(), null));
            }
        } else {
            if (!f42082a && !(abstractC5289Hp02 instanceof C10152wp0)) {
                throw new AssertionError();
            }
            ?? r02 = abstractC5289Hp02.h().f53609e;
            if (arrayList.size() == 1) {
                r02.a(interfaceC10486yp0.b());
                c5578Mp0.f42409a.put(r02.a(), new C7149ep0(interfaceC10486yp0.b()));
            } else {
                InterfaceC10486yp0 interfaceC10486yp03 = (InterfaceC10486yp0) arrayList.get(1);
                C10340xw0 a10 = c5578Mp0.a();
                r02.a(a10);
                c5578Mp0.f42409a.put(r02.a(), interfaceC10486yp0.d() ? new C7316fp0(null, interfaceC10486yp03.b(), interfaceC10486yp0.c(), a10) : interfaceC10486yp03.d() ? new C7316fp0(interfaceC10486yp0.b(), null, interfaceC10486yp03.c(), a10) : new C7316fp0(interfaceC10486yp0.b(), interfaceC10486yp03.b(), null, a10));
            }
        }
        ((Set) c5578Mp0.f42414f.get(abstractC5289Hp0)).remove(abstractC5289Hp02);
        abstractC5289Hp02.s();
        return true;
    }
}
