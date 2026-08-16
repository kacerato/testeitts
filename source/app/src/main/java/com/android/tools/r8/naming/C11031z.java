package com.android.tools.r8.naming;

import com.android.tools.r8.graph.C4408d6;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.F5;
import com.android.tools.r8.graph.Y5;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.AbstractC6333Zs0;
import com.android.tools.r8.internal.C6276Ys0;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.C9406sK;
import com.android.tools.r8.internal.CK;
import com.android.tools.r8.internal.EnumC6871d70;
import com.android.tools.r8.internal.InterfaceC6160Wr0;
import com.android.tools.r8.internal.InterfaceC7495gt0;
import com.android.tools.r8.internal.JK;
import com.android.tools.r8.shaking.C11245i;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;

public final class C11031z {

    public static final boolean f56116h = true;

    public final C4798y f56117a;

    public final Y5 f56118b;

    public final C10968m0 f56121e;

    public final IdentityHashMap f56119c = new IdentityHashMap();

    public final IdentityHashMap f56120d = new IdentityHashMap();

    public final IdentityHashMap f56122f = new IdentityHashMap();

    public final IdentityHashMap f56123g = new IdentityHashMap();

    public C11031z(C4798y c4798y, Y5 y52, C10968m0 c10968m0) {
        this.f56117a = c4798y;
        this.f56118b = y52;
        this.f56121e = c10968m0;
    }

    public final C11021x a(C8659ns0 c8659ns0, List list) {
        c8659ns0.b("reserve-names");
        c();
        c8659ns0.d();
        c8659ns0.b("rename-definitions");
        ArrayList a10 = new C11026y(this).a(list);
        int size = a10.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = a10.get(i10);
            i10++;
            a((Set) obj);
        }
        a();
        b();
        c8659ns0.d();
        return new C11021x(this.f56119c);
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00ba, code lost:
    
        if (r2 == null) goto L41;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final com.android.tools.r8.graph.L2 a(B b10, F5 f52) {
        com.android.tools.r8.graph.L2 l22;
        com.android.tools.r8.graph.L2 a10 = b10.f55573e.a(f52);
        if (a10 == null) {
            com.android.tools.r8.graph.M2 m22 = f52.getReference().f37449i;
            A a11 = (A) b10.b();
            B b11 = a11.f55566d;
            a10 = b11.f55573e.a(f52, a11, b11.f55574f);
            if (!A.f55563e) {
                Q0 q02 = a11.f55566d.f55572d;
                com.android.tools.r8.graph.M2 m23 = f52.getReference().f37449i;
                P0 p02 = (P0) q02.f55582c.get(q02.f55581b.b().f37905M1);
                com.android.tools.r8.graph.L2 l23 = null;
                if (p02 == null) {
                    l22 = null;
                } else {
                    l22 = (com.android.tools.r8.graph.L2) p02.f55728a.get(a10);
                    if (l22 == null) {
                        l22 = (com.android.tools.r8.graph.L2) p02.f55728a.get(a10);
                    }
                }
                if (l22 == null) {
                    Q0 q03 = q02.f55733d;
                    if (q03 != null) {
                        P0 p03 = (P0) q03.f55582c.get(q03.f55581b.b().f37905M1);
                        if (p03 != null) {
                            l22 = (com.android.tools.r8.graph.L2) p03.f55728a.get(a10);
                            if (l22 == null) {
                                l22 = (com.android.tools.r8.graph.L2) p03.f55728a.get(a10);
                            }
                        }
                    }
                    l22 = null;
                }
                if (l22 == null) {
                    Q0 q04 = q02.f55733d;
                    if (q04 != null) {
                        P0 p04 = (P0) q04.f55582c.get(q04.f55581b.b().f37905M1);
                        if (p04 != null && (l23 = (com.android.tools.r8.graph.L2) p04.f55728a.get(a10)) == null) {
                            l23 = (com.android.tools.r8.graph.L2) p04.f55728a.get(a10);
                        }
                    }
                }
                throw new AssertionError();
            }
        }
        if (a10 != f52.getReference().f38298g) {
            this.f56119c.put(f52.getReference(), a10);
        }
        return a10;
    }

    public final void c() {
        new C4408d6(this.f56117a, 1).a(((C11245i) this.f56117a.f()).d(), new InterfaceC6160Wr0() {
            @Override
            public final void accept(Object obj) {
                C11031z.this.a((com.android.tools.r8.graph.E0) obj);
            }
        });
    }

