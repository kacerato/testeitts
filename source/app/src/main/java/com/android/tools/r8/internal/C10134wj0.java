package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4408d6;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.Optional;
import java.util.Set;

public final class C10134wj0 extends AbstractC5055Do0 {

    public static final boolean f53582d = true;

    public final C4798y f53583a;

    public final C4724u1 f53584b;

    public Optional f53585c = Optional.empty();

    public C10134wj0(C4798y c4798y) {
        this.f53583a = c4798y;
        this.f53584b = c4798y.b();
    }

    public final void a(Map map, com.android.tools.r8.graph.H2 h22) {
        if (a(map, (com.android.tools.r8.graph.E0) h22)) {
            C4724u1 c4724u1 = this.f53584b;
            if (h22.f36252l.f36638b.a(c4724u1.f38158t4, c4724u1.f38150s4) != null) {
                this.f53585c = Optional.of(Boolean.FALSE);
            }
        }
    }

    public final synchronized boolean b() {
        if (this.f53585c.isPresent()) {
            return ((Boolean) this.f53585c.get()).booleanValue();
        }
        this.f53585c = Optional.of(Boolean.TRUE);
        final IdentityHashMap identityHashMap = new IdentityHashMap();
        new C4408d6(this.f53583a.L(), 4).a(this.f53583a.f().d(), new InterfaceC6160Wr0() {
            @Override
            public final void accept(Object obj) {
                C10134wj0.this.a(identityHashMap, (com.android.tools.r8.graph.H2) obj);
            }
        });
        return ((Boolean) this.f53585c.get()).booleanValue();
    }

    @Override
    public final com.android.tools.r8.graph.M2 getType() {
        return this.f53584b.f38142r4;
    }

    public final boolean a(Map map, com.android.tools.r8.graph.E0 e02) {
        com.android.tools.r8.graph.E0 g10;
        Boolean bool = (Boolean) map.get(e02);
        if (bool != null) {
            return bool.booleanValue();
        }
        com.android.tools.r8.graph.M2 m22 = e02.f36245e;
        C4724u1 c4724u1 = this.f53584b;
        if (m22 == c4724u1.f38142r4) {
            return true;
        }
        if (m22 == c4724u1.f38068i2) {
            return false;
        }
        com.android.tools.r8.graph.M2 m23 = e02.f36247g;
        if (m23 != null && (g10 = this.f53583a.g(m23)) != null) {
            boolean a10 = a(map, g10);
            map.put(e02, Boolean.valueOf(a10));
            return a10;
        }
        map.put(e02, Boolean.FALSE);
        return false;
    }

    @Override
    public final EE a(C7215fB c7215fB, Z5 z52, EE ee2, VJ vj2, com.android.tools.r8.graph.H0 h02, C10696a c10696a, Set set) {
        if (b() && h02.getReference().a(this.f53584b.f38166u4) && vj2.T1()) {
            com.android.tools.r8.graph.A2 B22 = vj2.k0().B2();
            boolean z10 = f53582d;
            if (!z10 && !B22.a(this.f53584b.f38166u4)) {
                throw new AssertionError();
            }
            if (!z10 && vj2.f54321f.size() != 2) {
                throw new AssertionError();
            }
            AbstractC10561zE abstractC10561zE = vj2.u2().f53886c;
            abstractC10561zE.getClass();
            if (abstractC10561zE instanceof C5731Pf0) {
                String str = (String) this.f53583a.f38400O.f54056b.f53782g.get(Integer.valueOf(abstractC10561zE.F0().f43306l));
                if (str != null) {
                    ee2.a(this.f53583a, c7215fB, this.f53584b.b(str), c10696a);
                }
            }
        }
        return ee2;
    }
}
