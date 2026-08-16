package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import java.util.function.BiConsumer;
import java.util.function.Predicate;

public final class OW {

    public static final boolean f42903d = true;

    public final C4724u1 f42904a;

    public final C4942Bq f42905b;

    public final C7045eA f42906c;

    public OW(C4724u1 c4724u1, C4942Bq c4942Bq, C7045eA c7045eA) {
        this.f42904a = c4724u1;
        this.f42905b = c4942Bq;
        this.f42906c = c7045eA;
    }

    public final com.android.tools.r8.graph.A2 a(C4516j1 c4516j1, com.android.tools.r8.graph.I2 i22, com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.graph.A2 reference = c4516j1.getReference();
        if (c4516j1.f1()) {
            if (f42903d || reference.y0() == i22) {
                return reference;
            }
            throw new AssertionError();
        }
        if (c4516j1.j1()) {
            if (f42903d || m22 != null) {
                return a(reference, i22, m22);
            }
            throw new AssertionError();
        }
        if (c4516j1.n1()) {
            return b(reference, i22);
        }
        return a(reference, i22);
    }

    public final boolean b(com.android.tools.r8.graph.A2 a22) {
        return !this.f42906c.containsValue(a22);
    }

    public final boolean c(com.android.tools.r8.graph.A2 a22) {
        return !a(a22);
    }

    public final com.android.tools.r8.graph.A2 b(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.I2 i22) {
        return a(a22, i22, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                OW.this.a((com.android.tools.r8.graph.A2) obj, (com.android.tools.r8.graph.A2) obj2);
            }
        });
    }

    public final com.android.tools.r8.graph.A2 a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.I2 i22, com.android.tools.r8.graph.M2 m22) {
        boolean z10 = f42903d;
        if (!z10) {
            C4942Bq c4942Bq = this.f42905b;
            if (c4942Bq.f39368b.containsKey(AbstractC9280rd.a(a22, a22))) {
                throw new AssertionError();
            }
        }
        com.android.tools.r8.graph.A2 a23 = (com.android.tools.r8.graph.A2) this.f42906c.get(a22);
        if (a23 != null) {
            if (z10 || a23.y0() == i22) {
                return a23.a(a22.s0(), this.f42904a);
            }
            throw new AssertionError();
        }
        com.android.tools.r8.graph.A2 a10 = this.f42904a.a(a22.f38297f, i22, a22.f38298g);
        if (this.f42906c.containsValue(a10)) {
            a10 = this.f42904a.a(a10, m22, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return OW.this.b((com.android.tools.r8.graph.A2) obj);
                }
            });
        }
        if (!z10 && this.f42906c.containsValue(a10)) {
            throw new AssertionError();
        }
        this.f42906c.a(a22, a10, false);
        return a10;
    }

    public final com.android.tools.r8.graph.A2 a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.I2 i22) {
        final C7045eA c7045eA = this.f42906c;
        return a(a22, i22, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                InterfaceC7200f6.this.put((com.android.tools.r8.graph.A2) obj, (com.android.tools.r8.graph.A2) obj2);
            }
        });
    }

    public final void a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23) {
        C4942Bq c4942Bq = this.f42905b;
        a22.getClass();
        com.android.tools.r8.graph.D2 d22 = new com.android.tools.r8.graph.D2(a22);
        a23.getClass();
        c4942Bq.f39368b.put(d22, new com.android.tools.r8.graph.D2(a23));
    }

    public final boolean a(com.android.tools.r8.graph.A2 a22) {
        if (this.f42906c.containsValue(a22)) {
            return true;
        }
        return this.f42905b.f39368b.containsValue(AbstractC9280rd.a(a22, a22));
    }

    public final com.android.tools.r8.graph.A2 a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.I2 i22, BiConsumer biConsumer) {
        C4942Bq c4942Bq = this.f42905b;
        com.android.tools.r8.graph.F2 f22 = (com.android.tools.r8.graph.F2) c4942Bq.f39368b.get(AbstractC9280rd.a(a22, a22));
        if (f22 != null) {
            if (!f42903d && f22.b() != i22) {
                throw new AssertionError();
            }
            return this.f42904a.a(a22.s0().S(), f22.b(), f22.a());
        }
        com.android.tools.r8.graph.A2 a10 = this.f42904a.a(a22.f38297f, i22, a22.f38298g);
        if (a(a10)) {
            a10 = this.f42904a.a(a10.t0().toString(), null, a10.y0(), a10.s0(), new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return OW.this.c((com.android.tools.r8.graph.A2) obj);
                }
            }, 0);
        }
        if (!f42903d && a(a10)) {
            throw new AssertionError();
        }
        biConsumer.accept(a22, a10);
        return a10;
    }
}
