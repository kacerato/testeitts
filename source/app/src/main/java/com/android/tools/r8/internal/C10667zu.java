package com.android.tools.r8.internal;

import com.android.tools.r8.DiagnosticsLevel;
import com.android.tools.r8.graph.AbstractC4458g;
import com.android.tools.r8.graph.C4387c4;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4537k3;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.shaking.C11245i;
import com.android.tools.r8.shaking.C11500x1;
import com.android.tools.r8.threading.ThreadingModule;
import com.android.tools.r8.utils.StringDiagnostic;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.OptionalInt;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BiPredicate;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.ObjIntConsumer;
import java.util.function.Supplier;
import java.util.function.ToIntFunction;

public final class C10667zu extends AbstractC10333xu {

    public static final boolean f54565j = true;

    public final C4798y f54566a;

    public final C4724u1 f54567b;

    public C5240Gu f54568c;

    public final Set f54569d = C4875Al0.a();

    public final ConcurrentHashMap f54570e = new ConcurrentHashMap();

    public C8926pU f54571f;

    public final com.android.tools.r8.graph.F0 f54572g;

    public final boolean f54573h;

    public final ConcurrentHashMap f54574i;

    public C10667zu(C4798y c4798y) {
        this.f54566a = c4798y;
        C4724u1 b10 = c4798y.b();
        this.f54567b = b10;
        if (c4798y.E().f50599F1.f50883i0) {
            this.f54573h = true;
            this.f54574i = new ConcurrentHashMap();
        } else {
            this.f54573h = false;
            this.f54574i = null;
        }
        if (!f54565j && c4798y.E().f50690i1) {
            throw new AssertionError();
        }
        this.f54572g = ((C11245i) c4798y.f()).c(b10.f37943R4.f36483b).p();
    }

    public static C8592nU a(C8592nU c8592nU, AbstractC5308Hz abstractC5308Hz) {
        return c8592nU;
    }

    public final void b(Set set, com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.graph.H2 a10 = a(m22);
        if (a10 != null) {
            set.add(a10.getType());
        }
    }

