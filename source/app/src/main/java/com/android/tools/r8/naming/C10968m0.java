package com.android.tools.r8.naming;

import com.android.tools.r8.graph.AbstractC4458g;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.F5;
import com.android.tools.r8.graph.H5;
import com.android.tools.r8.internal.C10656zq0;
import java.util.function.BiPredicate;

public class C10968m0 extends AbstractC10943h0 implements W {

    public static final boolean f56000h = true;

    public final C4798y f56001e;

    public final C4724u1 f56002f;

    public final boolean f56003g;

    public C10968m0(C4798y c4798y) {
        super(c4798y.E().B().f57622z, false);
        this.f56001e = c4798y;
        this.f56002f = c4798y.b();
        this.f56003g = c4798y.E().x().b().a();
    }

    public com.android.tools.r8.graph.L2 a(com.android.tools.r8.graph.H0 h02) {
        if (!a(h02.getHolder())) {
            return h02.getReference().t0();
        }
        if (!f56000h && !(h02 instanceof H5)) {
            throw new AssertionError();
        }
        H5 H10 = h02.H();
        if (!h02.getHolder().f36246f.H() && !AbstractC4458g.d(h02.getAccessFlags().f37197c, 65536) && this.f56001e.a(H10).b(this.f56001e.E())) {
            if (this.f56003g && h02.d().k1().d() && this.f56001e.E().x().b().a(h02.getReference().y0())) {
                return h02.getReference().t0();
            }
            return null;
        }
        return h02.getReference().t0();
    }

    public com.android.tools.r8.graph.L2 a(com.android.tools.r8.graph.H0 h02, C10908a0 c10908a0, BiPredicate biPredicate) {
        com.android.tools.r8.graph.L2 b10;
        h02.getClass();
        if (!(h02 instanceof H5)) {
            return h02.getReference().t0();
        }
        if (!f56000h && !a(h02.getHolder())) {
            throw new AssertionError();
        }
        do {
            C4724u1 c4724u1 = this.f56002f;
            char[] cArr = C10656zq0.f54545a;
            b10 = c4724u1.b(cArr + a(cArr, c10908a0));
        } while (!biPredicate.test(b10, h02.getReference()));
        return b10;
    }

    public com.android.tools.r8.graph.L2 a(F5 f52, A a10, BiPredicate biPredicate) {
        com.android.tools.r8.graph.L2 b10;
        if (!f56000h && !a(f52.getHolder())) {
            throw new AssertionError();
        }
        do {
            C4724u1 c4724u1 = this.f56002f;
            char[] cArr = C10656zq0.f54545a;
            b10 = c4724u1.b(cArr + a(cArr, a10));
        } while (!biPredicate.test(b10, f52));
        return b10;
    }

    public com.android.tools.r8.graph.L2 a(com.android.tools.r8.graph.F0 f02) {
        F5 W10 = f02.W();
        if (W10 == null || !this.f56001e.a(W10).b(this.f56001e.E())) {
            return f02.getReference().t0();
        }
        return null;
    }

    public boolean a(com.android.tools.r8.graph.E0 e02) {
        return e02.e0();
    }
}
