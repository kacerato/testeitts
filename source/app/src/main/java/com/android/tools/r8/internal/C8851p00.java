package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.AbstractC11516y1;
import com.android.tools.r8.shaking.C11245i;
import com.android.tools.r8.shaking.C11297l1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import java.util.function.Consumer;

public final class C8851p00 extends AbstractC7173ex0 {

    public final C4798y f51405b;

    public final C8570nJ f51406c;

    public final Set f51407d = m();

    public C8851p00(C4798y c4798y) {
        this.f51405b = c4798y;
        this.f51406c = c4798y.E();
    }

    @Override
    public final boolean a(C8340lx0 c8340lx0) {
        com.android.tools.r8.graph.H2 h22 = c8340lx0.f50154b;
        C11297l1 a10 = this.f51405b.r().a(h22);
        C8570nJ c8570nJ = this.f51406c;
        return a10.c(c8570nJ) && a10.e(c8570nJ) && a10.f57499q && !this.f51407d.contains(h22);
    }

    @Override
    public final String f() {
        return "NoKeptClassesPolicy";
    }

    public final Set m() {
        final Set c10 = AbstractC5513Ll0.c();
        ArrayList arrayList = new ArrayList();
        AbstractC11516y1 r10 = this.f51405b.r();
        r10.c(new u.I0(arrayList), this.f51406c);
        r10.b(new C8317lp1(arrayList), this.f51406c);
        r10.a(new C8484mp1(arrayList), this.f51406c);
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            a((com.android.tools.r8.graph.J2) obj, c10);
        }
        for (com.android.tools.r8.graph.H2 h22 : ((C11245i) this.f51405b.f()).d()) {
            if (AbstractC9907vK.b(h22.z1(), new V60() {
                @Override
                public final boolean apply(Object obj2) {
                    boolean J10;
                    J10 = ((C4516j1) obj2).getAccessFlags().J();
                    return J10;
                }
            })) {
                c10.add(h22);
            }
        }
        Iterator it = ((C11245i) this.f51405b.f()).f57402q.iterator();
        while (it.hasNext()) {
            a(((com.android.tools.r8.graph.A2) it.next()).s0(), c10);
        }
        Iterator<E> it2 = ((C11245i) this.f51405b.f()).f57399n.iterator();
        while (it2.hasNext()) {
            a((com.android.tools.r8.graph.J2) it2.next(), c10);
        }
        Iterator it3 = this.f51405b.f38411d.iterator();
        while (it3.hasNext()) {
            ((C6694c4) it3.next()).a(C6628bi.c(), new InterfaceC6160Wr0() {
                @Override
                public final void accept(Object obj2) {
                    C8851p00.this.a(c10, (C9029q4) obj2);
                }
            });
        }
        return c10;
    }

    public final void a(Set set, C9029q4 c9029q4) {
        com.android.tools.r8.graph.A2 e10 = c9029q4.e();
        if (!e10.s0().E0() && e10.b(((C11245i) this.f51405b.f()).c(e10.s0())) == null) {
            a(c9029q4.e(), set);
        }
    }

    public final void a(com.android.tools.r8.graph.J2 j22, final Set set) {
        a(j22.S(), set);
        j22.a(C6628bi.b(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8851p00.this.a(set, (C4554l1) obj);
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8851p00.this.a(set, (com.android.tools.r8.graph.A2) obj);
            }
        });
    }

    public final void a(Set set, C4554l1 c4554l1) {
        a(c4554l1.getType(), set);
    }

    public final void a(Set set, com.android.tools.r8.graph.A2 a22) {
        Iterator<com.android.tools.r8.graph.M2> it = a22.u0().iterator();
        while (it.hasNext()) {
            a(it.next(), set);
        }
    }

    public final void a(com.android.tools.r8.graph.M2 m22, Set set) {
        com.android.tools.r8.graph.H2 a10;
        com.android.tools.r8.graph.M2 a11 = m22.a(this.f51405b.b());
        if (!a11.I0() || (a10 = com.android.tools.r8.graph.H2.a(((C11245i) this.f51405b.f()).c(a11))) == null || this.f51405b.r().a(a10).d(this.f51406c)) {
            return;
        }
        set.add(a10);
    }
}
