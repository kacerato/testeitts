package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.AbstractC4479h1;
import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4425e4;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4462g3;
import com.android.tools.r8.graph.C4500i3;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4553l0;
import com.android.tools.r8.graph.C4585md;
import com.android.tools.r8.graph.C4615o5;
import com.android.tools.r8.graph.C4634p5;
import com.android.tools.r8.graph.C4723u0;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.EnumC4535k1;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.AbstractC8028k40;
import com.android.tools.r8.internal.AbstractC8333lv;
import com.android.tools.r8.internal.AbstractC9530t40;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.C8696o40;
import com.android.tools.r8.internal.C9073qK;
import com.android.tools.r8.internal.EnumC6871d70;
import com.android.tools.r8.internal.X60;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public final class V4 {

    public static final boolean f57058h = true;

    public final C4798y f57059a;

    public final C11514y f57060b;

    public final Y4 f57061c;

    public final Set f57062d;

    public final Set f57063e;

    public final Set f57064f;

    public final Set f57065g;

    public V4(C4798y c4798y) {
        this(c4798y, C11514y.f57988a);
    }

    public static boolean a(Set set, com.android.tools.r8.graph.P5 p52) {
        return set.contains(p52.f36704b);
    }

    public static void b(com.android.tools.r8.graph.H2 h22, Predicate predicate, Function function) {
        com.android.tools.r8.graph.E0 e02;
        if (h22.q1() && predicate.test(h22.f36245e)) {
            if (h22.t1()) {
                a(h22, predicate, function);
                return;
            }
            if (!f57058h && !h22.u1()) {
                throw new AssertionError();
            }
            if (predicate.test(h22.T0()) || (e02 = (com.android.tools.r8.graph.E0) function.apply(h22.T0())) == null) {
                return;
            }
            h22.f36255o = null;
            for (C4634p5 c4634p5 : e02.V0()) {
                if (c4634p5.a() != h22.f36245e && predicate.test(c4634p5.a())) {
                    com.android.tools.r8.graph.E0 e03 = (com.android.tools.r8.graph.E0) function.apply(c4634p5.a());
                    if (e03 != null) {
                        com.android.tools.r8.graph.M2 m22 = h22.f36245e;
                        if (!com.android.tools.r8.graph.E0.f36243t && m22 == null) {
                            throw new AssertionError();
                        }
                        e03.f36255o = new C4615o5(m22);
                    }
                    h22.V0().add(new C4634p5(c4634p5.a()));
                }
            }
        }
    }

    public V4(C4798y c4798y, C11514y c11514y) {
        Y4 y42;
        this.f57062d = AbstractC5513Ll0.c();
        this.f57063e = AbstractC5513Ll0.c();
        this.f57064f = AbstractC5513Ll0.c();
        this.f57065g = AbstractC5513Ll0.c();
        final C8570nJ E10 = c4798y.E();
        this.f57059a = c4798y;
        this.f57060b = c11514y;
        if (E10.f50635R1 != null) {
            y42 = new Y4(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    AbstractC8333lv.a(r0.f50691j, C8570nJ.this.f50635R1, (String) obj);
                }
            });
        } else {
            y42 = Y4.f57130e;
        }
        this.f57061c = y42;
    }

    public final com.android.tools.r8.graph.O5 a(ExecutorService executorService, C8659ns0 c8659ns0, com.android.tools.r8.graph.M5 m52) {
        c8659ns0.b("Pruning application");
        C4462g3 a10 = ((C11245i) this.f57059a.f()).a().a();
        C4462g3.a aVar = (C4462g3.a) a10.c().a((AbstractCollection) a(a10.e()));
        if (!this.f57064f.isEmpty() || this.f57059a.E().f50684g1) {
            a10 = aVar.b();
        }
        this.f57059a.b().b();
        C8696o40 c8696o40 = C8696o40.f51162b;
        AbstractC8028k40.a(a10.d(), this.f57059a.E().G(), executorService, new U4(this));
        if (!f57058h) {
            this.f57059a.b().e();
        }
        m52.f36605a = a10;
        Set set = this.f57064f;
        m52.f36608d.addAll(set);
        m52.f36609e.addAll(set);
        m52.f36610f.addAll(this.f57062d);
        m52.f36611g.addAll(this.f57063e);
        m52.f36606b.addAll(this.f57065g);
        com.android.tools.r8.graph.O5 a11 = m52.a();
        this.f57059a.a(a11, executorService, c8659ns0);
        this.f57059a.getClass();
        c8659ns0.d();
        return a11;
    }

    public final void b(com.android.tools.r8.graph.H2 h22) {
        for (C4460g1 c4460g1 : h22.I0()) {
            if (!f57058h && c4460g1.f37207l.i()) {
                C11245i c11245i = (C11245i) this.f57059a.f();
                if (!c11245i.f57407v.a(c4460g1, c11245i.j(), c11245i)) {
                    throw new AssertionError((Object) ("Expected field `" + c4460g1.getReference().j0() + "` to be absent"));
                }
            }
        }
    }

    public final ArrayList a(Collection collection) {
        C11245i c11245i = (C11245i) this.f57059a.f();
        C8570nJ E10 = this.f57059a.E();
        ArrayList arrayList = new ArrayList();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) it.next();
            boolean contains = c11245i.f57396k.contains(h22.f36245e);
            if (E10.f50684g1) {
                arrayList.add(h22);
                a(h22);
                if (!contains) {
                    h22.f37066b = C4723u0.l0();
                    h22.k(new Consumer() {
                        @Override
                        public final void accept(Object obj) {
                            ((com.android.tools.r8.graph.G5) obj).y();
                        }
                    });
                }
            } else if (contains) {
                arrayList.add(h22);
                if (!c11245i.f57405t.c(h22) && !E10.f50674d1) {
                    if (h22.p1()) {
                        h22.f36246f.a();
                    }
                    h22.f36246f.M();
                }
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                Iterator<com.android.tools.r8.graph.M2> it2 = h22.R0().iterator();
                while (it2.hasNext()) {
                    a(it2.next(), linkedHashSet);
                }
                if (!linkedHashSet.isEmpty()) {
                    a(!this.f57059a.r().a(h22).c(this.f57059a.E()), h22.f36247g, linkedHashSet, h22);
                }
                if (linkedHashSet.isEmpty()) {
                    h22.f36248h = com.android.tools.r8.graph.O2.k0();
                } else {
                    h22.f36248h = new com.android.tools.r8.graph.O2((com.android.tools.r8.graph.M2[]) linkedHashSet.toArray(com.android.tools.r8.graph.M2.f36589h));
                }
                a(h22);
            } else {
                this.f57064f.add(h22.f36245e);
                if (h22.Z0() != null) {
                    this.f57059a.f38398M.put(h22.f36245e, h22.Z0().toString());
                }
                this.f57061c.a(h22);
            }
        }
        this.f57061c.a();
        return arrayList;
    }

    public final void a(boolean z10, com.android.tools.r8.graph.M2 m22, LinkedHashSet linkedHashSet, com.android.tools.r8.graph.H2 h22) {
        com.android.tools.r8.graph.E0 g10 = this.f57059a.g(m22);
        if (g10 == null || g10.f0()) {
            return;
        }
        Iterator<com.android.tools.r8.graph.M2> it = g10.f36248h.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.M2 next = it.next();
            if (z10) {
                C4798y c4798y = this.f57059a;
                c4798y.getClass();
                com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(next == h22.f36245e ? h22 : c4798y.a(next));
                if (a10 != null && this.f57059a.r().a(a10).c(this.f57059a.E())) {
                }
            }
            if (linkedHashSet.remove(next) && linkedHashSet.isEmpty()) {
                return;
            }
        }
        if (g10.f36247g != null) {
            if (!f57058h && linkedHashSet.isEmpty()) {
                throw new AssertionError();
            }
            a(z10, g10.f36247g, linkedHashSet, h22);
        }
    }

    public final void a(com.android.tools.r8.graph.H2 h22) {
        List d10;
        List d11;
        this.f57061c.b(h22);
        Iterable<C4516j1> H02 = h22.H0();
        if (H02 instanceof List) {
            d10 = (List) H02;
        } else {
            d10 = C9073qK.d(H02);
        }
        C4516j1[] a10 = a(h22, Collections.unmodifiableList(d10));
        if (a10 != null) {
            h22.f36252l.a(a10);
        }
        Iterable<C4516j1> D12 = h22.D1();
        if (D12 instanceof List) {
            d11 = (List) D12;
        } else {
            d11 = C9073qK.d(D12);
        }
        C4516j1[] a11 = a(h22, Collections.unmodifiableList(d11));
        if (a11 != null) {
            h22.a(a11);
        }
        C4460g1[] a12 = a((List) h22.k1());
        if (a12 != null) {
            h22.a(a12);
        }
        C4460g1[] a13 = a((List) h22.A1());
        if (a13 != null) {
            h22.b(a13);
        }
        h22.e(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return V4.this.a((C4425e4) obj);
            }
        });
        h22.d(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return V4.this.a((C4500i3) obj);
            }
        });
        Predicate predicate = new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return V4.this.a((com.android.tools.r8.graph.M2) obj);
            }
        };
        C4798y c4798y = this.f57059a;
        Objects.requireNonNull(c4798y);
        b(h22, predicate, new C11510xb(c4798y));
        if (a12 != null && !h22.X0().isEmpty()) {
            h22.h(X60.a(a(a12)));
        }
        h22.g(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return V4.this.a((com.android.tools.r8.graph.A5) obj);
            }
        });
        this.f57061c.b();
        if (f57058h) {
            return;
        }
        b(h22);
    }

    public static Predicate a(final C4460g1[] c4460g1Arr) {
        if (c4460g1Arr.length == 0) {
            return EnumC6871d70.f47287c;
        }
        if (c4460g1Arr.length < 10) {
            return new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return V4.a(c4460g1Arr, (com.android.tools.r8.graph.P5) obj);
                }
            };
        }
        final Set c10 = AbstractC5513Ll0.c();
        for (C4460g1 c4460g1 : c4460g1Arr) {
            c10.add(c4460g1.getReference());
        }
        return new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return V4.a(Set.this, (com.android.tools.r8.graph.P5) obj);
            }
        };
    }

    public static boolean a(C4460g1[] c4460g1Arr, com.android.tools.r8.graph.P5 p52) {
        return com.android.tools.r8.internal.X3.a(c4460g1Arr, new C4585md(), p52.f36704b);
    }

    public final boolean a(com.android.tools.r8.graph.M2 m22) {
        return ((C11245i) this.f57059a.f()).i(m22);
    }

    public final void a(com.android.tools.r8.graph.M2 m22, LinkedHashSet linkedHashSet) {
        if (((C11245i) this.f57059a.f()).i(m22)) {
            linkedHashSet.add(m22);
            return;
        }
        com.android.tools.r8.graph.H2 b10 = this.f57059a.b(m22);
        boolean z10 = f57058h;
        if (!z10 && b10 == null) {
            throw new AssertionError();
        }
        if (!z10 && !b10.isInterface()) {
            throw new AssertionError();
        }
        for (com.android.tools.r8.graph.M2 m23 : b10.f36248h.f36675b) {
            a(m23, linkedHashSet);
        }
    }

    public static void a(com.android.tools.r8.graph.H2 h22, final Predicate predicate, final Function function) {
        h22.V0().removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return V4.a(Function.this, predicate, (C4634p5) obj);
            }
        });
    }

    public static boolean a(Function function, Predicate predicate, C4634p5 c4634p5) {
        return (function.apply(c4634p5.a()) == null || predicate.test(c4634p5.a())) ? false : true;
    }

    public final boolean a(C4500i3 c4500i3) {
        C11245i c11245i = (C11245i) this.f57059a.f();
        com.android.tools.r8.graph.M2 m22 = c4500i3.f37289a;
        if (m22 != null && !((C11245i) this.f57059a.f()).i(m22)) {
            return true;
        }
        if (c4500i3.a() != null) {
            return !c11245i.f57403r.contains(c4500i3.a());
        }
        return false;
    }

    public final boolean a(C4425e4 c4425e4) {
        com.android.tools.r8.graph.M2 a10;
        if (!((C11245i) this.f57059a.f()).f37305h.f57888a.contains(c4425e4.b())) {
            if (((C11245i) this.f57059a.f()).i(c4425e4.b()) && (a10 = c4425e4.a(this.f57059a)) != null && !((C11245i) this.f57059a.f()).f37305h.f57888a.contains(a10) && ((C11245i) this.f57059a.f()).i(a10)) {
                return false;
            }
        }
        return true;
    }

    public final boolean a(com.android.tools.r8.graph.A5 a52) {
        return !((C11245i) this.f57059a.f()).i(a52.a());
    }

    public final C4516j1[] a(com.android.tools.r8.graph.H2 h22, List list) {
        AbstractC4497i0 a10;
        final C11245i c11245i = (C11245i) this.f57059a.f();
        C8570nJ E10 = this.f57059a.E();
        Predicate predicate = new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return V4.a(C11245i.this, (C4516j1) obj);
            }
        };
        int i10 = 0;
        while (true) {
            if (i10 >= list.size()) {
                i10 = -1;
                break;
            }
            if (!predicate.test((AbstractC4479h1) list.get(i10))) {
                break;
            }
            i10++;
        }
        if (i10 == -1) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                com.android.tools.r8.graph.H5 a11 = ((C4516j1) it.next()).a(h22);
                if (a11.d().b1()) {
                    C4798y<?> c4798y = this.f57059a;
                    if (C4553l0.a(c4798y, a11)) {
                        a11.a(C4553l0.f37446e, c4798y);
                    }
                }
            }
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (int i11 = 0; i11 < list.size(); i11++) {
            C4516j1 c4516j1 = (C4516j1) list.get(i11);
            if (c11245i.f57403r.contains(c4516j1.getReference())) {
                com.android.tools.r8.graph.H5 a12 = c4516j1.a(h22);
                if (a12.d().b1()) {
                    C4798y<?> c4798y2 = this.f57059a;
                    if (C4553l0.a(c4798y2, a12)) {
                        a12.a(C4553l0.f37446e, c4798y2);
                    }
                }
                arrayList.add(c4516j1);
            } else if (E10.f50684g1) {
                if (c4516j1.v1() && !c4516j1.b1()) {
                    int i12 = com.android.tools.r8.androidapi.f.f35602a;
                    c4516j1.f37261e = com.android.tools.r8.androidapi.h.f35609b;
                    arrayList.add(c4516j1);
                } else {
                    C4798y c4798y3 = this.f57059a;
                    if (!C4516j1.f37313x && !c4798y3.H().b() && !c4798y3.H().c()) {
                        throw new AssertionError();
                    }
                    C4516j1.a aVar = new C4516j1.a(c4516j1, c4516j1.F0());
                    if (c4798y3.H().b()) {
                        a10 = c4516j1.a(c4798y3.b());
                    } else {
                        a10 = c4516j1.a(c4798y3);
                    }
                    C4516j1.a a13 = aVar.a(a10);
                    boolean z10 = c4516j1.J0() && !c4516j1.k1().e();
                    AbstractC9530t40 k12 = c4516j1.k1();
                    if (z10) {
                        a13 = a13.a(k12);
                    } else {
                        a13.getClass();
                    }
                    a13.f37341m = c4798y3.f38405T;
                    int i13 = com.android.tools.r8.androidapi.f.f35602a;
                    a13.f37340l = com.android.tools.r8.androidapi.h.f35609b;
                    c4516j1.f37327t = true;
                    arrayList.add(a13.a());
                }
                this.f57065g.add(c4516j1.getReference());
            } else if (c11245i.f57397l.contains(c4516j1.getReference())) {
                if (c4516j1.v1() && !c4516j1.b1()) {
                    arrayList.add(c4516j1);
                } else {
                    new com.android.tools.r8.graph.H5(h22, c4516j1).c(this.f57059a);
                    c4516j1.L0();
                    c4516j1.f37319l = EnumC4535k1.f37407b;
                    arrayList.add(c4516j1);
                }
            } else {
                this.f57061c.b(c4516j1);
                this.f57063e.add(c4516j1.getReference());
            }
        }
        if (arrayList.isEmpty()) {
            return C4516j1.f37310u;
        }
        return (C4516j1[]) arrayList.toArray(C4516j1.f37310u);
    }

    public static boolean a(C11245i c11245i, C4516j1 c4516j1) {
        return c11245i.f57403r.contains(c4516j1.getReference());
    }

    public final C4460g1[] a(List list) {
        final C11245i c11245i = (C11245i) this.f57059a.f();
        Predicate predicate = new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return V4.this.a(c11245i, (C4460g1) obj);
            }
        };
        int i10 = 0;
        while (true) {
            if (i10 >= list.size()) {
                i10 = -1;
                break;
            }
            if (!predicate.test((AbstractC4479h1) list.get(i10))) {
                break;
            }
            i10++;
        }
        if (i10 == -1) {
            return null;
        }
        C4460g1 c4460g1 = (C4460g1) list.get(i10);
        this.f57061c.b(c4460g1);
        this.f57062d.add(c4460g1.getReference());
        ArrayList arrayList = new ArrayList(list.size());
        for (int i11 = 0; i11 < i10; i11++) {
            arrayList.add((C4460g1) list.get(i11));
        }
        while (true) {
            i10++;
            if (i10 >= list.size()) {
                break;
            }
            C4460g1 c4460g12 = (C4460g1) list.get(i10);
            if (predicate.test(c4460g12)) {
                arrayList.add(c4460g12);
            } else {
                this.f57061c.b(c4460g12);
                this.f57062d.add(c4460g12.getReference());
            }
        }
        if (arrayList.isEmpty()) {
            return C4460g1.f37200o;
        }
        return (C4460g1[]) arrayList.toArray(C4460g1.f37200o);
    }

    public final boolean a(C11245i c11245i, C4460g1 c4460g1) {
        return this.f57060b.a(c11245i, c4460g1);
    }
}
