package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4479h1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.naming.C10963l0;
import com.android.tools.r8.shaking.C11245i;
import com.android.tools.r8.shaking.C11350o3;
import java.util.HashSet;
import java.util.Iterator;

public final class C8286lf0 implements InterfaceC8453mf0 {

    public static final boolean f50023f = true;

    public final C4798y f50024a;

    public final C4724u1 f50025b;

    public final C8570nJ f50026c;

    public final C11350o3 f50027d;

    public final C10963l0 f50028e;

    public C8286lf0(C4798y c4798y) {
        this.f50024a = c4798y;
        this.f50025b = c4798y.b();
        this.f50026c = c4798y.E();
        this.f50027d = c4798y.E().B();
        this.f50028e = new C10963l0(c4798y);
    }

    public final String a(com.android.tools.r8.graph.K5 k52, HashSet hashSet) {
        String g10 = C4932Bl.g(this.f50027d.k());
        C8570nJ.m j10 = this.f50027d.j();
        if (!this.f50024a.E().R()) {
            if (!g10.isEmpty() && !b(k52)) {
                return g10 + "/" + k52.f36536b;
            }
            return k52.f36536b;
        }
        j10.getClass();
        if (j10 == C8570nJ.m.f50795d) {
            return g10;
        }
        if (j10 == C8570nJ.m.f50794c) {
            if (!k52.f36536b.isEmpty() && !b(k52)) {
                g10 = "";
            } else {
                return k52.f36536b;
            }
        } else {
            if (!f50023f && j10 != C8570nJ.m.f50796e) {
                throw new AssertionError();
            }
            if (!g10.isEmpty()) {
                g10 = g10 + "/";
            }
        }
        return this.f50028e.a(new Yi1(hashSet), g10);
    }

    public final boolean b(com.android.tools.r8.graph.K5 k52) {
        for (com.android.tools.r8.graph.H2 h22 : QC.a(k52.f36537c)) {
            if (h22.getAccessFlags().g() && !this.f50024a.r().a(h22).e(this.f50026c)) {
                return true;
            }
            Iterator it = h22.y1().iterator();
            while (true) {
                GK gk2 = (GK) it;
                if (gk2.hasNext()) {
                    AbstractC4479h1 abstractC4479h1 = (AbstractC4479h1) gk2.next();
                    if (!abstractC4479h1.v0() || !abstractC4479h1.o0().f1()) {
                        if (abstractC4479h1.getAccessFlags().g() && !this.f50024a.r().a(abstractC4479h1, h22).e(this.f50026c)) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public final boolean a(com.android.tools.r8.graph.K5 k52) {
        String g10 = C4932Bl.g(this.f50027d.k());
        C8570nJ.m j10 = this.f50027d.j();
        j10.getClass();
        if (j10 == C8570nJ.m.f50795d) {
            return k52.f36536b.equals(g10);
        }
        if (j10 == C8570nJ.m.f50794c) {
            return k52.f36536b.isEmpty() || b(k52);
        }
        if (f50023f || j10 == C8570nJ.m.f50796e) {
            return false;
        }
        throw new AssertionError();
    }

    public final com.android.tools.r8.graph.M2 a(com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.H2 h23, String str, C7045eA c7045eA) {
        com.android.tools.r8.graph.M2 b10 = h22.getType().b(str, this.f50025b);
        if (h23 != null) {
            String C02 = h22.getType().C0();
            String C03 = h23.getType().C0();
            if (C02.startsWith(C03 + "$")) {
                String str2 = ((com.android.tools.r8.graph.M2) c7045eA.get(h23.getType())).C0() + C02.substring(C03.length());
                C4724u1 c4724u1 = this.f50025b;
                if (!com.android.tools.r8.graph.M2.f36591j && !b10.I0()) {
                    throw new AssertionError();
                }
                b10 = c4724u1.d(C4932Bl.c(b10.V0(), str2));
            } else if (!f50023f && !this.f50026c.f50670c1) {
                throw new AssertionError((Object) ("Unexpected name for inner class: " + h22.getType().j0() + " (outer class: " + h23.getType().j0() + ")"));
            }
        }
        int i10 = 1;
        com.android.tools.r8.graph.M2 m22 = b10;
        while (true) {
            if (!((C6379aA) c7045eA.f()).f46435b.containsValue(m22) && !((C11245i) this.f50024a.f()).j(m22) && !((C11245i) this.f50024a.f()).f37305h.f57888a.contains(m22)) {
                return m22;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(i10);
            m22 = b10.a(sb2.toString(), this.f50025b);
            i10++;
        }
    }
}
