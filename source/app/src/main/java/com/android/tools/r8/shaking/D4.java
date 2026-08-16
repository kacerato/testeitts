package com.android.tools.r8.shaking;

import com.android.tools.r8.DiagnosticsLevel;
import com.android.tools.r8.errors.InlinableStaticFinalFieldPreconditionDiagnostic;
import com.android.tools.r8.errors.UnusedProguardKeepRuleDiagnostic;
import com.android.tools.r8.graph.AbstractC4744v2;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4585md;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4403d1;
import com.android.tools.r8.graph.InterfaceC4610o0;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.AbstractC6483ap0;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C6520b10;
import com.android.tools.r8.internal.C7119ef0;
import com.android.tools.r8.internal.C7541h80;
import com.android.tools.r8.internal.C8239lK0;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.InterfaceC8568nI;
import com.android.tools.r8.internal.M70;
import com.android.tools.r8.internal.QC;
import com.android.tools.r8.internal.W60;
import com.android.tools.r8.internal.X70;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiPredicate;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;

public class D4 extends E4 {

    public static final boolean f56394n = true;

    public final AbstractC7552hC f56395e;

    public final Set f56396f;

    public final Set f56397g;

    public final Set f56398h;

    public final W60 f56399i;

    public final Map f56400j;

    public final Set f56401k;

    public final Set f56402l;

    public final com.android.tools.r8.internal.W f56403m;

    /* JADX WARN: Multi-variable type inference failed */
    public D4(C c10, AbstractC7552hC abstractC7552hC, Set set, Set set2, Set set3, W60 w60, Map map, Map map2, Set set4, Set set5, ArrayList arrayList, C7541h80 c7541h80, InterfaceC8568nI interfaceC8568nI) {
        super(c10, map2, arrayList, c7541h80);
        this.f56395e = abstractC7552hC;
        this.f56396f = set;
        this.f56397g = set2;
        this.f56398h = set3;
        this.f56399i = w60;
        this.f56400j = map;
        this.f56401k = Collections.unmodifiableSet(set4);
        this.f56402l = Collections.unmodifiableSet(set5);
        this.f56403m = (com.android.tools.r8.internal.W) interfaceC8568nI;
    }

    public static boolean a(AbstractC11415s1 abstractC11415s1) {
        return !abstractC11415s1.f57790a.g();
    }

    public static boolean b(com.android.tools.r8.graph.J2 j22, AbstractC11415s1 abstractC11415s1) {
        return !abstractC11415s1.f57790a.g();
    }

