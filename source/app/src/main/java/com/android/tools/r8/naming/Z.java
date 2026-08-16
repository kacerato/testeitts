package com.android.tools.r8.naming;

import com.android.tools.r8.ClassFileConsumer;
import com.android.tools.r8.graph.C4408d6;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.AT;
import com.android.tools.r8.internal.AbstractC6037Un;
import com.android.tools.r8.internal.C10604zY0;
import com.android.tools.r8.internal.C5480Ky;
import com.android.tools.r8.internal.C5921Sn;
import com.android.tools.r8.internal.C5979Tn;
import com.android.tools.r8.internal.C6286Yx0;
import com.android.tools.r8.internal.C7045eA;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C9406sK;
import com.android.tools.r8.internal.CK;
import com.android.tools.r8.internal.InterfaceC6160Wr0;
import com.android.tools.r8.internal.JK;
import com.android.tools.r8.internal.TU;
import com.android.tools.r8.shaking.C11245i;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;

public final class Z {

    public static final boolean f55801j = true;

    public final C4798y f55802a;

    public final C10968m0 f55803b;

    public final IdentityHashMap f55804c = new IdentityHashMap();

    public final Y f55805d = new Y(this);

    public final C7045eA f55806e;

    public final IdentityHashMap f55807f;

    public final IdentityHashMap f55808g;

    public final C10913b0 f55809h;

    public final C10928e0 f55810i;

    public Z(C4798y c4798y, C10968m0 c10968m0) {
        C7045eA c7045eA = new C7045eA(16);
        this.f55806e = c7045eA;
        IdentityHashMap identityHashMap = new IdentityHashMap();
        this.f55807f = identityHashMap;
        this.f55808g = new IdentityHashMap();
        this.f55802a = c4798y;
        this.f55803b = c10968m0;
        C10928e0 c10928e0 = new C10928e0(null, c());
        this.f55810i = c10928e0;
        c7045eA.a(null, c10928e0, false);
        C10913b0 c10913b0 = new C10913b0(null, b(), c10968m0, c10928e0);
        this.f55809h = c10913b0;
        identityHashMap.put(null, c10913b0);
    }

    public static Object a(com.android.tools.r8.graph.A2 a22) {
        return null;
    }

