package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4666r0;
import com.android.tools.r8.graph.C4798y;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class C11366p2 {

    public static final boolean f57688e = true;

    public final Set f57689a;

    public final C4798y f57690b;

    public final IdentityHashMap f57691c;

    public final C11315m2 f57692d;

    public C11366p2(final C4798y c4798y, Set set, C11315m2 c11315m2) {
        this.f57690b = c4798y;
        if (!f57688e && !set.stream().allMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean e02;
                e02 = C4798y.this.g((com.android.tools.r8.graph.M2) obj).e0();
                return e02;
            }
        })) {
            throw new AssertionError();
        }
        this.f57689a = set;
        this.f57692d = c11315m2;
        this.f57691c = new IdentityHashMap();
    }

    public final void b() {
        boolean contains;
        for (final com.android.tools.r8.graph.H2 h22 : ((C4514j) this.f57690b.f()).d()) {
            C11315m2 c11315m2 = this.f57692d;
            c11315m2.getClass();
            if (!c11315m2.e(h22.f36245e)) {
                com.android.tools.r8.graph.M2 m22 = h22.f36245e;
                if (((C4514j) this.f57690b.f()).c(m22, this.f57690b.b().f38116o2) && b(m22)) {
                    if (C4666r0.a(this.f57690b.E(), h22.f36245e)) {
                        contains = true;
                    } else {
                        C4666r0 a10 = h22.k0().a(this.f57690b.b().f38149s3);
                        contains = a10 == null ? false : a10.f37693c.toString().contains("RUNTIME");
                    }
                    if (contains) {
                        a(h22);
                        Iterator<C4516j1> it = h22.D1().iterator();
                        while (it.hasNext()) {
                            com.android.tools.r8.graph.I2 i22 = it.next().getReference().f36127i;
                            if (i22.f36441f.isEmpty()) {
                                com.android.tools.r8.graph.M2 a11 = i22.f36440e.a(this.f57690b.b());
                                if (a11.I0() && ((C4514j) this.f57690b.f()).c(a11, this.f57690b.b().f38108n2)) {
                                    a(a11);
                                }
                            }
                        }
                    }
                } else {
                    Consumer consumer = new Consumer() {
                        @Override
                        public final void accept(Object obj) {
                            C11366p2.this.a(h22, (C4666r0) obj);
                        }
                    };
                    h22.k0().forEach(consumer);
                    for (C4516j1 c4516j1 : h22.z1()) {
                        c4516j1.k0().forEach(consumer);
                        c4516j1.f37316i.d(consumer);
                    }
                    Iterator<C4460g1> it2 = h22.I0().iterator();
                    while (it2.hasNext()) {
                        it2.next().k0().forEach(consumer);
                    }
                }
            }
        }
    }

    public final void a(com.android.tools.r8.graph.H2 h22, C4666r0 c4666r0) {
        C11315m2 c11315m2 = this.f57692d;
        c11315m2.getClass();
        if (!c11315m2.e(h22.f36245e) && c4666r0.f37692b == 1 && b(c4666r0.f37693c.f37142b)) {
            C11315m2 c11315m22 = this.f57692d;
            c11315m22.getClass();
            c11315m22.a(h22.getType());
        }
    }

    public final void a() {
        new C11298l2(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11366p2.this.a((com.android.tools.r8.graph.M2) obj);
            }
        }, this.f57690b).a(this.f57689a);
    }

    public final void a(com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.graph.E0 g10;
        com.android.tools.r8.graph.M2 a10 = m22.a(this.f57690b.b());
        if (!a10.I0() || this.f57692d.e(a10) || (g10 = this.f57690b.g(a10)) == null || g10.v1()) {
            return;
        }
        a(g10.d0());
    }

    public final void a(com.android.tools.r8.graph.H2 h22) {
        if (!f57688e) {
            C11315m2 c11315m2 = this.f57692d;
            c11315m2.getClass();
            if (c11315m2.e(h22.f36245e)) {
                throw new AssertionError();
            }
        }
        C11315m2 c11315m22 = this.f57692d;
        c11315m22.getClass();
        c11315m22.a(h22.getType());
        com.android.tools.r8.graph.M2 m22 = h22.f36247g;
        if (m22 != null) {
            a(m22);
        }
        for (com.android.tools.r8.graph.M2 m23 : h22.f36248h.f36675b) {
            a(m23);
        }
    }

    public final boolean b(com.android.tools.r8.graph.M2 m22) {
        Boolean bool = (Boolean) this.f57691c.get(m22);
        if (bool == null) {
            com.android.tools.r8.graph.E0 g10 = this.f57690b.g(m22);
            if (g10 == null) {
                bool = Boolean.TRUE;
            } else {
                Boolean bool2 = Boolean.FALSE;
                Iterator<C4516j1> it = g10.D1().iterator();
                while (it.hasNext()) {
                    com.android.tools.r8.graph.I2 i22 = it.next().getReference().f36127i;
                    if (i22.f36441f.isEmpty()) {
                        com.android.tools.r8.graph.M2 a10 = i22.f36440e.a(this.f57690b.b());
                        if (a10.I0()) {
                            if (!f57688e && bool2.booleanValue()) {
                                throw new AssertionError();
                            }
                            com.android.tools.r8.graph.E0 g11 = ((C4514j) this.f57690b.f()).g(a10);
                            boolean z10 = false;
                            boolean z11 = ((g11 == null || g11.f0()) && this.f57690b.E().f50604H0) ? false : true;
                            if ((a10.I0() && ((C4514j) this.f57690b.f()).c(a10, this.f57690b.b().f38108n2) && z11) || (((C4514j) this.f57690b.f()).c(a10, this.f57690b.b().f38116o2) && b(a10))) {
                                z10 = true;
                            }
                            bool2 = Boolean.valueOf(z10);
                        }
                    }
                    if (bool2.booleanValue()) {
                        break;
                    }
                }
                bool = bool2;
            }
            this.f57691c.put(m22, bool);
        }
        return bool.booleanValue();
    }
}
