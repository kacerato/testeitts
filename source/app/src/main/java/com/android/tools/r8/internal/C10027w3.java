package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4591n0;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.Z4;
import com.android.tools.r8.shaking.C11245i;

public final class C10027w3 extends AbstractC4591n0 {

    public static final boolean f53407h = true;

    public final C4798y f53408f;

    public final C9693u3 f53409g;

    public C10027w3(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C9693u3 c9693u3) {
        super(c4798y, h52, Boolean.FALSE);
        this.f53408f = c4798y;
        this.f53409g = c9693u3;
    }

    @Override
    public final void a(com.android.tools.r8.graph.A2 a22) {
        h(a22);
    }

    @Override
    public final void b(com.android.tools.r8.graph.A2 a22) {
        h(a22);
    }

    @Override
    public final void c(C4554l1 c4554l1) {
        i(c4554l1);
    }

    @Override
    public final void d(com.android.tools.r8.graph.A2 a22) {
        h(a22);
    }

    @Override
    public final void e(C4554l1 c4554l1) {
        i(c4554l1);
    }

    @Override
    public final void f(com.android.tools.r8.graph.A2 a22) {
        h(a22);
    }

    @Override
    public final void g(com.android.tools.r8.graph.A2 a22) {
        h(a22);
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.android.tools.r8.graph.b1, com.android.tools.r8.graph.E0] */
    public final void h(com.android.tools.r8.graph.A2 a22) {
        Z4.c<?> o10 = ((C11245i) this.f53408f.f()).f(a22).o();
        if (o10 == null || !o10.d().e0()) {
            return;
        }
        com.android.tools.r8.graph.H5 r10 = o10.r();
        com.android.tools.r8.graph.A2 c10 = this.f53409g.c(r10.getReference());
        if (c10 != r10.getReference() || this.f53409g.f52774n.containsKey(c10)) {
            this.f37241e = Boolean.TRUE;
            a();
        }
    }

    public final boolean i(C4554l1 c4554l1) {
        com.android.tools.r8.graph.D3 c10 = ((C11245i) this.f53408f.f()).c(c4554l1);
        if (c10.r() == null) {
            return false;
        }
        com.android.tools.r8.graph.F5 r10 = c10.r();
        C9693u3 c9693u3 = this.f53409g;
        C4554l1 reference = r10.getReference();
        if (((C4554l1) c9693u3.f49998f.getOrDefault(reference, reference)).a(r10.getReference())) {
            return false;
        }
        this.f37241e = Boolean.TRUE;
        a();
        return true;
    }

    @Override
    public final void a(com.android.tools.r8.graph.D0 d02) {
        C8085kR b10 = C8085kR.b(d02, this.f37176a, (C4514j) this.f53408f.f(), (com.android.tools.r8.graph.H5) this.f37177b);
        if (b10 != null) {
            boolean z10 = f53407h;
            if (!z10 && b10.f49629e.isEmpty()) {
                throw new AssertionError();
            }
            com.android.tools.r8.graph.H5 r10 = ((C11245i) this.f53408f.f()).b((com.android.tools.r8.graph.M2) b10.f49629e.get(0), b10.f49626b).r();
            if (r10 == null) {
                return;
            }
            com.android.tools.r8.graph.A2 c10 = this.f53409g.c(r10.getReference());
            if (!c10.a(r10.getReference())) {
                this.f37241e = Boolean.TRUE;
                a();
                return;
            } else {
                if (!z10 && this.f53409g.f52774n.containsKey(c10)) {
                    throw new AssertionError();
                }
                return;
            }
        }
        if (AbstractC10280xc0.a(d02, this.f37176a, (com.android.tools.r8.graph.H5) this.f37177b)) {
            for (com.android.tools.r8.graph.R2 r22 : d02.f36215h) {
                r22.getClass();
                if (r22 instanceof com.android.tools.r8.graph.X2) {
                    com.android.tools.r8.graph.C2 c22 = (com.android.tools.r8.graph.C2) r22.z0().W0();
                    if (!f53407h && !c22.f36190e.a()) {
                        throw new AssertionError();
                    }
                    if (i(c22.l0())) {
                        return;
                    }
                }
            }
        }
    }

    @Override
    public final void g(C4554l1 c4554l1) {
        i(c4554l1);
    }

    @Override
    public final void a(C4554l1 c4554l1) {
        i(c4554l1);
    }
}
