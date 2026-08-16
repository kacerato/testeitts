package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import java.util.ArrayList;

public abstract class Q0 extends H0 {
    public Q0(C4724u1 c4724u1) {
        super(c4724u1);
    }

    public final void b(String str) {
        String[] split = str.split("\\s+|,\\s+|#|\\(|\\)");
        if (split.length < 3) {
            throw new C5325If("Desugared library: cannot parse method " + str);
        }
        GA ga2 = (GA) this;
        boolean z10 = com.android.tools.r8.graph.L4.f36564f;
        ga2.f40412c = new com.android.tools.r8.graph.K4();
        ga2.f40413d = null;
        ga2.f40414e = null;
        ga2.f40415f = null;
        ga2.f40416g = new ArrayList();
        ga2.f40417h = null;
        ga2.f40418i = null;
        int i10 = 0;
        while (true) {
            AbstractC8552nC abstractC8552nC = H0.f40645b;
            if (!abstractC8552nC.containsKey(split[i10])) {
                break;
            }
            a(((Integer) abstractC8552nC.get(split[i10])).intValue());
            i10++;
        }
        com.android.tools.r8.graph.M2 a10 = a(split[i10]);
        boolean z11 = GA.f40411j;
        if (!z11 && ga2.b()) {
            throw new AssertionError();
        }
        ga2.f40413d = a10;
        com.android.tools.r8.graph.M2 a11 = a(split[i10 + 1]);
        if (!z11 && ga2.b()) {
            throw new AssertionError();
        }
        ga2.f40414e = a11;
        com.android.tools.r8.graph.L2 b10 = this.f40646a.b(split[i10 + 2]);
        if (!z11 && ga2.b()) {
            throw new AssertionError();
        }
        ga2.f40415f = b10;
        for (int i11 = i10 + 3; i11 < split.length; i11++) {
            com.android.tools.r8.graph.M2 a12 = a(split[i11]);
            if (!GA.f40411j && ga2.b()) {
                throw new AssertionError();
            }
            ga2.f40416g.add(a12);
        }
        ga2.f40417h = ga2.f40646a.a(ga2.f40414e, ga2.f40646a.a(ga2.f40413d, ga2.f40416g), ga2.f40415f);
        ga2.f40418i = (com.android.tools.r8.graph.L4) ga2.f40412c.f37168a;
    }
}
