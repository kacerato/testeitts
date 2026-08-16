package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.proto.c;
import com.android.tools.r8.graph.proto.k;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.List;

public final class C5587Mu {

    public static final boolean f42444i = true;

    public final C4724u1 f42445a;

    public final G1 f42446b;

    public final C8534n6 f42447c = C8534n6.a();

    public final C9201r6 f42448d = new C9201r6();

    public final C9035q6 f42449e = new C9035q6();

    public final IdentityHashMap f42450f = new IdentityHashMap();

    public final IdentityHashMap f42451g = new IdentityHashMap();

    public final C8664nu f42452h;

    public C5587Mu(C4798y c4798y, C8664nu c8664nu) {
        this.f42445a = c4798y.b();
        this.f42446b = c4798y.f38427t;
        this.f42452h = c8664nu;
    }

    public final void a(C4554l1 c4554l1, C4554l1 c4554l12) {
        if (c4554l1 == c4554l12) {
            return;
        }
        synchronized (this) {
            this.f42448d.f51964b.a(c4554l1, c4554l12, true);
        }
    }

    public final void a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23) {
        com.android.tools.r8.graph.proto.j a10 = a(a22, a23, false, true, true, Collections.EMPTY_LIST);
        synchronized (this) {
            this.f42450f.put(a22, a23);
            this.f42451g.put(a23, a10);
        }
    }

    public final com.android.tools.r8.graph.proto.j a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23, boolean z10, boolean z11, List list) {
        com.android.tools.r8.graph.proto.j a10 = a(a22, a23, z10, z11, false, list);
        synchronized (this) {
            this.f42449e.b(a22, a23);
            this.f42450f.put(a22, a23);
            this.f42451g.put(a23, a10);
        }
        return a10;
    }

    public final com.android.tools.r8.graph.proto.j a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23, boolean z10, boolean z11, boolean z12, List list) {
        int i10;
        C5341Im0 a10;
        boolean z13 = f42444i;
        if (!z13 && a22 == a23) {
            throw new AssertionError();
        }
        int a11 = C8704o7.a(!z11);
        c.a a12 = com.android.tools.r8.graph.proto.c.a().a(a22.a(z10));
        if (z10 == z11) {
            i10 = 0;
        } else {
            if (!z13 && !z11) {
                throw new AssertionError();
            }
            i10 = 1;
            if (!z12) {
                k.a a13 = com.android.tools.r8.graph.proto.k.d().b(a22.s0()).a(a23.k(0));
                C8664nu c8664nu = this.f42452h;
                G1 g12 = this.f42446b;
                com.android.tools.r8.graph.M2 s02 = a22.s0();
                if (!C8664nu.f51107c && !c8664nu.b(s02)) {
                    throw new AssertionError();
                }
                C8497mu a14 = c8664nu.a(s02);
                if (c8664nu.f51108a.containsKey(s02)) {
                    int i11 = a14.f50453e;
                    if (i11 != -1) {
                        if (i11 == 1) {
                            a10 = g12.a(1, AbstractC8999pu0.k());
                        }
                        a10 = null;
                    } else {
                        if (a14.f50451c.size() == 1) {
                            a10 = g12.a(((Integer) a14.f50451c.values().iterator().next()).intValue(), AbstractC8999pu0.k());
                        }
                        a10 = null;
                    }
                } else {
                    a10 = a14.a(g12, s02);
                }
                if (a10 != null) {
                    a13.f37633d = a10;
                }
                a12.a(0, a13.a()).f37611d = true;
            } else {
                if (!z13 && !a23.k(0).L0()) {
                    throw new AssertionError();
                }
                if (!z13 && z10) {
                    throw new AssertionError();
                }
                if (!z13 && !z11) {
                    throw new AssertionError();
                }
                if (!z13 && a22.w0() != a23.w0() - 1) {
                    throw new AssertionError();
                }
            }
        }
        for (int i12 = 0; i12 < a22.x0().size(); i12++) {
            com.android.tools.r8.graph.M2 k10 = a22.k(i12);
            int i13 = i12 + i10;
            com.android.tools.r8.graph.M2 k11 = a23.k(i13);
            if (k10 != k11) {
                a12.a(i13 + a11, com.android.tools.r8.graph.proto.k.d().b(k10).a(k11).a());
            }
        }
        com.android.tools.r8.graph.proto.k a15 = a22.z0() != a23.z0() ? com.android.tools.r8.graph.proto.k.d().b(a22.z0()).a(a23.z0()).a() : null;
        com.android.tools.r8.graph.proto.c a16 = a12.a();
        com.android.tools.r8.graph.proto.j jVar = com.android.tools.r8.graph.proto.j.f37620d;
        return com.android.tools.r8.graph.proto.j.a(Collections.EMPTY_LIST, a15, a16).a(list);
    }
}