    public final B c(com.android.tools.r8.graph.M2 m22) {
        return new B(this.f56117a, this.f56121e);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Q0 a(com.android.tools.r8.graph.M2 m22) {
        return (Q0) this.f56120d.computeIfAbsent(m22, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C11031z.this.b((com.android.tools.r8.graph.M2) obj);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(com.android.tools.r8.graph.E0 e02) {
        com.android.tools.r8.graph.M2 m22;
        com.android.tools.r8.graph.M2 m23 = e02.f36247g;
        if (m23 == null) {
            m22 = this.f56117a.b().f38068i2;
        } else {
            m22 = (com.android.tools.r8.graph.M2) this.f56122f.getOrDefault(m23, e02.f36245e);
        }
        if (m22 != e02.f36245e || e02.e0()) {
            com.android.tools.r8.graph.M2 m24 = (com.android.tools.r8.graph.M2) this.f56122f.put(e02.f36245e, m22);
            if (!f56116h && m24 != null) {
                throw new AssertionError();
            }
        }
        Q0 a10 = a(m22);
        C9406sK B02 = e02.B0();
        CK a11 = JK.a(B02.f52337b.iterator(), B02.f52338c);
        while (a11.f43396b.hasNext()) {
            com.android.tools.r8.graph.F0 f02 = (com.android.tools.r8.graph.F0) a11.a(a11.f43396b.next());
            com.android.tools.r8.graph.L2 a12 = this.f56121e.a(f02);
            if (a12 != null) {
                a10.getClass();
                f02.getReference().getType();
                P0 p02 = (P0) a10.b();
                p02.f55728a.put(a12, f02.getReference().t0());
                if (!a12.g(f02.getReference().t0())) {
                    this.f56119c.put(f02.getReference(), a12);
                }
            }
        }
        if (e02.isInterface()) {
            IdentityHashMap identityHashMap = this.f56123g;
            com.android.tools.r8.graph.M2 m25 = e02.f36245e;
            Set c10 = AbstractC5513Ll0.c();
            c10.add(a10);
            identityHashMap.put(m25, c10);
        }
        for (com.android.tools.r8.graph.M2 m26 : e02.z0()) {
            if (m26 != this.f56117a.b().f38068i2) {
                Q0 a13 = a((com.android.tools.r8.graph.M2) this.f56122f.getOrDefault(m26, m26));
                if (a13 != a10) {
                    a10.a(a13);
                }
                if (e02.e0()) {
                    C4798y c4798y = this.f56117a;
                    com.android.tools.r8.graph.E0 d02 = e02.d0();
                    c4798y.getClass();
                    if (m26 != d02.f36245e) {
                        d02 = c4798y.a(m26);
                    }
                    if (d02 != null && d02.isInterface()) {
                        ((Set) this.f56123g.get(m26)).add(a10);
                    }
                }
            }
        }
        if (m22 == e02.f36245e && e02.e0()) {
            a(e02.d0(), a10);
        }
    }

    public final Q0 b(com.android.tools.r8.graph.M2 m22) {
        return new Q0(this.f56117a);
    }

    public final void b() {
        if (this.f56117a.E().B().r()) {
            ((C11245i) this.f56117a.f()).a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C11031z.this.a((com.android.tools.r8.graph.I0) obj);
                }
            });
        }
    }

    public final void a(com.android.tools.r8.graph.H2 h22, final Q0 q02) {
        ((C11245i) this.f56117a.f()).b(h22, new InterfaceC7495gt0() {
            @Override
            public final Object a(Object obj, Object obj2, Object obj3) {
                return C11031z.this.a(q02, (com.android.tools.r8.graph.M2) obj, (com.android.tools.r8.graph.E0) obj2, (Boolean) obj3);
            }
        });
    }

    public final AbstractC6333Zs0 a(Q0 q02, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.E0 e02, Boolean bool) {
        Set set;
        if (bool.booleanValue() && e02.v1() && (set = (Set) this.f56123g.get(m22)) != null) {
            set.add(q02);
        }
        return C6276Ys0.f46097c;
    }