    public final void c(final C4798y c4798y) {
        this.f56422a.b(C11416s2.f57793b).a(new BiPredicate() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                return D4.c((com.android.tools.r8.graph.J2) obj, (AbstractC11415s1) obj2);
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                D4.this.b(c4798y, (com.android.tools.r8.graph.J2) obj, (AbstractC11415s1) obj2);
            }
        });
    }

    public final void d(final C4798y c4798y) {
        this.f56422a.b(C11416s2.f57793b).a(new BiPredicate() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                return D4.d((com.android.tools.r8.graph.J2) obj, (AbstractC11415s1) obj2);
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                D4.c(C4798y.this, (com.android.tools.r8.graph.J2) obj, (AbstractC11415s1) obj2);
            }
        });
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("RootSet");
        sb2.append("\nreasonAsked: " + this.f56395e.size());
        sb2.append("\nidentifierNameStrings: " + this.f56401k.size());
        sb2.append("\nifRules: " + this.f56402l.size());
        return sb2.toString();
    }

    public void a(com.android.tools.r8.graph.D5 d52) {
        C c10 = this.f56422a;
        c10.a(C11144c0.f57206a).a(d52.getReference()).g().a(d52.e0(), new Consumer() {
            @Override
            public final void accept(Object obj) {
                ((AbstractC11415s1) obj).a().s();
            }
        });
    }

    public final void b(C4798y c4798y, com.android.tools.r8.graph.J2 j22, AbstractC11415s1 abstractC11415s1) {
        com.android.tools.r8.graph.A2 n02 = j22.n0();
        boolean z10 = f56394n;
        if (!z10 && !((C11245i) c4798y.f()).f57397l.contains(n02)) {
            throw new AssertionError((Object) ("Expected kept method `" + j22.j0() + "` to be targeted"));
        }
        c4798y.getClass();
        if (c4798y.g(n02.f38297f).b(n02).d1() || !a(c4798y, n02.s0()) || z10 || ((C11245i) c4798y.f()).f57403r.contains(n02)) {
            return;
        }
        throw new AssertionError((Object) ("Expected non-abstract kept method `" + j22.j0() + "` to be live"));
    }

    public static boolean c(com.android.tools.r8.graph.J2 j22, AbstractC11415s1 abstractC11415s1) {
        return j22.r0() && !abstractC11415s1.f57790a.g();
    }

    public static boolean d(com.android.tools.r8.graph.J2 j22, AbstractC11415s1 abstractC11415s1) {
        j22.getClass();
        return (j22 instanceof com.android.tools.r8.graph.M2) && !abstractC11415s1.f57790a.g();
    }

    public static void c(C4798y c4798y, com.android.tools.r8.graph.J2 j22, AbstractC11415s1 abstractC11415s1) {
        com.android.tools.r8.graph.M2 o02 = j22.o0();
        if (f56394n) {
            return;
        }
        C11245i c11245i = (C11245i) c4798y.f();
        com.android.tools.r8.graph.E0 g10 = c11245i.g(o02);
        if (g10 != null && g10.e0()) {
            if (c11245i.f57396k.contains(g10.d0().f36245e)) {
                return;
            }
        }
        throw new AssertionError((Object) ("Expected kept type `" + o02.j0() + "` to be live"));
    }

    public final void a(final C4798y c4798y) {
        this.f56422a.b(C11416s2.f57793b).a(new BiPredicate() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                return D4.a((com.android.tools.r8.graph.J2) obj, (AbstractC11415s1) obj2);
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                D4.this.a(c4798y, (com.android.tools.r8.graph.J2) obj, (AbstractC11415s1) obj2);
            }
        });
    }

    public static void a(C8570nJ c8570nJ) {
        List<AbstractC11468v3> p10;
        if (!c8570nJ.W() || c8570nJ.f50652X0 || (p10 = c8570nJ.B().p()) == null) {
            return;
        }
        for (AbstractC11468v3 abstractC11468v3 : p10) {
            abstractC11468v3.getClass();
            if (abstractC11468v3 instanceof G3) {
                G3 p11 = abstractC11468v3.p();
                Set o10 = p11.f56498v.o();
                p11.f56498v = null;
                if (!o10.isEmpty()) {
                    ArrayList arrayList = new ArrayList(o10);
                    arrayList.sort(new C8239lK0());
                    c8570nJ.f50691j.warning(new InlinableStaticFinalFieldPreconditionDiagnostic(p11, arrayList));
                }
            }
            if (abstractC11468v3.f57913o) {
                continue;
            } else {
                C5094Ef0 c5094Ef0 = c8570nJ.f50691j;
                UnusedProguardKeepRuleDiagnostic unusedProguardKeepRuleDiagnostic = new UnusedProguardKeepRuleDiagnostic(abstractC11468v3);
                synchronized (c5094Ef0) {
                    c5094Ef0.a(DiagnosticsLevel.INFO, unusedProguardKeepRuleDiagnostic);
                }
            }
        }
    }

    public final void b(C4798y c4798y) {
        final C4514j c4514j = (C4514j) c4798y.f();
        final IdentityHashMap identityHashMap = new IdentityHashMap();
        this.f56422a.b(C11416s2.f57793b).a(new BiPredicate() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                return D4.b((com.android.tools.r8.graph.J2) obj, (AbstractC11415s1) obj2);
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                D4.a(C4514j.this, identityHashMap, (com.android.tools.r8.graph.J2) obj, (AbstractC11415s1) obj2);
            }
        });
        for (com.android.tools.r8.graph.H2 h22 : ((C4514j) c4798y.f()).d()) {
            com.android.tools.r8.graph.M2 m22 = h22.f36245e;
            int i10 = QC.f43505c;
            Set set = null;
            Set set2 = null;
            for (AbstractC4744v2 abstractC4744v2 : (Set) identityHashMap.getOrDefault(m22, C7119ef0.f47742j)) {
                if (abstractC4744v2.p0()) {
                    C4554l1 l02 = abstractC4744v2.l0();
                    if (set2 == null) {
                        set2 = (Set) AbstractC6483ap0.a(h22.I0()).map(new C4585md()).collect(Collectors.toSet());
                    }
                    if (!f56394n && !set2.contains(l02)) {
                        throw new AssertionError((Object) ("Expected field `" + l02.j0() + "` from the root set to be present"));
                    }
                } else {
                    com.android.tools.r8.graph.A2 n02 = abstractC4744v2.n0();
                    if (set == null) {
                        set = (Set) AbstractC6483ap0.a(h22.z1()).map(new com.android.tools.r8.graph.I9()).collect(Collectors.toSet());
                    }
                    if (!f56394n && !set.contains(n02)) {
                        throw new AssertionError((Object) ("Expected method `" + n02.j0() + "` from the root set to be present"));
                    }
                }
            }
            identityHashMap.remove(h22.f36245e);
        }
        if (identityHashMap.isEmpty()) {
            return;
        }
        com.android.tools.r8.graph.M2 m23 = (com.android.tools.r8.graph.M2) identityHashMap.o().iterator().next();
        com.android.tools.r8.graph.E0 g10 = c4798y.g(m23);
        boolean z10 = f56394n;
        if (!z10 && g10 != null && !g10.e0()) {
            throw new AssertionError((Object) ("Unexpected library type in root set: `" + ((Object) m23) + "`"));
        }
        if (z10 || identityHashMap.isEmpty()) {
            return;
        }
        throw new AssertionError((Object) ("Expected type `" + m23.j0() + "` to be present"));
    }

    public final void a(C11535z4 c11535z4) {
        c11535z4.f56423b.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                D4.this.a((com.android.tools.r8.graph.M2) obj, (Set) obj2);
            }
        });
        this.f56424c.addAll(c11535z4.f56424c);
    }

    public static Set a(com.android.tools.r8.graph.M2 m22) {
        return new HashSet();
    }

    public final void a(com.android.tools.r8.graph.M2 m22, Set set) {
        ((Set) this.f56423b.computeIfAbsent(m22, new Function() {
            @Override
            public final Object apply(Object obj) {
                return D4.a((com.android.tools.r8.graph.M2) obj);
            }
        })).addAll(set);
    }

    public final boolean a(com.android.tools.r8.graph.D5 d52, C8570nJ c8570nJ) {
        if (c8570nJ.W()) {
            return this.f56422a.a(C11416s2.f57793b).a(d52.getReference(), new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return D4.a((AbstractC11415s1) obj);
                }
            });
        }
        return true;
    }

    public static void a(Set set, final InterfaceC4403d1 interfaceC4403d1, final N n10) {
        set.removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return D4.a(InterfaceC4403d1.this, n10, (com.android.tools.r8.graph.J2) obj);
            }
        });
    }

    public static boolean a(final InterfaceC4403d1 interfaceC4403d1, N n10, com.android.tools.r8.graph.J2 j22) {
        Objects.requireNonNull(interfaceC4403d1);
        InterfaceC4610o0 interfaceC4610o0 = (InterfaceC4610o0) j22.a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return InterfaceC4403d1.this.g((com.android.tools.r8.graph.M2) obj);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return D4.a(InterfaceC4403d1.this, (C4554l1) obj);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return D4.a(InterfaceC4403d1.this, (com.android.tools.r8.graph.A2) obj);
            }
        });
        return interfaceC4610o0 == null || !n10.a(interfaceC4610o0);
    }

    public static InterfaceC4610o0 a(InterfaceC4403d1 interfaceC4403d1, C4554l1 c4554l1) {
        com.android.tools.r8.graph.E0 g10 = interfaceC4403d1.g(c4554l1.s0());
        if (g10 != null) {
            return g10.a(c4554l1);
        }
        return null;
    }

    public static InterfaceC4610o0 a(InterfaceC4403d1 interfaceC4403d1, com.android.tools.r8.graph.A2 a22) {
        com.android.tools.r8.graph.E0 g10 = interfaceC4403d1.g(a22.s0());
        if (g10 != null) {
            return g10.a(a22);
        }
        return null;
    }

    public final void a(final com.android.tools.r8.graph.O5 o52, C8659ns0 c8659ns0) {
        c8659ns0.b("Prune RootSet");
        this.f56422a.a(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return D4.a(com.android.tools.r8.graph.O5.this, (C11416s2) obj);
            }
        });
        c8659ns0.d();
    }

    public static boolean a(com.android.tools.r8.graph.O5 o52, C11416s2 c11416s2) {
        c11416s2.a(o52);
        return c11416s2.f57795a.isEmpty();
    }

    /* JADX WARN: Type inference failed for: r4v1, types: [com.android.tools.r8.internal.W, com.android.tools.r8.internal.nI] */
    public D4 a(AbstractC5308Hz abstractC5308Hz, C8659ns0 c8659ns0) {
        D4 d42;
        c8659ns0.b("Rewrite RootSet");
        if (abstractC5308Hz.j()) {
            d42 = this;
        } else {
            this.f56402l.forEach(new C11217g5());
            d42 = new D4(this.f56422a.a(abstractC5308Hz, c8659ns0), this.f56395e, this.f56396f, this.f56397g, this.f56398h, this.f56399i, this.f56400j, this.f56423b, this.f56401k, this.f56402l, this.f56424c, this.f56425d, this.f56403m);
        }
        c8659ns0.d();
        return d42;
    }

    public static boolean a(com.android.tools.r8.graph.J2 j22, AbstractC11415s1 abstractC11415s1) {
        return j22.p0() && !abstractC11415s1.f57790a.g();
    }

    public final void a(C4798y c4798y, com.android.tools.r8.graph.J2 j22, AbstractC11415s1 abstractC11415s1) {
        C4554l1 l02 = j22.l0();
        c4798y.getClass();
        com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(c4798y.g(l02.f38297f));
        com.android.tools.r8.graph.F5 c10 = a10 != null ? a10.c(l02) : null;
        if (c10 != null) {
            if (c10.getAccessFlags().n() || a(c4798y, c10.p())) {
                boolean z10 = f56394n;
                if (!z10 && !((C11245i) c4798y.f()).a((com.android.tools.r8.graph.F0) c10)) {
                    throw new AssertionError((Object) ("Expected kept field `" + l02.j0() + "` to be read"));
                }
                if (z10 || ((C11245i) c4798y.f()).b(c10)) {
                    return;
                }
                throw new AssertionError((Object) ("Expected kept field `" + l02.j0() + "` to be written"));
            }
        }
    }

    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(c4798y.g(m22));
        if (a10 == null) {
            return false;
        }
        if (a(a10, c4798y.E())) {
            return true;
        }
        com.android.tools.r8.graph.M2 m23 = a10.f36247g;
        if (m23 != null) {
            return a(c4798y, m23);
        }
        return false;
    }

    public static void a(C4514j c4514j, Map map, com.android.tools.r8.graph.J2 j22, AbstractC11415s1 abstractC11415s1) {
        j22.getClass();
        if (j22 instanceof com.android.tools.r8.graph.M2) {
            com.android.tools.r8.graph.M2 o02 = j22.o0();
            if (!f56394n && c4514j.i()) {
                C11245i m10 = c4514j.m();
                if (!C11245i.f57385J) {
                    m10.c();
                }
                if (!m10.f57407v.a(o02, m10.j(), m10)) {
                    throw new AssertionError((Object) ("Expected reference `" + o02.j0() + "` to be pinned"));
                }
            }
            map.computeIfAbsent(o02, new Function() {
                @Override
                public final Object apply(Object obj) {
                    Set c10;
                    c10 = AbstractC5513Ll0.c();
                    return c10;
                }
            });
            return;
        }
        AbstractC4744v2 m02 = j22.m0();
        if (!f56394n && c4514j.i()) {
            C11245i m11 = c4514j.m();
            if (!C11245i.f57385J) {
                m11.c();
            }
            if (!m11.f57407v.a(m02, m11.j(), m11)) {
                throw new AssertionError((Object) ("Expected reference `" + m02.j0() + "` to be pinned"));
            }
        }
        ((Set) map.computeIfAbsent(m02.f38297f, new Function() {
            @Override
            public final Object apply(Object obj) {
                Set c10;
                c10 = AbstractC5513Ll0.c();
                return c10;
            }
        })).add(m02);
    }

    public static I4 a(C4798y<? extends C4514j> c4798y, M70 m70, com.android.tools.r8.graph.Y5 y52, Iterable<? extends AbstractC11468v3> iterable) {
        InterfaceC11503x4 interfaceC11503x4 = C11486w4.f57941c;
        m70.getClass();
        if (!(m70 instanceof C6520b10)) {
            interfaceC11503x4 = new X70(m70.a());
        }
        return new I4(c4798y, interfaceC11503x4, y52, iterable);
    }
}
