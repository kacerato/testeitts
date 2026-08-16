package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public final class C8859p3 {

    public static final boolean f51416l = true;

    public final C4798y f51417a;

    public final C5122Et f51418b;

    public final D3 f51422f;

    public final C5939Sw f51419c = new C5939Sw();

    public final C6598bX f51420d = new C6598bX();

    public final Set f51421e = AbstractC5513Ll0.c();

    public final IdentityHashMap f51423g = new IdentityHashMap();

    public final C5591Mw f51424h = new C5591Mw(C7040e80.l());

    public final C7207f80 f51425i = new C7207f80(new ConcurrentHashMap());

    public final C10601zX f51426j = new C10601zX(new ConcurrentHashMap());

    public C6388aD f51427k = new C6388aD();

    public C8859p3(C4798y c4798y, C5122Et c5122Et, D3 d32) {
        this.f51417a = c4798y;
        this.f51418b = c5122Et;
        this.f51422f = d32;
    }

    public final synchronized void a(IdentityHashMap identityHashMap) {
        this.f51423g.putAll(identityHashMap);
    }

    public final boolean a(com.android.tools.r8.graph.H5 h52) {
        boolean contains = this.f51421e.contains(h52.getReference());
        if (f51416l || h52.d().J0() || !contains) {
            return contains;
        }
        throw new AssertionError();
    }

    public final void a(C5629Nm c5629Nm) {
        c5629Nm.a(new InterfaceC6160Wr0() {
            @Override
            public final void accept(Object obj) {
                C8859p3.this.a((InterfaceC5456Km) obj);
            }
        });
    }

    public final void a(InterfaceC5456Km interfaceC5456Km) {
        ArrayList a10 = AT.a(this.f51421e, new C7064eG0());
        int size = a10.size();
        int i10 = 0;
        int i11 = 0;
        while (i11 < size) {
            Object obj = a10.get(i11);
            i11++;
            interfaceC5456Km.a(((com.android.tools.r8.graph.A2) obj).j0());
        }
        ArrayList a11 = AT.a(this.f51423g.o(), new C7064eG0());
        int size2 = a11.size();
        while (i10 < size2) {
            Object obj2 = a11.get(i10);
            i10++;
            com.android.tools.r8.graph.A2 a22 = (com.android.tools.r8.graph.A2) obj2;
            interfaceC5456Km.a(a22.j0() + " -> " + ((com.android.tools.r8.graph.A2) this.f51423g.get(a22)).j0());
        }
    }
}
