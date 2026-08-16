package com.android.tools.r8.naming;

import com.android.tools.r8.internal.C7333fv;
import com.android.tools.r8.internal.C9933vX;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
import java.util.function.Function;

public final class C10908a0 implements L {

    public static final boolean f55813g = true;

    public final C10908a0 f55814b;

    public final HashMap f55815c = new HashMap();

    public final HashMap f55816d = new HashMap();

    public int f55817e;

    public int f55818f;

    public C10908a0(C10908a0 c10908a0) {
        this.f55814b = c10908a0;
        this.f55818f = c10908a0 == null ? 0 : c10908a0.f55818f;
        this.f55817e = c10908a0 == null ? 1 : c10908a0.f55817e;
    }

    @Override
    public final int a() {
        return this.f55818f;
    }

    @Override
    public final int b() {
        int i10 = this.f55818f;
        this.f55818f = i10 + 1;
        return i10;
    }

    @Override
    public final int c() {
        if (!f55813g) {
            int i10 = 0;
            for (C10908a0 c10908a0 = this.f55814b; c10908a0 != null; c10908a0 = c10908a0.f55814b) {
                i10 = Math.max(c10908a0.f55817e, i10);
            }
            if (!f55813g && i10 > this.f55817e) {
                throw new AssertionError();
            }
        }
        int i11 = this.f55817e;
        this.f55817e = i11 + 1;
        return i11;
    }

    public final void a(com.android.tools.r8.graph.L2 l22, com.android.tools.r8.graph.A2 a22) {
        C7333fv c7333fv = new C7333fv(C9933vX.f53136a, a22);
        this.f55815c.put(c7333fv, l22);
        ((Set) this.f55816d.computeIfAbsent(l22, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C10908a0.a((com.android.tools.r8.graph.L2) obj);
            }
        })).add(c7333fv);
    }

    public static Set a(com.android.tools.r8.graph.L2 l22) {
        return new HashSet();
    }
}
