package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.AbstractC8374m80;
import com.android.tools.r8.internal.C10340xw0;
import com.android.tools.r8.internal.C6949de;
import com.android.tools.r8.internal.InterfaceC5121Es0;
import com.android.tools.r8.internal.InterfaceC7339fx;
import com.android.tools.r8.internal.InterfaceC8739oK;
import com.android.tools.r8.internal.VJ;
import java.util.ArrayDeque;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class C11212g0 implements InterfaceC5121Es0, InterfaceC8739oK, InterfaceC7339fx {

    public final C4798y f57323a;

    public final N f57324b;

    public final com.android.tools.r8.graph.M2 f57325c;

    public final com.android.tools.r8.graph.L2 f57326d;

    public final com.android.tools.r8.graph.L2 f57327e;

    public final Set f57328f = AbstractC5513Ll0.c();

    public final IdentityHashMap f57329g = new IdentityHashMap();

    public C11212g0(C4798y c4798y, N n10) {
        this.f57323a = c4798y;
        this.f57324b = n10;
        C4724u1 b10 = c4798y.b();
        this.f57325c = b10.d("Lorg/mockito/Mockito;");
        this.f57326d = b10.b("mock");
        this.f57327e = b10.b("spy");
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.H5 h52, VJ vj2) {
        C10340xw0 b10;
        C6949de b11;
        com.android.tools.r8.graph.M2 a10;
        C6949de b12;
        com.android.tools.r8.graph.A2 B22 = vj2.B2();
        if (!B22.f38297f.a(this.f57325c) || (!B22.t0().g(this.f57326d) && !B22.t0().g(this.f57327e))) {
            return false;
        }
        C4724u1 b13 = this.f57323a.b();
        if (B22.k(0).a(b13.f38180w2)) {
            C10340xw0 b14 = vj2.b(0);
            if (!b14.I()) {
                return true;
            }
            a10 = b14.r().F().f49303l;
        } else if (B22.k(B22.w0() - 1).E0()) {
            com.android.tools.r8.internal.W3 a11 = vj2.u2().u().a();
            if (a11 == null || (b12 = a11.F().b()) == null) {
                return true;
            }
            a10 = b12.E();
        } else {
            if (B22.w0() != 1 || !B22.k(0).a(b13.f38068i2) || (b10 = vj2.b(0)) == null || b10.j() || (b11 = b10.u().b()) == null) {
                return true;
            }
            a10 = b11.a(b13);
            C4798y c4798y = this.f57323a;
            c4798y.getClass();
            com.android.tools.r8.graph.E0 holder = h52.getHolder();
            if (a10 != holder.f36245e) {
                holder = c4798y.a(a10);
            }
            com.android.tools.r8.graph.H2 a12 = com.android.tools.r8.graph.H2.a(holder);
            if (a12 != null) {
                this.f57329g.putIfAbsent(a12, h52);
            }
        }
        while (a10 != null) {
            C4798y c4798y2 = this.f57323a;
            c4798y2.getClass();
            com.android.tools.r8.graph.E0 holder2 = h52.getHolder();
            if (a10 != holder2.f36245e) {
                holder2 = c4798y2.a(a10);
            }
            com.android.tools.r8.graph.H2 a13 = com.android.tools.r8.graph.H2.a(holder2);
            if (a13 == null || !this.f57328f.add(a13)) {
                break;
            }
            a10 = a13.a1();
        }
        return true;
    }

    @Override
    public final void c(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.Z4 z42, com.android.tools.r8.graph.H5 h52) {
        if (a22.f38297f.a(this.f57325c)) {
            if (a22.t0().g(this.f57326d) || a22.t0().g(this.f57327e)) {
                this.f57324b.f56778U.add((AbstractC8374m80) h52);
            }
        }
    }

    public final void a(com.android.tools.r8.graph.H2 h22) {
        this.f57324b.f56780W.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((C11280k1) obj).h();
            }
        }, h22);
        final N n10 = this.f57324b;
        Objects.requireNonNull(n10);
        h22.j(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11212g0.this.a((com.android.tools.r8.graph.H5) obj);
            }
        }, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return N.this.a((C4516j1) obj);
            }
        });
    }

    public final void a(com.android.tools.r8.graph.H5 h52) {
        this.f57324b.f56780W.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((H1) ((H1) obj).h()).q();
            }
        }, h52);
    }

    @Override
    public final void a(N n10) {
        com.android.tools.r8.graph.Y5 y52 = n10.f56800i;
        ArrayDeque arrayDeque = new ArrayDeque();
        Set c10 = AbstractC5513Ll0.c();
        for (Map.Entry entry : this.f57329g.entrySet()) {
            com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) entry.getKey();
            com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) entry.getValue();
            if (c10.add(h22)) {
                arrayDeque.addAll(y52.b(h22.getType()));
                while (!arrayDeque.isEmpty()) {
                    com.android.tools.r8.graph.M2 m22 = (com.android.tools.r8.graph.M2) arrayDeque.removeLast();
                    C4798y c4798y = this.f57323a;
                    c4798y.getClass();
                    com.android.tools.r8.graph.E0 holder = h52.getHolder();
                    if (m22 != holder.f36245e) {
                        holder = c4798y.a(m22);
                    }
                    com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(holder);
                    if (a10 != null && c10.add(a10)) {
                        this.f57328f.add(a10);
                        arrayDeque.addAll(y52.b(m22));
                    }
                }
            }
        }
        for (com.android.tools.r8.graph.H2 h23 : this.f57328f) {
            if (n10.f56821w.f56875a.contains(h23)) {
                a(h23);
            }
        }
    }
}
