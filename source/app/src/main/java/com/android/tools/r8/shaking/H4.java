package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.Z4;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.C5714Oz0;
import com.android.tools.r8.internal.C6628bi;
import com.android.tools.r8.internal.C7333fv;
import com.android.tools.r8.internal.C9933vX;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;

public final class H4 {

    public static final boolean f56526i = true;

    public final com.android.tools.r8.graph.H2 f56527a;

    public final List f56528b;

    public final AbstractC11468v3 f56529c;

    public final Object f56530d;

    public final H3 f56531e;

    public final HashSet f56532f = new HashSet();

    public final Set f56533g = AbstractC5513Ll0.c();

    public final I4 f56534h;

    public H4(I4 i42, com.android.tools.r8.graph.H2 h22, List list, AbstractC11468v3 abstractC11468v3, Map map, H3 h32) {
        this.f56534h = i42;
        boolean z10 = f56526i;
        if (!z10) {
            abstractC11468v3.getClass();
            if (!(abstractC11468v3 instanceof K3)) {
                throw new AssertionError();
            }
        }
        if (!z10 && abstractC11468v3.q().C().f56726e) {
            throw new AssertionError();
        }
        this.f56527a = h22;
        this.f56528b = list;
        this.f56529c = abstractC11468v3;
        this.f56530d = map;
        this.f56531e = h32;
    }

    public final void a(AbstractC11194f abstractC11194f) {
    }

    public final void a(com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.graph.E0 g10 = this.f56534h.f56593a.g(m22);
        if (g10 == null || g10.v1() || !this.f56533g.add(m22)) {
            return;
        }
        for (com.android.tools.r8.graph.M2 m23 : g10.f36248h.f36675b) {
            a(m23);
        }
        if (!g10.isInterface()) {
            com.android.tools.r8.graph.M2 m24 = g10.f36247g;
            if (m24 != null) {
                a(m24);
                return;
            }
            return;
        }
        if (this.f56527a == g10) {
            return;
        }
        g10.b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                H4.this.a((com.android.tools.r8.graph.H0) obj);
            }
        }, new C5714Oz0());
    }

    public final void a(com.android.tools.r8.graph.H0 h02) {
        if (this.f56532f.add(new C7333fv(C9933vX.f53136a, h02.getReference()))) {
            for (R3 r32 : this.f56528b) {
                if (r32.a(h02, this.f56534h.f56593a, new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        H4.this.a((AbstractC11194f) obj);
                    }
                }, this.f56534h.f56612t)) {
                    a(h02, r32);
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [com.android.tools.r8.graph.E0] */
    /* JADX WARN: Type inference failed for: r0v9, types: [com.android.tools.r8.graph.E0] */
    public final void a(com.android.tools.r8.graph.H0 h02, final R3 r32) {
        final com.android.tools.r8.graph.H5 h52;
        Z4.c<?> o10 = ((C4514j) this.f56534h.f56593a.f()).h(this.f56527a, h02.getReference()).o();
        if (o10 == null || !o10.f37022d.r1() || o10.d() == this.f56527a || o10.d().v1() || !o10.d().isInterface()) {
            return;
        }
        final com.android.tools.r8.graph.H5 r10 = o10.r();
        I4 i42 = this.f56534h;
        com.android.tools.r8.graph.H2 h22 = this.f56527a;
        C4516j1 d10 = r10.d();
        if (i42.f56593a.E().P() || com.android.tools.r8.internal.X3.a((Object[]) h22.f36248h.f36675b, d10.B0())) {
            com.android.tools.r8.graph.A2 reference = r10.getReference();
            com.android.tools.r8.graph.H2 h23 = this.f56527a;
            C4724u1 b10 = this.f56534h.f56593a.b();
            reference.getClass();
            com.android.tools.r8.graph.A2 a10 = reference.a(h23.getType(), b10);
            h52 = (com.android.tools.r8.graph.H5) this.f56534h.f56608p.computeIfAbsent(a10, new Function() {
                @Override
                public final Object apply(Object obj) {
                    return H4.this.a(r10, (com.android.tools.r8.graph.A2) obj);
                }
            });
            if (!f56526i && !a10.equals(h52.getReference())) {
                throw new AssertionError();
            }
        } else {
            h52 = r10;
        }
        this.f56534h.f56609q.add(new C11530z(h52, r10, new Consumer() {
            @Override
            public final void accept(Object obj) {
                H4.this.a(h52, r32, (I4) obj);
            }
        }));
    }

    public final com.android.tools.r8.graph.H5 a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.A2 a22) {
        com.android.tools.r8.graph.H2 h22 = this.f56527a;
        C4516j1 d10 = h52.d();
        com.android.tools.r8.graph.H2 h23 = this.f56527a;
        C4798y c4798y = this.f56534h.f56593a;
        d10.getClass();
        return new com.android.tools.r8.graph.H5(h22, d10.a(c4798y, h23, C6628bi.b()));
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.Map, java.lang.Object] */
    public final void a(com.android.tools.r8.graph.H5 h52, R3 r32, I4 i42) {
        i42.a(h52, this.f56529c, r32, I4.a(h52.d(), (Map) this.f56530d), this.f56531e);
    }
}
