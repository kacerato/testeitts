package com.android.tools.r8.shaking;

import com.android.tools.r8.AbstractC4291c;
import com.android.tools.r8.ResourceShrinker;
import com.android.tools.r8.graph.AbstractC4365b1;
import com.android.tools.r8.graph.AbstractC4479h1;
import com.android.tools.r8.graph.C4462g3;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4666r0;
import com.android.tools.r8.graph.C4723u0;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4725u2;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.EnumC4629p0;
import com.android.tools.r8.graph.InterfaceC4610o0;
import com.android.tools.r8.internal.AbstractC10122wf0;
import com.android.tools.r8.internal.AbstractC10330xt;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.AbstractC6333Zs0;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C10325xr0;
import com.android.tools.r8.internal.C10404yI;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C5658Oa0;
import com.android.tools.r8.internal.C5714Oz0;
import com.android.tools.r8.internal.C5862Rm0;
import com.android.tools.r8.internal.C6162Ws0;
import com.android.tools.r8.internal.C6276Ys0;
import com.android.tools.r8.internal.C6512az;
import com.android.tools.r8.internal.C6678bz;
import com.android.tools.r8.internal.C6845cz;
import com.android.tools.r8.internal.C6901dI;
import com.android.tools.r8.internal.C7064eG0;
import com.android.tools.r8.internal.C7333fv;
import com.android.tools.r8.internal.C7374g80;
import com.android.tools.r8.internal.C7520h10;
import com.android.tools.r8.internal.C7541h80;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8674nx0;
import com.android.tools.r8.internal.C8696o40;
import com.android.tools.r8.internal.C8942pb0;
import com.android.tools.r8.internal.C9420sR;
import com.android.tools.r8.internal.C9933vX;
import com.android.tools.r8.internal.CT;
import com.android.tools.r8.internal.E40;
import com.android.tools.r8.internal.EnumC6871d70;
import com.android.tools.r8.internal.InterfaceC5930Sr0;
import com.android.tools.r8.internal.InterfaceC6160Wr0;
import com.android.tools.r8.internal.InterfaceC6522b2;
import com.android.tools.r8.internal.W60;
import com.android.tools.r8.internal.WY;
import com.android.tools.r8.utils.StringDiagnostic;
import java.io.PrintStream;
import java.lang.constant.ConstantDescs;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.stream.Stream;
import org.openjdk.tools.doclint.DocLint;

public class I4 {

    public static final boolean f56588E = true;

    public final I3 f56589A;

    public final C11213g1 f56590B;

    public final C11213g1 f56591C;

    public final C11213g1 f56592D;

    public final C4798y f56593a;

    public C11278k f56594b;

    public final InterfaceC11503x4 f56595c;

    public final com.android.tools.r8.graph.Y5 f56596d;

    public final C4462g3 f56597e;

    public final Iterable f56598f;

    public final C8570nJ f56610r;

    public final C10404yI f56617y;

    public final A f56599g = new A();

    public final LinkedHashMap f56600h = new LinkedHashMap();

    public final Set f56601i = AbstractC5513Ll0.c();

    public final Set f56602j = AbstractC5513Ll0.c();

    public final Set f56603k = AbstractC5513Ll0.c();

    public final W60 f56604l = new W60();

    public final IdentityHashMap f56605m = new IdentityHashMap();

    public final IdentityHashMap f56606n = new IdentityHashMap();

    public final Set f56607o = AbstractC5513Ll0.c();

    public final ConcurrentHashMap f56608p = new ConcurrentHashMap();

    public final ConcurrentLinkedQueue f56609q = new ConcurrentLinkedQueue();

    public final C6901dI f56611s = new C6901dI(16);

    public final D f56612t = new D();

    public final Set f56613u = AbstractC5513Ll0.c();

    public final LinkedHashMap f56614v = new LinkedHashMap();

    public final Set f56615w = AbstractC5513Ll0.c();

    public final C8696o40 f56616x = C8696o40.f51162b;

    public final C7541h80 f56618z = C7541h80.k();

    public I4(C4798y c4798y, InterfaceC11503x4 interfaceC11503x4, com.android.tools.r8.graph.Y5 y52, Iterable iterable) {
        this.f56593a = c4798y;
        this.f56595c = interfaceC11503x4;
        this.f56596d = y52;
        this.f56597e = ((C4514j) c4798y.f()).a().a();
        this.f56598f = iterable;
        C8570nJ E10 = c4798y.E();
        this.f56610r = E10;
        this.f56617y = E10.Q() ? new C10404yI(c4798y) : null;
        I3 f10 = E10.B() != null ? E10.B().f() : new I3().a();
        this.f56589A = f10;
        boolean z10 = f10.f56579k;
        boolean z11 = f10.f56580l;
        this.f56590B = (z10 && z11) ? C11213g1.f57333e : z10 ? C11213g1.f57331c : z11 ? C11213g1.f57332d : C11213g1.f57330b;
        boolean z12 = f10.f56583o;
        boolean z13 = f10.f56584p;
        this.f56591C = (z12 && z13) ? C11213g1.f57333e : z12 ? C11213g1.f57331c : z13 ? C11213g1.f57332d : C11213g1.f57330b;
        boolean z14 = f10.f56581m;
        boolean z15 = f10.f56582n;
        this.f56592D = (z14 && z15) ? C11213g1.f57333e : z14 ? C11213g1.f57331c : z15 ? C11213g1.f57332d : C11213g1.f57330b;
    }

    public static com.android.tools.r8.graph.J2 a(com.android.tools.r8.graph.J2 j22) {
        return j22;
    }

    public static void b(AbstractC11194f abstractC11194f) {
    }