    public static Function c() {
        return new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((com.android.tools.r8.graph.A2) obj).x0();
            }
        };
    }

    public final Function b() {
        if (this.f55802a.E().f50697l instanceof ClassFileConsumer) {
            return c();
        }
        return new Function() {
            @Override
            public final Object apply(Object obj) {
                return Z.a((com.android.tools.r8.graph.A2) obj);
            }
        };
    }

    public final void d() {
        if (this.f55802a.E().B().r()) {
            ((C11245i) this.f55802a.f()).a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    Z.this.a((com.android.tools.r8.graph.I0) obj);
                }
            });
        }
    }

    public final void e() {
        a(this.f55802a.b().f38068i2, this.f55802a.b().f38068i2, this.f55810i);
        new C4408d6(this.f55802a, 1).a(((C11245i) this.f55802a.f()).e(), new InterfaceC6160Wr0() {
            @Override
            public final void accept(Object obj) {
                Z.this.b((com.android.tools.r8.graph.E0) obj);
            }
        });
    }

    public static C10928e0 a(C10928e0 c10928e0, com.android.tools.r8.graph.M2 m22) {
        return new C10928e0(c10928e0, c10928e0.f55847b);
    }

    public static void a(C10928e0 c10928e0, Map map, com.android.tools.r8.graph.H0 h02) {
        if (c10928e0.a(h02.getReference().t0(), h02.getReference())) {
            ((Set) map.computeIfAbsent(h02.getReference().t0(), C5480Ky.a(new C10604zY0()))).add(Integer.valueOf(h02.getReference().y0().m0()));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void b(com.android.tools.r8.graph.E0 e02) {
        com.android.tools.r8.graph.M2 m22 = e02.f36245e;
        com.android.tools.r8.graph.M2 m23 = (com.android.tools.r8.graph.M2) this.f55808g.getOrDefault(e02.f36247g, m22);
        if (m23 != m22 || e02.e0()) {
            com.android.tools.r8.graph.M2 m24 = (com.android.tools.r8.graph.M2) this.f55808g.put(e02.f36245e, m23);
            if (!f55801j && m24 != null) {
                throw new AssertionError();
            }
        }
        a(m22, m23, (C10928e0) this.f55806e.getOrDefault(e02.f36247g, this.f55810i));
    }

    public final Map a(com.android.tools.r8.graph.E0 e02, C5979Tn c5979Tn) {
        if (c5979Tn.f45165b.isEmpty()) {
            return Collections.EMPTY_MAP;
        }
        final C6286Yx0 c6286Yx0 = new C6286Yx0(2);
        c6286Yx0.b((C6286Yx0) e02);
        final HashMap hashMap = new HashMap();
        while (c6286Yx0.b()) {
            com.android.tools.r8.graph.E0 e03 = (com.android.tools.r8.graph.E0) c6286Yx0.c();
            final C10928e0 c10928e0 = (C10928e0) this.f55806e.get(this.f55808g.get(e03.getType()));
            if (c10928e0 != null) {
                c5979Tn.forEach(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        Z.a(C10928e0.this, hashMap, (com.android.tools.r8.graph.H0) obj);
                    }
                });
            }
            e03.e(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    Z.this.a(c6286Yx0, (com.android.tools.r8.graph.M2) obj);
                }
            });
        }
        boolean z10 = TU.f44487a;
        return C8570nJ.b() ? Collections.unmodifiableMap(hashMap) : hashMap;
    }

    public final C10913b0 b(com.android.tools.r8.graph.M2 m22) {
        C10913b0 b10;
        C10913b0 c10913b0 = (C10913b0) this.f55807f.get(m22);
        if (c10913b0 != null) {
            return c10913b0;
        }
        if (m22 == this.f55802a.b().f38068i2) {
            b10 = this.f55809h;
        } else {
            com.android.tools.r8.graph.E0 g10 = this.f55802a.g(m22);
            if (g10 == null) {
                b10 = b(this.f55802a.b().f38068i2);
            } else {
                b10 = b(g10.f36247g);
            }
        }
        C10928e0 a10 = a(m22);
        if (f55801j || a10 != null) {
            C10913b0 c10913b02 = new C10913b0(b10, b10.f55847b, b10.f55842e, a10);
            this.f55807f.put(m22, c10913b02);
            return c10913b02;
        }
        throw new AssertionError((Object) ("Could not find reservation state for " + m22.toString()));
    }

    public final void a() {
        C4408d6 c4408d6 = new C4408d6(this.f55802a, 1);
        c4408d6.f36818e = true;
        c4408d6.a(((C11245i) this.f55802a.f()).d(), new InterfaceC6160Wr0() {
            @Override
            public final void accept(Object obj) {
                Z.this.a((com.android.tools.r8.graph.E0) obj);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(final com.android.tools.r8.graph.E0 e02) {
        com.android.tools.r8.graph.M2 m22 = e02.f36245e;
        final C10928e0 c10928e0 = (C10928e0) this.f55806e.get(this.f55808g.getOrDefault(m22, m22));
        if (!f55801j && c10928e0 == null) {
            throw new AssertionError((Object) ("Could not find reservation state for " + m22.toString()));
        }
        C10913b0 c10913b0 = (C10913b0) this.f55807f.computeIfAbsent(m22, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Z.this.a(e02, c10928e0, (com.android.tools.r8.graph.M2) obj);
            }
        });
        if (this.f55803b.a(e02)) {
            ArrayList a10 = AT.a(e02.C0(), Comparator.comparing(new A2()), e02.b0().f36638b.h());
            int size = a10.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = a10.get(i10);
                i10++;
                com.android.tools.r8.graph.H0 h02 = (com.android.tools.r8.graph.H0) obj;
                if (!h02.d().i1()) {
                    com.android.tools.r8.graph.L2 a11 = this.f55803b.a(h02);
                    if (a11 == null || a11.g(h02.getReference().t0())) {
                        a11 = c10913b0.a(h02);
                    }
                    if (!a11.g(h02.getReference().t0())) {
                        this.f55804c.put(h02.getReference(), a11);
                    }
                    c10913b0.getClass();
                    ((C10908a0) c10913b0.c(h02.getReference())).a(a11, h02.getReference());
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final C10913b0 a(com.android.tools.r8.graph.E0 e02, C10928e0 c10928e0, com.android.tools.r8.graph.M2 m22) {
        C10913b0 c10913b0 = (C10913b0) this.f55807f.getOrDefault(e02.f36247g, this.f55809h);
        return new C10913b0(c10913b0, c10913b0.f55847b, c10913b0.f55842e, c10928e0);
    }

    public final void a(com.android.tools.r8.graph.I0 i02) {
        C9406sK C02 = i02.C0();
        CK a10 = JK.a(C02.f52337b.iterator(), C02.f52338c);
        while (a10.f43396b.hasNext()) {
            com.android.tools.r8.graph.H0 h02 = (com.android.tools.r8.graph.H0) a10.a(a10.f43396b.next());
            com.android.tools.r8.graph.L2 a11 = this.f55803b.a(h02);
            if (a11 != null && !a11.g(h02.getReference().t0())) {
                this.f55804c.put(h02.getReference(), a11);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23, final C10928e0 c10928e0) {
        C10928e0 c10928e02 = (C10928e0) this.f55806e.computeIfAbsent(m23, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Z.a(C10928e0.this, (com.android.tools.r8.graph.M2) obj);
            }
        });
        com.android.tools.r8.graph.E0 g10 = this.f55802a.g(m22);
        if (g10 != null) {
            C5921Sn c5921Sn = AbstractC6037Un.f44869d;
            C5979Tn c5979Tn = new C5979Tn();
            Iterable<com.android.tools.r8.graph.H0> a10 = this.f55802a.E().f50599F1.f50908u.a(g10.C0());
            for (com.android.tools.r8.graph.H0 h02 : a10) {
                com.android.tools.r8.graph.L2 a11 = this.f55803b.a(h02);
                if (a11 != null) {
                    c10928e02.a(h02, a11);
                } else if (this.f55802a.E().f50697l instanceof ClassFileConsumer) {
                    C4516j1 d10 = h02.d();
                    d10.L0();
                    if (d10.f37314g.o() && d10.f37314g.I()) {
                        c5979Tn.add((C5979Tn) h02);
                    }
                }
            }
            Map a12 = a(g10, c5979Tn);
            if (a12.isEmpty()) {
                return;
            }
            for (com.android.tools.r8.graph.H0 h03 : a10) {
                if (((Set) a12.getOrDefault(h03.getReference().t0(), Collections.EMPTY_SET)).contains(Integer.valueOf(h03.getReference().y0().m0()))) {
                    c10928e02.a(h03, h03.getReference().t0());
                }
            }
        }
    }

    public final void a(C6286Yx0 c6286Yx0, com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.graph.E0 g10 = this.f55802a.g(m22);
        if (g10 != null) {
            c6286Yx0.b((C6286Yx0) g10);
        }
    }

    public final C10928e0 a(com.android.tools.r8.graph.M2 m22) {
        C10928e0 c10928e0 = (C10928e0) this.f55806e.get(m22);
        if (c10928e0 != null) {
            return c10928e0;
        }
        if (this.f55802a.g(m22) == null) {
            return (C10928e0) this.f55806e.get(this.f55802a.b().f38068i2);
        }
        boolean z10 = f55801j;
        if (!z10 && !this.f55808g.containsKey(m22)) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.M2 m23 = (com.android.tools.r8.graph.M2) this.f55808g.get(m22);
        C10928e0 c10928e02 = (C10928e0) this.f55806e.get(m23);
        if (z10 || c10928e02 != null) {
            return c10928e02;
        }
        throw new AssertionError((Object) ("Could not find reservation state for frontier type " + m23.toString()));
    }
}