    public final void a() {
        final IdentityHashMap identityHashMap = new IdentityHashMap();
        C4408d6 c4408d6 = new C4408d6(this.f56117a, 1);
        c4408d6.f36818e = true;
        c4408d6.a(((C11245i) this.f56117a.f()).d(), new InterfaceC6160Wr0() {
            @Override
            public final void accept(Object obj) {
                C11031z.this.a(identityHashMap, (com.android.tools.r8.graph.E0) obj);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(Map map, com.android.tools.r8.graph.E0 e02) {
        B b10;
        boolean z10 = f56116h;
        if (!z10 && e02.isInterface()) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.M2 m22 = e02.f36247g;
        if (m22 == null) {
            b10 = new B(this.f56117a, this.f56121e);
        } else {
            B b11 = (B) map.computeIfAbsent(m22, new Function() {
                @Override
                public final Object apply(Object obj) {
                    return C11031z.this.c((com.android.tools.r8.graph.M2) obj);
                }
            });
            b11.getClass();
            IdentityHashMap identityHashMap = new IdentityHashMap();
            for (Map.Entry entry : b11.f55582c.entrySet()) {
                com.android.tools.r8.graph.M2 m23 = (com.android.tools.r8.graph.M2) entry.getKey();
                A a10 = (A) entry.getValue();
                identityHashMap.put(m23, new A(a10.f55566d, a10.f55565c, a10.f55564b));
            }
            b10 = new B(b11.f55581b, b11.f55573e, b11.f55572d, identityHashMap);
        }
        IdentityHashMap identityHashMap2 = this.f56122f;
        com.android.tools.r8.graph.M2 m24 = e02.f36245e;
        final B b12 = new B(b10.f55581b, b10.f55573e, (Q0) this.f56120d.get((com.android.tools.r8.graph.M2) identityHashMap2.getOrDefault(m24, m24)), b10.f55582c);
        if (e02.e0()) {
            com.android.tools.r8.graph.H2 d02 = e02.d0();
            Consumer consumer = new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C11031z.this.a(b12, (F5) obj);
                }
            };
            d02.getClass();
            d02.f(consumer, EnumC6871d70.f47286b);
        }
        if (!z10 && map.containsKey(e02.f36245e)) {
            throw new AssertionError();
        }
        map.put(e02.f36245e, b12);
    }

    public final void a(com.android.tools.r8.graph.I0 i02) {
        C9406sK B02 = i02.B0();
        CK a10 = JK.a(B02.f52337b.iterator(), B02.f52338c);
        while (a10.f43396b.hasNext()) {
            com.android.tools.r8.graph.F0 f02 = (com.android.tools.r8.graph.F0) a10.a(a10.f43396b.next());
            com.android.tools.r8.graph.L2 a11 = this.f56121e.a(f02);
            if (a11 != null && !a11.g(f02.getReference().t0())) {
                this.f56119c.put(f02.getReference(), a11);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(Set set) {
        final Q0 q02 = new Q0(this.f56117a);
        final Q0 q03 = new Q0(this.f56117a);
        Iterator it = set.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.E0 e02 = (com.android.tools.r8.graph.E0) it.next();
            IdentityHashMap identityHashMap = this.f56122f;
            com.android.tools.r8.graph.M2 m22 = e02.f36245e;
            Q0 q04 = (Q0) this.f56120d.get((com.android.tools.r8.graph.M2) identityHashMap.getOrDefault(m22, m22));
            if (q04 != null) {
                q03.a(q04);
                Set set2 = (Set) this.f56123g.get(e02.f36245e);
                if (!f56116h && set2 == null) {
                    throw new AssertionError();
                }
                set2.forEach(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        C11031z.a(Q0.this, q02, (Q0) obj);
                    }
                });
            }
        }
        final B b10 = new B(this.f56117a, this.f56121e, q03, new IdentityHashMap());
        Iterator it2 = set.iterator();
        while (it2.hasNext()) {
            com.android.tools.r8.graph.E0 e03 = (com.android.tools.r8.graph.E0) it2.next();
            if (e03.e0()) {
                if (!f56116h && !e03.isInterface()) {
                    throw new AssertionError();
                }
                com.android.tools.r8.graph.H2 d02 = e03.d0();
                Consumer consumer = new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        C11031z.this.a(b10, q02, (F5) obj);
                    }
                };
                d02.getClass();
                d02.f(consumer, EnumC6871d70.f47286b);
            }
        }
    }

    public static void a(Q0 q02, Q0 q03, Q0 q04) {
        Q0 q05;
        q02.a(q04);
        boolean z10 = Q0.f55732e;
        if (!z10 && q03 == null) {
            throw new AssertionError();
        }
        if (!z10 && (q05 = q04.f55733d) != null && q05 != q03) {
            throw new AssertionError();
        }
        q04.f55733d = q03;
    }

    public final void a(B b10, Q0 q02, F5 f52) {
        com.android.tools.r8.graph.L2 a10 = a(b10, f52);
        q02.getClass();
        f52.getReference().getType();
        P0 p02 = (P0) q02.b();
        p02.f55728a.put(a10, f52.getReference().t0());
    }
}