    public final void c(com.android.tools.r8.graph.E0 e02, final List list, final AbstractC11468v3 abstractC11468v3, final H3 h32) {
        com.android.tools.r8.graph.E0 g10;
        HashSet hashSet = new HashSet();
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.addAll(this.f56596d.b(e02.f36245e));
        while (!arrayDeque.isEmpty()) {
            com.android.tools.r8.graph.M2 m22 = (com.android.tools.r8.graph.M2) arrayDeque.poll();
            if (hashSet.add(m22) && (g10 = this.f56593a.g(m22)) != null) {
                final Map map = null;
                g10.b(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        I4.this.b(map, list, abstractC11468v3, h32, (com.android.tools.r8.graph.H0) obj);
                    }
                }, new C5714Oz0());
                arrayDeque.addAll(this.f56596d.b(g10.f36245e));
            }
        }
    }

    public void a(AbstractC11194f abstractC11194f) {
    }

    public final I4 b(ExecutorService executorService) {
        if (this.f56610r.f50596E1 == null) {
            return this;
        }
        F4 f42 = new F4(this, this.f56593a);
        C8942pb0 b10 = f42.f58483a.E().f50596E1.b();
        boolean z10 = C8942pb0.f51565g;
        if (!z10 && b10.f51568d == null) {
            throw new AssertionError();
        }
        f42.a(b10.f51568d.values(), executorService);
        f42.a();
        C4798y c4798y = this.f56593a;
        G4 g42 = new G4(this, c4798y);
        C8942pb0 b11 = c4798y.E().f50596E1.b();
        if (!z10 && b11.f51568d == null) {
            throw new AssertionError();
        }
        ResourceShrinker.runForTesting(b11.f51568d.values(), g42);
        return this;
    }

    public static boolean a(AbstractC4365b1 abstractC4365b1) {
        return true;
    }

    public final void a(com.android.tools.r8.graph.D5 d52, final K3 k32, com.android.tools.r8.graph.H2 h22, H3 h32) {
        L3 l32;
        if (h32 != null) {
            G3 g32 = h32.f56523a;
            l32 = new G3(g32.i(), g32.f57278b, g32.j(), g32.b(), g32.a(), g32.h(), g32.f57283g, g32.d(), g32.c(), g32.f57286j, g32.e(), g32.f(), g32.g(), g32.f56497u, h32.f56524b);
        } else {
            l32 = k32;
        }
        a(d52, h22, h32, k32.C(), new InterfaceC6522b2() {
            @Override
            public final void a() {
                K3.this.y();
            }
        }, l32);
    }

    public static boolean b(AbstractC4365b1 abstractC4365b1) {
        return !abstractC4365b1.x0();
    }

    public final void b(final com.android.tools.r8.graph.E0 e02, final List list, final AbstractC11468v3 abstractC11468v3, final Map map, boolean z10, final H3 h32) {
        com.android.tools.r8.graph.E0 g10;
        final HashSet hashSet = this.f56610r.f50674d1 ? null : new HashSet();
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.add(e02);
        while (!arrayDeque.isEmpty()) {
            final com.android.tools.r8.graph.E0 e03 = (com.android.tools.r8.graph.E0) arrayDeque.pop();
            if (!z10 && e03.v1()) {
                break;
            }
            e03.b(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    I4.this.a(map, list, hashSet, abstractC11468v3, h32, (com.android.tools.r8.graph.H0) obj);
                }
            }, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return I4.this.a(e03, e02, (C4516j1) obj);
                }
            });
            com.android.tools.r8.graph.M2 m22 = e03.f36247g;
            if (m22 != null && (g10 = this.f56597e.g(m22)) != null) {
                arrayDeque.add(g10);
            }
        }
        if (e02.e0()) {
            abstractC11468v3.getClass();
            if (!(abstractC11468v3 instanceof K3) || abstractC11468v3.q().C().f56726e || (this instanceof C4)) {
                return;
            }
            H4 h42 = new H4(this, e02.d0(), list, abstractC11468v3, map, h32);
            h42.a(h42.f56527a.f36245e);
        }
    }

    public static boolean a(List list, com.android.tools.r8.graph.G0 g02, Consumer consumer) {
        AbstractC11194f a10 = a(list, g02, g02.f36318c.k0(), g02.J() ? EnumC4629p0.f37566b : EnumC4629p0.f37567c);
        if (a10 != null) {
            consumer.accept(a10);
            return true;
        }
        if (g02.I()) {
            com.android.tools.r8.graph.H0 b10 = g02.b();
            for (int i10 = 0; i10 < b10.d().U0().size(); i10++) {
                AbstractC11194f a11 = a(list, b10, b10.d().U0().j(i10), EnumC4629p0.f37569e);
                if (a11 != null) {
                    consumer.accept(a11);
                    return true;
                }
            }
        }
        return false;
    }

    public final I4 a(C11278k c11278k) {
        this.f56594b = c11278k;
        return this;
    }

    public final void b(Map map, Collection collection, AbstractC11468v3 abstractC11468v3, H3 h32, com.android.tools.r8.graph.H0 h02) {
        a(h02, collection, (Set) null, abstractC11468v3, a(h02.d(), map), h32);
    }

    public final void a(com.android.tools.r8.graph.E0 e02, AbstractC11468v3 abstractC11468v3, H3 h32) {
        AbstractC11194f a10;
        C4798y c4798y = this.f56593a;
        if (e02.e0()) {
            com.android.tools.r8.synthesis.J g10 = c4798y.f38408a.g();
            com.android.tools.r8.graph.H2 d02 = e02.d0();
            g10.getClass();
            if (g10.g(d02.f36245e)) {
                return;
            }
        }
        if (abstractC11468v3.d().a(e02) == abstractC11468v3.f57283g || !abstractC11468v3.a().a(e02.f36246f) || !abstractC11468v3.h().b(e02.f36246f) || (a10 = a(abstractC11468v3.b(), e02, e02.k0(), EnumC4629p0.f37568d)) == null) {
            return;
        }
        a(a10);
        if ((!abstractC11468v3.k() || b(e02, abstractC11468v3)) && abstractC11468v3.c().a(e02.f36245e)) {
            List g11 = abstractC11468v3.g();
            if (abstractC11468v3 instanceof K3) {
                if (e02.v1()) {
                    return;
                }
                int i10 = AbstractC11519y4.f57994a[((K3) abstractC11468v3).D().ordinal()];
                if (i10 != 1) {
                    if (i10 == 2) {
                        for (R3 r32 : g11) {
                            if (a(r32, e02.C0()) == null && !b(r32, e02.B0())) {
                                return;
                            }
                        }
                    } else if (i10 != 3) {
                        if (i10 == 4) {
                            throw new C5417Jv0("-if rule will be evaluated separately, not here.");
                        }
                        if (i10 == 5) {
                            throw new C5417Jv0("keepspec rules are evaluated separately, not here.");
                        }
                        return;
                    }
                    a(e02, abstractC11468v3, (R3) null, (com.android.tools.r8.graph.H2) null, h32);
                    HashMap hashMap = new HashMap();
                    if (h32 != null) {
                        hashMap.put(new Predicate() {
                            @Override
                            public final boolean test(Object obj) {
                                return ((AbstractC4365b1) obj).x0();
                            }
                        }, null);
                        hashMap.put(new Predicate() {
                            @Override
                            public final boolean test(Object obj) {
                                return I4.b((AbstractC4365b1) obj);
                            }
                        }, e02.d0());
                    } else {
                        hashMap.put(EnumC6871d70.f47286b, null);
                    }
                    b(e02, g11, abstractC11468v3, hashMap, false, h32);
                    a(e02, g11, abstractC11468v3, (Map) hashMap, false, h32);
                    return;
                }
                Map c5862Rm0 = new C5862Rm0(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        return I4.a((AbstractC4365b1) obj);
                    }
                }, e02.d0());
                b(e02, g11, abstractC11468v3, c5862Rm0, false, h32);
                a(e02, g11, abstractC11468v3, c5862Rm0, false, h32);
                return;
            }
            boolean z10 = f56588E;
            if (!z10 && h32 != null) {
                throw new AssertionError();
            }
            if (!(abstractC11468v3 instanceof G3)) {
                if (abstractC11468v3 instanceof C11113a3) {
                    a(e02, abstractC11468v3.o());
                    return;
                }
                if (abstractC11468v3 instanceof C11329n) {
                    a(e02, (C11329n) abstractC11468v3);
                    return;
                }
                if (!(abstractC11468v3 instanceof C11484w2) && !(abstractC11468v3 instanceof C11385q4)) {
                    if (abstractC11468v3 instanceof U2) {
                        b(e02, g11, abstractC11468v3, null, true, h32);
                        c(e02, g11, abstractC11468v3, h32);
                        a(e02, g11, abstractC11468v3, (Map) null, true, h32);
                        return;
                    }
                    if (!(abstractC11468v3 instanceof W2) && !(abstractC11468v3 instanceof Y2)) {
                        if (!(abstractC11468v3 instanceof C11517y2) && !(abstractC11468v3 instanceof I2)) {
                            if (!(abstractC11468v3 instanceof Y0) && !(abstractC11468v3 instanceof C11331n1) && !(abstractC11468v3 instanceof C11180e2) && !(abstractC11468v3 instanceof C2) && !(abstractC11468v3 instanceof E2) && !(abstractC11468v3 instanceof G2) && !(abstractC11468v3 instanceof K2) && !(abstractC11468v3 instanceof C11146c2) && !(abstractC11468v3 instanceof C11469v4) && !(abstractC11468v3 instanceof C11166d5) && !abstractC11468v3.w()) {
                                if (!(abstractC11468v3 instanceof C11413s) && !(abstractC11468v3 instanceof M2) && !(abstractC11468v3 instanceof Q2) && !(abstractC11468v3 instanceof A2) && !(abstractC11468v3 instanceof C11435t4)) {
                                    if (abstractC11468v3 instanceof O2) {
                                        b(e02, g11, abstractC11468v3, null, true, h32);
                                        a(e02, g11, abstractC11468v3, (Map) null, true, h32);
                                        return;
                                    } else if (abstractC11468v3 instanceof D3) {
                                        a(e02, g11, abstractC11468v3, h32);
                                        b(e02, g11, abstractC11468v3, h32);
                                        return;
                                    } else {
                                        if (!z10 && !(abstractC11468v3 instanceof C11481w)) {
                                            throw new AssertionError();
                                        }
                                        b(e02, g11, abstractC11468v3, h32);
                                        return;
                                    }
                                }
                                for (R3 r33 : g11) {
                                    if (a(r33, e02.C0()) == null && !b(r33, e02.B0())) {
                                        return;
                                    }
                                }
                                a(e02, abstractC11468v3, (R3) null, (com.android.tools.r8.graph.H2) null, h32);
                                return;
                            }
                            b(e02, g11, abstractC11468v3, h32);
                            return;
                        }
                        a(e02, g11, abstractC11468v3, h32);
                        return;
                    }
                    if (this.f56594b != null) {
                        b(e02, g11, abstractC11468v3, null, true, h32);
                        c(e02, g11, abstractC11468v3, h32);
                        a(e02, g11, abstractC11468v3, (Map) null, true, h32);
                        return;
                    }
                    return;
                }
                a(e02, abstractC11468v3, (R3) null, (com.android.tools.r8.graph.H2) null, h32);
                b(e02, g11, abstractC11468v3, null, true, h32);
                a(e02, g11, abstractC11468v3, (Map) null, true, h32);
                return;
            }
            throw new C5417Jv0("-if rule will be evaluated separately, not here.");
        }
    }

    public final void b(com.android.tools.r8.graph.E0 e02, final List list, final AbstractC11468v3 abstractC11468v3, final H3 h32) {
        final Map map = null;
        e02.c(new Consumer() {
            @Override
            public final void accept(Object obj) {
                I4.this.a(map, list, abstractC11468v3, h32, (com.android.tools.r8.graph.H0) obj);
            }
        });
    }

    public final void b(Map map, Collection collection, AbstractC11468v3 abstractC11468v3, H3 h32, com.android.tools.r8.graph.F0 f02) {
        a(f02, collection, abstractC11468v3, a(f02.d(), map), h32);
    }

    public final boolean b(com.android.tools.r8.graph.E0 e02, AbstractC11468v3 abstractC11468v3) {
        boolean a10;
        com.android.tools.r8.graph.E0 g10;
        AbstractC11194f a11;
        com.android.tools.r8.graph.M2 m22 = e02.f36247g;
        while (m22 != null && (g10 = this.f56597e.g(m22)) != null) {
            if (abstractC11468v3.e().a(this.f56593a, g10.f36245e) && (a11 = a(abstractC11468v3.f57286j, g10, g10.k0(), EnumC4629p0.f37568d)) != null) {
                a(a11);
                a10 = true;
                break;
            }
            m22 = g10.f36247g;
        }
        a10 = a(e02, abstractC11468v3, false);
        if (a10 || a(e02, abstractC11468v3)) {
            return true;
        }
        return a(e02, abstractC11468v3, true);
    }

    public final boolean b(R3 r32, Iterable iterable) {
        if (!r32.h().a()) {
            return false;
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            if (r32.a((com.android.tools.r8.graph.F0) it.next(), this.f56593a, new C11336n6(this), this.f56612t)) {
                return true;
            }
        }
        return false;
    }

    public final void b() {
        if (this.f56593a.f38413f.a(this.f56610r.f50660a.f38068i2)) {
            return;
        }
        this.f56614v.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                I4.this.a((E40) obj, (Set) obj2);
            }
        });
    }

    public final void a(C10325xr0 c10325xr0, final AbstractC11468v3 abstractC11468v3, final H3 h32) {
        if (abstractC11468v3.c().f()) {
            Iterator<com.android.tools.r8.graph.M2> it = abstractC11468v3.c().c().iterator();
            while (it.hasNext()) {
                com.android.tools.r8.graph.E0 g10 = this.f56597e.g(it.next());
                if (g10 != null) {
                    a(g10, abstractC11468v3, h32);
                }
            }
            return;
        }
        c10325xr0.b(new InterfaceC5930Sr0() {
            @Override
            public final void a() {
                I4.this.a(abstractC11468v3, h32);
            }
        });
    }

    public final void a(AbstractC11468v3 abstractC11468v3, H3 h32) {
        Iterator it = abstractC11468v3.a(this.f56593a, this.f56596d, this.f56597e.d(), EnumC6871d70.f47286b).iterator();
        while (it.hasNext()) {
            a((com.android.tools.r8.graph.E0) it.next(), abstractC11468v3, h32);
        }
        if (abstractC11468v3.l()) {
            Iterator<C4725u2> it2 = this.f56597e.k().iterator();
            while (it2.hasNext()) {
                a((com.android.tools.r8.graph.E0) it2.next(), abstractC11468v3, h32);
            }
        }
    }

    public D4 a(ExecutorService executorService) throws ExecutionException {
        C6845cz c6845cz;
        this.f56597e.f38365c.b("Build root set...");
        try {
            C10325xr0 c10325xr0 = new C10325xr0(this.f56610r.G(), executorService, -1);
            Iterable<AbstractC11468v3> iterable = this.f56598f;
            if (iterable != null) {
                for (AbstractC11468v3 abstractC11468v3 : iterable) {
                    if (abstractC11468v3 instanceof G3) {
                        this.f56613u.add((G3) abstractC11468v3);
                    } else {
                        a(c10325xr0, abstractC11468v3, (H3) null);
                    }
                }
                c10325xr0.a((Consumer) null);
            }
            this.f56597e.f38365c.d();
            a();
            b();
            C11278k c11278k = this.f56594b;
            if (c11278k != null && !c11278k.f57468a.isEmpty()) {
                com.android.tools.r8.graph.D.a(this.f56593a, this.f56596d).a(((C4514j) this.f56593a.f()).d(), new InterfaceC6160Wr0() {
                    @Override
                    public final void accept(Object obj) {
                        I4.this.a((com.android.tools.r8.graph.E0) obj);
                    }
                });
            }
            C4798y c4798y = this.f56593a;
            InterfaceC6160Wr0 interfaceC6160Wr0 = new InterfaceC6160Wr0() {
                @Override
                public final void accept(Object obj) {
                    I4.this.a((C6845cz) obj);
                }
            };
            C5658Oa0 c5658Oa0 = c4798y.f38388C;
            if (c5658Oa0 != null && (c6845cz = c5658Oa0.f42925d) != null) {
                interfaceC6160Wr0.accept(c6845cz);
            }
            this.f56593a.a(new InterfaceC6160Wr0() {
                @Override
                public final void accept(Object obj) {
                    I4.this.a((C6678bz) obj);
                }
            });
            return new D4(this.f56599g, AbstractC7552hC.a(this.f56600h.values()), this.f56601i, this.f56602j, this.f56603k, this.f56604l, this.f56606n, this.f56605m, this.f56607o, this.f56613u, CT.a(this.f56609q), this.f56618z, this.f56611s);
        } catch (Throwable th2) {
            this.f56597e.f38365c.d();
            throw th2;
        }
    }

    public final void a(C6845cz c6845cz) {
        c6845cz.a(this.f56599g);
    }

    public final void a(C6678bz c6678bz) {
        C4798y c4798y = this.f56593a;
        com.android.tools.r8.graph.Y5 y52 = this.f56596d;
        W60 w60 = this.f56604l;
        Set set = this.f56601i;
        A a10 = this.f56599g;
        c6678bz.getClass();
        C6512az c6512az = new C6512az(c6678bz, c4798y, w60, set, a10);
        c6512az.a();
        set.add(c6512az.f46673b.f42006r.f41421a);
        set.add(c6512az.f46673b.f42006r.f41424d);
        com.android.tools.r8.graph.M2 m22 = c6512az.f46673b.f42002n;
        C11144c0 c11144c0 = C11144c0.f57206a;
        a10.a(c11144c0).a(m22).a().q().v();
        c6512az.a(y52);
        set.add(c6512az.f46673b.f42008t.f41129a);
        a10.a(c11144c0).a(c6512az.f46673b.f41998j).a().q().v();
        a10.a(c11144c0).a(c6512az.f46673b.f41999k).a().q().v();
        A a11 = this.f56599g;
        a11.a(c11144c0).a(c6678bz.f46924b.f42007s.f40794a).d().u();
    }

    public final void a(com.android.tools.r8.graph.E0 e02) {
        com.android.tools.r8.internal.F4 f42;
        Set b10 = this.f56596d.b(e02.f36245e);
        if (b10.isEmpty()) {
            return;
        }
        for (C4516j1 c4516j1 : e02.D1()) {
            if (c4516j1.b1()) {
                if (!f56588E && c4516j1.v1()) {
                    throw new AssertionError();
                }
            } else {
                com.android.tools.r8.graph.A2 reference = c4516j1.getReference();
                Iterator it = b10.iterator();
                com.android.tools.r8.internal.F4 f43 = null;
                com.android.tools.r8.internal.F4 f44 = null;
                while (true) {
                    if (!it.hasNext()) {
                        f43 = f44;
                        break;
                    }
                    com.android.tools.r8.graph.H0 p10 = ((C4514j) this.f56593a.f()).f(this.f56593a.b().a((com.android.tools.r8.graph.M2) it.next(), reference.f36127i, reference.f38298g)).p();
                    if (p10 != null && p10.getHolder() != e02) {
                        com.android.tools.r8.internal.E4 e42 = (com.android.tools.r8.internal.E4) this.f56594b.f57468a.get(p10.getReference());
                        if (e42 != null) {
                            f42 = com.android.tools.r8.internal.F4.a(e42.f39742a, e42.f39743b, e42.f39744c);
                        } else {
                            f42 = com.android.tools.r8.internal.F4.f40085d;
                        }
                        if (f42 == null) {
                            break;
                        }
                        if (f44 != null) {
                            if (!f44.equals(f42)) {
                                break;
                            }
                        } else {
                            f44 = f42;
                        }
                    }
                }
                if (f43 != null) {
                    com.android.tools.r8.internal.E4 a10 = this.f56594b.a(reference);
                    a10.getClass();
                    a10.f39742a = com.android.tools.r8.internal.F4.a(a10.f39742a, f43.f40087a);
                    a10.f39743b = com.android.tools.r8.internal.F4.a(a10.f39743b, f43.f40088b);
                    a10.f39744c = a10.f39744c || f43.f40089c;
                }
            }
        }
    }

    public static com.android.tools.r8.graph.H2 a(AbstractC4479h1 abstractC4479h1, Map map) {
        boolean z10;
        com.android.tools.r8.graph.H2 h22 = null;
        if (map == null) {
            return null;
        }
        Iterator it = map.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                z10 = false;
                break;
            }
            Map.Entry entry = (Map.Entry) it.next();
            if (((Predicate) entry.getKey()).test(abstractC4479h1)) {
                h22 = (com.android.tools.r8.graph.H2) entry.getValue();
                z10 = true;
                break;
            }
        }
        if (f56588E || z10) {
            return h22;
        }
        throw new AssertionError();
    }

    public final boolean a(com.android.tools.r8.graph.E0 e02, com.android.tools.r8.graph.E0 e03, C4516j1 c4516j1) {
        if (c4516j1.J0() || e02 == e03) {
            return true;
        }
        return !(!c4516j1.w0() || c4516j1.G0() || c4516j1.i1()) || this.f56610r.f50674d1;
    }

    public final void a(Map map, Collection collection, Set set, AbstractC11468v3 abstractC11468v3, H3 h32, com.android.tools.r8.graph.H0 h02) {
        a(h02, collection, set, abstractC11468v3, a(h02.d(), map), h32);
    }

    public final void a(Map map, Collection collection, AbstractC11468v3 abstractC11468v3, H3 h32, com.android.tools.r8.graph.H0 h02) {
        a(h02, collection, (Set) null, abstractC11468v3, a(h02.d(), map), h32);
    }

    public final void a(com.android.tools.r8.graph.E0 e02, final List list, final AbstractC11468v3 abstractC11468v3, final Map map, boolean z10, final H3 h32) {
        while (e02 != null) {
            if (!z10 && e02.v1()) {
                return;
            }
            e02.b(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    I4.this.b(map, list, abstractC11468v3, h32, (com.android.tools.r8.graph.F0) obj);
                }
            });
            com.android.tools.r8.graph.M2 m22 = e02.f36247g;
            e02 = m22 == null ? null : this.f56597e.g(m22);
        }
    }

    public final void a(com.android.tools.r8.graph.E0 e02, final List list, final AbstractC11468v3 abstractC11468v3, final H3 h32) {
        final Map map = null;
        e02.b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                I4.this.a(map, list, abstractC11468v3, h32, (com.android.tools.r8.graph.F0) obj);
            }
        });
    }

    public final void a(Map map, Collection collection, AbstractC11468v3 abstractC11468v3, H3 h32, com.android.tools.r8.graph.F0 f02) {
        a(f02, collection, abstractC11468v3, a(f02.d(), map), h32);
    }

    public static void a(final C11245i c11245i, final PrintStream printStream, final Predicate predicate) {
        C8570nJ c8570nJ = c11245i.a().f38366d;
        c11245i.f57407v.c(new Consumer() {
            @Override
            public final void accept(Object obj) {
                I4.a(Predicate.this, printStream, (com.android.tools.r8.graph.M2) obj);
            }
        }, c8570nJ);
        c11245i.f57407v.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                I4.a(Predicate.this, printStream, (C4554l1) obj);
            }
        }, c8570nJ);
        c11245i.f57407v.b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                I4.a(Predicate.this, c11245i, printStream, (com.android.tools.r8.graph.A2) obj);
            }
        }, c8570nJ);
        printStream.close();
    }

    public static void a(Predicate predicate, PrintStream printStream, com.android.tools.r8.graph.M2 m22) {
        if (predicate.test(m22)) {
            printStream.println(m22.j0());
        }
    }

    public static void a(Predicate predicate, PrintStream printStream, C4554l1 c4554l1) {
        if (predicate.test(c4554l1.f38297f)) {
            printStream.println(c4554l1.f38297f.j0() + ": " + c4554l1.f37449i.j0() + " " + c4554l1.f38298g.j0());
        }
    }

    public static void a(Predicate predicate, C11245i c11245i, PrintStream printStream, com.android.tools.r8.graph.A2 a22) {
        if (predicate.test(a22.f38297f)) {
            c11245i.getClass();
            C4516j1 b10 = a22.b((com.android.tools.r8.graph.E0) com.android.tools.r8.graph.H2.a(c11245i.g(a22.f38297f)));
            if (b10 == null) {
                if (!f56588E && !a22.c(c11245i.b().f38184w6)) {
                    throw new AssertionError();
                }
                return;
            }
            printStream.print(a22.f38297f.j0() + ": ");
            boolean z10 = true;
            if (b10.f1()) {
                printStream.print(ConstantDescs.CLASS_INIT_NAME);
            } else if (b10.j1()) {
                String j02 = a22.f38297f.j0();
                printStream.print(j02.substring(j02.lastIndexOf(46) + 1));
            } else {
                printStream.print(a22.f36127i.f36440e.j0() + " " + a22.f38298g.j0());
            }
            printStream.print("(");
            com.android.tools.r8.graph.M2[] m2Arr = a22.f36127i.f36441f.f36675b;
            int length = m2Arr.length;
            int i10 = 0;
            while (i10 < length) {
                com.android.tools.r8.graph.M2 m22 = m2Arr[i10];
                if (!z10) {
                    printStream.print(DocLint.SEPARATOR);
                }
                printStream.print(m22.j0());
                i10++;
                z10 = false;
            }
            printStream.println(")");
        }
    }

    public final boolean a(com.android.tools.r8.graph.E0 e02, AbstractC11468v3 abstractC11468v3) {
        com.android.tools.r8.graph.E0 g10;
        AbstractC11194f a10;
        if (e02 == null) {
            return false;
        }
        for (com.android.tools.r8.graph.M2 m22 : e02.f36248h.f36675b) {
            com.android.tools.r8.graph.E0 g11 = this.f56597e.g(m22);
            if (g11 == null) {
                return false;
            }
            if (abstractC11468v3.e().a(this.f56593a, m22) && (a10 = a(abstractC11468v3.f57286j, g11, g11.k0(), EnumC4629p0.f37568d)) != null) {
                a(a10);
                return true;
            }
            if (a(g11, abstractC11468v3)) {
                return true;
            }
        }
        com.android.tools.r8.graph.M2 m23 = e02.f36247g;
        if (m23 == null || (g10 = this.f56597e.g(m23)) == null) {
            return false;
        }
        return a(g10, abstractC11468v3);
    }

    public final boolean a(com.android.tools.r8.graph.E0 e02, AbstractC11468v3 abstractC11468v3, final boolean z10) {
        C8674nx0 c8674nx0 = this.f56593a.f38393H;
        if (c8674nx0 == null) {
            return false;
        }
        Stream filter = c8674nx0.f51120a.d(e02.f36245e).stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return I4.this.a(z10, (com.android.tools.r8.graph.M2) obj);
            }
        });
        AbstractC11250i4 e10 = abstractC11468v3.e();
        Objects.requireNonNull(e10);
        return filter.anyMatch(new C6(e10));
    }

    public final boolean a(boolean z10, com.android.tools.r8.graph.M2 m22) {
        return this.f56593a.g(m22).f36246f.J() == z10;
    }

    public final com.android.tools.r8.graph.H0 a(R3 r32, Iterable iterable) {
        if (!r32.h().b()) {
            return null;
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.H0 h02 = (com.android.tools.r8.graph.H0) it.next();
            if (r32.a(h02, this.f56593a, new C11336n6(this), this.f56612t)) {
                return h02;
            }
        }
        return null;
    }

    public final boolean a(R3 r32, com.android.tools.r8.graph.F0 f02) {
        return r32.a(f02, this.f56593a, new Consumer() {
            @Override
            public final void accept(Object obj) {
                I4.b((AbstractC11194f) obj);
            }
        }, this.f56612t);
    }

    public static AbstractC11194f a(List list, InterfaceC4610o0 interfaceC4610o0, C4723u0 c4723u0, EnumC4629p0 enumC4629p0) {
        C4666r0 c4666r0;
        if (list.isEmpty()) {
            return C11143c.f57205a;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AbstractC11250i4 abstractC11250i4 = (AbstractC11250i4) it.next();
            C4666r0[] c4666r0Arr = c4723u0.f37806d;
            int length = c4666r0Arr.length;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    c4666r0 = null;
                    break;
                }
                c4666r0 = c4666r0Arr[i10];
                if (abstractC11250i4.b(c4666r0.l0())) {
                    break;
                }
                i10++;
            }
            if (c4666r0 == null) {
                return null;
            }
            if (interfaceC4610o0.h()) {
                arrayList.add(new C11177e(interfaceC4610o0.g(), c4666r0, enumC4629p0));
            }
        }
        return new C11160d(arrayList);
    }

    public final void a(com.android.tools.r8.graph.H0 h02, Collection collection, Set set, AbstractC11468v3 abstractC11468v3, com.android.tools.r8.graph.H2 h22, H3 h32) {
        if (set == null || !set.contains(new C7333fv(C9933vX.f53136a, h02.getReference()))) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                R3 r32 = (R3) it.next();
                if (r32.a(h02, this.f56593a, new C11336n6(this), this.f56612t)) {
                    if (set != null) {
                        set.add(new C7333fv(C9933vX.f53136a, h02.getReference()));
                    }
                    a(h02, abstractC11468v3, r32, h22, h32);
                }
            }
        }
    }

    public final void a(com.android.tools.r8.graph.F0 f02, Collection collection, AbstractC11468v3 abstractC11468v3, com.android.tools.r8.graph.H2 h22, H3 h32) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            R3 r32 = (R3) it.next();
            if (r32.a(f02, this.f56593a, new C11336n6(this), this.f56612t)) {
                a(f02, abstractC11468v3, r32, h22, h32);
            }
        }
    }

    public final void a(com.android.tools.r8.graph.M2 m22, L3 l32, AbstractC11161d0 abstractC11161d0) {
        com.android.tools.r8.graph.H2 a10;
        if (m22.S0()) {
            return;
        }
        if (m22.E0()) {
            m22 = m22.a(this.f56593a.b());
        }
        if (m22.P0() || (a10 = com.android.tools.r8.graph.H2.a(this.f56593a.g(m22))) == null) {
            return;
        }
        M3 C10 = l32.C();
        if (this.f56593a.E().W() && !C10.f56726e) {
            AbstractC11415s1 a11 = this.f56599g.a(abstractC11161d0).a(a10.getReference());
            a11.f57792c.add(l32);
            a11.m().i();
        }
        if (!this.f56593a.E().R() || C10.f56728g) {
            return;
        }
        this.f56599g.a(abstractC11161d0).a(a10.getReference()).g().a().s();
    }

    public final synchronized void a(InterfaceC4610o0 interfaceC4610o0, AbstractC11468v3 abstractC11468v3, R3 r32, com.android.tools.r8.graph.H2 h22, H3 h32) {
        abstractC11468v3.getClass();
        if (abstractC11468v3 instanceof K3) {
            if (interfaceC4610o0.h()) {
                a(interfaceC4610o0.g(), abstractC11468v3.q(), h22, h32);
            }
        } else {
            if (abstractC11468v3 instanceof U2) {
                this.f56606n.put(interfaceC4610o0.getReference(), r32);
                abstractC11468v3.f57913o = true;
                return;
            }
            if (abstractC11468v3 instanceof W2) {
                a(interfaceC4610o0, (W2) abstractC11468v3, r32);
                return;
            }
            if (abstractC11468v3 instanceof Y2) {
                a(interfaceC4610o0, (Y2) abstractC11468v3, r32);
                return;
            }
            if (abstractC11468v3 instanceof C11385q4) {
                this.f56600h.computeIfAbsent(interfaceC4610o0.getReference(), new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return I4.a((com.android.tools.r8.graph.J2) obj);
                    }
                });
                abstractC11468v3.f57913o = true;
                return;
            }
            if (abstractC11468v3 instanceof C11113a3) {
                if (!f56588E && !interfaceC4610o0.a0()) {
                    throw new AssertionError();
                }
                com.android.tools.r8.graph.G5 O10 = interfaceC4610o0.O();
                C11113a3 o10 = abstractC11468v3.o();
                a(O10);
                o10.f57913o = true;
                return;
            }
            if (abstractC11468v3 instanceof Y0) {
                if (interfaceC4610o0.I()) {
                    com.android.tools.r8.graph.A2 reference = interfaceC4610o0.b().getReference();
                    int ordinal = ((Y0) abstractC11468v3).f57125r.ordinal();
                    if (ordinal == 0) {
                        this.f56601i.add(reference);
                    } else if (ordinal == 1) {
                        this.f56599g.a(C11144c0.f57206a).a(interfaceC4610o0.getReference()).d().u();
                    } else if (ordinal == 2) {
                        this.f56599g.a(C11144c0.f57206a).a(interfaceC4610o0.getReference()).d().r();
                    } else if (ordinal == 3) {
                        this.f56599g.a(C11144c0.f57206a).a(interfaceC4610o0.getReference()).d().C();
                    } else {
                        throw new C5417Jv0();
                    }
                    abstractC11468v3.f57913o = true;
                }
            } else {
                if (abstractC11468v3 instanceof C11166d5) {
                    if (interfaceC4610o0.I()) {
                        this.f56602j.add(interfaceC4610o0.b().getReference());
                        abstractC11468v3.f57913o = true;
                        return;
                    }
                    throw new C5417Jv0();
                }
                if (abstractC11468v3 instanceof C11413s) {
                    C11413s m10 = abstractC11468v3.m();
                    com.android.tools.r8.graph.E0 asClass = interfaceC4610o0.asClass();
                    if (asClass != null) {
                        int ordinal2 = m10.f57785r.ordinal();
                        if (ordinal2 == 0) {
                            this.f56604l.f45304a.add(asClass.getType());
                        } else if (ordinal2 == 1) {
                            this.f56599g.a(C11144c0.f57206a).a(asClass.getType()).a().p();
                        } else {
                            throw new C5417Jv0();
                        }
                        abstractC11468v3.f57913o = true;
                        return;
                    }
                    throw new IllegalStateException("Unexpected -" + m10.A() + " rule for a non-class type: `" + interfaceC4610o0.getReference().j0() + "`");
                }
                if (abstractC11468v3 instanceof C11484w2) {
                    if (!f56588E && !interfaceC4610o0.h()) {
                        throw new AssertionError();
                    }
                    this.f56599g.a(C11144c0.f57206a).a(interfaceC4610o0.getReference()).f();
                    abstractC11468v3.f57913o = true;
                    return;
                }
                if (abstractC11468v3 instanceof C11517y2) {
                    if (!f56588E && !interfaceC4610o0.L()) {
                        throw new AssertionError();
                    }
                    this.f56599g.a(C11144c0.f57206a).a(interfaceC4610o0.getReference()).b().q();
                    abstractC11468v3.f57913o = true;
                    return;
                }
                if (abstractC11468v3 instanceof I2) {
                    if (!f56588E && !interfaceC4610o0.L()) {
                        throw new AssertionError();
                    }
                    this.f56599g.a(C11144c0.f57206a).a(interfaceC4610o0.getReference()).b().r();
                    abstractC11468v3.f57913o = true;
                    return;
                }
                if (abstractC11468v3 instanceof M2) {
                    if (!f56588E && !interfaceC4610o0.e0()) {
                        throw new AssertionError();
                    }
                    this.f56599g.a(C11144c0.f57206a).a(interfaceC4610o0.getReference()).a().u();
                    abstractC11468v3.f57913o = true;
                    return;
                }
                if (abstractC11468v3 instanceof Q2) {
                    if (!f56588E && !interfaceC4610o0.e0()) {
                        throw new AssertionError();
                    }
                    this.f56599g.a(C11144c0.f57206a).a(interfaceC4610o0.getReference()).a().v();
                    abstractC11468v3.f57913o = true;
                    return;
                }
                if (abstractC11468v3 instanceof A2) {
                    if (!f56588E && !interfaceC4610o0.e0()) {
                        throw new AssertionError();
                    }
                    this.f56599g.a(C11144c0.f57206a).a(interfaceC4610o0.getReference()).a().q();
                    abstractC11468v3.f57913o = true;
                    return;
                }
                if (abstractC11468v3 instanceof C2) {
                    if (!f56588E && !interfaceC4610o0.N()) {
                        throw new AssertionError();
                    }
                    this.f56599g.a(C11144c0.f57206a).a(interfaceC4610o0.getReference()).d().v();
                    abstractC11468v3.f57913o = true;
                    return;
                }
                if (abstractC11468v3 instanceof E2) {
                    if (!f56588E && !interfaceC4610o0.N()) {
                        throw new AssertionError();
                    }
                    this.f56599g.a(C11144c0.f57206a).a(interfaceC4610o0.getReference()).d().y();
                    abstractC11468v3.f57913o = true;
                    return;
                }
                if (abstractC11468v3 instanceof G2) {
                    if (!f56588E && !interfaceC4610o0.N()) {
                        throw new AssertionError();
                    }
                    this.f56599g.a(C11144c0.f57206a).a(interfaceC4610o0.getReference()).d().z();
                    abstractC11468v3.f57913o = true;
                    return;
                }
                if (abstractC11468v3 instanceof K2) {
                    if (!f56588E && !interfaceC4610o0.N()) {
                        throw new AssertionError();
                    }
                    this.f56599g.a(C11144c0.f57206a).a(interfaceC4610o0.getReference()).d().B();
                    abstractC11468v3.f57913o = true;
                    return;
                }
                if (abstractC11468v3 instanceof O2) {
                    if (interfaceC4610o0.a0()) {
                        this.f56599g.a(C11144c0.f57206a).a(interfaceC4610o0.getReference()).c().p();
                        abstractC11468v3.f57913o = true;
                    }
                } else {
                    if (abstractC11468v3 instanceof D3) {
                        a(interfaceC4610o0, abstractC11468v3, h32);
                        return;
                    }
                    if (abstractC11468v3 instanceof C11435t4) {
                        com.android.tools.r8.graph.H2 d02 = interfaceC4610o0.d0();
                        if (d02 != null && d02.c1()) {
                            int b10 = AbstractC4291c.b(abstractC11468v3.r().f57860r);
                            if (b10 == 0) {
                                this.f56603k.add(d02.L0().getReference());
                            } else if (b10 == 1) {
                                this.f56599g.a(C11144c0.f57206a).a(d02.L0().getReference()).d().A();
                            } else {
                                throw new C5417Jv0();
                            }
                            abstractC11468v3.f57913o = true;
                        }
                    } else if (abstractC11468v3 instanceof C11469v4) {
                        if (interfaceC4610o0.I()) {
                            com.android.tools.r8.graph.H0 b11 = interfaceC4610o0.b();
                            int b12 = AbstractC4291c.b(abstractC11468v3.s().f57916r);
                            if (b12 == 0) {
                                this.f56603k.add(b11.getReference());
                            } else if (b12 == 1) {
                                this.f56599g.a(C11144c0.f57206a).a(b11.getReference()).d().A();
                            } else {
                                throw new C5417Jv0();
                            }
                            abstractC11468v3.f57913o = true;
                        }
                    } else {
                        if (abstractC11468v3 instanceof C11331n1) {
                            if (!f56588E && !interfaceC4610o0.N()) {
                                throw new AssertionError();
                            }
                            this.f56599g.a(C11144c0.f57206a).a(interfaceC4610o0.getReference()).d().t();
                            abstractC11468v3.f57913o = true;
                            return;
                        }
                        if (abstractC11468v3 instanceof C11146c2) {
                            if (!f56588E && !interfaceC4610o0.N()) {
                                throw new AssertionError();
                            }
                            this.f56599g.a(C11144c0.f57206a).a(interfaceC4610o0.getReference()).d().E();
                            abstractC11468v3.f57913o = true;
                            return;
                        }
                        if (abstractC11468v3 instanceof C11180e2) {
                            if (!f56588E && !interfaceC4610o0.N()) {
                                throw new AssertionError();
                            }
                            this.f56599g.a(C11144c0.f57206a).a(interfaceC4610o0.getReference()).d().F();
                            abstractC11468v3.f57913o = true;
                            return;
                        }
                        if (abstractC11468v3 instanceof C11481w) {
                            if (!f56588E && !interfaceC4610o0.I()) {
                                throw new AssertionError();
                            }
                            C8696o40 c8696o40 = this.f56616x;
                            com.android.tools.r8.graph.H0 b13 = interfaceC4610o0.b();
                            c8696o40.getClass();
                            b13.d().T0().f45453h = true;
                            if (interfaceC4610o0.N()) {
                                this.f56599g.a(C11144c0.f57206a).a(interfaceC4610o0.getReference()).d().h();
                            }
                            abstractC11468v3.f57913o = true;
                            return;
                        }
                        if (abstractC11468v3.w()) {
                            C11399r2 n10 = abstractC11468v3.n();
                            if (!f56588E && !interfaceC4610o0.N()) {
                                throw new AssertionError();
                            }
                            C8696o40 c8696o402 = this.f56616x;
                            com.android.tools.r8.graph.H5 H10 = interfaceC4610o0.H();
                            int C10 = n10.C();
                            c8696o402.getClass();
                            WY T02 = H10.d().T0();
                            int i10 = T02.f45463r;
                            if (i10 != 0) {
                                C10 = C10 == 0 ? i10 : Math.min(i10, C10);
                            }
                            T02.f45463r = C10;
                            n10.f57913o = true;
                            return;
                        }
                        throw new C5417Jv0();
                    }
                }
            }
        }
    }

    public final void a(com.android.tools.r8.graph.E0 e02, C11113a3 c11113a3) {
        if (e02.e0()) {
            com.android.tools.r8.graph.H2 d02 = e02.d0();
            c11113a3.getClass();
            synchronized (this) {
                try {
                    if (c11113a3.g().isEmpty()) {
                        a(d02, c11113a3);
                    } else {
                        if (d02.f36251k.f37700b.f() <= 0 && d02.f36252l.f36638b.h() <= 0) {
                            return;
                        }
                        a(d02, c11113a3.g(), c11113a3, (H3) null);
                        b(d02, c11113a3.g(), c11113a3, null);
                        this.f56615w.add(d02);
                    }
                    return;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        this.f56593a.E().f50691j.warning(new StringDiagnostic("The rule `" + ((Object) c11113a3) + "` matches a class not in the program."));
    }

    public final void a(com.android.tools.r8.graph.H2 h22, C11113a3 c11113a3) {
        a((com.android.tools.r8.graph.D5) h22);
        h22.k(new Consumer() {
            @Override
            public final void accept(Object obj) {
                I4.this.a((com.android.tools.r8.graph.G5) obj);
            }
        });
        c11113a3.f57913o = true;
    }

    public final void a(com.android.tools.r8.graph.D5 d52) {
        this.f56599g.a(C11144c0.f57206a).a(d52.getReference()).n();
    }

    public final void a() {
        AbstractC6333Zs0 abstractC6333Zs0;
        final C11416s2 b10 = this.f56599g.b(C11416s2.f57793b);
        for (com.android.tools.r8.graph.H2 h22 : this.f56615w) {
            Function function = new Function() {
                @Override
                public final Object apply(Object obj) {
                    return I4.a(C11416s2.this, (com.android.tools.r8.graph.G5) obj);
                }
            };
            if (h22.a(function).d()) {
                abstractC6333Zs0 = h22.c(function);
            } else {
                abstractC6333Zs0 = C6162Ws0.f45559c;
            }
            if (abstractC6333Zs0.d()) {
                a((com.android.tools.r8.graph.D5) h22);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static AbstractC6333Zs0 a(C11416s2 c11416s2, com.android.tools.r8.graph.G5 g52) {
        return c11416s2.a(((com.android.tools.r8.graph.G0) g52).getReference(), new M5()) ? C6276Ys0.f46097c : C6162Ws0.f45559c;
    }

    public final void a(InterfaceC4610o0 interfaceC4610o0, final W2 w22, final R3 r32) {
        boolean z10 = f56588E;
        if (!z10 && this.f56594b == null) {
            throw new AssertionError();
        }
        if (interfaceC4610o0.s()) {
            final com.android.tools.r8.graph.G0 g02 = interfaceC4610o0.g0();
            if (g02.p() == this.f56593a.b().f38068i2) {
                if (!z10 && !g02.I()) {
                    throw new AssertionError();
                }
                a(g02.b(), w22);
            } else {
                final com.android.tools.r8.graph.M2 m22 = (com.android.tools.r8.graph.M2) g02.getReference().a(new com.android.tools.r8.graph.Le(), new C11403r6());
                this.f56594b.a(r32.k(), new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        I4.this.a(r32, m22, g02, w22, (C11278k) obj);
                    }
                }).a(g02.getReference()).f39744c = true;
                if (g02.I()) {
                    com.android.tools.r8.graph.H0 b10 = g02.b();
                    if (b10.d().f1()) {
                        C8696o40 c8696o40 = this.f56616x;
                        C4516j1 d10 = b10.d();
                        c8696o40.getClass();
                        d10.T0().f45466u |= 2;
                    }
                }
            }
            w22.f57913o = true;
        }
    }

    public final void a(R3 r32, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.G0 g02, W2 w22, C11278k c11278k) {
        AbstractC10330xt m10;
        T3 g10 = r32.g();
        g10.getClass();
        if (m22.Q0() && ((g10.g() || g10.h() || g10.i()) && g10.d().d())) {
            boolean z10 = AbstractC10330xt.f53865a;
            m10 = C7520h10.f48413b;
        } else {
            m10 = AbstractC10330xt.m();
        }
        com.android.tools.r8.internal.F1 a10 = r32.g().a(this.f56593a, m22);
        c11278k.getClass();
        com.android.tools.r8.internal.E4 a11 = c11278k.a(g02.getReference());
        a11.f39742a = com.android.tools.r8.internal.F4.a(a11.f39742a, m10);
        com.android.tools.r8.internal.E4 a12 = c11278k.a(g02.getReference());
        a12.f39743b = com.android.tools.r8.internal.F4.a(a12.f39743b, a10);
        a(w22, r32, a10);
    }

    public final void a(InterfaceC4610o0 interfaceC4610o0, Y2 y22, R3 r32) {
        AbstractC10330xt m10;
        if (!f56588E && this.f56594b == null) {
            throw new AssertionError();
        }
        if (interfaceC4610o0.s() && r32.k()) {
            com.android.tools.r8.graph.G0 g02 = interfaceC4610o0.g0();
            com.android.tools.r8.graph.M2 m22 = (com.android.tools.r8.graph.M2) g02.getReference().a(new com.android.tools.r8.graph.Le(), new C11403r6());
            T3 g10 = r32.g();
            g10.getClass();
            if (m22.Q0() && ((g10.g() || g10.h() || g10.i()) && g10.d().d())) {
                boolean z10 = AbstractC10330xt.f53865a;
                m10 = C7520h10.f48413b;
            } else {
                m10 = AbstractC10330xt.m();
            }
            com.android.tools.r8.internal.F1 a10 = r32.g().a(this.f56593a, m22);
            C11278k c11278k = this.f56594b;
            c11278k.getClass();
            com.android.tools.r8.internal.E4 a11 = c11278k.a(g02.getReference());
            a11.f39742a = com.android.tools.r8.internal.F4.a(a11.f39742a, m10);
            com.android.tools.r8.internal.E4 a12 = c11278k.a(g02.getReference());
            a12.f39743b = com.android.tools.r8.internal.F4.a(a12.f39743b, a10);
            a(y22, r32, a10);
            y22.f57913o = true;
        }
    }

    public final void a(com.android.tools.r8.graph.E0 e02, C11329n c11329n) {
        if (e02.e0()) {
            if (e02.o1()) {
                this.f56599g.a(C11144c0.f57206a).a(e02.getType()).a().x();
                return;
            }
            this.f56593a.E().f50691j.warning(new StringDiagnostic("The rule `" + ((Object) c11329n) + "` matches the non-enum class " + e02.b1() + "."));
            return;
        }
        this.f56593a.E().f50691j.warning(new StringDiagnostic("The rule `" + ((Object) c11329n) + "` matches the non-program class " + e02.b1() + "."));
    }

    public final void a(final com.android.tools.r8.graph.D5 d52, com.android.tools.r8.graph.H2 h22, H3 h32, M3 m32, InterfaceC6522b2 interfaceC6522b2, L3 l32) {
        final AbstractC11161d0 abstractC11161d0;
        if (d52.J()) {
            if (d52.W().d().f37207l.e()) {
                if (!f56588E && h32 == null) {
                    throw new AssertionError();
                }
                return;
            }
        } else if (d52.I()) {
            com.android.tools.r8.graph.H5 H10 = d52.H();
            if (H10.d().f1() && !this.f56610r.f50690i1) {
                return;
            }
            if (H10.A().e()) {
                if (!f56588E && h32 == null) {
                    throw new AssertionError();
                }
                return;
            } else if (this.f56610r.P()) {
                com.android.tools.r8.graph.A2 reference = H10.getReference();
                C4724u1 b10 = this.f56593a.b();
                reference.getClass();
                if (b10.f38159t5.g(reference.f38298g) && b10.f38175v5.a(reference.f36127i)) {
                    return;
                }
            }
        }
        if (m32.f56722a && m32.f56723b && !m32.f56724c && m32.f56725d && m32.f56728g && m32.f56727f && m32.f56726e && !m32.f56729h && m32.f56730i) {
            return;
        }
        if (this.f56610r.f50674d1 && !m32.f56726e && h22 != null && !d52.isClass() && !d52.getAccessFlags().n()) {
            ((Set) this.f56605m.computeIfAbsent(h22.getType(), new Function() {
                @Override
                public final Object apply(Object obj) {
                    return I4.a((com.android.tools.r8.graph.M2) obj);
                }
            })).add(l32);
            interfaceC6522b2.a();
        }
        if (h22 != null) {
            if (!d52.getAccessFlags().n() && (!d52.I() || !d52.b().d().j1())) {
                abstractC11161d0 = new Z(h22);
            } else {
                abstractC11161d0 = new C11110a0(h22);
            }
        } else {
            abstractC11161d0 = C11144c0.f57206a;
        }
        boolean z10 = this instanceof C4;
        if (!z10 && this.f56610r.Q() && d52.I() && d52.b().getHolder().isInterface() && !d52.b().d().f1() && d52.b().d().b1()) {
            com.android.tools.r8.graph.H5 b11 = d52.b();
            final com.android.tools.r8.graph.H5 b12 = this.f56617y.b(b11, this.f56595c);
            C7541h80 c7541h80 = this.f56618z;
            c7541h80.getClass();
            c7541h80.f43368b.put(new C7333fv(C7374g80.f48192a, b12), b11);
            Supplier supplier = new Supplier() {
                @Override
                public final Object get() {
                    return I4.this.a(abstractC11161d0, b12);
                }
            };
            C9420sR c9420sR = new C9420sR(supplier);
            if (this.f56593a.E().T() && !m32.f56727f) {
                ((AbstractC11415s1) c9420sR.a(supplier)).h();
                interfaceC6522b2.a();
            }
            if (this.f56593a.E().W() && !m32.f56726e) {
                AbstractC11415s1 abstractC11415s1 = (AbstractC11415s1) c9420sR.a(supplier);
                abstractC11415s1.f57792c.add(l32);
                abstractC11415s1.m().i();
                interfaceC6522b2.a();
            }
            if (!d52.b().F()) {
                return;
            }
        }
        Supplier supplier2 = new Supplier() {
            @Override
            public final Object get() {
                return I4.this.a(abstractC11161d0, d52);
            }
        };
        C9420sR c9420sR2 = new C9420sR(supplier2);
        if (this.f56593a.E().f50693j1.a() && !m32.f56722a) {
            ((AbstractC11415s1) c9420sR2.a(supplier2)).e();
            interfaceC6522b2.a();
        }
        C8570nJ c8570nJ = this.f56610r;
        if (!c8570nJ.f50674d1 && c8570nJ.W() && !m32.f56723b) {
            if (!this.f56590B.a()) {
                AbstractC11415s1 abstractC11415s12 = (AbstractC11415s1) c9420sR2.a(supplier2);
                abstractC11415s12.f57790a.f57760i.a(this.f56590B);
                abstractC11415s12.m();
            }
            if (!this.f56591C.a()) {
                AbstractC11415s1 abstractC11415s13 = (AbstractC11415s1) c9420sR2.a(supplier2);
                abstractC11415s13.f57790a.f57761j.a(this.f56591C);
                abstractC11415s13.m();
            }
            if (d52.I() && !this.f56592D.a()) {
                ((G1) ((AbstractC11415s1) c9420sR2.a(supplier2)).d().f57790a).f56478B.a(this.f56592D);
            }
            interfaceC6522b2.a();
        }
        if (this.f56589A.f56573e) {
            ((AbstractC11415s1) c9420sR2.a(supplier2)).j();
            interfaceC6522b2.a();
        }
        if (this.f56589A.f56574f && d52.I()) {
            ((AbstractC11415s1) c9420sR2.a(supplier2)).d().D();
            interfaceC6522b2.a();
        }
        if (this.f56589A.f56577i && d52.I()) {
            ((AbstractC11415s1) c9420sR2.a(supplier2)).d().w();
            interfaceC6522b2.a();
        }
        if (this.f56593a.E().R() && !m32.f56728g) {
            ((AbstractC11415s1) c9420sR2.a(supplier2)).g();
            interfaceC6522b2.a();
        }
        boolean z11 = true;
        if (this.f56593a.E().V() && d52.e0()) {
            if (!m32.f56725d ? true : AbstractC10122wf0.a(d52.a(), this.f56610r)) {
                ((AbstractC11415s1) c9420sR2.a(supplier2)).a().s();
                interfaceC6522b2.a();
            }
        }
        if (this.f56593a.E().T() && !m32.f56727f) {
            ((AbstractC11415s1) c9420sR2.a(supplier2)).h();
            interfaceC6522b2.a();
        }
        if ((this.f56593a.E().W() || z10) && !m32.f56726e) {
            AbstractC11415s1 abstractC11415s14 = (AbstractC11415s1) c9420sR2.a(supplier2);
            abstractC11415s14.f57792c.add(l32);
            abstractC11415s14.m().i();
            interfaceC6522b2.a();
        }
        if (m32.f56729h) {
            if (d52.I()) {
                com.android.tools.r8.graph.H5 H11 = d52.H();
                a(H11.E(), l32, abstractC11161d0);
                Iterator<com.android.tools.r8.graph.M2> it = H11.C().iterator();
                while (it.hasNext()) {
                    a(it.next(), l32, abstractC11161d0);
                }
            } else if (d52.J()) {
                a(d52.W().getReference().getType(), l32, abstractC11161d0);
            } else if (!f56588E && !d52.isClass()) {
                throw new AssertionError();
            }
            interfaceC6522b2.a();
        }
        if (d52.N() && !this.f56593a.E().F().f50824J && m32.f56724c) {
            ((AbstractC11415s1) c9420sR2.a(c9420sR2.f52359b)).d().q();
            interfaceC6522b2.a();
        }
        if (d52.e0()) {
            C11350o3 c11350o3 = this.f56593a.E().f50688i;
            if (c11350o3 != null && !c11350o3.f().f56587s) {
                z11 = false;
            }
            if (z11 && !m32.f56730i) {
                ((AbstractC11415s1) c9420sR2.a(c9420sR2.f52359b)).a().r();
                interfaceC6522b2.a();
            }
        }
        if (f56588E || !c9420sR2.b()) {
            return;
        }
        AbstractC11398r1 abstractC11398r1 = ((AbstractC11415s1) c9420sR2.a(c9420sR2.f52359b)).f57790a;
        if (abstractC11398r1.b(abstractC11398r1.c())) {
            throw new AssertionError();
        }
    }

    public static Set a(com.android.tools.r8.graph.M2 m22) {
        return new HashSet();
    }

    public final AbstractC11415s1 a(AbstractC11161d0 abstractC11161d0, com.android.tools.r8.graph.H5 h52) {
        A a10 = this.f56599g;
        return a10.a(abstractC11161d0).a(h52.getReference());
    }

    public final AbstractC11415s1 a(AbstractC11161d0 abstractC11161d0, com.android.tools.r8.graph.D5 d52) {
        A a10 = this.f56599g;
        return a10.a(abstractC11161d0).a(d52.getReference());
    }

    public final void a(InterfaceC4610o0 interfaceC4610o0, AbstractC11468v3 abstractC11468v3, H3 h32) {
        boolean z10 = f56588E;
        if (!z10 && (this instanceof C4)) {
            throw new AssertionError();
        }
        if (!z10 && h32 != null) {
            throw new AssertionError();
        }
        if (interfaceC4610o0.isClass()) {
            return;
        }
        if (interfaceC4610o0.J()) {
            com.android.tools.r8.graph.F0 c10 = interfaceC4610o0.c();
            if (c10.d().a(this.f56593a.b())) {
                this.f56593a.E().f50691j.warning(new StringDiagnostic("Rule matches the static final field `" + c10.r() + "`, which may have been inlined: " + abstractC11468v3.toString(), abstractC11468v3.i()));
            }
        }
        this.f56607o.add(interfaceC4610o0.g0().getReference());
        abstractC11468v3.f57913o = true;
    }

    public final void a(com.android.tools.r8.graph.H0 h02, W2 w22) {
        if (!f56588E && h02.p() != this.f56610r.m().f38068i2) {
            throw new AssertionError();
        }
        ((Set) this.f56614v.computeIfAbsent(new E40(w22.i(), w22.f57278b), new Function() {
            @Override
            public final Object apply(Object obj) {
                return I4.a((E40) obj);
            }
        })).add(h02.getReference());
    }

    public static Set a(E40 e40) {
        return new TreeSet(new C7064eG0());
    }

    public final boolean a(com.android.tools.r8.graph.A2 a22) {
        com.android.tools.r8.graph.L2 l22 = a22.f38298g;
        C4724u1 c4724u1 = this.f56610r.f50660a;
        return l22 == c4724u1.f37910N || l22 == c4724u1.f37917O || l22 == c4724u1.f37924P;
    }

    public final void a(E40 e40, Set set) {
        if (set.stream().anyMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return I4.this.a((com.android.tools.r8.graph.A2) obj);
            }
        })) {
            C5094Ef0 c5094Ef0 = this.f56610r.f50691j;
            com.android.tools.r8.errors.a aVar = new com.android.tools.r8.errors.a();
            Iterator it = set.iterator();
            while (it.hasNext()) {
                aVar.f36090a.add(((com.android.tools.r8.graph.A2) it.next()).v0());
            }
            aVar.f36091b = e40.f39745a;
            aVar.f36092c = e40.f39746b;
            c5094Ef0.warning(aVar.a());
        }
    }

    public final void a(AbstractC11468v3 abstractC11468v3, R3 r32, com.android.tools.r8.internal.F1 f12) {
        if (r32.k() && r32.g().g()) {
            if (!f56588E && !f12.f0() && !f12.isUnknown()) {
                throw new AssertionError();
            }
            if (f12.isUnknown()) {
                T3 g10 = r32.g();
                C5094Ef0 c5094Ef0 = this.f56610r.f50691j;
                com.android.tools.r8.errors.b bVar = new com.android.tools.r8.errors.b();
                com.android.tools.r8.graph.M2 b10 = g10.b();
                com.android.tools.r8.graph.L2 c10 = g10.c();
                bVar.f36093a = b10;
                bVar.f36094b = c10;
                bVar.f36095c = abstractC11468v3.i();
                bVar.f36096d = abstractC11468v3.f57278b;
                c5094Ef0.warning(bVar.a());
            }
        }
    }
}