    public final void c() {
        this.f54568c.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10667zu.this.a((C5182Fu) obj);
            }
        });
    }

    public final C8664nu d() {
        c();
        a();
        C8664nu b10 = b();
        if (this.f54573h) {
            Set o10 = this.f54574i.o();
            final C5240Gu c5240Gu = this.f54568c;
            Objects.requireNonNull(c5240Gu);
            o10.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C5240Gu.this.d((com.android.tools.r8.graph.M2) obj);
                }
            });
            e();
        }
        if (f54565j || b10.f51108a.keySet().size() == QC.a(this.f54568c.f40614a.o()).size()) {
            return b10;
        }
        throw new AssertionError();
    }

    public final void e() {
        if (!f54565j && !this.f54573h) {
            throw new AssertionError();
        }
        C5094Ef0 c5094Ef0 = this.f54566a.E().f50691j;
        QC a10 = QC.a(this.f54568c.f40614a.o());
        StringDiagnostic stringDiagnostic = new StringDiagnostic("Unboxed " + a10.size() + " enums: " + Arrays.toString(a10.toArray(XB.f45636b)));
        synchronized (c5094Ef0) {
            c5094Ef0.a(DiagnosticsLevel.INFO, stringDiagnostic);
        }
        final StringBuilder sb2 = new StringBuilder("Unable to unbox ");
        sb2.append(this.f54574i.size());
        sb2.append(" enums.");
        sb2.append(System.lineSeparator());
        sb2.append(System.lineSeparator());
        TreeMap treeMap = new TreeMap(Comparator.comparingInt(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                return C10667zu.this.c((com.android.tools.r8.graph.M2) obj);
            }
        }).thenComparing(Function.identity()));
        treeMap.putAll(this.f54574i);
        ArrayList arrayList = new ArrayList();
        Iterator it = treeMap.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            List list = (List) entry.getValue();
            if (list.size() > 1) {
                break;
            } else if (list.get(0) == AbstractC6295Zb0.f46275c) {
                arrayList.add((com.android.tools.r8.graph.M2) entry.getKey());
                it.remove();
            }
        }
        if (!arrayList.isEmpty()) {
            sb2.append("Pinned: ");
            sb2.append(Arrays.toString(arrayList.toArray()));
        }
        treeMap.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C10667zu.a(StringBuilder.this, (com.android.tools.r8.graph.M2) obj, (List) obj2);
            }
        });
        sb2.append(System.lineSeparator());
        final C9691u20 c9691u20 = new C9691u20();
        this.f54574i.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                ((List) obj2).forEach(new Consumer() {
                    @Override
                    public final void accept(Object obj3) {
                        r0.b(Y0.this.b(r2) + 1, ((AbstractC6295Zb0) obj3).a());
                    }
                });
            }
        });
        if (c9691u20.f52770k == null) {
            c9691u20.f52770k = new C8857p20(c9691u20);
        }
        ArrayList arrayList2 = new ArrayList(c9691u20.f52770k);
        arrayList2.sort(new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return C10667zu.a(Y0.this, obj, obj2);
            }
        });
        arrayList2.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10667zu.a(StringBuilder.this, c9691u20, obj);
            }
        });
        c5094Ef0.info(new StringDiagnostic(sb2.toString()));
    }

    @Override
    public final void a(com.android.tools.r8.graph.H2 h22, AbstractC5461Ko0 abstractC5461Ko0) {
        if (abstractC5461Ko0 == null || !(abstractC5461Ko0 instanceof C5403Jo0)) {
            return;
        }
        if (!f54565j && !h22.o1()) {
            throw new AssertionError();
        }
        C5403Jo0 a10 = abstractC5461Ko0.a();
        if (a(h22.f36245e) != null) {
            this.f54570e.put(h22.f36245e, a10);
        }
    }

    public final void b(com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.graph.H2 a10 = a(m22);
        if (a10 != null) {
            a(AbstractC6295Zb0.f46292t, a10);
        }
    }

    public final C8664nu b() {
        final C8051kC c8051kC = new C8051kC(4);
        final C8051kC c8051kC2 = new C8051kC(4);
        this.f54568c.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10667zu.this.a(c8051kC2, c8051kC, (C5182Fu) obj);
            }
        });
        this.f54570e.clear();
        return new C8664nu(c8051kC2.b(), c8051kC.b());
    }

    public final int c(com.android.tools.r8.graph.M2 m22) {
        return ((List) this.f54574i.get(m22)).size();
    }

    public final void a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23) {
        if (m22.a(m23)) {
            return;
        }
        com.android.tools.r8.graph.H2 a10 = a(m22);
        if (a10 != null) {
            a(AbstractC6295Zb0.f46292t, a10);
        }
        b(m23);
    }

    public static void a(Set set, C11500x1 c11500x1) {
        com.android.tools.r8.graph.M5 m52 = new com.android.tools.r8.graph.M5();
        m52.f36609e = set;
        c11500x1.b(m52.a());
    }

    public static boolean b(com.android.tools.r8.graph.H2 h22) {
        C9406sK K12 = h22.K1();
        return !(JK.a(JK.a(K12.f52337b.iterator(), K12.f52338c), new V60() {
            @Override
            public final boolean apply(Object obj) {
                boolean e10;
                e10 = ((com.android.tools.r8.graph.H5) obj).A().m().e();
                return e10;
            }
        }) != -1);
    }

    public final void a(OJ oj2, final Set set, com.android.tools.r8.graph.H5 h52) {
        oj2.f42851l.f36213f.d(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10667zu.this.a(set, (com.android.tools.r8.graph.M2) obj);
            }
        });
        com.android.tools.r8.graph.D0 d02 = oj2.f42851l;
        C4798y c4798y = this.f54566a;
        C8085kR b10 = C8085kR.b(d02, c4798y, (C4514j) c4798y.f(), h52);
        if (b10 == null) {
            a(oj2, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C10667zu.this.b((com.android.tools.r8.graph.M2) obj);
                }
            });
        } else {
            a(oj2, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C10667zu.this.b(set, (com.android.tools.r8.graph.M2) obj);
                }
            });
            b10.a(new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    C10667zu.this.a((com.android.tools.r8.graph.M2) obj, (com.android.tools.r8.graph.M2) obj2);
                }
            });
        }
    }

    @Override
    public final void b(com.android.tools.r8.graph.H5 h52) {
        a(h52);
    }

    public final void a(OJ oj2, final Consumer consumer) {
        oj2.f42851l.f36215h.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10667zu.this.a(consumer, (com.android.tools.r8.graph.R2) obj);
            }
        });
    }

    /* JADX WARN: Type inference failed for: r4v1, types: [com.android.tools.r8.internal.SG, com.android.tools.r8.internal.Q] */
    public final void a(C8051kC c8051kC, C8051kC c8051kC2, C5182Fu c5182Fu) {
        com.android.tools.r8.graph.H2 h22 = c5182Fu.f40338a;
        C8497mu a10 = a(h22, c5182Fu.f40340c);
        if (a10 == null) {
            C5240Gu c5240Gu = this.f54568c;
            c5240Gu.getClass();
            c5240Gu.d(h22.getType());
        } else {
            if (this.f54573h && this.f54574i.containsKey(h22.getType())) {
                return;
            }
            c8051kC.a(h22.f36245e, a10);
            ?? r42 = a10.f50450b;
            if (r42 != 0) {
                A30 it = r42.values().iterator();
                while (it.hasNext()) {
                    com.android.tools.r8.graph.M2 m22 = (com.android.tools.r8.graph.M2) it.next();
                    if (!m22.a(h22.f36245e)) {
                        c8051kC2.a(m22, h22.f36245e);
                    }
                }
            }
        }
    }

    public final void a(C5182Fu c5182Fu) {
        com.android.tools.r8.graph.H2 h22 = c5182Fu.f40338a;
        if (b(h22) || !a(AbstractC6295Zb0.f46286n, h22)) {
            if (h22.a(this.f54566a) && a(AbstractC6295Zb0.f46287o, h22)) {
                return;
            }
            if (!C5182Fu.f40337e && c5182Fu.f40341d == null) {
                throw new AssertionError();
            }
            for (com.android.tools.r8.graph.H2 h23 : c5182Fu.f40341d) {
                if (!b(h23) && a(AbstractC6295Zb0.f46288p, h22)) {
                    return;
                }
                if (h23.c1() && a(AbstractC6295Zb0.f46289q, h22)) {
                    return;
                }
            }
        }
    }

    public final OptionalInt a(Q30 q30) {
        F1 a10 = q30.a(this.f54572g.d().getReference());
        a10.getClass();
        if (a10 instanceof C5341Im0) {
            return OptionalInt.of((int) a10.m().f41207c);
        }
        return OptionalInt.empty();
    }

    @Override
    public final void a() {
        for (com.android.tools.r8.graph.H2 h22 : this.f54569d) {
            C5240Gu c5240Gu = this.f54568c;
            c5240Gu.getClass();
            c5240Gu.d(h22.getType());
        }
        this.f54569d.clear();
    }

    public final boolean a(AbstractC6295Zb0 abstractC6295Zb0, com.android.tools.r8.graph.H2 h22) {
        if (!f54565j && !h22.o1()) {
            throw new AssertionError();
        }
        if (a(h22.getType(), abstractC6295Zb0)) {
            return false;
        }
        this.f54569d.add(h22);
        return true;
    }

    public final com.android.tools.r8.graph.H2 a(AbstractC8999pu0 abstractC8999pu0) {
        if (abstractC8999pu0.s()) {
            return a(abstractC8999pu0.b().E());
        }
        if (!abstractC8999pu0.r()) {
            return null;
        }
        W3 a10 = abstractC8999pu0.a();
        if (a10.E().s()) {
            return a(a10.E());
        }
        return null;
    }

    public final com.android.tools.r8.graph.H2 a(com.android.tools.r8.graph.M2 m22) {
        if (m22.E0()) {
            return a(m22.a(this.f54566a.b()));
        }
        if (m22.P0() || m22.S0()) {
            return null;
        }
        if (f54565j || m22.I0()) {
            return this.f54568c.a(m22);
        }
        throw new AssertionError();
    }

    @Override
    public final void a(C7215fB c7215fB) {
        com.android.tools.r8.graph.H2 a10;
        com.android.tools.r8.graph.H2 a11;
        Set<com.android.tools.r8.graph.M2> c10 = AbstractC5513Ll0.c();
        Iterator<W5> it = c7215fB.f47897d.iterator();
        while (it.hasNext()) {
            W5 next = it.next();
            Y5 it2 = next.l().iterator();
            while (it2.hasNext()) {
                AbstractC10561zE next2 = it2.next();
                C10340xw0 d10 = next2.d();
                if (d10 != null) {
                    com.android.tools.r8.graph.H2 a12 = a(d10.b(this.f54566a));
                    if (a12 != null && a(c7215fB, d10, a12) == AbstractC6295Zb0.f46273a) {
                        c10.add(a12.f36245e);
                    }
                    AbstractC8999pu0 u10 = d10.u();
                    u10.getClass();
                    if (u10 instanceof C6301Zd0) {
                        a(c7215fB, d10, c10);
                    }
                } else if (next2.P1() && (a10 = a(next2.e0().v2())) != null) {
                    c10.add(a10.f36245e);
                }
                int r22 = next2.r2();
                if (r22 == 10) {
                    C7942jc D10 = next2.D();
                    if (!D10.f49274k.E0() && (a11 = a(D10.f49274k.a(this.f54567b))) != null) {
                        if (D10.n().b(this.f54566a).a(AbstractC8999pu0.a(D10.f49274k, C8854p10.b(), (C4798y<?>) this.f54566a))) {
                            c10.add(a11.f36245e);
                        } else {
                            a(AbstractC6295Zb0.f46276d, a11);
                        }
                    }
                } else if (r22 == 12) {
                    C7957jh F10 = next2.F();
                    com.android.tools.r8.graph.H5 j10 = c7215fB.j();
                    com.android.tools.r8.graph.M2 m22 = F10.f49303l;
                    if (this.f54568c.c(m22)) {
                        if (F10.d() == null) {
                            c10.add(m22);
                        } else {
                            com.android.tools.r8.graph.H2 d02 = this.f54566a.g(m22).d0();
                            if (F10.d().B()) {
                                a(AbstractC6295Zb0.f46284l, d02);
                            } else {
                                C10340xw0 d11 = F10.d();
                                d11.getClass();
                                C9132qj c9132qj = C9132qj.f51861a;
                                Set<AbstractC10561zE> c11 = AbstractC5513Ll0.c();
                                C10340xw0.a(c9132qj, d11, c11);
                                for (AbstractC10561zE abstractC10561zE : c11) {
                                    abstractC10561zE.getClass();
                                    if (abstractC10561zE instanceof C4) {
                                        if (abstractC10561zE.d().B()) {
                                            a(AbstractC6295Zb0.f46284l, d02);
                                        }
                                    } else {
                                        if (abstractC10561zE.R1()) {
                                            C7405gK i02 = abstractC10561zE.i0();
                                            com.android.tools.r8.graph.H0 e10 = i02.e(this.f54566a, j10);
                                            if (e10 != null) {
                                                if (e10.getReference().a(this.f54567b.f37943R4.f36484c)) {
                                                    a(d02);
                                                    if (!i02.e1()) {
                                                        continue;
                                                    } else if (!i02.d().B()) {
                                                        for (AbstractC10561zE abstractC10561zE2 : i02.d().b0()) {
                                                            if (abstractC10561zE2.q1()) {
                                                                if (abstractC10561zE2.B().f39117k.a().n().a(d02.getType().b(this.f54566a))) {
                                                                }
                                                            } else if (abstractC10561zE2.t1() && abstractC10561zE2.D().f49274k.a(d02.getType())) {
                                                            }
                                                        }
                                                    }
                                                } else if (e10.getReference().a(this.f54567b.f37950S4.f36792a)) {
                                                    continue;
                                                }
                                            }
                                            a(AbstractC6295Zb0.f46284l, d02);
                                        }
                                        if (abstractC10561zE.T1()) {
                                            com.android.tools.r8.graph.A2 B22 = abstractC10561zE.k0().B2();
                                            if (B22.a(this.f54567b.f37922O4.f36319a)) {
                                                if (j10.d().f1() && j10.getHolder() == d02) {
                                                }
                                            } else {
                                                com.android.tools.r8.graph.G1 g12 = this.f54567b.f37922O4;
                                                if (!B22.a(g12.f36323e) && !B22.a(g12.f36324f) && !B22.a(g12.f36325g)) {
                                                }
                                            }
                                        }
                                        a(AbstractC6295Zb0.f46284l, d02);
                                    }
                                }
                                c10.add(m22);
                            }
                        }
                    }
                } else if (r22 == 32) {
                    a(next2.b0(), c10, c7215fB.j());
                } else if (r22 != 38) {
                    if (r22 != 59 && r22 != 60) {
                        switch (r22) {
                            case 27:
                                com.android.tools.r8.graph.H2 a13 = a(next2.W().f52317k);
                                if (a13 != null) {
                                    c10.add(a13.getType());
                                    break;
                                } else {
                                    break;
                                }
                            case 29:
                                com.android.tools.r8.graph.H2 a14 = a(next2.Y().f50246k.a(this.f54567b));
                                if (a14 != null) {
                                    a(AbstractC6295Zb0.f46277e, a14);
                                    break;
                                } else {
                                    break;
                                }
                        }
                    }
                    AbstractC7670hw S10 = next2.S();
                    com.android.tools.r8.graph.H5 j11 = c7215fB.j();
                    C4554l1 field = S10.getField();
                    com.android.tools.r8.graph.H2 a15 = a(field.s0());
                    if (a15 != null) {
                        C11245i c11245i = (C11245i) this.f54566a.f();
                        c11245i.getClass();
                        if (c11245i.a(field.f38297f, field, j11).y()) {
                            c10.add(a15.getType());
                        } else {
                            a(AbstractC6295Zb0.f46283k, a15);
                        }
                    }
                } else {
                    C7405gK i03 = next2.i0();
                    com.android.tools.r8.graph.H5 j12 = c7215fB.j();
                    com.android.tools.r8.graph.H2 a16 = a(i03.B2().f38297f);
                    if (a16 != null) {
                        if (i03.e(this.f54566a, j12) != null) {
                            c10.add(a16.f36245e);
                        } else {
                            a(AbstractC6295Zb0.f46290r, a16);
                        }
                    }
                }
            }
            for (C7201f60 c7201f60 : next.s()) {
                com.android.tools.r8.graph.H2 a17 = a(c7201f60.u());
                if (a17 != null && a(c7215fB, c7201f60, a17) == AbstractC6295Zb0.f46273a) {
                    c10.add(a17.f36245e);
                }
                AbstractC8999pu0 u11 = c7201f60.u();
                u11.getClass();
                if (u11 instanceof C6301Zd0) {
                    a(c7215fB, c7201f60, c10);
                }
            }
        }
        if (c10.isEmpty()) {
            return;
        }
        for (com.android.tools.r8.graph.M2 m23 : c10) {
            C5240Gu c5240Gu = this.f54568c;
            com.android.tools.r8.graph.H5 j13 = c7215fB.j();
            C5182Fu c5182Fu = (C5182Fu) c5240Gu.f40614a.get(m23);
            if (c5182Fu != null) {
                c5182Fu.f40339b.f51792d.add(j13.getReference());
            }
        }
    }

    public final void a(Set set, com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.graph.H2 a10 = a(m22);
        if (a10 != null) {
            set.add(a10.getType());
        }
    }

    public final void a(Consumer consumer, com.android.tools.r8.graph.R2 r22) {
        r22.getClass();
        if (r22 instanceof com.android.tools.r8.graph.X2) {
            com.android.tools.r8.graph.C2 c22 = (com.android.tools.r8.graph.C2) r22.z0().W0();
            if (c22.f36190e.d()) {
                com.android.tools.r8.graph.A2 m02 = c22.m0();
                b(m02.s0());
                com.android.tools.r8.graph.I2 y02 = m02.y0();
                consumer.accept(y02.f36440e);
                y02.f36441f.forEach(consumer);
                return;
            }
            if (!f54565j && !c22.f36190e.a()) {
                throw new AssertionError();
            }
            C4554l1 l02 = c22.l0();
            b(l02.s0());
            consumer.accept(l02.f37449i);
            return;
        }
        if (r22 instanceof com.android.tools.r8.graph.Y2) {
            com.android.tools.r8.graph.I2 i22 = (com.android.tools.r8.graph.I2) r22.A0().W0();
            consumer.accept(i22.f36440e);
            i22.f36441f.forEach(consumer);
        }
    }

    public final void a(com.android.tools.r8.graph.H2 h22) {
        C5240Gu c5240Gu = this.f54568c;
        C4554l1 c4554l1 = this.f54567b.f37943R4.f36482a;
        C5182Fu c5182Fu = (C5182Fu) c5240Gu.f40614a.get(h22.getType());
        if (c5182Fu == null) {
            return;
        }
        c5182Fu.f40340c.add(c4554l1);
    }

    public final void a(C7215fB c7215fB, C10340xw0 c10340xw0, Set set) {
        com.android.tools.r8.graph.H2 a10;
        com.android.tools.r8.graph.H2 a11;
        for (AbstractC10561zE abstractC10561zE : c10340xw0.b0()) {
            if (abstractC10561zE.P1()) {
                VJ e02 = abstractC10561zE.e0();
                com.android.tools.r8.graph.A2 B22 = e02.B2();
                for (com.android.tools.r8.graph.M2 m22 : B22.f36127i.f36441f.f36675b) {
                    if (this.f54568c.c(m22)) {
                        set.add(m22);
                    }
                }
                if (e02.Q1() && e02.f0().C2() == c10340xw0 && (a10 = a(B22.f38297f)) != null) {
                    a(AbstractC6295Zb0.f46271C, a10);
                }
            } else if (abstractC10561zE.a2()) {
                com.android.tools.r8.graph.H2 a12 = a(abstractC10561zE.u0().f51805l.a(this.f54567b));
                if (a12 != null) {
                    set.add(a12.getType());
                }
            } else if (abstractC10561zE.F1()) {
                com.android.tools.r8.graph.H2 a13 = a(abstractC10561zE.S().getField().getType());
                if (a13 != null) {
                    set.add(a13.getType());
                }
            } else if (abstractC10561zE.g2() && (a11 = a(c7215fB.j().E())) != null) {
                set.add(a11.getType());
            }
        }
    }

    public final AbstractC6295Zb0 a(C7215fB c7215fB, C10340xw0 c10340xw0, com.android.tools.r8.graph.H2 h22) {
        AbstractC6295Zb0 a10;
        AbstractC6295Zb0 abstractC6295Zb0 = AbstractC6295Zb0.f46273a;
        for (AbstractC10561zE abstractC10561zE : c10340xw0.b0()) {
            com.android.tools.r8.graph.H5 j10 = c7215fB.j();
            int r22 = abstractC10561zE.r2();
            if (r22 == 25) {
                a10 = a(abstractC10561zE.V(), h22);
            } else if (r22 == 28) {
                C6558bE c10 = abstractC10561zE.c();
                if (!f54565j && !c10.getField().f38297f.a(h22.f36245e)) {
                    throw new AssertionError();
                }
                C4554l1 field = c10.getField();
                C5182Fu c5182Fu = (C5182Fu) this.f54568c.f40614a.get(h22.getType());
                if (c5182Fu != null) {
                    c5182Fu.f40340c.add(field);
                }
                a10 = AbstractC6295Zb0.f46273a;
            } else if (r22 == 30) {
                a10 = a(abstractC10561zE.m(), c7215fB, j10, h22, c10340xw0);
            } else if (r22 == 36) {
                a10 = a(abstractC10561zE.u0(), h22);
            } else if (r22 == 56) {
                com.android.tools.r8.graph.M2 E10 = j10.E();
                if (!E10.a(h22.f36245e) && !E10.a(this.f54567b).a(h22.f36245e)) {
                    a10 = AbstractC6295Zb0.f46294v;
                } else {
                    a10 = AbstractC6295Zb0.f46273a;
                }
            } else if (r22 == 60) {
                a10 = a(abstractC10561zE.L0(), c7215fB, j10, h22, c10340xw0);
            } else if (r22 == 73) {
                a10 = AbstractC6295Zb0.f46273a;
            } else if (r22 != 33 && r22 != 34) {
                switch (r22) {
                    case 6:
                        a10 = AbstractC6295Zb0.f46273a;
                        break;
                    case 7:
                        a10 = AbstractC6295Zb0.f46273a;
                        break;
                    case 8:
                        T3 A10 = abstractC10561zE.A();
                        boolean z10 = f54565j;
                        if (!z10 && A10.f44380k != YV.f45995b) {
                            throw new AssertionError();
                        }
                        AbstractC8999pu0 u10 = A10.u2().u();
                        if (!z10 && !u10.r()) {
                            throw new AssertionError();
                        }
                        if (!z10 && !u10.a().E().s()) {
                            throw new AssertionError();
                        }
                        if (b(u10.a().E().b(), A10.value())) {
                            a10 = AbstractC6295Zb0.f46273a;
                            break;
                        } else {
                            a10 = AbstractC6295Zb0.f46296x;
                            break;
                        }
                        break;
                    case 9:
                        a10 = a(c7215fB, abstractC10561zE.B().d(), h22);
                        break;
                    case 10:
                        C7942jc D10 = abstractC10561zE.D();
                        if (D10.n().b(this.f54566a).a(AbstractC8999pu0.a(D10.f49274k, C8854p10.b(), (C4798y<?>) this.f54566a))) {
                            a10 = AbstractC6295Zb0.f46273a;
                            break;
                        } else {
                            a10 = AbstractC6295Zb0.f46276d;
                            break;
                        }
                    default:
                        switch (r22) {
                            case 38:
                            case 39:
                            case 40:
                                a10 = a(abstractC10561zE.e0(), c7215fB, j10, h22, c10340xw0);
                                break;
                            default:
                                a10 = AbstractC6295Zb0.f46272D;
                                break;
                        }
                }
            } else {
                a10 = a(abstractC10561zE.e0(), c7215fB, j10, h22, c10340xw0);
            }
            if (a10 != AbstractC6295Zb0.f46273a) {
                if (a(a10, h22)) {
                    return a10;
                }
                abstractC6295Zb0 = a10;
            }
        }
        Iterator it = c10340xw0.a0().iterator();
        while (it.hasNext()) {
            for (C10340xw0 c10340xw02 : ((C7201f60) it.next()).c0()) {
                AbstractC8999pu0 u11 = c10340xw02.u();
                u11.getClass();
                if (!(u11 instanceof C6301Zd0) && a(c10340xw02.u()) != h22) {
                    C6067Vb0 c6067Vb0 = AbstractC6295Zb0.f46285m;
                    a(c6067Vb0, h22);
                    return c6067Vb0;
                }
            }
        }
        return abstractC6295Zb0;
    }

    /* JADX WARN: Removed duplicated region for block: B:72:? A[LOOP:1: B:52:0x00db->B:72:?, LOOP_END, SYNTHETIC] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(AbstractC5308Hz abstractC5308Hz) {
        C5240Gu c5240Gu;
        boolean z10;
        boolean z11 = f54565j;
        if (!z11 && this.f54566a.v() != abstractC5308Hz) {
            throw new AssertionError();
        }
        if (!z11 && this.f54571f != null) {
            throw new AssertionError();
        }
        this.f54571f = C8926pU.a(abstractC5308Hz);
        if (!z11 && this.f54568c != null) {
            throw new AssertionError();
        }
        C5124Eu c5124Eu = new C5124Eu(this.f54566a, this);
        com.android.tools.r8.graph.F0 f02 = c5124Eu.f40045b.f54572g;
        if (f02 != null && !(f02 instanceof com.android.tools.r8.graph.F5)) {
            C4798y c4798y = c5124Eu.f40044a;
            C4387c4 a10 = C4387c4.a(c4798y, ((C4514j) c4798y.f()).d());
            for (com.android.tools.r8.graph.H2 h22 : ((C11245i) c5124Eu.f40044a.f()).d()) {
                if (h22.o1() && h22.f36247g.a(c5124Eu.f40046c.f38108n2) && !c5124Eu.f40044a.f38393H.d(h22.getType())) {
                    boolean z12 = C5124Eu.f40043e;
                    if (!z12 && !h22.o1()) {
                        throw new AssertionError();
                    }
                    if (!z12 && !h22.f36247g.a(c5124Eu.f40046c.f38108n2)) {
                        throw new AssertionError();
                    }
                    if (h22.k1().size() > 7) {
                        C10667zu c10667zu = c5124Eu.f40045b;
                        C6067Vb0 c6067Vb0 = AbstractC6295Zb0.f46281i;
                        c10667zu.getClass();
                        c10667zu.a(h22.getType(), c6067Vb0);
                    } else {
                        List a11 = a10.a(h22);
                        Iterator it = a11.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                com.android.tools.r8.graph.H2 h23 = (com.android.tools.r8.graph.H2) it.next();
                                boolean z13 = false;
                                if (!h23.c(c5124Eu.f40044a)) {
                                    if (!c5124Eu.f40045b.a(h23.f36247g, AbstractC6295Zb0.f46278f)) {
                                        if (!z13) {
                                            break;
                                        }
                                    } else {
                                        z10 = false;
                                    }
                                } else {
                                    z10 = true;
                                }
                                com.android.tools.r8.graph.E0 g10 = c5124Eu.f40044a.g(h23.f36247g);
                                if (g10 == null || !g10.o1() || g10.f36247g != c5124Eu.f40046c.f38108n2) {
                                    if (c5124Eu.f40045b.a(h23.f36247g, AbstractC6295Zb0.f46279g)) {
                                        z10 = false;
                                    } else if (!z13) {
                                    }
                                }
                                if (h23.k1().isEmpty()) {
                                    z13 = z10;
                                } else {
                                    c5124Eu.f40045b.a(h23.f36247g, AbstractC6295Zb0.f46280h);
                                }
                                if (!z13) {
                                    break;
                                }
                            } else {
                                C5240Gu c5240Gu2 = c5124Eu.f40047d;
                                C4798y c4798y2 = c5124Eu.f40044a;
                                QC a12 = QC.a(a11);
                                if (!C5240Gu.f40613d && c5240Gu2.f40614a.containsKey(h22.f36245e)) {
                                    throw new AssertionError();
                                }
                                c5240Gu2.f40614a.put(h22.f36245e, new C5182Fu(c4798y2, h22, a12, abstractC5308Hz));
                                Iterator it2 = a12.iterator();
                                while (it2.hasNext()) {
                                    c5240Gu2.f40615b.put(((com.android.tools.r8.graph.H2) it2.next()).getType(), h22.getType());
                                }
                            }
                        }
                    }
                }
            }
            for (com.android.tools.r8.graph.H2 h24 : ((C11245i) c5124Eu.f40044a.f()).d()) {
                if (h24.f36246f.H()) {
                    if (!C5124Eu.f40043e && !h24.f36248h.a(c5124Eu.f40044a.b().f38116o2)) {
                        throw new AssertionError();
                    }
                    for (C4516j1 c4516j1 : h24.D1()) {
                        if (!C5124Eu.f40043e && !c4516j1.V0().isEmpty() && !c5124Eu.f40044a.E().f50599F1.f50826K) {
                            throw new AssertionError();
                        }
                        com.android.tools.r8.graph.M2 a13 = c4516j1.u1().a(c5124Eu.f40044a.b());
                        if (c5124Eu.f40047d.c(a13) && !c5124Eu.f40045b.a(a13, AbstractC6295Zb0.f46274b)) {
                            c5124Eu.f40047d.d(a13);
                        }
                    }
                }
            }
            c5124Eu.a();
            if (c5124Eu.f40044a.E().a0().a()) {
                c5124Eu.f40047d.d(c5124Eu.f40044a.f38388C.f42929h.f42003o);
            }
            if (!C5124Eu.f40043e) {
                for (C5182Fu c5182Fu : c5124Eu.f40047d.f40614a.values()) {
                    if (!C5240Gu.f40613d && c5182Fu.f40341d == null) {
                        throw new AssertionError();
                    }
                }
            }
            c5240Gu = c5124Eu.f40047d;
        } else {
            c5240Gu = c5124Eu.f40047d;
        }
        this.f54568c = c5240Gu;
    }

    @Override
    public final void a(final C4798y c4798y, C10374y70 c10374y70, O60 o60, ExecutorService executorService, C8195l40 c8195l40, C8659ns0 c8659ns0) {
        c8659ns0.b("Unbox enums");
        boolean z10 = f54565j;
        if (!z10) {
            c8195l40.b();
        }
        if (!z10 && !this.f54569d.isEmpty()) {
            throw new AssertionError();
        }
        C8664nu d10 = d();
        if (!z10 && !this.f54569d.isEmpty()) {
            throw new AssertionError();
        }
        c4798y.a(d10);
        if (this.f54568c.f40614a.isEmpty()) {
            if (!z10 && !d10.a()) {
                throw new AssertionError();
            }
            c10374y70.f49539r = C5643Nt.f42726a;
            c8659ns0.d();
            return;
        }
        AbstractC5308Hz v10 = c4798y.v();
        QC a10 = QC.a(this.f54568c.f40614a.o());
        C5240Gu c5240Gu = this.f54568c;
        c5240Gu.getClass();
        C8051kC c8051kC = new C8051kC(4);
        for (C5182Fu c5182Fu : c5240Gu.f40614a.values()) {
            com.android.tools.r8.graph.H2 h22 = c5182Fu.f40338a;
            if (!C5182Fu.f40337e && c5182Fu.f40341d == null) {
                throw new AssertionError();
            }
            c8051kC.a(h22, c5182Fu.f40341d);
        }
        AbstractC8552nC b10 = c8051kC.b();
        C5240Gu c5240Gu2 = this.f54568c;
        Iterator it = c5240Gu2.f40614a.values().iterator();
        if (!C5240Gu.f40613d && !it.hasNext()) {
            throw new AssertionError();
        }
        C9093qU c9093qU = ((C5182Fu) it.next()).f40339b;
        while (it.hasNext()) {
            c9093qU.a(((C5182Fu) it.next()).f40339b);
        }
        c9093qU.a(c5240Gu2.f40616c);
        this.f54568c.f40614a.clear();
        a(a10);
        C5935Su c5935Su = new C5935Su(c4798y);
        QC keySet = b10.keySet();
        C5570Ml0 c5570Ml0 = new C5570Ml0(c5935Su.f44328a, d10, keySet, c5935Su.f44331d);
        com.android.tools.r8.graph.H2 a11 = c5570Ml0.a();
        C5628Nl0 c5628Nl0 = new C5628Nl0(a11, c5570Ml0.f42394e, new com.android.tools.r8.graph.H5(a11, c5570Ml0.f42395f));
        C8051kC c8051kC2 = new C8051kC(4);
        Iterator it2 = keySet.iterator();
        while (it2.hasNext()) {
            com.android.tools.r8.graph.H2 h23 = (com.android.tools.r8.graph.H2) it2.next();
            C8497mu a12 = d10.a(h23.getType());
            c8051kC2.a(h23.getType(), new PT(new OT(c5935Su.f44328a, h23, a12).a(), a12, h23));
            it2 = it2;
            c9093qU = c9093qU;
        }
        c5935Su.f44329b = c8051kC2.b();
        c5935Su.f44330c = c5628Nl0;
        C5993Tu a13 = c5935Su.a(c10374y70, executorService);
        C8926pU c8926pU = this.f54571f;
        BiFunction biFunction = new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return C10667zu.a((C8592nU) obj, (AbstractC5308Hz) obj2);
            }
        };
        c8926pU.getClass();
        C7541h80 a14 = c8926pU.a(biFunction, c4798y.v()).a(c4798y, new Function() {
            @Override
            public final Object apply(Object obj) {
                Set a15;
                a15 = ((C8592nU) obj).a(C4798y.this);
                return a15;
            }
        });
        a14.a(new BiPredicate() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                return C10667zu.a((com.android.tools.r8.graph.H5) obj, (Set) obj2);
            }
        });
        C5761Pu a15 = new C5819Qu(c4798y, a14, d10, b10, a13).a(c10374y70, executorService, c8659ns0);
        C5645Nu c5645Nu = a15.f43403c;
        O60 a16 = o60.a(c4798y);
        a16.f42781a.a(a15.f43404d.f36684g);
        a16.f42781a.a(c9093qU.c(c4798y.v()).a(a15.f43404d.f36684g));
        a16.a(a15.f43402b, c4798y.v());
        R00 d11 = this.f54566a.v().d();
        boolean z11 = f54565j;
        if (!z11) {
            d11.getClass();
            if (!(d11 instanceof C5645Nu)) {
                throw new AssertionError();
            }
        }
        AbstractC5308Hz abstractC5308Hz = d11.f43777d;
        if (!z11 && abstractC5308Hz != v10) {
            throw new AssertionError();
        }
        C4798y c4798y2 = this.f54566a;
        ThreadingModule G10 = c4798y2.E().G();
        C10500yu c10500yu = new C10500yu(this, d11, abstractC5308Hz, a15);
        c8195l40.c();
        AbstractC8028k40.a(c4798y2.f().d(), G10, executorService, c10500yu);
        c5645Nu.f50328n = new C5703Ou(c4798y, a15.f43401a, d10, a13);
        C8570nJ.p H10 = c4798y.H();
        C7296fi1 c7296fi1 = new C7296fi1(o60);
        C5629Nm a17 = H10.a();
        if (a17 != null) {
            c7296fi1.a(a17);
        }
        c10374y70.f49539r = C5643Nt.f42726a;
        c8659ns0.d();
    }

    public static boolean a(com.android.tools.r8.graph.H5 h52, Set set) {
        h52.A().o().getClass();
        return !(r0 instanceof C9945vc);
    }

    public final void a(final QC qc2) {
        ((C11245i) this.f54566a.f()).f57407v.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10667zu.a(Set.this, (C11500x1) obj);
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:84:0x026c, code lost:
    
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x026d, code lost:
    
        if (r3 != null) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x026f, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0273, code lost:
    
        if (r16 != false) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0275, code lost:
    
        r4 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x027a, code lost:
    
        r5 = r13.b();
        r6 = r17.a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0282, code lost:
    
        if (r0 != null) goto L132;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0284, code lost:
    
        r0 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x028f, code lost:
    
        return new com.android.tools.r8.internal.C8497mu(r3, r4, r5, r6, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0287, code lost:
    
        r0 = r0.f46372a.length;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0277, code lost:
    
        r15 = com.android.tools.r8.internal.UG.f44715a;
     */
    /* JADX WARN: Removed duplicated region for block: B:102:0x025d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00e5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x024e  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0256  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C8497mu a(final com.android.tools.r8.graph.H2 h22, Set set) {
        GG gg2;
        Iterator it;
        AbstractC9832uu c9331ru;
        GG gg3;
        Iterator it2;
        Q30 q30;
        if (!h22.g1()) {
            if (!set.isEmpty()) {
                return null;
            }
            C6620bf0 c6620bf0 = C6620bf0.f46817i;
            int i10 = QC.f43505c;
            return new C8497mu(c6620bf0, null, c6620bf0, C7119ef0.f47742j, -1);
        }
        final C8051kC c8051kC = new C8051kC(4);
        final SG gg4 = new GG();
        C5182Fu c5182Fu = (C5182Fu) this.f54568c.f40614a.get(h22.getType());
        if (!C5182Fu.f40337e && c5182Fu.f40341d == null) {
            throw new AssertionError();
        }
        boolean isEmpty = c5182Fu.f40341d.isEmpty();
        final boolean z10 = !isEmpty;
        final GG gg5 = new GG();
        if (!this.f54570e.containsKey(h22.getType())) {
            a(h22.getType(), new C5835Rb0());
            return null;
        }
        C5403Jo0 c5403Jo0 = (C5403Jo0) this.f54570e.get(h22.getType());
        C4798y c4798y = this.f54566a;
        final C5403Jo0 a10 = c5403Jo0.a(c4798y, c4798y.v(), this.f54566a.f38414g);
        final Set b10 = this.f54568c.b(h22.getType());
        int i11 = QC.f43505c;
        final IC ic2 = new IC();
        GG gg6 = gg5;
        AbstractC6333Zs0 b11 = h22.b(new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return C10667zu.this.a(h22, b10, a10, c8051kC, gg5, z10, gg4, ic2, (com.android.tools.r8.graph.F5) obj, (C6336Zu) obj2);
            }
        });
        if (b11.c()) {
            return null;
        }
        C6336Zu c6336Zu = (C6336Zu) b11.b().e();
        if (c6336Zu != null) {
            int i12 = 0;
            while (i12 < c6336Zu.f46372a.length) {
                GG gg7 = gg6;
                if (!gg7.a(i12)) {
                    if (i12 >= 0) {
                        Q30[] q30Arr = c6336Zu.f46372a;
                        if (i12 < q30Arr.length) {
                            q30 = q30Arr[i12];
                            if (!q30.e()) {
                                a(h22.getType(), new C5951Tb0(i12, this.f54567b.f37943R4.f36483b));
                                return null;
                            }
                            boolean z11 = f54565j;
                            if (!z11 && !a(q30).isPresent()) {
                                throw new AssertionError();
                            }
                            if (!z11 && a(q30).getAsInt() != i12) {
                                throw new AssertionError();
                            }
                            gg7.a(i12, q30);
                            if (isEmpty) {
                                continue;
                            } else {
                                com.android.tools.r8.graph.M2 a11 = (i12 < 0 || i12 >= c6336Zu.f46372a.length) ? null : c6336Zu.f46373b.a(i12);
                                if (a11 == null) {
                                    a(h22.getType(), new C5893Sb0(i12));
                                    return null;
                                }
                                gg4.a(i12, a11);
                            }
                        }
                    }
                    q30 = C6163Wt.f45565a;
                    if (!q30.e()) {
                    }
                }
                i12++;
                gg6 = gg7;
            }
        }
        GG gg8 = gg6;
        C8051kC c8051kC2 = new C8051kC(4);
        Iterator it3 = set.iterator();
        while (true) {
            if (it3.hasNext()) {
                C4554l1 c4554l1 = (C4554l1) it3.next();
                C4460g1 q10 = ((C11245i) this.f54566a.f()).a(h22, c4554l1).q();
                if (q10 == null) {
                    if (f54565j) {
                        a(h22.getType(), new C5951Tb0(c4554l1));
                        c9331ru = C9665tu.f52726a;
                    } else {
                        throw new AssertionError();
                    }
                } else {
                    boolean L02 = c4554l1.f37449i.L0();
                    DG dg2 = new DG();
                    EH eh2 = new EH(new FH(gg8.f40454b, gg8.f40456d));
                    while (eh2.hasNext()) {
                        int r10 = eh2.r();
                        Q30 q302 = (Q30) gg8.get(r10);
                        q302.getClass();
                        F1 a12 = q302.a(q10.getReference());
                        if (!a12.r()) {
                            a(h22.getType(), new C5951Tb0(r10, c4554l1));
                            c9331ru = C9665tu.f52726a;
                        } else if (!(a12 instanceof C5283Hm0) && !(a12 instanceof C5341Im0) && !a12.g0()) {
                            a(h22.getType(), new C6181Xb0(r10, c4554l1));
                            c9331ru = C9665tu.f52726a;
                        } else {
                            dg2.a(r10 + 1, a12);
                            if (!L02) {
                                gg3 = gg8;
                                it2 = it3;
                            } else {
                                if (!f54565j && !(a12 instanceof C5341Im0)) {
                                    throw new AssertionError();
                                }
                                gg3 = gg8;
                                it2 = it3;
                                if (((int) a12.m().f41207c) != r10) {
                                    it3 = it2;
                                    gg8 = gg3;
                                    L02 = false;
                                }
                            }
                            it3 = it2;
                            gg8 = gg3;
                        }
                    }
                    gg2 = gg8;
                    it = it3;
                    if (L02) {
                        c9331ru = new C9498su();
                    } else {
                        c9331ru = new C9331ru(new C6718cC(dg2));
                    }
                    if (c9331ru.b()) {
                        if (!this.f54573h) {
                            break;
                        }
                        c8051kC2 = null;
                    }
                    if (c8051kC2 == null) {
                        c8051kC2.a(c4554l1, c9331ru.a());
                    }
                    it3 = it;
                    gg8 = gg2;
                }
                gg2 = gg8;
                it = it3;
                if (c9331ru.b()) {
                }
                if (c8051kC2 == null) {
                }
                it3 = it;
                gg8 = gg2;
            } else if (c8051kC2 != null) {
                AbstractC8552nC a13 = c8051kC2.a();
            }
        }
    }

    public final AbstractC6333Zs0 a(com.android.tools.r8.graph.H2 h22, Set set, C5403Jo0 c5403Jo0, C8051kC c8051kC, SG sg2, boolean z10, SG sg3, IC ic2, com.android.tools.r8.graph.F5 f52, C6336Zu c6336Zu) {
        if (!f52.getAccessFlags().n()) {
            return new C6276Ys0(c6336Zu);
        }
        com.android.tools.r8.graph.J1 j12 = this.f54567b.f37943R4;
        com.android.tools.r8.graph.M2 m22 = h22.f36245e;
        j12.getClass();
        boolean z11 = com.android.tools.r8.graph.J1.f36481n;
        if (!z11 && !f52.getAccessFlags().n()) {
            throw new AssertionError();
        }
        if (f52.getReference().getType() == m22 || set.contains(f52.getReference().getType())) {
            C4537k3 accessFlags = f52.getAccessFlags();
            if (!z11 && !accessFlags.n()) {
                throw new AssertionError();
            }
            if (AbstractC4458g.d(accessFlags.f37197c, 16384) && accessFlags.e()) {
                Q30 q30 = (Q30) c5403Jo0.f41504a.get(f52.getReference());
                if (q30 == null) {
                    if (!f54565j) {
                        C4554l1 reference = f52.getReference();
                        if (((Q30) c5403Jo0.f41504a.get(this.f54567b.a(reference.f38297f, h22.f36245e, reference.f38298g))) != null) {
                            throw new AssertionError();
                        }
                    }
                    if (f52.d().f37207l.i()) {
                        return new C6276Ys0(c6336Zu);
                    }
                    a(h22.getType(), new C6009Ub0(f52.getReference()));
                    return C6162Ws0.f45559c;
                }
                OptionalInt a10 = a(q30);
                if (!a10.isPresent()) {
                    a(h22.getType(), new C5951Tb0(this.f54567b.f37943R4.f36483b, f52.getReference()));
                    return C6162Ws0.f45559c;
                }
                int asInt = a10.getAsInt();
                c8051kC.a(f52.getReference(), Integer.valueOf(asInt + 1));
                sg2.a(asInt, q30);
                if (z10) {
                    AbstractC10330xt a11 = f52.d().f37207l.g().a(this.f54566a, f52.getReference().getType());
                    if (a11.i()) {
                        sg3.a(asInt, a11.c().E());
                    } else {
                        a(h22.getType(), new C5893Sb0(f52.getReference()));
                        return C6162Ws0.f45559c;
                    }
                }
                return new C6276Ys0(c6336Zu);
            }
        }
        if (this.f54567b.f37943R4.a(f52, h22.f36245e)) {
            Q30 q302 = (Q30) c5403Jo0.f41504a.get(f52.getReference());
            if (q302 == null) {
                if (f52.d().f37207l.i()) {
                    return new C6276Ys0(c6336Zu);
                }
                a(h22.getType(), new C5777Qb0(f52.getReference()));
                return C6162Ws0.f45559c;
            }
            boolean z12 = f54565j;
            if (!z12 && !(q302 instanceof C6336Zu)) {
                throw new AssertionError();
            }
            if (!z12 && c6336Zu != null && !c6336Zu.equals(q302.a())) {
                throw new AssertionError();
            }
            c6336Zu = q302.a();
            ic2.a(f52.getReference());
        }
        return new C6276Ys0(c6336Zu);
    }

    public final boolean b(C6949de c6949de, C10340xw0 c10340xw0) {
        AbstractC8999pu0 u10 = c10340xw0.u();
        u10.getClass();
        if (u10 instanceof C6301Zd0) {
            return true;
        }
        if (u10.r()) {
            u10 = u10.a().E();
        }
        if (f54565j || u10.s()) {
            return this.f54568c.a(u10.b().E(), c6949de.E());
        }
        throw new AssertionError();
    }

    public final C6067Vb0 a(C9103qZ c9103qZ, com.android.tools.r8.graph.H2 h22) {
        AbstractC8999pu0 a10 = c9103qZ.a();
        boolean z10 = f54565j;
        if (!z10 && !a10.r()) {
            throw new AssertionError();
        }
        final C6949de b10 = a10.a().E().b();
        if (b10 == null) {
            if (z10) {
                return AbstractC6295Zb0.f46297y;
            }
            throw new AssertionError();
        }
        if (h22.getType().a(b10.E())) {
            if (AbstractC9907vK.a(c9103qZ.f54321f, new V60() {
                @Override
                public final boolean apply(Object obj) {
                    return C10667zu.this.b(b10, (C10340xw0) obj);
                }
            })) {
                return AbstractC6295Zb0.f46273a;
            }
            return AbstractC6295Zb0.f46297y;
        }
        if (AbstractC5066Du.a(c9103qZ, this.f54567b)) {
            return AbstractC6295Zb0.f46273a;
        }
        return AbstractC6295Zb0.f46297y;
    }

    public final C6067Vb0 a(AbstractC7670hw abstractC7670hw, C7215fB c7215fB, com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H2 h22, C10340xw0 c10340xw0) {
        if (!f54565j && !abstractC7670hw.i() && !abstractC7670hw.e()) {
            throw new AssertionError();
        }
        C4460g1 q10 = ((C11245i) this.f54566a.f()).c(abstractC7670hw.getField()).q();
        if (q10 == null) {
            return AbstractC6295Zb0.f46295w;
        }
        C4798y c4798y = this.f54566a;
        com.android.tools.r8.graph.M2 B02 = q10.B0();
        com.android.tools.r8.graph.H5 j10 = c7215fB.j();
        c4798y.getClass();
        if (com.android.tools.r8.graph.H2.a(c4798y.a(j10.getHolder(), B02)) == null) {
            return AbstractC6295Zb0.f46295w;
        }
        if (abstractC7670hw.i() && abstractC7670hw.m().n() == c10340xw0) {
            if (h52.getHolder() == h22 && h52.d().j1()) {
                return AbstractC6295Zb0.f46273a;
            }
            return AbstractC6295Zb0.f46270B;
        }
        if (!this.f54568c.a(q10.getReference().f37449i.a(this.f54567b), h22.f36245e)) {
            return AbstractC6295Zb0.f46298z;
        }
        return AbstractC6295Zb0.f46273a;
    }

    public final C6067Vb0 a(EB eb2, com.android.tools.r8.graph.H2 h22) {
        NB nb2;
        if (!f54565j && (nb2 = eb2.f39789l) != NB.f42527b && nb2 != NB.f42532g) {
            throw new AssertionError((Object) ("Comparing a reference with " + eb2.f39789l.toString()));
        }
        if (eb2.x2()) {
            return AbstractC6295Zb0.f46273a;
        }
        AbstractC8999pu0 u10 = ((C10340xw0) eb2.f54321f.get(0)).u();
        AbstractC8999pu0 u11 = eb2.y2().u();
        if (u10.s() && u11.s() && a(u10) == h22 && a(u11) == h22) {
            return AbstractC6295Zb0.f46273a;
        }
        return AbstractC6295Zb0.f46269A;
    }

    public final AbstractC6295Zb0 a(VJ vj2, C7215fB c7215fB, com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H2 h22, C10340xw0 c10340xw0) {
        boolean z10;
        com.android.tools.r8.graph.M2 s02 = vj2.B2().s0();
        if (s02.E0()) {
            if (vj2.B2().f38298g.g(this.f54567b.f38050g0)) {
                return AbstractC6295Zb0.f46273a;
            }
            return AbstractC6295Zb0.f46293u;
        }
        if (s02.a(this.f54567b.f38068i2) && vj2.B2().t0().g(this.f54567b.f38050g0) && vj2.b(0).u().r() && vj2.b(0).u().a().E().a(h22.getType())) {
            return AbstractC6295Zb0.f46273a;
        }
        com.android.tools.r8.graph.H0 p10 = ((C11245i) this.f54566a.f()).a(vj2.B2(), vj2.A2()).p();
        if (p10 == null) {
            return AbstractC6295Zb0.f46290r;
        }
        com.android.tools.r8.graph.H0 e10 = vj2.e(this.f54566a, c7215fB.j());
        com.android.tools.r8.graph.H0 h02 = e10 == null ? p10 : e10;
        if (h02 instanceof com.android.tools.r8.graph.H5) {
            com.android.tools.r8.graph.H2 a10 = a(h02.p());
            if (a10 != null && p10.d().j1()) {
                if (a(c7215fB.j().p()) == a10 && h52.d().i1()) {
                    if (h52.d().j1() && !vj2.b(0).f53893j) {
                        return AbstractC6295Zb0.f46286n;
                    }
                } else {
                    return AbstractC6295Zb0.f46286n;
                }
            }
            if (e10 != null) {
                AbstractC4892Au o10 = e10.A().o();
                o10.getClass();
                if (o10 instanceof C9945vc) {
                    if (!f54565j && !e10.d().w0()) {
                        throw new AssertionError();
                    }
                    C9945vc a11 = o10.a();
                    C7405gK i02 = vj2.i0();
                    a11.getClass();
                    int i10 = 0;
                    while (true) {
                        if (i10 >= i02.f54321f.size()) {
                            z10 = !i02.f1();
                            break;
                        }
                        if (i02.b(i10) == c10340xw0 && i10 != a11.f53153a) {
                            z10 = false;
                            break;
                        }
                        i10++;
                    }
                    if (z10) {
                        final AbstractC5308Hz v10 = this.f54566a.v();
                        C8592nU c8592nU = (C8592nU) this.f54571f.a(e10.H(), TU.a(new Supplier() {
                            @Override
                            public final Object get() {
                                C8592nU a12;
                                a12 = C8592nU.a(AbstractC5308Hz.this);
                                return a12;
                            }
                        }), v10);
                        if (!C8592nU.f50965f) {
                            if (!AbstractC8759oU.f51257e) {
                                if (c8592nU.f51260c != v10) {
                                    throw new AssertionError();
                                }
                            } else {
                                c8592nU.getClass();
                            }
                        }
                        ((Set) c8592nU.f51261d).add(h22.getType());
                        return AbstractC6295Zb0.f46273a;
                    }
                }
            }
            for (int i11 = 0; i11 < h02.C().size(); i11++) {
                if (vj2.b(C8704o7.a(!vj2.R1()) + i11) == c10340xw0 && !this.f54568c.a(h02.b(i11).a(this.f54567b), h22.getType())) {
                    return new C5719Pb0(h02.getReference());
                }
            }
            if (vj2.Q1() && vj2.f0().C2() == c10340xw0 && h02.getHolder().isInterface()) {
                return AbstractC6295Zb0.f46282j;
            }
            return AbstractC6295Zb0.f46273a;
        }
        com.android.tools.r8.graph.E0 holder = h02.getHolder();
        holder.getClass();
        if (holder instanceof com.android.tools.r8.graph.I0) {
            return AbstractC6295Zb0.f46291s;
        }
        boolean z11 = f54565j;
        if (!z11 && !h02.getHolder().f0()) {
            throw new AssertionError();
        }
        if (e10 == null) {
            return AbstractC6295Zb0.f46290r;
        }
        com.android.tools.r8.graph.A2 reference = e10.getReference();
        com.android.tools.r8.graph.E0 holder2 = e10.getHolder();
        if (holder2.getType().a(this.f54567b.f38108n2)) {
            if (!reference.a(this.f54567b.f37943R4.f36488g) && !reference.a(this.f54567b.f37943R4.f36489h)) {
                if (reference.a(this.f54567b.f37943R4.f36490i)) {
                    return a(vj2);
                }
                if (!reference.a(this.f54567b.f37943R4.f36486e) && !reference.a(this.f54567b.f37943R4.f36487f)) {
                    if (reference.a(this.f54567b.f37943R4.f36485d)) {
                        return AbstractC6295Zb0.f46273a;
                    }
                    if (reference.a(this.f54567b.f37943R4.f36491j)) {
                        return AbstractC6295Zb0.f46273a;
                    }
                    if (reference.a(this.f54567b.f37943R4.f36492k)) {
                        if (!z11 && vj2.b(0) != c10340xw0) {
                            throw new AssertionError();
                        }
                        if (this.f54566a.E().e()) {
                            com.android.tools.r8.graph.H2 a12 = this.f54568c.a(h52.p());
                            if (h52.d().j1() && a12 == h22) {
                                return AbstractC6295Zb0.f46273a;
                            }
                            if (h52.a((com.android.tools.r8.graph.H0) h22.h(h22.L0()))) {
                                if (!z11) {
                                    C5240Gu c5240Gu = this.f54568c;
                                    if (!C5240Gu.f40613d) {
                                        if (!c5240Gu.f40614a.containsKey(h22.getType())) {
                                            throw new AssertionError();
                                        }
                                    } else {
                                        c5240Gu.getClass();
                                    }
                                }
                                if (z11 || h52.getHolder() == a12) {
                                    return AbstractC6295Zb0.f46273a;
                                }
                                throw new AssertionError();
                            }
                        } else if (h52.d().j1() && h52.getHolder() == h22) {
                            if (!z11) {
                                C5240Gu c5240Gu2 = this.f54568c;
                                if (!C5240Gu.f40613d) {
                                    if (!c5240Gu2.f40614a.containsKey(h22.getType())) {
                                        throw new AssertionError();
                                    }
                                } else {
                                    c5240Gu2.getClass();
                                }
                            }
                            return AbstractC6295Zb0.f46273a;
                        }
                    }
                    return new C6238Yb0(reference);
                }
                if (!z11 && vj2.f0().C2() != c10340xw0) {
                    throw new AssertionError();
                }
                a(h22);
                return AbstractC6295Zb0.f46273a;
            }
            return a(vj2);
        }
        if (holder2.getType().a(this.f54567b.f38068i2)) {
            if (reference.a(this.f54567b.f37859F4.f38226d) && !vj2.f1()) {
                return AbstractC6295Zb0.f46273a;
            }
            if (reference.a(this.f54567b.f37859F4.f38230h)) {
                if (!z11 && vj2.f0().C2() != c10340xw0) {
                    throw new AssertionError();
                }
                a(h22);
                return AbstractC6295Zb0.f46273a;
            }
            if (reference.a(this.f54567b.f37859F4.f38227e)) {
                return AbstractC6295Zb0.f46273a;
            }
            if (reference.a(this.f54567b.f37859F4.f38225c)) {
                return a(vj2);
            }
            return new C6238Yb0(reference);
        }
        if (holder2.getType().a(this.f54567b.f38132q2)) {
            if (!reference.a(this.f54567b.f37852E4.f37354f) && !reference.a(this.f54567b.f37852E4.f37355g)) {
                if (reference.a(this.f54567b.f37852E4.f37359k)) {
                    a(h22);
                    return AbstractC6295Zb0.f46273a;
                }
                if (reference.a(this.f54567b.f37852E4.f37349a)) {
                    return a(vj2);
                }
                return new C6238Yb0(reference);
            }
            return AbstractC6295Zb0.f46273a;
        }
        if (holder2.getType().a(this.f54567b.f38052g2)) {
            if (reference.a(this.f54567b.f37887J4.f38236A)) {
                a(h22);
                return AbstractC6295Zb0.f46273a;
            }
            return new C6238Yb0(reference);
        }
        if (!holder2.getType().a(this.f54567b.f37857F2) && !holder2.getType().a(this.f54567b.f37864G2)) {
            if (holder2.getType().a(this.f54567b.f37899L2)) {
                if (reference.a(this.f54567b.f37971V4.f36820a)) {
                    return AbstractC6295Zb0.f46273a;
                }
                if (reference.a(this.f54567b.f37971V4.f36821b)) {
                    return AbstractC6295Zb0.f46273a;
                }
                return new C6238Yb0(reference);
            }
            return new C6238Yb0(reference);
        }
        if (!reference.a(this.f54567b.f38174v4.f37659k) && !reference.a(this.f54567b.f38182w4.f37659k)) {
            return new C6238Yb0(reference);
        }
        a(h22);
        return AbstractC6295Zb0.f46273a;
    }

    public final AbstractC6295Zb0 a(VJ vj2) {
        boolean z10 = f54565j;
        if (!z10 && vj2.f54321f.size() != 2) {
            throw new AssertionError();
        }
        AbstractC8999pu0 u10 = vj2.b(0).u();
        AbstractC8999pu0 u11 = vj2.u2().u();
        com.android.tools.r8.graph.H2 a10 = a(u10);
        com.android.tools.r8.graph.H2 a11 = a(u11);
        if (!z10 && a10 == null && a11 == null) {
            throw new AssertionError();
        }
        if ((u10 instanceof C6301Zd0) || (u11 instanceof C6301Zd0)) {
            return AbstractC6295Zb0.f46273a;
        }
        if (a10 == a11) {
            return AbstractC6295Zb0.f46273a;
        }
        return new C6124Wb0(vj2.B2(), u10, u11);
    }

    public static void a(final StringBuilder sb2, com.android.tools.r8.graph.M2 m22, List list) {
        sb2.append((Object) m22);
        sb2.append(" (");
        sb2.append(list.size());
        sb2.append(" reasons):");
        int i10 = C8045kA.f49509f;
        C8045kA c8045kA = new C8045kA(list instanceof LY ? ((LY) list).w().size() : 11);
        AbstractC9907vK.a(list, c8045kA);
        c8045kA.a(new ObjIntConsumer() {
            @Override
            public final void accept(Object obj, int i11) {
                C10667zu.a(StringBuilder.this, (AbstractC6295Zb0) obj, i11);
            }
        });
        sb2.append(System.lineSeparator());
    }

    public static void a(StringBuilder sb2, AbstractC6295Zb0 abstractC6295Zb0, int i10) {
        sb2.append(System.lineSeparator());
        sb2.append(" - ");
        sb2.append((Object) abstractC6295Zb0);
        sb2.append(" (");
        sb2.append(i10);
        sb2.append(")");
    }

    public static int a(Y0 y02, Object obj, Object obj2) {
        int b10 = y02.b(obj) - y02.b(obj2);
        return b10 != 0 ? b10 : System.identityHashCode(obj) - System.identityHashCode(obj2);
    }

    public static void a(StringBuilder sb2, Y0 y02, Object obj) {
        sb2.append(obj);
        sb2.append(" (");
        sb2.append(y02.b(obj));
        sb2.append(")");
        sb2.append(System.lineSeparator());
    }

    public final boolean a(com.android.tools.r8.graph.M2 m22, AbstractC6295Zb0 abstractC6295Zb0) {
        if (!this.f54573h) {
            return false;
        }
        ((List) this.f54574i.computeIfAbsent(m22, new Function() {
            @Override
            public final Object apply(Object obj) {
                List synchronizedList;
                synchronizedList = Collections.synchronizedList(new ArrayList());
                return synchronizedList;
            }
        })).add(abstractC6295Zb0);
        return true;
    }

    @Override
    public final void a(com.android.tools.r8.graph.H5 h52) {
        this.f54568c.f40616c.add(h52.getReference());
    }
}
