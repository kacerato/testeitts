package com.android.tools.r8.naming;

import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.Y5;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.AbstractC6037Un;
import com.android.tools.r8.internal.C10604zY0;
import com.android.tools.r8.internal.C5863Rn;
import com.android.tools.r8.internal.C6104Vs;
import com.android.tools.r8.internal.C7333fv;
import com.android.tools.r8.internal.C8085kR;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.C9406sK;
import com.android.tools.r8.internal.CK;
import com.android.tools.r8.internal.JK;
import com.android.tools.r8.internal.MW;
import com.android.tools.r8.internal.QC;
import com.android.tools.r8.internal.TU;
import com.android.tools.r8.internal.Yi1;
import com.android.tools.r8.shaking.C11245i;
import com.bumptech.glide.load.engine.GlideException;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiPredicate;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.stream.Collectors;

public final class K {

    public static final G f55669f = new G();

    public static final boolean f55670g = true;

    public final C4798y f55671a;

    public final Y5 f55672b;

    public final Y f55673c;

    public final H f55674d = new H(new HashMap());

    public final HashMap f55675e = new HashMap();

    public K(C4798y c4798y, Y y10, Y5 y52) {
        this.f55671a = c4798y;
        this.f55673c = y10;
        this.f55672b = y52;
    }

    public final Comparator a() {
        final H h10 = this.f55674d;
        Objects.requireNonNull(h10);
        return Comparator.comparing(new Function() {
            @Override
            public final Object apply(Object obj) {
                return (I) C5863Rn.this.a((com.android.tools.r8.graph.G0) obj);
            }
        });
    }

    public final I b() {
        return new I(this);
    }

    public final I c() {
        return new I(this);
    }

