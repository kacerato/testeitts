package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4518j3;
import com.android.tools.r8.graph.C4537k3;
import com.android.tools.r8.graph.C4724u1;

public abstract class AbstractC8682o extends H0 {
    public AbstractC8682o(C4724u1 c4724u1) {
        super(c4724u1);
    }

    public final void b(String str) {
        String[] split = str.split("\\s+|,\\s+|#|\\(|\\)");
        if (split.length < 3) {
            throw new C5325If("Desugared library: cannot parse field " + str);
        }
        FA fa2 = (FA) this;
        boolean z10 = C4537k3.f37423f;
        fa2.f40128c = new C4518j3();
        fa2.f40129d = null;
        fa2.f40130e = null;
        fa2.f40131f = null;
        fa2.f40132g = null;
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
        boolean z11 = FA.f40127h;
        if (!z11 && fa2.b()) {
            throw new AssertionError();
        }
        fa2.f40129d = a10;
        com.android.tools.r8.graph.M2 a11 = a(split[i10 + 1]);
        if (!z11 && fa2.b()) {
            throw new AssertionError();
        }
        fa2.f40130e = a11;
        com.android.tools.r8.graph.L2 b10 = this.f40646a.b(split[i10 + 2]);
        if (!z11 && fa2.b()) {
            throw new AssertionError();
        }
        fa2.f40131f = fa2.f40646a.a(fa2.f40130e, fa2.f40129d, b10);
        fa2.f40132g = (C4537k3) fa2.f40128c.f37168a;
    }
}
