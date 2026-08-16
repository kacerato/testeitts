package com.android.tools.r8.dex;

import com.android.tools.r8.graph.A2;
import com.android.tools.r8.graph.C2;
import com.android.tools.r8.graph.C4441f1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4666r0;
import com.android.tools.r8.graph.C4685s0;
import com.android.tools.r8.graph.C4723u0;
import com.android.tools.r8.graph.C4823z5;
import com.android.tools.r8.graph.D0;
import com.android.tools.r8.graph.H2;
import com.android.tools.r8.graph.I2;
import com.android.tools.r8.graph.L2;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.graph.O2;
import com.android.tools.r8.internal.C8570nJ;
import java.util.function.Consumer;

public final class g0 implements M {

    public final h0 f35849a;

    public g0(h0 h0Var) {
        this.f35849a = h0Var;
    }

    @Override
    public final boolean a(A2 a22) {
        return true;
    }

    @Override
    public final boolean a(C2 c22) {
        return true;
    }

    @Override
    public final boolean a(M2 m22) {
        return true;
    }

    @Override
    public final boolean a(C4554l1 c4554l1) {
        return true;
    }

    public final void a(C4666r0 c4666r0) {
        this.f35849a.f35855f.add(c4666r0);
    }

    public final void a(C4723u0 c4723u0) {
        C8570nJ E10 = this.f35849a.f35974b.E();
        E10.getClass();
        if (E10.a(com.android.tools.r8.internal.C2.J_MR1) || !c4723u0.isEmpty()) {
            this.f35849a.f35857h.add(c4723u0);
        }
    }

    public final void a(C4823z5 c4823z5) {
        if (c4823z5.isEmpty()) {
            return;
        }
        this.f35849a.f35858i.add(c4823z5);
    }

    @Override
    public final boolean a(H2 h22) {
        if (h22.f1()) {
            this.f35849a.f35859j.add(h22);
        }
        O2 R02 = h22.R0();
        if (!R02.isEmpty()) {
            this.f35849a.f35863n.add(R02);
        }
        C4685s0 c4685s0 = (C4685s0) this.f35849a.f35975c.f35732k.get(h22);
        if (c4685s0 != null) {
            this.f35849a.f35856g.add(c4685s0);
            c4685s0.a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    com.android.tools.r8.dex.g0.this.a((C4666r0) obj);
                }
            }, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    com.android.tools.r8.dex.g0.this.a((C4723u0) obj);
                }
            }, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    com.android.tools.r8.dex.g0.this.a((C4823z5) obj);
                }
            });
        }
        C4441f1 c4441f1 = (C4441f1) this.f35849a.f35975c.f35733l.get(h22);
        if (c4441f1 == null) {
            return true;
        }
        this.f35849a.f35861l.add(c4441f1);
        return true;
    }

    @Override
    public final boolean a(L2 l22) {
        return this.f35849a.f35862m.add(l22);
    }

    @Override
    public final boolean a(I2 i22) {
        O2 n02 = i22.n0();
        if (n02.isEmpty()) {
            return true;
        }
        this.f35849a.f35863n.add(n02);
        return true;
    }

    @Override
    public final boolean a(D0 d02) {
        this.f35849a.f35861l.add(d02.m0());
        return true;
    }
}