    public final void a(C8659ns0 c8659ns0, List list) {
        c8659ns0.b("Interface minification");
        c8659ns0.b("Reserve direct and compute hierarchy");
        Iterator<E> it = list.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.E0 e02 = (com.android.tools.r8.graph.E0) it.next();
            if (!f55670g && !e02.isInterface()) {
                throw new AssertionError();
            }
            Y y10 = this.f55673c;
            com.android.tools.r8.graph.M2 m22 = e02.f36245e;
            Z z10 = y10.f55795a;
            z10.a(m22, m22, z10.f55810i);
            J j10 = new J(this, e02);
            j10.f55659c.add(e02.f36245e);
            this.f55675e.put(e02.f36245e, j10);
        }
        Iterator it2 = this.f55675e.entrySet().iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Map.Entry entry = (Map.Entry) it2.next();
            for (com.android.tools.r8.graph.M2 m23 : ((J) entry.getValue()).f55657a.f36248h.f36675b) {
                J j11 = (J) this.f55675e.get(m23);
                if (j11 != null) {
                    j11.f55658b.add((com.android.tools.r8.graph.M2) entry.getKey());
                }
            }
        }
        c8659ns0.d();
        c8659ns0.b("Compute map");
        a(list);
        Iterator<E> it3 = list.iterator();
        while (it3.hasNext()) {
            com.android.tools.r8.graph.E0 e03 = (com.android.tools.r8.graph.E0) it3.next();
            J j12 = (J) this.f55675e.get(e03.f36245e);
            if (!f55670g && j12 == null) {
                throw new AssertionError();
            }
            C9406sK C02 = e03.C0();
            CK a10 = JK.a(C02.f52337b.iterator(), C02.f52338c);
            while (a10.f43396b.hasNext()) {
                com.android.tools.r8.graph.H0 h02 = (com.android.tools.r8.graph.H0) a10.a(a10.f43396b.next());
                H h10 = this.f55674d;
                Function a11 = TU.a(new Supplier() {
                    @Override
                    public final Object get() {
                        return K.this.b();
                    }
                });
                h10.getClass();
                ((I) h10.a(a11, new C7333fv(f55669f, h02))).a(h02, j12);
            }
        }
        c8659ns0.d();
        Set o10 = ((C11245i) this.f55671a.f()).f57406u.o();
        c8659ns0.b("Union-find");
        final C6104Vs c6104Vs = new C6104Vs();
        o10.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                K.this.a(c6104Vs, (com.android.tools.r8.graph.D0) obj);
            }
        });
        c8659ns0.d();
        c8659ns0.b("States for union");
        final H h11 = new H(new HashMap());
        BiConsumer biConsumer = new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                ((Set) C5863Rn.this.a(TU.a(new C10604zY0()), (C7333fv) obj)).add((C7333fv) obj2);
            }
        };
        for (Object obj : c6104Vs.f45194a.o()) {
            biConsumer.accept(c6104Vs.b(obj), obj);
        }
        h11.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj2, Object obj3) {
                K.this.a((com.android.tools.r8.graph.H0) obj2, (Set) obj3);
            }
        });
        c8659ns0.d();
        c8659ns0.b("Sort");
        List<com.android.tools.r8.graph.H0> list2 = (List) this.f55674d.f43368b.o().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj2) {
                return C6104Vs.this.c((C7333fv) obj2);
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj2) {
                return (com.android.tools.r8.graph.H0) ((C7333fv) obj2).a();
            }
        }).sorted(this.f55671a.H().f50857Z0.a(a())).collect(Collectors.toList());
        c8659ns0.d();
        boolean z11 = f55670g;
        if (!z11) {
            c(list2);
        }
        if (!z11) {
            b(list2);
        }
        c8659ns0.b("Reserve in groups");
        ArrayList arrayList = new ArrayList();
        for (com.android.tools.r8.graph.H0 h03 : list2) {
            I i10 = (I) this.f55674d.f43368b.get(new C7333fv(f55669f, h03));
            if (!f55670g && i10 == null) {
                throw new AssertionError();
            }
            com.android.tools.r8.graph.L2 a12 = i10.a();
            if (a12 == null) {
                arrayList.add(h03);
            } else {
                i10.b(a12);
            }
        }
        c8659ns0.d();
        c8659ns0.b("Rename in groups");
        int size = arrayList.size();
        int i11 = 0;
        while (i11 < size) {
            Object obj2 = arrayList.get(i11);
            i11++;
            com.android.tools.r8.graph.H0 h04 = (com.android.tools.r8.graph.H0) obj2;
            I i12 = (I) this.f55674d.f43368b.get(new C7333fv(f55669f, h04));
            boolean z12 = f55670g;
            if (!z12 && i12 == null) {
                throw new AssertionError();
            }
            if (!z12 && i12.a() != null) {
                throw new AssertionError();
            }
            com.android.tools.r8.graph.L2 a13 = a(h04, i12);
            if (!z12 && a13 == null) {
                throw new AssertionError();
            }
            QC qc2 = this.f55671a.E().f50586B0;
            if (!qc2.isEmpty() && i12.f55647c.j().map(new Function() {
                @Override
                public final Object apply(Object obj3) {
                    return ((com.android.tools.r8.graph.H0) obj3).r();
                }
            }).anyMatch(new Yi1(qc2))) {
                a(h04.getReference(), i12.f55647c.i(), System.out);
            }
        }
        int size2 = arrayList.size();
        int i13 = 0;
        while (i13 < size2) {
            Object obj3 = arrayList.get(i13);
            i13++;
            com.android.tools.r8.graph.H0 h05 = (com.android.tools.r8.graph.H0) obj3;
            I i14 = (I) this.f55674d.f43368b.get(new C7333fv(f55669f, h05));
            if (!i14.f55648d.isEmpty()) {
                C10913b0 b10 = this.f55673c.f55795a.b(h05.p());
                com.android.tools.r8.graph.L2 a14 = b10.a(h05);
                if (!f55670g && a14 == null) {
                    throw new AssertionError();
                }
                ArrayList arrayList2 = i14.f55648d;
                int size3 = arrayList2.size();
                int i15 = 0;
                while (i15 < size3) {
                    Object obj4 = arrayList2.get(i15);
                    i15++;
                    com.android.tools.r8.graph.H0 h06 = (com.android.tools.r8.graph.H0) obj4;
                    com.android.tools.r8.graph.L2 a15 = a(h06, b10, i14);
                    this.f55673c.a(h06, a15);
                    ((C10908a0) this.f55673c.f55795a.b(h06.p()).c(h06.getReference())).a(a15, h06.getReference());
                    ((C10908a0) b10.c(h06.getReference())).a(a15, h06.getReference());
                }
            }
        }
        c8659ns0.d();
        c8659ns0.d();
    }

    public final void c(List list) {
        final HashSet hashSet = new HashSet(list.size());
        list.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                K.b(Set.this, (com.android.tools.r8.graph.H0) obj);
            }
        });
        final Set c10 = AbstractC5513Ll0.c();
        final Set c11 = AbstractC5513Ll0.c();
        this.f55674d.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                I i10 = (I) obj2;
                i10.f55647c.a(new Consumer() {
                    @Override
                    public final void accept(Object obj3) {
                        K.a(Set.this, r2, r3, r4, (com.android.tools.r8.graph.H0) obj3);
                    }
                });
            }
        });
        boolean z10 = f55670g;
        if (!z10 && c11.size() != c10.size()) {
            throw new AssertionError();
        }
        if (!z10 && !c10.containsAll(c11)) {
            throw new AssertionError();
        }
    }

    public final void b(List list) {
        final HashSet hashSet = new HashSet(list.size());
        list.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                K.a(Set.this, (com.android.tools.r8.graph.H0) obj);
            }
        });
        final HashSet hashSet2 = new HashSet();
        final HashSet hashSet3 = new HashSet();
        this.f55674d.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                K.a(Set.this, hashSet, hashSet2, (com.android.tools.r8.graph.H0) obj, (I) obj2);
            }
        });
        boolean z10 = f55670g;
        if (!z10 && hashSet3.size() != hashSet2.size()) {
            throw new AssertionError();
        }
        if (!z10 && !hashSet2.containsAll(hashSet3)) {
            throw new AssertionError();
        }
    }

    public static void b(Set set, com.android.tools.r8.graph.H0 h02) {
        set.add(new C7333fv(f55669f, h02));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(C6104Vs c6104Vs, com.android.tools.r8.graph.D0 d02) {
        HashSet hashSet = new HashSet();
        AbstractC6037Un a10 = ((C11245i) this.f55671a.f()).a(d02, this.f55671a);
        Iterator it = a10.f45165b.values().iterator();
        while (it.hasNext()) {
            C7333fv c7333fv = new C7333fv(f55669f, (com.android.tools.r8.graph.H0) it.next());
            I i10 = (I) this.f55674d.f43368b.get(c7333fv);
            if (!f55670g && i10 == null) {
                throw new AssertionError(c7333fv);
            }
            i10.f55646b.add(d02);
            hashSet.add(c7333fv);
        }
        if (hashSet.isEmpty()) {
            return;
        }
        C4798y c4798y = this.f55671a;
        C8085kR a11 = C8085kR.a(d02, c4798y, (C4514j) c4798y.f(), null);
        ArrayList arrayList = a11 != C8085kR.f49623j ? a11.f49629e : null;
        if (arrayList != null) {
            for (int i11 = 1; i11 < arrayList.size(); i11++) {
                com.android.tools.r8.graph.E0 g10 = this.f55671a.g((com.android.tools.r8.graph.M2) arrayList.get(i11));
                if (!f55670g && !g10.isInterface()) {
                    throw new AssertionError();
                }
                for (com.android.tools.r8.graph.H0 h02 : a10.f45165b.values()) {
                    C9406sK C12 = g10.C1();
                    CK a12 = JK.a(C12.f52337b.iterator(), C12.f52338c);
                    while (a12.f43396b.hasNext()) {
                        com.android.tools.r8.graph.H0 h03 = (com.android.tools.r8.graph.H0) a12.a(a12.f43396b.next());
                        if (h02.getReference().t0() != h03.getReference().t0() && MW.f42312c.b(h02.getReference(), h03.getReference())) {
                            H h10 = this.f55674d;
                            Function a13 = TU.a(new Supplier() {
                                @Override
                                public final Object get() {
                                    return K.this.c();
                                }
                            });
                            h10.getClass();
                            ((I) h10.a(a13, new C7333fv(f55669f, h02))).f55648d.add(h03);
                        }
                    }
                }
            }
        }
        if (hashSet.size() > 1) {
            C7333fv c7333fv2 = (C7333fv) hashSet.iterator().next();
            Object b10 = c6104Vs.b(c7333fv2);
            if (b10 == null) {
                b10 = c6104Vs.d(c7333fv2);
            }
            C7333fv c7333fv3 = (C7333fv) b10;
            Iterator it2 = hashSet.iterator();
            while (it2.hasNext()) {
                C7333fv c7333fv4 = (C7333fv) it2.next();
                if (c7333fv3 == c7333fv4) {
                    if (c6104Vs.b(c7333fv3) == null) {
                        c6104Vs.d(c7333fv3);
                    }
                } else {
                    Object b11 = c6104Vs.b(c7333fv3);
                    if (b11 == null) {
                        b11 = c6104Vs.d(c7333fv3);
                    }
                    Object b12 = c6104Vs.b(c7333fv4);
                    if (b12 == null) {
                        b12 = c6104Vs.d(c7333fv4);
                    }
                    c6104Vs.a(b11, b12);
                }
            }
        }
    }

    public final void a(com.android.tools.r8.graph.H0 h02, Set set) {
        I i10 = (I) this.f55674d.f43368b.get(new C7333fv(f55669f, h02));
        if (!f55670g && i10 == null) {
            throw new AssertionError();
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            i10.a((I) this.f55674d.f43368b.get((C7333fv) it.next()));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x00a4, code lost:
    
        if (r0.b(r2, r6.getReference()) != false) goto L42;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final com.android.tools.r8.graph.L2 a(com.android.tools.r8.graph.H0 h02, final I i10) {
        boolean z10 = f55670g;
        if (!z10 && i10.a() != null) {
            throw new AssertionError();
        }
        if (!z10) {
            C5863Rn c5863Rn = i10.f55647c;
            if (!c5863Rn.f43368b.containsKey(c5863Rn.b(h02))) {
                throw new AssertionError();
            }
        }
        if (!z10) {
            com.android.tools.r8.graph.M2 p10 = h02.p();
            C5863Rn c5863Rn2 = i10.f55647c;
            Set set = (Set) c5863Rn2.f43368b.get(c5863Rn2.b(h02));
            if (set != null) {
                Iterator it = set.iterator();
                while (it.hasNext()) {
                    if (((J) it.next()).f55659c.contains(p10)) {
                    }
                }
            }
            throw new AssertionError();
        }
        Y y10 = this.f55673c;
        C10913b0 b10 = y10.f55795a.b(h02.p());
        BiPredicate biPredicate = new BiPredicate() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                boolean a10;
                a10 = I.this.a((com.android.tools.r8.graph.L2) obj);
                return a10;
            }
        };
        com.android.tools.r8.graph.L2 d10 = b10.d(h02.getReference());
        if (d10 == null) {
            Set d11 = b10.f55840c.d(h02.getReference());
            if (d11 != null && d11.size() == 1) {
                d10 = (com.android.tools.r8.graph.L2) d11.iterator().next();
            }
            d10 = b10.f55842e.a(h02, (C10908a0) b10.c(h02.getReference()), biPredicate);
            if (!C10913b0.f55839f && d10 == null) {
                throw new AssertionError();
            }
        }
        i10.a(d10, this.f55673c);
        return d10;
    }

    public static com.android.tools.r8.graph.L2 a(com.android.tools.r8.graph.H0 h02, C10913b0 c10913b0, final I i10) {
        BiPredicate biPredicate = new BiPredicate() {
            @Override
            public final boolean test(Object obj, Object obj2) {
                boolean a10;
                a10 = I.this.a((com.android.tools.r8.graph.L2) obj);
                return a10;
            }
        };
        com.android.tools.r8.graph.L2 a10 = c10913b0.f55842e.a(h02, (C10908a0) c10913b0.c(h02.getReference()), biPredicate);
        if (C10913b0.f55839f || a10 != null) {
            return a10;
        }
        throw new AssertionError();
    }

    public final void a(List list) {
        list.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                K.this.a((com.android.tools.r8.graph.E0) obj);
            }
        });
    }

    public final void a(final com.android.tools.r8.graph.E0 e02) {
        this.f55672b.g(e02.getType()).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                K.this.a(e02, (com.android.tools.r8.graph.M2) obj);
            }
        });
    }

    public final void a(com.android.tools.r8.graph.E0 e02, com.android.tools.r8.graph.M2 m22) {
        J j10;
        com.android.tools.r8.graph.E0 a10 = this.f55671a.a(m22);
        if (a10 == null || a10.isInterface()) {
            return;
        }
        com.android.tools.r8.graph.M2 a11 = this.f55673c.a(m22);
        if (((C10928e0) this.f55673c.f55795a.f55806e.get(a11)) == null || (j10 = (J) this.f55675e.get(e02.getType())) == null) {
            return;
        }
        j10.f55659c.add(a11);
    }

    public static void a(Set set, com.android.tools.r8.graph.H0 h02) {
        set.add(new C7333fv(f55669f, h02));
    }

    public static void a(Set set, Set set2, Set set3, com.android.tools.r8.graph.H0 h02, I i10) {
        Iterator it = i10.f55646b.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.D0 d02 = (com.android.tools.r8.graph.D0) it.next();
            set.add(d02);
            if (set2.contains(new C7333fv(f55669f, h02))) {
                boolean add = set3.add(d02);
                if (!f55670g && !add) {
                    throw new AssertionError();
                }
            }
        }
    }

    public static void a(Set set, Set set2, com.android.tools.r8.graph.H0 h02, Set set3, com.android.tools.r8.graph.H0 h03) {
        set.add(h03.d());
        if (set2.contains(new C7333fv(f55669f, h02))) {
            boolean add = set3.add(h03.d());
            if (!f55670g && !add) {
                throw new AssertionError();
            }
        }
    }

    public static void a(com.android.tools.r8.graph.A2 a22, ArrayList arrayList, PrintStream printStream) {
        printStream.println("-----------------------------------------------------------------------");
        printStream.println("assignNameToInterfaceMethod(`" + a22.j0() + "`)");
        printStream.println("-----------------------------------------------------------------------");
        printStream.println("Source methods:");
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            printStream.println(GlideException.a.f59088e + ((com.android.tools.r8.graph.H0) obj).r());
        }
        printStream.println("States:");
        printStream.println();
    }
}
