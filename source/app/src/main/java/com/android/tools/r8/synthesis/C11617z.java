package com.android.tools.r8.synthesis;

import com.android.tools.r8.ClassFileConsumer;
import com.android.tools.r8.graph.A2;
import com.android.tools.r8.graph.AbstractC4479h1;
import com.android.tools.r8.graph.AbstractC4592n1;
import com.android.tools.r8.graph.AbstractC4761w0;
import com.android.tools.r8.graph.AbstractC4780x0;
import com.android.tools.r8.graph.C4422e1;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4666r0;
import com.android.tools.r8.graph.C4704t0;
import com.android.tools.r8.graph.C4723u0;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.F5;
import com.android.tools.r8.graph.G5;
import com.android.tools.r8.graph.H2;
import com.android.tools.r8.graph.H5;
import com.android.tools.r8.graph.L2;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.graph.M5;
import com.android.tools.r8.graph.N4;
import com.android.tools.r8.graph.R2;
import com.android.tools.r8.internal.AT;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.AbstractC6114Vx;
import com.android.tools.r8.internal.AbstractC6662bt0;
import com.android.tools.r8.internal.AbstractC7379gA;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.AbstractC8552nC;
import com.android.tools.r8.internal.AbstractC8880pA;
import com.android.tools.r8.internal.AbstractC9530t40;
import com.android.tools.r8.internal.C10523z10;
import com.android.tools.r8.internal.C4875Al0;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C5629Nm;
import com.android.tools.r8.internal.C5920Sm0;
import com.android.tools.r8.internal.C6190Xe0;
import com.android.tools.r8.internal.C6300Zd;
import com.android.tools.r8.internal.C6620bf0;
import com.android.tools.r8.internal.C7212fA;
import com.android.tools.r8.internal.C8051kC;
import com.android.tools.r8.internal.C8379mA;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.C9073qK;
import com.android.tools.r8.internal.EnumC6871d70;
import com.android.tools.r8.internal.GK;
import com.android.tools.r8.internal.HE;
import com.android.tools.r8.internal.InterfaceC5152Ff0;
import com.android.tools.r8.internal.InterfaceC6285Yx;
import com.android.tools.r8.internal.InterfaceC7158es0;
import com.android.tools.r8.internal.QC;
import com.android.tools.r8.internal.RY;
import com.android.tools.r8.internal.SY;
import com.android.tools.r8.internal.X3;
import com.android.tools.r8.shaking.AbstractC11516y1;
import com.android.tools.r8.shaking.C11245i;
import com.android.tools.r8.shaking.C11297l1;
import com.android.tools.r8.shaking.C11315m2;
import com.android.tools.r8.shaking.C11349o2;
import com.android.tools.r8.shaking.C11510xb;
import com.android.tools.r8.shaking.Q4;
import com.android.tools.r8.synthesis.S;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public final class C11617z {

    public static final boolean f58375c = true;

    public final J f58376a;

    public final C11555d f58377b;

    public C11617z(J j10, C11555d c11555d) {
        this.f58376a = j10;
        this.f58377b = c11555d;
    }

    public static void a(Set set, List list, X x10) {
        set.add((H2) x10.f58305d);
        list.add((H2) x10.f58305d);
    }

    public static void b(C4798y c4798y, C8659ns0 c8659ns0, ExecutorService executorService) {
        if (!f58375c && ((C4514j) c4798y.f()).i()) {
            throw new AssertionError();
        }
        C5629Nm a10 = c4798y.E().f50599F1.a();
        if (a10 != null) {
            a10.a(c4798y);
        }
        J g10 = c4798y.f38408a.g();
        if (!J.f58083g && g10.b()) {
            throw new AssertionError();
        }
        C11613x a11 = new C11617z(g10, g10.f58086c).a(c4798y, c8659ns0);
        c4798y.b(((C4514j) c4798y.f()).a(a11.f58358a).a(a11.f58361d));
        C11615y c11615y = a11.f58359b;
        if (c11615y != null) {
            c4798y.a(c11615y, c4798y.e().a(), executorService, c8659ns0);
        }
        c4798y.a(a11.f58360c, executorService, c8659ns0);
    }

    public static void c(C4798y c4798y, C8659ns0 c8659ns0, ExecutorService executorService) {
        C5629Nm a10 = c4798y.E().f50599F1.a();
        if (a10 != null) {
            a10.a(c4798y);
        }
        J g10 = c4798y.f38408a.g();
        if (!J.f58083g && g10.b()) {
            throw new AssertionError();
        }
        C11613x a11 = new C11617z(g10, g10.f58086c).a(c4798y, c8659ns0);
        c4798y.b(((C11245i) c4798y.f()).a(a11.f58361d));
        C11615y c11615y = a11.f58359b;
        if (c11615y != null) {
            c4798y.a(c11615y, a11.f58358a.f58225a.a(), executorService, c8659ns0);
        } else if (!f58375c && a11.f58358a.f58225a != ((C11245i) c4798y.f()).a()) {
            throw new AssertionError();
        }
        c4798y.b(((C11245i) c4798y.f()).a(a11.f58358a));
        c4798y.a(a11.f58360c, executorService, c8659ns0);
    }

    public final void a(C4798y c4798y, AbstractC11547a0 abstractC11547a0) {
        if (abstractC11547a0.f58222a.d()) {
            return;
        }
        String b10 = S.b(abstractC11547a0.f58222a, abstractC11547a0.getHolder());
        boolean z10 = f58375c;
        if (!z10 && b10.contains(S.a(S.a.f58200b))) {
            throw new AssertionError();
        }
        M2 d10 = c4798y.b().d(C4932Bl.k(b10));
        if (z10) {
            return;
        }
        C11555d c11555d = this.f58377b;
        if (c11555d.f58241b.containsKey(d10) || c11555d.f58242c.containsKey(d10)) {
            C11579l c11579l = abstractC11547a0.f58223b;
            if (c11579l.f58273b == c11579l.f58274c && !this.f58376a.f(d10)) {
                throw new AssertionError();
            }
        }
    }

    public final Map b(C4798y c4798y, Map map, C11608v c11608v, C8659ns0 c8659ns0) {
        IdentityHashMap a10 = a(c4798y, this.f58377b.f58242c);
        c8659ns0.b("Potential equivalences");
        Collection a11 = a(c4798y, a10);
        c8659ns0.d();
        return a(a11, map, c4798y, c11608v, c8659ns0);
    }

    public static void a(Set set, List list, O o10) {
        set.add(o10.f58131d.getHolder());
        list.add(o10.f58131d.getHolder());
    }

    public static void a(C4798y c4798y, C8659ns0 c8659ns0, ExecutorService executorService) {
        boolean z10 = f58375c;
        if (!z10 && c4798y.f().h()) {
            throw new AssertionError();
        }
        if (!z10 && c4798y.f().i()) {
            throw new AssertionError();
        }
        C5629Nm a10 = c4798y.E().f50599F1.a();
        if (a10 != null) {
            a10.a(c4798y);
        }
        J g10 = c4798y.f38408a.g();
        if (!J.f58083g && g10.b()) {
            throw new AssertionError();
        }
        C11613x a11 = new C11617z(g10, g10.f58086c).a(c4798y, c8659ns0);
        c4798y.b(c4798y.f().a(a11.f58358a).a(a11.f58361d));
        C11615y c11615y = a11.f58359b;
        if (c11615y != null) {
            c4798y.a(c11615y, c8659ns0);
        }
        c4798y.a(a11.f58360c, executorService, c8659ns0);
    }

    public static void b(Set set, M2 m22, List list) {
        boolean z10 = f58375c;
        if (!z10 && !set.add(m22)) {
            throw new AssertionError();
        }
        if (!z10 && list.size() != 1) {
            throw new AssertionError();
        }
    }

    public static void b(AbstractC4780x0 abstractC4780x0, L2 l22, BiConsumer biConsumer, M2 m22, C11611w c11611w) {
        H2 c10 = abstractC4780x0.c(m22);
        if (c10.Z0() == null) {
            c10.f36249i = l22;
        }
        O o10 = (O) c11611w.f58351b;
        boolean z10 = f58375c;
        if (!z10 && c10.b0().f36638b.h() != 1) {
            throw new AssertionError();
        }
        if (!z10) {
            N4 b02 = c10.b0();
            b02.getClass();
            if (!b02.a(EnumC6871d70.f47286b)) {
                throw new AssertionError();
            }
        }
        N4 b03 = c10.b0();
        biConsumer.accept(c10, new P(o10.f58331a, o10.f58332b, b03.f36638b.a(EnumC6871d70.f47286b).getReference()));
    }

    public final C11613x a(final C4798y c4798y, final C8659ns0 c8659ns0) {
        QC qc2;
        boolean z10 = f58375c;
        if (!z10) {
            a(c4798y);
        }
        if (!z10) {
            a();
        }
        final C11608v c11608v = new C11608v();
        final C8051kC c8051kC = new C8051kC(4);
        final C8051kC c8051kC2 = new C8051kC(4);
        Set c10 = AbstractC5513Ll0.c();
        final HashMap hashMap = new HashMap();
        AbstractC4780x0 a10 = a(c8659ns0, c4798y, (Map) c8659ns0.a("Method equivalence", new InterfaceC7158es0() {
            @Override
            public final Object get() {
                return C11617z.this.a(c4798y, hashMap, c11608v, c8659ns0);
            }
        }), (Map) c8659ns0.a("Class equivalence", new InterfaceC7158es0() {
            @Override
            public final Object get() {
                return C11617z.this.b(c4798y, hashMap, c11608v, c8659ns0);
            }
        }), c11608v, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C11617z.a(C8051kC.this, (H2) obj, (Y) obj2);
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C11617z.a(C8051kC.this, (H2) obj, (P) obj2);
            }
        }, c10);
        final AbstractC8552nC b10 = c8051kC.b();
        final AbstractC8552nC b11 = c8051kC2.b();
        final Set c11 = AbstractC5513Ll0.c();
        this.f58377b.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11617z.a(AbstractC8552nC.this, b11, c11, (AbstractC11547a0) obj);
            }
        });
        final C11615y c11615y = (c11608v.f58344c.f49890b.isEmpty() && c11608v.f58342a.f49890b.isEmpty() && c11608v.f58343b.f49890b.isEmpty()) ? null : new C11615y(c4798y, c11608v.f58342a, c11608v.f58343b, c11608v.f58344c);
        if (c11615y != null) {
            qc2 = C4875Al0.b(new InterfaceC6285Yx() {
                @Override
                public final void forEach(Consumer consumer) {
                    C11617z.this.a(c11615y, consumer);
                }
            });
        } else {
            qc2 = this.f58377b.f58244e;
        }
        QC qc3 = qc2;
        C11349o2 f10 = c4798y.f().f();
        f10.getClass();
        final C11315m2 c11315m2 = new C11315m2(f10.f57585e);
        c11315m2.f57527a.addAll(f10.f57581a);
        c11315m2.f57528b.addAll(f10.f57582b);
        c11315m2.f57529c.addAll(f10.f57583c);
        c11315m2.f57530d.addAll(f10.f57584d);
        c10.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11315m2.this.c((M2) obj);
            }
        });
        C11555d c11555d = new C11555d(this.f58376a.f58085b, b10, b11, this.f58377b.f58243d, qc3);
        int i10 = AbstractC7552hC.f48487c;
        C11549b c11549b = new C11549b(2, a10, c11555d, C6190Xe0.f45779e, this.f58376a.f58089f);
        M5 m52 = new M5();
        m52.f36605a = a10;
        m52.f36608d.addAll(c11);
        m52.f36609e.addAll(c11);
        return new C11613x(c11549b, c11615y, m52.a(), new C11349o2(c11315m2.f57527a, c11315m2.f57528b, c11315m2.f57529c, c11315m2.f57530d, c11315m2.f57531e));
    }

    public static List b(String str) {
        return new ArrayList();
    }

    public static void b(C4798y c4798y, C11349o2 c11349o2, Set set, final Set set2, final List list, M2 m22, C11611w c11611w) {
        X x10 = (X) c11611w.f58351b;
        x10.f58332b.a(c4798y, m22);
        a(x10.f58331a, (H2) x10.f58305d, c4798y);
        if (c11611w.a(c11349o2)) {
            set.add(m22);
        }
        c11611w.b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11617z.a(Set.this, list, (X) obj);
            }
        });
    }

    public final Map a(C4798y c4798y, Map map, C11608v c11608v, C8659ns0 c8659ns0) {
        IdentityHashMap a10 = a(c4798y, this.f58377b.f58241b);
        c8659ns0.b("Potential equivalences");
        Collection a11 = a(c4798y, a10);
        c8659ns0.d();
        return a(a11, map, c4798y, c11608v, c8659ns0);
    }

    public static void a(C8051kC c8051kC, H2 h22, Y y10) {
        M2 type = h22.getType();
        int i10 = AbstractC7552hC.f48487c;
        c8051kC.a(type, new C5920Sm0(y10));
    }

    public static void a(C8051kC c8051kC, H2 h22, P p10) {
        M2 type = h22.getType();
        int i10 = AbstractC7552hC.f48487c;
        c8051kC.a(type, new C5920Sm0(p10));
    }

    public static void a(AbstractC8552nC abstractC8552nC, AbstractC8552nC abstractC8552nC2, Set set, AbstractC11547a0 abstractC11547a0) {
        M2 holder = abstractC11547a0.getHolder();
        if (abstractC8552nC.containsKey(holder) || abstractC8552nC2.containsKey(holder)) {
            return;
        }
        set.add(holder);
    }

    public final void a(final C11615y c11615y, final Consumer consumer) {
        this.f58377b.b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11617z.a(Consumer.this, c11615y, (M2) obj);
            }
        });
    }

    public static void a(Consumer consumer, C11615y c11615y, M2 m22) {
        c11615y.getClass();
        consumer.accept(c11615y.c(AbstractC5308Hz.g(), m22));
    }

    public final void a(final C4798y c4798y) {
        this.f58377b.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11617z.this.a(c4798y, (AbstractC11547a0) obj);
            }
        });
    }

    public final void a() {
        final Set c10 = AbstractC5513Ll0.c();
        this.f58377b.f58242c.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C11617z.a(Set.this, (M2) obj, (List) obj2);
            }
        });
        this.f58377b.f58241b.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C11617z.b(Set.this, (M2) obj, (List) obj2);
            }
        });
    }

    public static void a(Set set, M2 m22, List list) {
        boolean z10 = f58375c;
        if (!z10 && !set.add(m22)) {
            throw new AssertionError();
        }
        if (!z10 && list.size() != 1) {
            throw new AssertionError();
        }
    }

    public static AbstractC4780x0 a(C8659ns0 c8659ns0, final C4798y c4798y, Map map, Map map2, final C11608v c11608v, final BiConsumer biConsumer, final BiConsumer biConsumer2, final Set set) {
        final L2 b10;
        final AbstractC4780x0 a10 = c4798y.f().a();
        final C11349o2 f10 = c4798y.f().f();
        final Set c10 = AbstractC5513Ll0.c();
        final C11605u c11605u = new C11605u(c4798y, c11608v);
        final ArrayList arrayList = new ArrayList();
        map.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C11617z.a(C4798y.this, f10, set, c10, arrayList, (M2) obj, (C11611w) obj2);
            }
        });
        map2.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C11617z.b(C4798y.this, f10, set, c10, arrayList, (M2) obj, (C11611w) obj2);
            }
        });
        if (c11608v.f58344c.f49890b.isEmpty()) {
            boolean z10 = C11608v.f58341d;
            if (!z10 && !c11608v.f58342a.f49890b.isEmpty()) {
                throw new AssertionError();
            }
            if (!z10 && !c11608v.f58343b.f49890b.isEmpty()) {
                throw new AssertionError();
            }
            boolean z11 = f58375c;
            if (!z11 && !arrayList.isEmpty()) {
                throw new AssertionError();
            }
            if (!z11 && !c10.isEmpty()) {
                throw new AssertionError();
            }
        } else {
            if (!c10.isEmpty()) {
                ArrayList arrayList2 = new ArrayList();
                for (H2 h22 : a10.d()) {
                    if (!c10.contains(h22)) {
                        arrayList2.add(h22);
                    }
                }
                if (!f58375c && arrayList2.size() >= a10.d().size()) {
                    throw new AssertionError();
                }
                a10 = a10.c().a(arrayList2).b();
            }
            boolean z12 = f58375c;
            if (!z12) {
                a(a10, map2);
            }
            if (!z12) {
                a(a10, map);
            }
            c8659ns0.b("Tree fixing");
            AbstractC4761w0 c11 = a10.c();
            c11605u.a((Collection) arrayList);
            c11.a(c11605u.a(a10.d()));
            a10 = c11.b();
            c8659ns0.d();
        }
        if (c4798y.m()) {
            b10 = c4798y.b().b("R8$$SyntheticClass");
        } else {
            b10 = c4798y.b().b("D8$$SyntheticClass");
        }
        c8659ns0.b("Add final synthetics");
        map2.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C11617z.a(AbstractC4780x0.this, b10, biConsumer, (M2) obj, (C11611w) obj2);
            }
        });
        map.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C11617z.b(AbstractC4780x0.this, b10, biConsumer2, (M2) obj, (C11611w) obj2);
            }
        });
        c8659ns0.d();
        c8659ns0.b("Finish lens");
        AbstractC6114Vx.b(map2.values(), map.values()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11617z.a(AbstractC6662bt0.this, c11608v, (C11611w) obj);
            }
        });
        c8659ns0.d();
        for (M2 m22 : map.o()) {
            if (!f58375c && a10.g(m22) == null) {
                throw new AssertionError();
            }
        }
        for (M2 m23 : map2.o()) {
            if (!f58375c && a10.g(m23) == null) {
                throw new AssertionError();
            }
        }
        return a10;
    }

    public static void a(AbstractC4780x0 abstractC4780x0, L2 l22, BiConsumer biConsumer, M2 m22, C11611w c11611w) {
        H2 c10 = abstractC4780x0.c(m22);
        if (!f58375c && c10 == null) {
            throw new AssertionError((Object) ("Expected definition for " + m22.D0()));
        }
        if (c10.Z0() == null) {
            c10.f36249i = l22;
        }
        X x10 = (X) c11611w.f58351b;
        biConsumer.accept(c10, new Y(x10.f58331a, x10.f58332b, c10.f36245e));
    }

    public static void a(AbstractC6662bt0 abstractC6662bt0, C11608v c11608v, G5 g52) {
        g52.getClass();
        if (g52 instanceof F5) {
            C4554l1 reference = g52.W().getReference();
            c11608v.f58342a.f50507e.put(abstractC6662bt0.a(reference), reference);
        } else {
            A2 reference2 = g52.H().getReference();
            c11608v.f58343b.f50507e.put(abstractC6662bt0.a(reference2), reference2);
        }
    }

    public static void a(final AbstractC4780x0 abstractC4780x0, Map map) {
        Iterator it = map.values().iterator();
        while (it.hasNext()) {
            ((C11611w) it.next()).b(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C11617z.a(AbstractC4780x0.this, (AbstractC11602t) obj);
                }
            });
        }
    }

    public static void a(AbstractC4780x0 abstractC4780x0, AbstractC11602t abstractC11602t) {
        if (!f58375c && abstractC4780x0.g(abstractC11602t.d().getType()) != null) {
            throw new AssertionError();
        }
    }

    public static void a(S.b bVar, H2 h22, C4798y c4798y) {
        int d10;
        C4723u0 l02;
        C8570nJ E10 = c4798y.E();
        if (E10.f50595E0 && E10.P() && !E10.f50599F1.f50851W0) {
            boolean z10 = L.f58102d;
            if (!z10 && (c4798y.E().f50697l instanceof ClassFileConsumer)) {
                throw new AssertionError();
            }
            if (!z10) {
                com.android.tools.r8.graph.Q q10 = h22.f36246f;
                if (!q10.o() || q10.I()) {
                    throw new AssertionError();
                }
            }
            C4723u0 k02 = h22.k0();
            C4724u1 c4724u1 = c4798y.E().f50660a;
            com.android.tools.r8.androidapi.a aVar = c4798y.f38404S;
            Iterable z02 = h22.z0();
            aVar.getClass();
            int i10 = com.android.tools.r8.androidapi.f.f35602a;
            com.android.tools.r8.androidapi.h hVar = com.android.tools.r8.androidapi.h.f35609b;
            com.android.tools.r8.androidapi.f a10 = aVar.a(z02);
            Iterator<C4516j1> it = h22.z1().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                C4516j1 next = it.next();
                if (next.b1()) {
                    com.android.tools.r8.androidapi.f fVar = next.f37322o;
                    if (fVar.x()) {
                        a10 = com.android.tools.r8.androidapi.g.f35607b;
                        break;
                    }
                    a10 = a10.a(fVar);
                }
                if (a10.U()) {
                    break;
                }
            }
            C4666r0[] c4666r0Arr = C4666r0.f37690d;
            L2 b10 = c4724u1.b(c4724u1.f38144r6.a());
            C4704t0 c4704t0 = new C4704t0(c4724u1.f38123p1, R2.h.j(bVar.f58202b));
            C4704t0 c4704t02 = new C4704t0(c4724u1.f38131q1, new R2.k(b10));
            if (a10.x()) {
                d10 = -2;
            } else if (a10.U()) {
                d10 = -1;
            } else {
                if (!C4666r0.f37691e && !a10.q()) {
                    throw new AssertionError();
                }
                d10 = a10.F().a().d();
            }
            C4666r0 c4666r0 = new C4666r0(0, new C4422e1(c4724u1.f37930P5, new C4704t0[]{new C4704t0(c4724u1.f38139r1, R2.h.j(d10)), c4704t0, c4704t02}));
            C4666r0[] c4666r0Arr2 = k02.f37806d;
            int length = c4666r0Arr2.length;
            int i11 = 0;
            int i12 = 0;
            while (true) {
                if (i11 < length) {
                    if (c4666r0Arr2[i11].f37693c.f37142b == c4666r0.f37693c.f37142b) {
                        C4666r0[] c4666r0Arr3 = (C4666r0[]) k02.f37806d.clone();
                        c4666r0Arr3[i12] = c4666r0;
                        boolean z11 = X3.f45604a;
                        l02 = c4666r0Arr3.length == 0 ? C4723u0.l0() : new C4723u0(c4666r0Arr3);
                    } else {
                        i12++;
                        i11++;
                    }
                } else {
                    C4666r0[] c4666r0Arr4 = k02.f37806d;
                    int length2 = c4666r0Arr4.length + 1;
                    C4666r0[] c4666r0Arr5 = new C4666r0[length2];
                    System.arraycopy(c4666r0Arr4, 0, c4666r0Arr5, 0, c4666r0Arr4.length);
                    c4666r0Arr5[k02.f37806d.length] = c4666r0;
                    boolean z12 = X3.f45604a;
                    l02 = length2 == 0 ? C4723u0.l0() : new C4723u0(c4666r0Arr5);
                }
            }
            h22.f37066b = l02;
        }
    }

    public final IdentityHashMap a(Collection collection, final Map map, final C4798y c4798y, final C11608v c11608v, C8659ns0 c8659ns0) {
        final HashMap hashMap = new HashMap();
        final IdentityHashMap identityHashMap = new IdentityHashMap();
        final boolean z10 = c4798y.E().f50595E0;
        c8659ns0.b("Groups");
        final ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        collection.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11617z.a(C4798y.this, arrayList2, arrayList, (List) obj);
            }
        });
        arrayList.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11617z.a(C4798y.this, hashMap, identityHashMap, (List) obj);
            }
        });
        final IdentityHashMap identityHashMap2 = new IdentityHashMap();
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            List list = (List) obj;
            if (list.size() > 1) {
                AbstractC11602t abstractC11602t = (AbstractC11602t) list.get(0);
                abstractC11602t.getClass();
                if (abstractC11602t instanceof O) {
                    A2 reference = abstractC11602t.b().f58131d.getReference();
                    for (int i11 = 1; i11 < list.size(); i11++) {
                        identityHashMap2.put(((AbstractC11602t) list.get(i11)).b().f58131d.getReference(), reference);
                    }
                }
            }
        }
        arrayList2.forEach(new Consumer() {
            @Override
            public final void accept(Object obj2) {
                C11617z.a(C4798y.this, hashMap, identityHashMap2, identityHashMap, (List) obj2);
            }
        });
        c8659ns0.d();
        c8659ns0.b("External creation");
        hashMap.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj2, Object obj3) {
                C11617z.this.a(c4798y, z10, map, identityHashMap, (String) obj2, (List) obj3);
            }
        });
        c8659ns0.d();
        identityHashMap.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj2, Object obj3) {
                ((C11611w) obj3).a(new Consumer() {
                    @Override
                    public final void accept(Object obj4) {
                        C11617z.a(C11608v.this, r2, (AbstractC11602t) obj4);
                    }
                });
            }
        });
        return identityHashMap;
    }

    public static void a(C4798y c4798y, List list, List list2, List list3) {
        boolean z10 = false;
        AbstractC11602t abstractC11602t = (AbstractC11602t) list3.get(0);
        abstractC11602t.getClass();
        if (abstractC11602t instanceof O) {
            H5 h52 = abstractC11602t.b().f58131d;
            C11546a c11546a = new C11546a(c4798y, h52);
            h52.a(c11546a);
            z10 = c11546a.f37241e.booleanValue();
        }
        if (z10) {
            list.add(list3);
        } else {
            list2.add(list3);
        }
    }

    public static void a(C4798y c4798y, Map map, Map map2, List list) {
        a(c4798y, map, C6620bf0.f46817i, map2, list);
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x005e A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(final C4798y c4798y, boolean z10, Map map, final Map map2, String str, List list) {
        M2 a10;
        String b10;
        Comparator comparator = new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return C11617z.this.a((C11611w) obj, (C11611w) obj2);
            }
        };
        AT.a(list, comparator);
        for (int i10 = 0; i10 < list.size(); i10++) {
            C11611w c11611w = (C11611w) list.get(i10);
            boolean z11 = f58375c;
            if (!z11) {
                AbstractC11602t abstractC11602t = c11611w.f58351b;
                abstractC11602t.getClass();
                if (!c4798y.E().f50595E0) {
                    C11579l c11579l = abstractC11602t.f58332b;
                    if (c11579l.f58273b != c11579l.f58274c && !abstractC11602t.f58331a.d()) {
                        b10 = abstractC11602t.f58332b.f58273b.U0();
                        if (!b10.equals(str)) {
                            throw new AssertionError();
                        }
                    }
                }
                b10 = S.b(abstractC11602t.f58331a, abstractC11602t.d().getType());
                if (!b10.equals(str)) {
                }
            }
            if (!z11 && i10 != 0) {
                C11611w c11611w2 = (C11611w) list.get(i10 - 1);
                int compare = comparator.compare(c11611w2, c11611w);
                if (!z11 && compare >= 0) {
                    throw new AssertionError();
                }
                int compare2 = comparator.compare(c11611w, c11611w2);
                if (!z11 && compare2 <= 0) {
                    throw new AssertionError();
                }
            }
            AbstractC11602t abstractC11602t2 = c11611w.f58351b;
            S.b bVar = abstractC11602t2.f58331a;
            if (z10) {
                J j10 = this.f58376a;
                H2 d02 = abstractC11602t2.d().d0();
                if (j10.f58086c.f58244e.contains(d02.getType())) {
                    a10 = c11611w.f58351b.d().getType();
                    map2.put(a10, c11611w);
                }
            }
            a10 = a(bVar, str, map, c4798y, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return C11617z.a(C4798y.this, map2, (M2) obj);
                }
            });
            map2.put(a10, c11611w);
        }
    }

    public static void a(C11608v c11608v, M2 m22, AbstractC11602t abstractC11602t) {
        M2 m23 = (M2) c11608v.f58344c.a(abstractC11602t.d().getType(), m22);
        if (!C11608v.f58341d && m23 != null && m23 != m22) {
            throw new AssertionError();
        }
    }

    public static void a(C4798y c4798y, Map map, Map map2, Map map3, List list) {
        boolean a10;
        String b10;
        for (C11611w c11611w : a(c4798y, list, map2)) {
            if (c11611w.f58352c.d()) {
                a10 = true;
            } else {
                a10 = c11611w.f58352c.a() ? false : a(c4798y, c11611w.f58351b);
            }
            if (a10) {
                C11611w c11611w2 = (C11611w) map3.put(c11611w.f58351b.d().getType(), c11611w);
                if (!f58375c && c11611w2 != null) {
                    throw new AssertionError();
                }
            } else {
                AbstractC11602t abstractC11602t = c11611w.f58351b;
                abstractC11602t.getClass();
                if (!c4798y.E().f50595E0) {
                    C11579l c11579l = abstractC11602t.f58332b;
                    if (c11579l.f58273b != c11579l.f58274c && !abstractC11602t.f58331a.d()) {
                        b10 = abstractC11602t.f58332b.f58273b.U0();
                        ((List) map.computeIfAbsent(b10, new Function() {
                            @Override
                            public final Object apply(Object obj) {
                                return C11617z.b((String) obj);
                            }
                        })).add(c11611w);
                    }
                }
                b10 = S.b(abstractC11602t.f58331a, abstractC11602t.d().getType());
                ((List) map.computeIfAbsent(b10, new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return C11617z.b((String) obj);
                    }
                })).add(c11611w);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00bb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static List a(C4798y c4798y, List list, final Map map) {
        final boolean z10;
        ArrayList a10;
        int i10;
        int size;
        int i11;
        if (list.size() == 1) {
            AbstractC11602t abstractC11602t = (AbstractC11602t) list.get(0);
            int i12 = AbstractC7552hC.f48487c;
            return new C5920Sm0(new C11611w(abstractC11602t, C6190Xe0.f45779e, AbstractC9530t40.f52519c));
        }
        if (!f58375c && list.isEmpty()) {
            throw new AssertionError();
        }
        final C6300Zd c6300Zd = c4798y.f().f37255b;
        final AbstractC5308Hz v10 = c4798y.v();
        if (!c4798y.E().f50595E0) {
            HE v11 = c4798y.E().v();
            if (!v11.f40717b && v11.f40716a.isEmpty()) {
                z10 = false;
                a10 = AT.a((Collection) list, new Comparator() {
                    @Override
                    public final int compare(Object obj, Object obj2) {
                        int a11;
                        a11 = ((AbstractC11602t) obj).a((AbstractC11602t) obj2, z10, v10, map, c6300Zd);
                        return a11;
                    }
                });
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                AbstractC11602t abstractC11602t2 = (AbstractC11602t) a10.get(0);
                arrayList2.add(abstractC11602t2);
                i10 = 1;
                ArrayList arrayList3 = arrayList2;
                AbstractC11602t abstractC11602t3 = abstractC11602t2;
                while (i10 < a10.size()) {
                    AbstractC11602t abstractC11602t4 = (AbstractC11602t) a10.get(i10);
                    int i13 = i10;
                    if (abstractC11602t3.a(abstractC11602t4, z10, v10, map, c6300Zd) != 0) {
                        arrayList.add(arrayList3);
                        abstractC11602t3 = abstractC11602t4;
                        arrayList3 = new ArrayList();
                    }
                    arrayList3.add(abstractC11602t4);
                    i10 = i13 + 1;
                }
                arrayList.add(arrayList3);
                final ArrayList arrayList4 = new ArrayList();
                size = arrayList.size();
                i11 = 0;
                while (i11 < size) {
                    Object obj = arrayList.get(i11);
                    i11++;
                    List list2 = (List) obj;
                    if (!f58375c && list2.isEmpty()) {
                        throw new AssertionError();
                    }
                    if (list2.size() == 1) {
                        AbstractC11602t abstractC11602t5 = (AbstractC11602t) list2.get(0);
                        int i14 = AbstractC7552hC.f48487c;
                        arrayList4.add(new C11611w(abstractC11602t5, C6190Xe0.f45779e, AbstractC9530t40.f52519c));
                    } else {
                        ArrayList arrayList5 = null;
                        if (c4798y.m()) {
                            Iterator it = list2.iterator();
                            while (it.hasNext()) {
                                AbstractC11602t abstractC11602t6 = (AbstractC11602t) it.next();
                                if (a(c4798y, abstractC11602t6)) {
                                    if (arrayList5 == null) {
                                        arrayList5 = new ArrayList();
                                    }
                                    arrayList5.add(abstractC11602t6);
                                    it.remove();
                                }
                            }
                        }
                        if (arrayList5 != null) {
                            if (!f58375c && !c4798y.m()) {
                                throw new AssertionError();
                            }
                            arrayList4.add(new C11611w(a(arrayList5, new Consumer() {
                                @Override
                                public final void accept(Object obj2) {
                                    C11617z.a(List.this, (AbstractC11602t) obj2);
                                }
                            }), Collections.unmodifiableList(list2), AbstractC9530t40.f52517a));
                        } else {
                            final ArrayList arrayList6 = new ArrayList(list2.size() - 1);
                            arrayList4.add(new C11611w(a(list2, new Consumer() {
                                @Override
                                public final void accept(Object obj2) {
                                    List.this.add((AbstractC11602t) obj2);
                                }
                            }), Collections.unmodifiableList(arrayList6), AbstractC9530t40.f52518b));
                        }
                    }
                }
                return arrayList4;
            }
        }
        z10 = true;
        a10 = AT.a((Collection) list, new Comparator() {
            @Override
            public final int compare(Object obj2, Object obj22) {
                int a11;
                a11 = ((AbstractC11602t) obj2).a((AbstractC11602t) obj22, z10, v10, map, c6300Zd);
                return a11;
            }
        });
        ArrayList arrayList7 = new ArrayList();
        ArrayList arrayList22 = new ArrayList();
        AbstractC11602t abstractC11602t22 = (AbstractC11602t) a10.get(0);
        arrayList22.add(abstractC11602t22);
        i10 = 1;
        ArrayList arrayList32 = arrayList22;
        AbstractC11602t abstractC11602t32 = abstractC11602t22;
        while (i10 < a10.size()) {
        }
        arrayList7.add(arrayList32);
        final List arrayList42 = new ArrayList();
        size = arrayList7.size();
        i11 = 0;
        while (i11 < size) {
        }
        return arrayList42;
    }

    public static AbstractC11602t a(List list, Consumer consumer) {
        if (!f58375c && list.isEmpty()) {
            throw new AssertionError();
        }
        AbstractC11602t abstractC11602t = (AbstractC11602t) list.get(0);
        for (int i10 = 1; i10 < list.size(); i10++) {
            AbstractC11602t abstractC11602t2 = (AbstractC11602t) list.get(i10);
            if (abstractC11602t2.g().b().b(abstractC11602t.g().b()) < 0) {
                consumer.accept(abstractC11602t);
                abstractC11602t = abstractC11602t2;
            } else {
                consumer.accept(abstractC11602t2);
            }
        }
        return abstractC11602t;
    }

    public static boolean a(C4798y c4798y, AbstractC11602t abstractC11602t) {
        GK gk2;
        if (!c4798y.m()) {
            return false;
        }
        if (!abstractC11602t.d().e0()) {
            return true;
        }
        H2 d02 = abstractC11602t.d().d0();
        J g10 = c4798y.f38408a.g();
        if (!J.f58083g) {
            g10.getClass();
            if (!g10.g(d02.f36245e)) {
                throw new AssertionError();
            }
        }
        C11555d c11555d = g10.f58086c;
        if (!c11555d.f58244e.contains(d02.getType())) {
            return false;
        }
        AbstractC11516y1 r10 = c4798y.r();
        C8570nJ E10 = c4798y.E();
        if (r10.a(d02).d(E10)) {
            return true;
        }
        Iterator it = d02.y1().iterator();
        do {
            gk2 = (GK) it;
            if (!gk2.hasNext()) {
                return false;
            }
        } while (!r10.a((AbstractC4479h1) gk2.next(), d02).d(E10));
        return true;
    }

    public final M2 a(S.b bVar, String str, Map map, C4798y c4798y, Predicate predicate) {
        M2 d10;
        C4724u1 b10 = c4798y.b();
        if (bVar.c()) {
            if (S.f58147a0 || bVar.c()) {
                return b10.d(S.a(bVar.c() ? "" : "$$ExternalSynthetic", bVar, str, ""));
            }
            throw new AssertionError();
        }
        C10523z10 c10523z10 = (C10523z10) map.computeIfAbsent(str, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C11617z.a((String) obj);
            }
        });
        do {
            String num = Integer.toString(c10523z10.a());
            if (!S.f58147a0 && bVar.c() != num.isEmpty()) {
                throw new AssertionError();
            }
            d10 = b10.d(S.a(bVar.c() ? "" : "$$ExternalSynthetic", bVar, str, num));
            if (!predicate.test(d10)) {
                com.android.tools.r8.graph.E0 c10 = c4798y.f().c(d10);
                if (c10 != null) {
                    M2 m22 = c10.f36245e;
                    C11555d c11555d = this.f58377b;
                    if (!c11555d.f58241b.containsKey(m22)) {
                        if (c11555d.f58242c.containsKey(m22)) {
                        }
                    }
                }
            }
            d10 = null;
        } while (d10 == null);
        return d10;
    }

    public static C10523z10 a(String str) {
        return new C10523z10();
    }

    public static Collection a(final C4798y c4798y, IdentityHashMap identityHashMap) {
        final Set newSetFromMap;
        C7212fA a10;
        M2 m22;
        if (identityHashMap.isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        if (!c4798y.H().f50877g0) {
            final ArrayList arrayList = new ArrayList(identityHashMap.size());
            identityHashMap.values().forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C11617z.a(Collection.this, (AbstractC11602t) obj);
                }
            });
            return arrayList;
        }
        if (c4798y.v().j()) {
            newSetFromMap = identityHashMap.o();
        } else {
            newSetFromMap = Collections.newSetFromMap(new IdentityHashMap(identityHashMap.size() * 2));
            for (M2 m23 : identityHashMap.o()) {
                newSetFromMap.add(m23);
                newSetFromMap.add(c4798y.v().a(m23));
            }
        }
        InterfaceC5152Ff0 interfaceC5152Ff0 = new InterfaceC5152Ff0() {
            @Override
            public final AbstractC4592n1 a(AbstractC4592n1 abstractC4592n1) {
                return C11617z.a(Set.this, c4798y, (M2) abstractC4592n1);
            }
        };
        HashMap hashMap = new HashMap(identityHashMap.size());
        ArrayList arrayList2 = new ArrayList();
        boolean z10 = c4798y.E().f50595E0;
        for (AbstractC11602t abstractC11602t : identityHashMap.values()) {
            H2 h22 = (H2) abstractC11602t.d();
            C11297l1 c11297l1 = Q4.f56903v;
            if (c4798y.f38425r != null) {
                c11297l1 = c4798y.r().a(h22);
            }
            if (c11297l1.f57497o) {
                int i10 = AbstractC8880pA.f51464a;
                int i11 = SY.f44229b;
                RY ry = new RY();
                C8379mA c8379mA = new C8379mA(ry);
                ry.a(abstractC11602t.f58331a.f58202b);
                if (!abstractC11602t.f58331a.f()) {
                    abstractC11602t.d().getType().a(c8379mA);
                    a10 = ry.a();
                } else {
                    if (z10) {
                        C11579l c11579l = abstractC11602t.f58332b;
                        if (z10) {
                            m22 = c11579l.f58274c;
                        } else {
                            m22 = c11579l.f58273b;
                        }
                        m22.a(c8379mA);
                    }
                    ry.a(abstractC11602t.f58332b.f58276e.hashCode());
                    abstractC11602t.a(c8379mA, interfaceC5152Ff0);
                    a10 = ry.a();
                }
                ((List) hashMap.computeIfAbsent(a10, new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return C11617z.a((AbstractC7379gA) obj);
                    }
                })).add(abstractC11602t);
            } else {
                int i12 = AbstractC7552hC.f48487c;
                arrayList2.add(new C5920Sm0(abstractC11602t));
            }
        }
        if (arrayList2.isEmpty()) {
            return hashMap.values();
        }
        arrayList2.addAll(hashMap.values());
        return arrayList2;
    }

    public static void a(Collection collection, AbstractC11602t abstractC11602t) {
        int i10 = AbstractC7552hC.f48487c;
        collection.add(new C5920Sm0(abstractC11602t));
    }

    public static M2 a(Set set, C4798y c4798y, M2 m22) {
        return set.contains(m22) ? c4798y.E().m().f37905M1 : m22;
    }

    public static List a(AbstractC7379gA abstractC7379gA) {
        return new ArrayList();
    }

    public static IdentityHashMap a(C4798y c4798y, AbstractC8552nC abstractC8552nC) {
        IdentityHashMap identityHashMap = new IdentityHashMap(abstractC8552nC.size());
        for (AbstractC11547a0 abstractC11547a0 : C9073qK.b((Iterable) abstractC8552nC.values())) {
            Objects.requireNonNull(c4798y);
            AbstractC11602t a10 = abstractC11547a0.a(new C11510xb(c4798y));
            if (a10 == null) {
                if (!f58375c) {
                    throw new AssertionError();
                }
            } else if (a10.f()) {
                identityHashMap.put(abstractC11547a0.getHolder(), a10);
            } else if (!f58375c) {
                throw new AssertionError();
            }
        }
        return identityHashMap;
    }

    public static boolean a(C4798y c4798y, Map map, M2 m22) {
        if (c4798y.f().i() && c4798y.h().j(m22)) {
            return true;
        }
        return map.containsKey(m22);
    }

    public static void a(List list, AbstractC11602t abstractC11602t) {
        int i10 = AbstractC7552hC.f48487c;
        list.add(new C11611w(abstractC11602t, C6190Xe0.f45779e, AbstractC9530t40.f52517a));
    }

    public final int a(C11611w c11611w, C11611w c11611w2) {
        return c11611w.f58351b.d().getType().compareTo(c11611w2.f58351b.d().getType());
    }

    public static void a(C4798y c4798y, C11349o2 c11349o2, Set set, final Set set2, final List list, M2 m22, C11611w c11611w) {
        O o10 = (O) c11611w.f58351b;
        o10.f58332b.a(c4798y, m22);
        a(o10.f58331a, o10.f58131d.getHolder(), c4798y);
        if (c11611w.a(c11349o2)) {
            set.add(m22);
        }
        c11611w.b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11617z.a(Set.this, list, (O) obj);
            }
        });
    }

    public static void a(final AbstractC6662bt0 abstractC6662bt0, final C11608v c11608v, C11611w c11611w) {
        ((H2) c11611w.f58351b.d()).k(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C11617z.a(AbstractC6662bt0.this, c11608v, (G5) obj);
            }
        });
    }
}
