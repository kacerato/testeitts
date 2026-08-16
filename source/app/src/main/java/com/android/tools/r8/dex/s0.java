package com.android.tools.r8.dex;

import com.android.tools.r8.graph.A2;
import com.android.tools.r8.graph.C2;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.D0;
import com.android.tools.r8.graph.H2;
import com.android.tools.r8.graph.I2;
import com.android.tools.r8.graph.L2;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.C6628bi;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Set;
import java.util.function.Consumer;

public final class s0 implements M {

    public static final boolean f35934r = true;

    public final C4724u1 f35935a;

    public final HashMap f35936b = new HashMap();

    public final Set f35937c = AbstractC5513Ll0.c();

    public final IdentityHashMap f35938d = new IdentityHashMap();

    public final Set f35939e = AbstractC5513Ll0.c();

    public final Set f35940f = AbstractC5513Ll0.c();

    public final Set f35941g = AbstractC5513Ll0.c();

    public final Set f35942h = AbstractC5513Ll0.c();

    public final Set f35943i = AbstractC5513Ll0.c();

    public final Set f35944j = AbstractC5513Ll0.c();

    public final IdentityHashMap f35945k = new IdentityHashMap();

    public final IdentityHashMap f35946l = new IdentityHashMap();

    public final IdentityHashMap f35947m = new IdentityHashMap();

    public final IdentityHashMap f35948n = new IdentityHashMap();

    public final IdentityHashMap f35949o = new IdentityHashMap();

    public final IdentityHashMap f35950p = new IdentityHashMap();

    public final IdentityHashMap f35951q = new IdentityHashMap();

    public s0(C4798y c4798y) {
        this.f35935a = c4798y.b();
    }

    @Override
    public final boolean a(H2 h22) {
        return this.f35937c.add(h22);
    }

    public final boolean b(I2 i22) {
        return t0.a(i22, this.f35938d, this.f35936b, C6628bi.b(), this.f35935a);
    }

    @Override
    public final boolean a(C4554l1 c4554l1) {
        return this.f35941g.add(c4554l1);
    }

    @Override
    public final boolean a(A2 a22) {
        return this.f35940f.add(a22);
    }

    @Override
    public final boolean a(L2 l22) {
        return this.f35942h.add(l22);
    }

    @Override
    public final boolean a(I2 i22) {
        return t0.a(i22, this.f35938d, this.f35936b, new Consumer() {
            @Override
            public final void accept(Object obj) {
                com.android.tools.r8.dex.s0.this.a((L2) obj);
            }
        }, this.f35935a);
    }

    @Override
    public final boolean a(M2 m22) {
        if (!f35934r) {
            boolean z10 = com.android.tools.r8.synthesis.S.f58147a0;
            com.android.tools.r8.synthesis.S.a(m22.V0());
        }
        return this.f35939e.add(m22);
    }

    @Override
    public final boolean a(D0 d02) {
        return this.f35943i.add(d02);
    }

    @Override
    public final boolean a(C2 c22) {
        return this.f35944j.add(c22);
    }
}
