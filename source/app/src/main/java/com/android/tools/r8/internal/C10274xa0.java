package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import java.util.ArrayList;

public final class C10274xa0 {

    public static final boolean f53776c = true;

    public final ArrayList f53777a = new ArrayList(2);

    public final C9201r6 f53778b = new C9201r6();

    public final com.android.tools.r8.graph.F2 a(com.android.tools.r8.graph.D2 d22) {
        C6286Yx0 c6286Yx0 = new C6286Yx0(2);
        c6286Yx0.b((C6286Yx0) this);
        while (c6286Yx0.b()) {
            C10274xa0 c10274xa0 = (C10274xa0) c6286Yx0.c();
            com.android.tools.r8.graph.F2 f22 = (com.android.tools.r8.graph.F2) c10274xa0.f53778b.f51964b.get(d22);
            if (f22 != null) {
                return f22;
            }
            c6286Yx0.b((Iterable) c10274xa0.f53777a);
        }
        return null;
    }

    public final com.android.tools.r8.graph.F2 a(com.android.tools.r8.graph.D2 d22, C4724u1 c4724u1, C10107wa0 c10107wa0, boolean z10) {
        com.android.tools.r8.graph.E2 e22;
        if (c10107wa0.f53526b.f39661b.contains(d22)) {
            if (f53776c || a(d22) == null || d22.equals(a(d22))) {
                return d22;
            }
            throw new AssertionError();
        }
        com.android.tools.r8.graph.F2 a10 = a(d22);
        if (a10 != null) {
            return a10;
        }
        com.android.tools.r8.graph.E2 e23 = new com.android.tools.r8.graph.E2(c4724u1.a(d22.b().o0(), c10107wa0.a(d22)), d22.a());
        C6286Yx0 c6286Yx0 = new C6286Yx0(2);
        c6286Yx0.b((C6286Yx0) this);
        while (true) {
            if (!c6286Yx0.b()) {
                break;
            }
            C10274xa0 c10274xa0 = (C10274xa0) c6286Yx0.c();
            if (c10274xa0.f53778b.f51964b.containsValue(e23)) {
                String l22 = d22.f36220c.t0().toString();
                int i10 = 1;
                loop1: while (true) {
                    e22 = new com.android.tools.r8.graph.E2(e23.f36265d, c4724u1.b(l22 + "$" + i10));
                    i10++;
                    C6286Yx0 c6286Yx02 = new C6286Yx0(2);
                    c6286Yx02.b((C6286Yx0) this);
                    while (c6286Yx02.b()) {
                        C10274xa0 c10274xa02 = (C10274xa0) c6286Yx02.c();
                        if (c10274xa02.f53778b.f51964b.containsValue(e22)) {
                            break;
                        }
                        c6286Yx02.b((Iterable) c10274xa02.f53777a);
                    }
                    e23 = e22;
                }
                e23 = e22;
            } else {
                c6286Yx0.b((Iterable) c10274xa0.f53777a);
            }
        }
        if (z10) {
            this.f53778b.f51964b.a(d22, e23, true);
        }
        return e23;
    }
}
