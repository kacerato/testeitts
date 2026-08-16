package com.android.tools.r8.internal;

import com.android.tools.r8.relocated.keepanno.proto.KeepSpecProtos;
import java.util.ArrayDeque;
import java.util.Iterator;

public final class C7081eP {

    public final ArrayDeque f47670a = new ArrayDeque();

    public final C7081eP a(KeepSpecProtos.PackagePattern packagePattern) {
        for (KeepSpecProtos.PackageComponentPattern packageComponentPattern : packagePattern.getComponentsList()) {
            C6915dP c6915dP = C6915dP.f47396b;
            if (packageComponentPattern.hasSingleComponent()) {
                c6915dP = C6915dP.a(C9917vP.a(packageComponentPattern.getSingleComponent()));
            }
            this.f47670a.addLast(c6915dP);
        }
        return this;
    }

    public final void a(C6915dP c6915dP) {
        this.f47670a.addLast(c6915dP);
    }

    public final C7248fP a() {
        if (this.f47670a.isEmpty()) {
            return C7248fP.f47961c;
        }
        int i10 = AbstractC7552hC.f48487c;
        C7051eC c7051eC = new C7051eC();
        Iterator it = this.f47670a.iterator();
        boolean z10 = false;
        boolean z11 = true;
        while (it.hasNext()) {
            C6915dP c6915dP = (C6915dP) it.next();
            if (c6915dP.c()) {
                c7051eC.a(c6915dP);
                z11 &= c6915dP.a().c();
            } else {
                if (!z10) {
                    c7051eC.a(c6915dP);
                }
                z11 = false;
                z10 = true;
            }
        }
        AbstractC7552hC a10 = c7051eC.a();
        if (a10.size() == 1) {
            C6915dP c6915dP2 = (C6915dP) a10.get(0);
            if (!c6915dP2.c()) {
                return C7248fP.f47961c;
            }
            if (z11 && c6915dP2.a().f53091a.isEmpty()) {
                return C7248fP.f47962d;
            }
        }
        return new C7248fP(a10, z11);
    }
}
