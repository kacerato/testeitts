package com.android.tools.r8.shaking;

import com.android.tools.r8.diagnostic.DefinitionContext;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.AbstractC7160et;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.AbstractC9129qi;
import com.android.tools.r8.internal.C4875Al0;
import com.android.tools.r8.internal.C5978Tm0;
import com.android.tools.r8.internal.C9796ui;
import com.android.tools.r8.internal.CB;
import com.android.tools.r8.internal.IC;
import com.android.tools.r8.internal.QC;
import com.android.tools.r8.internal.WB;
import com.android.tools.r8.references.ClassReference;
import java.util.Arrays;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public final class C11433t2 {

    public static final boolean f57840d = true;

    public final Set f57841a;

    public final IdentityHashMap f57842b = new IdentityHashMap();

    public final Set f57843c = AbstractC5513Ll0.c();

    public C11433t2(Set set) {
        this.f57841a = set;
    }

    public static void a(IC ic2, C4798y c4798y, com.android.tools.r8.graph.M2 m22, C9796ui c9796ui) {
        com.android.tools.r8.graph.M2 s02 = c9796ui.f52925b.s0();
        ic2.a(s02);
        com.android.tools.r8.graph.M2 c10 = c4798y.E().x().b().c(s02);
        if (c10 != null) {
            ic2.a(c10);
        }
        com.android.tools.r8.graph.M2 s03 = c9796ui.f52924a.s0();
        ic2.a(s03);
        com.android.tools.r8.graph.M2 c11 = c4798y.E().x().b().c(s03);
        if (c11 != null) {
            ic2.a(c11);
        }
    }

    public static QC b(final C4798y c4798y) {
        C4724u1 b10 = c4798y.b();
        int i10 = QC.f43505c;
        final IC ic2 = new IC();
        com.android.tools.r8.graph.M2[] m2Arr = {b10.f38191x5, b10.f37837C5, b10.f37916N5, b10.f37930P5, b10.f37923O5, b10.f38167u5, b10.f38072i6};
        for (int i11 = 0; i11 < 7; i11++) {
            ic2.a(m2Arr[i11]);
        }
        c4798y.E().x().a().h().forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C11433t2.a(IC.this, c4798y, (com.android.tools.r8.graph.M2) obj, (C9796ui) obj2);
            }
        });
        AbstractC9129qi.a(b10, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11433t2.a(IC.this, (com.android.tools.r8.graph.A2) obj);
            }
        });
        return ic2.a();
    }

    public static Predicate c(C4798y c4798y) {
        final QC b10 = b(c4798y);
        final Predicate d10 = d(c4798y);
        final AbstractC7160et abstractC7160et = c4798y.f38413f;
        return new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C11433t2.a(Set.this, d10, abstractC7160et, (com.android.tools.r8.graph.M2) obj);
            }
        };
    }

    public static Predicate d(C4798y c4798y) {
        final com.android.tools.r8.graph.L2 b10 = c4798y.b().b("L$-vivified-$/");
        return new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C11433t2.a(com.android.tools.r8.graph.L2.this, (com.android.tools.r8.graph.M2) obj);
            }
        };
    }

    public static void a(com.android.tools.r8.diagnostic.internal.l lVar, com.android.tools.r8.graph.M2 m22, Set set) {
        int i10 = AbstractC7552hC.f48487c;
        Object[] objArr = new Object[4];
        ClassReference s02 = m22.s0();
        Iterator it = set.iterator();
        int i11 = 0;
        while (it.hasNext()) {
            DefinitionContext a10 = com.android.tools.r8.diagnostic.internal.d.a((com.android.tools.r8.graph.E5) it.next());
            a10.getClass();
            int i12 = i11 + 1;
            if (objArr.length < i12) {
                objArr = Arrays.copyOf(objArr, WB.a(objArr.length, i12));
            }
            objArr[i11] = a10;
            i11 = i12;
        }
        lVar.f36008a.a(new com.android.tools.r8.diagnostic.internal.h(s02, AbstractC7552hC.b(i11, objArr)));
    }

    public final void a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.E5 e52) {
        boolean z10 = f57840d;
        if (!z10 && e52 == null) {
            throw new AssertionError();
        }
        if (!z10 && e52.getContext().S() == m22) {
            throw new AssertionError();
        }
        if (this.f57841a.contains(m22)) {
            return;
        }
        ((Set) this.f57842b.computeIfAbsent(m22, new Function() {
            @Override
            public final Object apply(Object obj) {
                Set a10;
                a10 = CB.a();
                return a10;
            }
        })).add(e52);
    }

    public final C11450u2 a(C4798y c4798y) {
        if (!f57840d && !a(c4798y, new com.android.tools.r8.synthesis.G() {
            @Override
            public final Set a(com.android.tools.r8.graph.H2 h22) {
                return C11433t2.a(h22);
            }
        }).isEmpty()) {
            throw new AssertionError();
        }
        return new C11450u2(C4875Al0.a(this.f57841a, this.f57842b.o(), this.f57843c));
    }

    public static Set a(com.android.tools.r8.graph.H2 h22) {
        com.android.tools.r8.graph.M2 type = h22.getType();
        int i10 = QC.f43505c;
        return new C5978Tm0(type);
    }

    public static com.android.tools.r8.diagnostic.internal.m a(IdentityHashMap identityHashMap) {
        boolean z10 = com.android.tools.r8.diagnostic.internal.m.f36009c;
        final com.android.tools.r8.diagnostic.internal.l lVar = new com.android.tools.r8.diagnostic.internal.l();
        identityHashMap.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C11433t2.a(com.android.tools.r8.diagnostic.internal.l.this, (com.android.tools.r8.graph.M2) obj, (Set) obj2);
            }
        });
        return new com.android.tools.r8.diagnostic.internal.m(lVar.f36008a.a());
    }

    public final IdentityHashMap a(final C4798y c4798y, com.android.tools.r8.synthesis.G g10) {
        for (Map.Entry entry : this.f57842b.entrySet()) {
            entry.setValue(a(c4798y, (Set) entry.getValue(), g10));
        }
        final Predicate c10 = c(c4798y);
        final IdentityHashMap identityHashMap = new IdentityHashMap(this.f57842b.size());
        this.f57842b.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C11433t2.a(Predicate.this, c4798y, identityHashMap, (com.android.tools.r8.graph.M2) obj, (Set) obj2);
            }
        });
        return identityHashMap;
    }

    public static Set a(C4798y c4798y, Set set, com.android.tools.r8.synthesis.G g10) {
        if (set.isEmpty()) {
            return set;
        }
        CB a10 = CB.a();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.E5 e52 = (com.android.tools.r8.graph.E5) it.next();
            if (!e52.B()) {
                a10.add(e52);
            } else {
                com.android.tools.r8.graph.H2 a11 = e52.getContext().g().a();
                com.android.tools.r8.synthesis.J g11 = c4798y.f38408a.g();
                g11.getClass();
                if (!g11.g(a11.f36245e)) {
                    a10.add(e52);
                } else {
                    com.android.tools.r8.synthesis.J g12 = c4798y.f38408a.g();
                    g12.getClass();
                    if (!com.android.tools.r8.synthesis.J.f58083g && !g12.g(a11.f36245e)) {
                        throw new AssertionError();
                    }
                    Set<com.android.tools.r8.graph.J2> a12 = g10.a(a11);
                    boolean z10 = f57840d;
                    if (!z10 && a12 == null) {
                        throw new AssertionError();
                    }
                    if (!z10 && a12.isEmpty()) {
                        throw new AssertionError();
                    }
                    for (com.android.tools.r8.graph.J2 j22 : a12) {
                        if (j22.r0()) {
                            com.android.tools.r8.graph.H2 d02 = c4798y.g(j22.S()).d0();
                            com.android.tools.r8.graph.H5 e10 = d02.e(j22.n0());
                            if (e10 != null) {
                                a10.add(e10);
                            } else {
                                if (!f57840d && !d02.isInterface()) {
                                    throw new AssertionError();
                                }
                                a10.add(d02);
                            }
                        } else if (j22 instanceof com.android.tools.r8.graph.M2) {
                            a10.add(c4798y.g(j22.o0()).d0());
                        } else if (!f57840d) {
                            throw new AssertionError((Object) ("Unexpected synthesizing context: " + j22.j0()));
                        }
                    }
                }
            }
        }
        return a10;
    }

    public static void a(Predicate predicate, final C4798y c4798y, Map map, com.android.tools.r8.graph.M2 m22, Set set) {
        if (predicate.test(m22)) {
            return;
        }
        set.removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C11433t2.a(C4798y.this, (com.android.tools.r8.graph.E5) obj);
            }
        });
        if (set.isEmpty()) {
            return;
        }
        map.put(m22, set);
    }

    public static boolean a(Set set, Predicate predicate, AbstractC7160et abstractC7160et, com.android.tools.r8.graph.M2 m22) {
        return set.contains(m22) || predicate.test(m22) || abstractC7160et.a(m22);
    }

    public static void a(final IC ic2, com.android.tools.r8.graph.A2 a22) {
        Iterable<com.android.tools.r8.graph.M2> u02 = a22.u0();
        Objects.requireNonNull(ic2);
        u02.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                IC.this.a((com.android.tools.r8.graph.M2) obj);
            }
        });
    }

    public static boolean a(com.android.tools.r8.graph.L2 l22, com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.graph.L2 v02 = m22.v0();
        v02.getClass();
        return v02.b(l22.f36562f);
    }

    public static boolean a(C4798y c4798y, com.android.tools.r8.graph.E5 e52) {
        return c4798y.f38413f.a(e52.getContext().S());
    }
}
