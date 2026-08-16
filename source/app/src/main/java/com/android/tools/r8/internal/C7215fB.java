package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.B60;
import com.android.tools.r8.internal.EW;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BiPredicate;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class C7215fB implements InterfaceC7881jB, InterfaceC10674zw0 {

    public static final boolean f47893k = true;

    public final com.android.tools.r8.graph.H5 f47894a;

    public final EW.a f47895b;

    public final B60 f47896c;

    public LinkedList<W5> f47897d;

    public final C10523z10 f47898e;

    public final C10523z10 f47899f;

    public int f47900g = 0;

    public int f47901h = 0;

    public final C8382mB f47902i;

    public final C8570nJ f47903j;

    public C7215fB(C8570nJ c8570nJ, com.android.tools.r8.graph.H5 h52, B60 b60, LinkedList<W5> linkedList, C10523z10 c10523z10, C10523z10 c10523z102, C8382mB c8382mB, EW.a aVar) {
        boolean z10 = f47893k;
        if (!z10 && c8382mB == null) {
            throw new AssertionError();
        }
        if (!z10 && c8570nJ == null) {
            throw new AssertionError();
        }
        if (!z10 && linkedList.size() != c10523z102.b()) {
            throw new AssertionError();
        }
        if (!z10 && b60 == null) {
            throw new AssertionError();
        }
        this.f47903j = c8570nJ;
        this.f47895b = aVar;
        this.f47894a = h52;
        this.f47896c = b60;
        this.f47897d = linkedList;
        this.f47898e = c10523z10;
        this.f47899f = c10523z102;
        this.f47902i = c8382mB;
    }

    public static Predicate f(final Predicate predicate) {
        return new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C7215fB.a(Predicate.this, (C10340xw0) obj);
            }
        };
    }

    public Stream<AbstractC10561zE> A() {
        return AbstractC6483ap0.a(q());
    }

    public final AbstractC7552hC B() {
        ArrayList arrayList = new ArrayList(this.f47897d.size());
        HashSet hashSet = new HashSet(this.f47897d.size());
        ArrayDeque arrayDeque = new ArrayDeque(this.f47897d.size());
        arrayDeque.addLast(k());
        while (!arrayDeque.isEmpty()) {
            Object removeLast = arrayDeque.removeLast();
            if (removeLast instanceof C6882dB) {
                arrayList.add(((C6882dB) removeLast).f47314a);
            } else {
                W5 w52 = (W5) removeLast;
                if (!hashSet.contains(w52)) {
                    hashSet.add(w52);
                    arrayDeque.addLast(new C6882dB(w52));
                    for (int size = w52.v().size() - 1; size >= 0; size--) {
                        arrayDeque.addLast(w52.v().get(size));
                    }
                }
            }
        }
        int i10 = AbstractC7552hC.f48487c;
        Object[] objArr = new Object[4];
        int size2 = arrayList.size() - 1;
        int i11 = 0;
        while (size2 >= 0) {
            W5 w53 = (W5) arrayList.get(size2);
            w53.getClass();
            int i12 = i11 + 1;
            if (objArr.length < i12) {
                objArr = Arrays.copyOf(objArr, WB.a(objArr.length, i12));
            }
            objArr[i11] = w53;
            size2--;
            i11 = i12;
        }
        AbstractC7552hC b10 = AbstractC7552hC.b(i11, objArr);
        if (!this.f47903j.f50599F1.f50895n0) {
            return b10;
        }
        C7051eC c7051eC = new C7051eC();
        AbstractC4895Av0 it = b10.iterator();
        while (it.hasNext()) {
            W5 w54 = (W5) it.next();
            AbstractC10561zE a10 = w54.f45293f.a();
            a10.getClass();
            if (!(a10 instanceof C6600bY)) {
                c7051eC.a(w54);
            }
        }
        AbstractC4895Av0 it2 = b10.iterator();
        while (it2.hasNext()) {
            W5 w55 = (W5) it2.next();
            AbstractC10561zE a11 = w55.f45293f.a();
            a11.getClass();
            if (a11 instanceof C6600bY) {
                c7051eC.a(w55);
            }
        }
        return c7051eC.a();
    }

    public final void C() {
        W5 w52;
        AbstractC7552hC B10 = B();
        int y10 = y();
        LinkedList<W5> linkedList = new LinkedList<>();
        AbstractC4895Av0 it = B10.iterator();
        while (it.hasNext()) {
            W5 w53 = (W5) it.next();
            if (!w53.a(y10)) {
                w53.c(y10);
                linkedList.add(w53);
                W5 u22 = w53.i().u2();
                while (true) {
                    W5 w54 = u22;
                    w52 = w53;
                    w53 = w54;
                    if (w53 == null || w53.a(y10)) {
                        break;
                    }
                    w53.c(y10);
                    linkedList.add(w53);
                    u22 = w53.i().u2();
                }
                if (w53 != null) {
                    W5 a10 = W5.a(this.f47899f.a(), w52.i().getPosition(), this.f47902i, w53);
                    w52.i().a(a10);
                    a10.m().add(w52);
                    w53.a(w52, a10);
                    a10.c(y10);
                    linkedList.add(a10);
                }
            }
        }
        this.f47897d = linkedList;
        a(y10);
        if (!f47893k && this.f47900g != 0) {
            throw new AssertionError();
        }
    }

    public final void D() {
        e(f(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C7215fB.a((C10340xw0) obj);
            }
        }));
    }

    public final void E() {
        e(f(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C7215fB.b((C10340xw0) obj);
            }
        }));
    }

    public final void F() {
        e(f(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C7215fB.c((C10340xw0) obj);
            }
        }));
    }

    @Override
    public final AbstractC6333Zs0 a(Object obj, Object obj2, BiFunction biFunction) {
        return ((W5) obj).a(obj2, biFunction);
    }

    @Override
    public final AbstractC6333Zs0 b(Object obj, Object obj2, BiFunction biFunction) {
        return ((W5) obj).b(obj2, biFunction);
    }

    @Override
    public final AbstractC6333Zs0 c(Object obj, BiFunction biFunction) {
        return ((W5) obj).a(biFunction);
    }

    public final boolean d(C4798y c4798y) {
        if (c4798y.H().f50838Q) {
            return true;
        }
        for (VJ vj2 : b((Predicate) new C9862v31())) {
            com.android.tools.r8.graph.M2 s02 = vj2.B2().s0();
            if (!s02.E0()) {
                com.android.tools.r8.graph.E0 holder = j().getHolder();
                if (s02 != holder.f36245e) {
                    holder = c4798y.a(s02);
                }
                if (!f47893k && holder != null && vj2.A2() != holder.isInterface()) {
                    throw new AssertionError();
                }
            }
        }
        return true;
    }

    public final void e(final C4798y c4798y) {
        final C6113Vw0 c6113Vw0 = new C6113Vw0(c4798y);
        boolean z10 = f47893k;
        if (!z10 && c4798y.m() && !new C8665nu0(c4798y.M(), c6113Vw0).a(this)) {
            throw new AssertionError();
        }
        C8331lu0.a(c4798y, this);
        if (!z10 && !this.f47897d.stream().allMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C7215fB.this.a(c4798y, c6113Vw0, (W5) obj);
            }
        })) {
            throw new AssertionError();
        }
    }

    public final void g() {
        ((Map) this.f47897d.stream().collect(Collectors.groupingBy(new Function() {
            @Override
            public final Object apply(Object obj) {
                return Integer.valueOf(((W5) obj).q());
            }
        }, Collectors.counting()))).forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C7215fB.this.a((Integer) obj, (Long) obj2);
            }
        });
    }

    public final void h() {
        C6899dH c6899dH = new C6899dH(16);
        Iterator<W5> it = this.f47897d.iterator();
        while (it.hasNext()) {
            W5 next = it.next();
            int size = next.u().size();
            for (C7201f60 c7201f60 : next.s()) {
                boolean z10 = f47893k;
                if (!z10 && c7201f60.d0()) {
                    throw new AssertionError((Object) ("Unexpected trivial phi in " + j().r()));
                }
                if (!z10 && c7201f60.c0().size() != size) {
                    throw new AssertionError();
                }
                a(c6899dH, c7201f60);
                for (C10340xw0 c10340xw0 : c7201f60.c0()) {
                    a(c6899dH, c10340xw0);
                    boolean z11 = f47893k;
                    if (!z11 && !c10340xw0.a0().contains(c7201f60)) {
                        throw new AssertionError();
                    }
                    if (!z11 && c7201f60.z() && c7201f60.s() != c10340xw0.s()) {
                        throw new AssertionError();
                    }
                    if (!z11 && !c10340xw0.j() && c10340xw0.f53886c.f54317b == null) {
                        throw new AssertionError();
                    }
                }
            }
            Y5 it2 = next.l().iterator();
            while (it2.hasNext()) {
                AbstractC10561zE next2 = it2.next();
                boolean z12 = f47893k;
                if (!z12 && next2.b() != next) {
                    throw new AssertionError();
                }
                C10340xw0 d10 = next2.d();
                if (d10 != null) {
                    a(c6899dH, d10);
                    if (!z12 && d10.f53886c != next2) {
                        throw new AssertionError();
                    }
                }
                ArrayList arrayList = next2.f54321f;
                int size2 = arrayList.size();
                int i10 = 0;
                while (i10 < size2) {
                    Object obj = arrayList.get(i10);
                    i10++;
                    C10340xw0 c10340xw02 = (C10340xw0) obj;
                    a(c6899dH, c10340xw02);
                    if (!f47893k && !c10340xw02.b0().contains(next2)) {
                        throw new AssertionError();
                    }
                }
                for (C10340xw0 c10340xw03 : next2.V0()) {
                    a(c6899dH, c10340xw03);
                    if (!f47893k && !c10340xw03.g().contains(next2)) {
                        throw new AssertionError();
                    }
                }
            }
        }
        C6732cH c6732cH = new C6732cH(((VG) c6899dH.values()).f45009b);
        while (c6732cH.hasNext()) {
            C10340xw0 c10340xw04 = (C10340xw0) c6732cH.f47013h.f47341c[c6732cH.a()];
            boolean z13 = f47893k;
            if (!z13 && !z13) {
                if (c10340xw04.j()) {
                    C7201f60 l10 = c10340xw04.l();
                    if (!z13 && !l10.f47862p.s().contains(l10)) {
                        throw new AssertionError();
                    }
                } else {
                    C10340xw0 d11 = c10340xw04.f53886c.d();
                    if (!z13 && d11 != c10340xw04 && (!(c10340xw04 instanceof C8146ko0) || !Arrays.asList(((C8313lo0) d11).f50108p).contains(c10340xw04))) {
                        throw new AssertionError();
                    }
                }
            }
            if (!z13) {
                for (AbstractC10561zE abstractC10561zE : c10340xw04.b0()) {
                    if (!f47893k && !abstractC10561zE.f54321f.contains(c10340xw04)) {
                        throw new AssertionError();
                    }
                }
                for (C7201f60 c7201f602 : c10340xw04.a0()) {
                    boolean z14 = f47893k;
                    if (!z14 && !c7201f602.c0().contains(c10340xw04)) {
                        throw new AssertionError();
                    }
                    if (!z14 && !c7201f602.f47862p.s().contains(c7201f602)) {
                        throw new AssertionError();
                    }
                }
                if (c10340xw04.z()) {
                    for (AbstractC10561zE abstractC10561zE2 : c10340xw04.g()) {
                        if (!f47893k && !abstractC10561zE2.V0().contains(c10340xw04)) {
                            throw new AssertionError();
                        }
                    }
                } else {
                    continue;
                }
            }
        }
    }

    public final void i() {
        Set a10 = C4875Al0.a(this.f47897d);
        IdentityHashMap identityHashMap = new IdentityHashMap(this.f47897d.size());
        IdentityHashMap identityHashMap2 = new IdentityHashMap(this.f47897d.size());
        final Function function = new Function() {
            @Override
            public final Object apply(Object obj) {
                return C7215fB.a((Collection) obj);
            }
        };
        Iterator<W5> it = this.f47897d.iterator();
        while (it.hasNext()) {
            W5 next = it.next();
            Collection<?> collection = (Collection) identityHashMap.computeIfAbsent(next, new Function() {
                @Override
                public final Object apply(Object obj) {
                    return C7215fB.a(Function.this, (W5) obj);
                }
            });
            Collection<?> collection2 = (Collection) identityHashMap2.computeIfAbsent(next, new Function() {
                @Override
                public final Object apply(Object obj) {
                    return C7215fB.b(Function.this, (W5) obj);
                }
            });
            boolean z10 = f47893k;
            if (!z10 && collection.size() != next.u().size()) {
                throw new AssertionError();
            }
            if (!z10 && collection2.size() != next.v().size()) {
                throw new AssertionError();
            }
            if (!z10 && !a10.containsAll(collection)) {
                throw new AssertionError();
            }
            if (!z10 && !a10.containsAll(collection2)) {
                throw new AssertionError();
            }
            Iterator<?> it2 = collection2.iterator();
            while (it2.hasNext()) {
                Collection collection3 = (Collection) identityHashMap.computeIfAbsent((W5) it2.next(), new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return C7215fB.c(Function.this, (W5) obj);
                    }
                });
                if (!f47893k && !collection3.contains(next)) {
                    throw new AssertionError();
                }
            }
            Iterator<?> it3 = collection.iterator();
            while (it3.hasNext()) {
                Collection collection4 = (Collection) identityHashMap2.computeIfAbsent((W5) it3.next(), new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        return C7215fB.d(Function.this, (W5) obj);
                    }
                });
                if (!f47893k && !collection4.contains(next)) {
                    throw new AssertionError();
                }
            }
        }
    }

    public com.android.tools.r8.graph.H5 j() {
        return this.f47894a;
    }

    public W5 k() {
        return this.f47897d.getFirst();
    }

    public final int l() {
        return C8704o7.a(!j().d().w0()) + j().getReference().w0();
    }

    public final C10340xw0 m() {
        if (v().f37314g.n()) {
            return null;
        }
        AbstractC10561zE abstractC10561zE = (AbstractC10561zE) k().H().a(new NN0());
        boolean z10 = f47893k;
        if (!z10 && abstractC10561zE == null) {
            throw new AssertionError();
        }
        C10340xw0 d10 = abstractC10561zE.v().d();
        if (z10 || d10.f53893j) {
            return d10;
        }
        throw new AssertionError();
    }

    public final Set n() {
        Set c10 = AbstractC5513Ll0.c();
        int y10 = y();
        a(AbstractC6200Xj.a(k()), y10);
        Iterator<W5> it = this.f47897d.iterator();
        while (it.hasNext()) {
            W5 next = it.next();
            if (!next.a(y10)) {
                c10.add(next);
            }
        }
        a(y10);
        return c10;
    }

    public AE o() {
        return new C7382gB(this);
    }

    public C7549hB p() {
        return new C7549hB(this);
    }

    public Iterable<AbstractC10561zE> q() {
        return new Iterable() {
            @Override
            public final Iterator iterator() {
                return C7215fB.this.o();
            }
        };
    }

    public final void r() {
        boolean z10 = f47893k;
        if (!z10) {
            s();
        }
        if (z10) {
            return;
        }
        Iterator<W5> it = this.f47897d.iterator();
        while (it.hasNext()) {
            W5 next = it.next();
            if (!f47893k && next.D() && next.l().size() == 1 && next.i().G1() && next.i().V0().isEmpty() && !next.u().isEmpty()) {
                throw new AssertionError();
            }
        }
    }

    public final void s() {
        boolean z10 = f47893k;
        if (!z10) {
            b(true);
        }
        if (!z10) {
            a(true);
        }
        if (!z10) {
            h();
        }
        if (!z10) {
            Iterator<W5> it = this.f47897d.iterator();
            while (it.hasNext()) {
                W5 next = it.next();
                if (next.z()) {
                    if (!f47893k && next == k()) {
                        throw new AssertionError();
                    }
                    for (W5 w52 : next.j().a()) {
                        if (!f47893k && w52.u().size() != 1) {
                            throw new AssertionError();
                        }
                    }
                    Y5 it2 = next.l().iterator();
                    boolean z11 = false;
                    while (it2.hasNext()) {
                        AbstractC10561zE next2 = it2.next();
                        if (next2.o()) {
                            if (!f47893k && z11) {
                                throw new AssertionError();
                            }
                            z11 = true;
                        } else if (!f47893k && z11 && !next2.i1()) {
                            throw new AssertionError();
                        }
                    }
                }
            }
        }
        if (!f47893k) {
            Iterator<W5> it3 = this.f47897d.iterator();
            while (it3.hasNext()) {
                W5 next3 = it3.next();
                List<W5> u10 = next3.u();
                if (u10.size() > 1) {
                    if (!(next3.f45293f.a() instanceof C6600bY)) {
                        for (int i10 = 0; i10 < u10.size(); i10++) {
                            W5 w53 = u10.get(i10);
                            if (w53.f45289b.size() != 1 || !w53.i().G1()) {
                                if (!f47893k) {
                                    throw new AssertionError();
                                }
                            }
                        }
                    } else if (!f47893k) {
                        throw new AssertionError();
                    }
                    throw new AssertionError();
                }
            }
        }
        if (f47893k) {
            return;
        }
        F();
    }

    public final Iterator t() {
        return new C6549bB(this);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("blocks:\n");
        Iterator<W5> it = this.f47897d.iterator();
        while (it.hasNext()) {
            sb2.append(it.next().Q());
            sb2.append("\n");
        }
        return sb2.toString();
    }

    public Z5 u() {
        return new Z5(this);
    }

    @Deprecated
    public C4516j1 v() {
        return this.f47894a.d();
    }

    public final void w() {
        W5 k10 = k();
        Z5 u10 = u();
        while (u10.hasNext()) {
            W5 next = u10.next();
            Y5 I10 = next.I();
            boolean z10 = false;
            while (I10.hasNext()) {
                AbstractC10561zE next2 = I10.next();
                boolean o10 = next2.o();
                if ((z10 && !next2.i1()) || (o10 && next == k10)) {
                    I10.previous();
                    I10.a(this, u10);
                    u10.previous();
                    break;
                } else if (o10) {
                    z10 = true;
                }
            }
            if (z10) {
                List<W5> v10 = next.v();
                if (v10.size() == 1 && ((W5) AT.a(v10)).u().size() > 1) {
                    u10.add(next.a(this.f47899f.a(), true, (AbstractC10561zE) null));
                }
            }
        }
        if (!f47893k && !this.f47897d.stream().allMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C7215fB.a((W5) obj);
            }
        })) {
            throw new AssertionError();
        }
    }

    public void x() {
        ArrayList arrayList = new ArrayList();
        Iterator<W5> it = this.f47897d.iterator();
        while (it.hasNext()) {
            final W5 next = it.next();
            boolean z10 = f47893k;
            if (!z10 && arrayList.contains(next)) {
                throw new AssertionError();
            }
            if (next.D() && next.l().size() == 1 && next.i().G1() && next.i().V0().isEmpty() && !next.u().isEmpty()) {
                if (!z10 && next.y().m().size() != 1) {
                    throw new AssertionError();
                }
                if (!z10 && next.y().m().get(0) != next) {
                    throw new AssertionError();
                }
                if (!z10 && next.y().s().size() != 0) {
                    throw new AssertionError();
                }
                final W5 y10 = next.y();
                y10.m().clear();
                y10.m().addAll(next.u());
                y10.s().addAll(next.s());
                y10.s().forEach(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        C7215fB.a(W5.this, (C7201f60) obj);
                    }
                });
                next.u().forEach(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        ((W5) obj).b(W5.this, y10);
                    }
                });
                next.m().clear();
                next.n().clear();
                next.s().clear();
                arrayList.add(next);
            }
        }
        this.f47897d.removeAll(arrayList);
    }

    public final int y() {
        int i10 = 1;
        if (!f47893k) {
            for (int i11 = 1; (this.f47900g & i11) == i11; i11 <<= 1) {
                if (i11 > 1073741824) {
                    throw new AssertionError();
                }
            }
        }
        while (true) {
            int i12 = this.f47900g;
            if ((i12 & i10) != i10) {
                int i13 = i12 | i10;
                this.f47900g = i13;
                boolean z10 = f47893k;
                if (!z10 && (i13 & i10) == 0) {
                    throw new AssertionError();
                }
                if (!z10) {
                    Iterator<W5> it = this.f47897d.iterator();
                    while (it.hasNext()) {
                        W5 next = it.next();
                        if (!f47893k && next.a(i10)) {
                            throw new AssertionError();
                        }
                    }
                }
                return i10;
            }
            if (!f47893k && i10 > 1073741824) {
                throw new AssertionError();
            }
            i10 <<= 1;
        }
    }

    public final void z() {
        ArrayList arrayList = new ArrayList();
        Iterator<W5> it = this.f47897d.iterator();
        while (it.hasNext()) {
            W5 next = it.next();
            List<W5> m10 = next.m();
            if (m10.size() > 1) {
                if (!f47893k) {
                    AbstractC10561zE a10 = next.f45293f.a();
                    a10.getClass();
                    if (a10 instanceof C6600bY) {
                        throw new AssertionError();
                    }
                }
                for (int i10 = 0; i10 < m10.size(); i10++) {
                    W5 w52 = m10.get(i10);
                    if (w52.f45289b.size() != 1 || !w52.i().G1()) {
                        W5 a11 = W5.a(this.f47899f.a(), w52.i().getPosition(), this.f47902i, next);
                        arrayList.add(a11);
                        w52.b(next, a11);
                        a11.m().add(w52);
                        m10.set(i10, a11);
                    }
                }
            }
        }
        this.f47897d.addAll(arrayList);
    }

    public List<W5> f() {
        int i10 = AbstractC7552hC.f48487c;
        Object[] objArr = new Object[4];
        Iterator<W5> it = this.f47897d.iterator();
        int i11 = 0;
        while (it.hasNext()) {
            W5 next = it.next();
            if (next.i().g2()) {
                int i12 = i11 + 1;
                if (objArr.length < i12) {
                    objArr = Arrays.copyOf(objArr, WB.a(objArr.length, i12));
                }
                objArr[i11] = next;
                i11 = i12;
            }
        }
        return AbstractC7552hC.b(i11, objArr);
    }

    @Override
    public final AbstractC6333Zs0 a(Object obj, InterfaceC7495gt0 interfaceC7495gt0, Object obj2) {
        W5 w52 = (W5) obj;
        int L10 = w52.L();
        AbstractC6333Zs0 c6276Ys0 = new C6276Ys0(obj2);
        for (int i10 = 0; i10 < L10; i10++) {
            c6276Ys0 = (AbstractC6333Zs0) interfaceC7495gt0.a(w52.f45289b.get(i10), (com.android.tools.r8.graph.M2) w52.f45292e.f42510b.get(i10), c6276Ys0.b().f());
            if (c6276Ys0.c()) {
                return c6276Ys0;
            }
        }
        return c6276Ys0;
    }

    public void b(Collection<W5> collection) {
        if (collection.isEmpty()) {
            return;
        }
        this.f47897d.removeAll(collection);
    }

    public boolean c(C4798y<?> c4798y) {
        s();
        boolean z10 = f47893k;
        if (!z10) {
            D();
        }
        if (z10) {
            return true;
        }
        e((C4798y) c4798y);
        return true;
    }

    public boolean b(C4798y<?> c4798y) {
        r();
        boolean z10 = f47893k;
        if (!z10) {
            D();
        }
        if (z10) {
            return true;
        }
        e((C4798y) c4798y);
        return true;
    }

    public static Collection c(Function function, W5 w52) {
        return (Collection) function.apply(w52.u());
    }

    public static boolean c(C10340xw0 c10340xw0) {
        if (f47893k || !c10340xw0.D() || c10340xw0.b0().stream().anyMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C7215fB.b((AbstractC10561zE) obj);
            }
        })) {
            return true;
        }
        if ((c10340xw0.j() || !c10340xw0.f53886c.k1()) && c10340xw0.y() && !c10340xw0.g().stream().anyMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C7215fB.c((AbstractC10561zE) obj);
            }
        }) && c10340xw0.V() <= 0) {
            throw new AssertionError((Object) C10656zq0.a(System.lineSeparator(), c10340xw0.b0()));
        }
        return true;
    }

    public final void b(boolean z10) {
        boolean z11 = f47893k;
        if (!z11 && this.f47900g != 0) {
            throw new AssertionError();
        }
        if (!z11) {
            g();
        }
        if (!z11) {
            i();
        }
        if (!z11) {
            Iterator<W5> it = this.f47897d.iterator();
            while (it.hasNext()) {
                W5 next = it.next();
                if (!f47893k) {
                    next.c();
                }
            }
        }
        boolean z12 = f47893k;
        if (!z12) {
            a(z10);
        }
        if (!z12) {
            for (AbstractC10561zE abstractC10561zE : q()) {
                if (abstractC10561zE.h1()) {
                    if (!f47893k && (!this.f47902i.a(0) || !this.f47902i.a())) {
                        throw new AssertionError((Object) "IR metadata should indicate that code has an add");
                    }
                } else if (abstractC10561zE instanceof C9523t2) {
                    if (!f47893k && (!this.f47902i.a(4) || !this.f47902i.a())) {
                        throw new AssertionError((Object) "IR metadata should indicate that code has an and");
                    }
                } else if (abstractC10561zE.t1()) {
                    if (!f47893k && !this.f47902i.a(10)) {
                        throw new AssertionError((Object) "IR metadata should indicate that code has a check-cast");
                    }
                } else if (abstractC10561zE.w1()) {
                    if (!f47893k && !this.f47902i.a(15)) {
                        throw new AssertionError((Object) "IR metadata should indicate that code has a const-number");
                    }
                } else if (abstractC10561zE.x1()) {
                    if (!f47893k && !this.f47902i.a(16)) {
                        throw new AssertionError((Object) "IR metadata should indicate that code has a const-string");
                    }
                } else if (abstractC10561zE instanceof C7631hj) {
                    if (!f47893k && !this.f47902i.a(19)) {
                        throw new AssertionError((Object) "IR metadata should indicate that code has a debug position");
                    }
                } else if (abstractC10561zE instanceof C9820uq) {
                    if (!f47893k && !this.f47902i.a(20)) {
                        throw new AssertionError((Object) "IR metadata should indicate that code has a dex-item-based-const-string");
                    }
                } else if (abstractC10561zE instanceof C6161Ws) {
                    if (!f47893k && (!this.f47902i.a(21) || !this.f47902i.a())) {
                        throw new AssertionError((Object) "IR metadata should indicate that code has a div");
                    }
                } else if (abstractC10561zE instanceof C6558bE) {
                    if (!f47893k && !this.f47902i.a(28)) {
                        throw new AssertionError((Object) "IR metadata should indicate that code has an instance-get");
                    }
                } else if (abstractC10561zE.i()) {
                    if (!f47893k && !this.f47902i.a(30)) {
                        throw new AssertionError((Object) "IR metadata should indicate that code has an instance-put");
                    }
                } else if (abstractC10561zE instanceof C8391mE) {
                    if (!f47893k && !this.f47902i.a(29)) {
                        throw new AssertionError((Object) "IR metadata should indicate that code has an instance-of");
                    }
                } else if (abstractC10561zE.M1()) {
                    if (!f47893k && !this.f47902i.a(31)) {
                        throw new AssertionError((Object) "IR metadata should indicate that code has an int-switch");
                    }
                } else if (abstractC10561zE.O1()) {
                    if (!f47893k && !this.f47902i.a(33)) {
                        throw new AssertionError((Object) "IR metadata should indicate that code has an invoke-direct");
                    }
                } else if (abstractC10561zE instanceof TJ) {
                    if (!f47893k && !this.f47902i.a(34)) {
                        throw new AssertionError((Object) "IR metadata should indicate that code has an invoke-interface");
                    }
                } else if (abstractC10561zE instanceof YJ) {
                    if (!f47893k && !this.f47902i.a(37)) {
                        throw new AssertionError((Object) "IR metadata should indicate that code has an invoke-polymorphic");
                    }
                } else if (abstractC10561zE.R1()) {
                    if (!f47893k && !this.f47902i.a(38)) {
                        throw new AssertionError((Object) "IR metadata should indicate that code has an invoke-static");
                    }
                } else if (abstractC10561zE instanceof C7572hK) {
                    if (!f47893k && !this.f47902i.a(39)) {
                        throw new AssertionError((Object) "IR metadata should indicate that code has an invoke-super");
                    }
                } else if (abstractC10561zE.T1()) {
                    if (!f47893k && !this.f47902i.a(40)) {
                        throw new AssertionError((Object) "IR metadata should indicate that code has an invoke-virtual");
                    }
                } else if (abstractC10561zE instanceof A40) {
                    if (!f47893k && (!this.f47902i.a(53) || !this.f47902i.a())) {
                        throw new AssertionError((Object) "IR metadata should indicate that code has an or");
                    }
                } else if (abstractC10561zE instanceof WX) {
                    if (!f47893k && !this.f47902i.a(42)) {
                        throw new AssertionError((Object) "IR metadata should indicate that code has a monitor instruction");
                    }
                } else if (abstractC10561zE instanceof C7433gY) {
                    if (!f47893k && (!this.f47902i.a(45) || !this.f47902i.a())) {
                        throw new AssertionError((Object) "IR metadata should indicate that code has a mul");
                    }
                } else if (abstractC10561zE.c2()) {
                    if (!f47893k && !this.f47902i.a(49)) {
                        throw new AssertionError((Object) "IR metadata should indicate that code has a new-instance");
                    }
                } else if (abstractC10561zE instanceof C7786if0) {
                    if (!f47893k && (!this.f47902i.a(55) || !this.f47902i.a())) {
                        throw new AssertionError((Object) "IR metadata should indicate that code has a rem");
                    }
                } else if (abstractC10561zE instanceof C5686Ol0) {
                    if (!f47893k && (!this.f47902i.a(57) || !this.f47902i.a())) {
                        throw new AssertionError((Object) "IR metadata should indicate that code has a shl");
                    }
                } else if (abstractC10561zE instanceof C5918Sl0) {
                    if (!f47893k && (!this.f47902i.a(58) || !this.f47902i.a())) {
                        throw new AssertionError((Object) "IR metadata should indicate that code has a shr");
                    }
                } else if (abstractC10561zE instanceof C5576Mo0) {
                    if (!f47893k && !this.f47902i.a(59)) {
                        throw new AssertionError((Object) "IR metadata should indicate that code has a static-get");
                    }
                } else if (abstractC10561zE.e()) {
                    if (!f47893k && !this.f47902i.a(60)) {
                        throw new AssertionError((Object) "IR metadata should indicate that code has a static-put");
                    }
                } else if (abstractC10561zE.k2()) {
                    if (!f47893k && !this.f47902i.a(62)) {
                        throw new AssertionError((Object) "IR metadata should indicate that code has a string-switch");
                    }
                } else if (abstractC10561zE instanceof C5812Qq0) {
                    if (!f47893k && (!this.f47902i.a(63) || !this.f47902i.a())) {
                        throw new AssertionError((Object) "IR metadata should indicate that code has a sub");
                    }
                } else if (abstractC10561zE instanceof C8504mw0) {
                    if (!f47893k && (!this.f47902i.a(67) || !this.f47902i.a())) {
                        throw new AssertionError((Object) "IR metadata should indicate that code has an ushr");
                    }
                } else if ((abstractC10561zE instanceof C7343fy0) && !f47893k && (!this.f47902i.a(68) || !this.f47902i.a())) {
                    throw new AssertionError((Object) "IR metadata should indicate that code has an xor");
                }
            }
        }
        if (f47893k) {
            return;
        }
        for (AbstractC10561zE abstractC10561zE2 : q()) {
            if (abstractC10561zE2.o() && !abstractC10561zE2.x1() && !(abstractC10561zE2 instanceof C9820uq) && abstractC10561zE2.getPosition().o()) {
                B60 position = abstractC10561zE2.getPosition();
                position.getClass();
                if (position != B60.c.f38822h) {
                    throw new AssertionError();
                }
            }
        }
    }

    public static Collection d(Function function, W5 w52) {
        return (Collection) function.apply(w52.v());
    }

    public final IdentityHashMap e() {
        IdentityHashMap identityHashMap = new IdentityHashMap();
        ArrayDeque arrayDeque = new ArrayDeque();
        AbstractC7552hC B10 = B();
        arrayDeque.addAll(B10.i());
        while (!arrayDeque.isEmpty()) {
            W5 w52 = (W5) arrayDeque.poll();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            Set c10 = AbstractC5513Ll0.c();
            ArrayDeque arrayDeque2 = new ArrayDeque();
            Set a10 = w52.j().a();
            for (W5 w53 : w52.v()) {
                C7048eB c7048eB = (C7048eB) identityHashMap.get(w53);
                if (c7048eB != null) {
                    linkedHashSet.addAll(c7048eB.f47629a);
                    c10.addAll(c7048eB.f47630b);
                    if (a10.contains(w53)) {
                        if (!f47893k && c7048eB.f47631c.size() != 0) {
                            throw new AssertionError();
                        }
                    } else {
                        if (!f47893k && !arrayDeque2.isEmpty()) {
                            throw new AssertionError();
                        }
                        arrayDeque2 = new ArrayDeque(c7048eB.f47631c);
                    }
                }
                int indexOf = w53.u().indexOf(w52);
                for (C7201f60 c7201f60 : w53.s()) {
                    C10340xw0 c10340xw0 = (C10340xw0) c7201f60.f47863q.get(indexOf);
                    if (c10340xw0.Q()) {
                        arrayDeque2.addLast(c10340xw0);
                    } else {
                        linkedHashSet.add(c10340xw0);
                        if (!c7201f60.z()) {
                            continue;
                        } else {
                            if (!f47893k && c7201f60.s() != c10340xw0.s()) {
                                throw new AssertionError();
                            }
                            c10.add(c10340xw0);
                        }
                    }
                }
            }
            if (!f47893k && !arrayDeque2.isEmpty() && w52.v().size() - a10.size() != 1) {
                throw new AssertionError();
            }
            Y5 b10 = w52.b(w52.l().size());
            while (b10.hasPrevious()) {
                AbstractC10561zE previous = b10.previous();
                C10340xw0 d10 = previous.d();
                if (d10 != null) {
                    if (d10 instanceof C8146ko0) {
                        C10340xw0 c10340xw02 = (C10340xw0) arrayDeque2.removeLast();
                        if (!f47893k && c10340xw02 != d10) {
                            throw new AssertionError();
                        }
                    } else if (d10 instanceof C8313lo0) {
                        C8146ko0[] c8146ko0Arr = ((C8313lo0) d10).f50108p;
                        for (int length = c8146ko0Arr.length - 1; length >= 0; length--) {
                            C10340xw0 c10340xw03 = (C10340xw0) arrayDeque2.removeLast();
                            if (!f47893k && c10340xw03 != c8146ko0Arr[length]) {
                                throw new AssertionError();
                            }
                        }
                    } else {
                        linkedHashSet.remove(d10);
                        if (!f47893k && !d10.z() && c10.contains(d10)) {
                            throw new AssertionError();
                        }
                        if (d10.z()) {
                            c10.remove(d10);
                        }
                    }
                }
                ArrayList arrayList = previous.f54321f;
                int size = arrayList.size();
                int i10 = 0;
                while (i10 < size) {
                    Object obj = arrayList.get(i10);
                    i10++;
                    C10340xw0 c10340xw04 = (C10340xw0) obj;
                    if (c10340xw04.T()) {
                        linkedHashSet.add(c10340xw04);
                    } else if (c10340xw04.Q()) {
                        arrayDeque2.addLast(c10340xw04);
                    }
                }
                if (!previous.V0().isEmpty()) {
                    ArrayList arrayList2 = new ArrayList(previous.V0());
                    arrayList2.sort(new C9440sa1());
                    boolean z10 = f47893k;
                    if (!z10 && !arrayList2.stream().allMatch(new Predicate() {
                        @Override
                        public final boolean test(Object obj2) {
                            return ((C10340xw0) obj2).T();
                        }
                    })) {
                        throw new AssertionError();
                    }
                    if (!z10 && !arrayList2.stream().allMatch(new C9774ua1())) {
                        throw new AssertionError();
                    }
                    linkedHashSet.addAll(arrayList2);
                    c10.addAll(arrayList2);
                }
            }
            for (C7201f60 c7201f602 : w52.s()) {
                if (c7201f602.Q()) {
                    arrayDeque2.remove(c7201f602);
                } else {
                    linkedHashSet.remove(c7201f602);
                }
                if (!f47893k && !c7201f602.z() && c10.contains(c7201f602)) {
                    throw new AssertionError();
                }
                if (c7201f602.z()) {
                    c10.remove(c7201f602);
                }
            }
            C7048eB c7048eB2 = new C7048eB(linkedHashSet, c10, arrayDeque2);
            C7048eB c7048eB3 = (C7048eB) identityHashMap.put(w52, c7048eB2);
            if (c7048eB3 == null || !c7048eB3.equals(c7048eB2)) {
                for (W5 w54 : w52.u()) {
                    if (!arrayDeque.contains(w54)) {
                        arrayDeque.add(w54);
                    }
                }
            }
        }
        if (f47893k) {
            return identityHashMap;
        }
        C7048eB c7048eB4 = (C7048eB) identityHashMap.get(B10.get(0));
        if (c7048eB4.f47629a.isEmpty() && c7048eB4.f47630b.isEmpty()) {
            return identityHashMap;
        }
        throw new AssertionError((Object) ("Unexpected values live at entry to first block: " + ((Object) ((C7048eB) identityHashMap.get(B10.get(0))).f47629a)));
    }

    public final Iterator d(Predicate predicate) {
        return new C10074wK(o(), predicate);
    }

    public List<C10340xw0> d() {
        ArrayList arrayList = new ArrayList();
        AE H10 = k().H();
        C8024k3 v10 = H10.next().v();
        while (v10 != null) {
            if (v10 != null) {
                C8024k3 v11 = H10.next().v();
                arrayList.add(v10.d());
                v10 = v11;
            } else {
                throw new NoSuchElementException();
            }
        }
        if (f47893k || arrayList.size() == v().getReference().w0() + (!v().f37314g.n() ? 1 : 0)) {
            return arrayList;
        }
        throw new AssertionError();
    }

    @Override
    public final AbstractC6333Zs0 a(Object obj, BiFunction biFunction, D1 d12) {
        AbstractC6333Zs0 c6276Ys0 = new C6276Ys0(d12);
        Y5 it = ((W5) obj).l().iterator();
        while (it.hasNext()) {
            c6276Ys0 = (AbstractC6333Zs0) biFunction.apply(it.next(), c6276Ys0.b().e());
            if (c6276Ys0.c()) {
                break;
            }
        }
        return c6276Ys0;
    }

    public static boolean c(AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.getClass();
        return !(abstractC10561zE instanceof C4);
    }

    public final Iterator c(Predicate predicate) {
        return new C10074wK(u(), predicate);
    }

    @Override
    public final Object a() {
        return this.f47897d.getFirst();
    }

    public final boolean a(Consumer consumer) {
        Iterator<W5> it = this.f47897d.iterator();
        while (it.hasNext()) {
            W5 next = it.next();
            if (next.z()) {
                return true;
            }
            if (next.i().H1()) {
                EB V10 = next.i().V();
                consumer.accept((C10340xw0) V10.f54321f.get(0));
                if (!V10.x2()) {
                    consumer.accept(V10.y2());
                }
            } else if (next.i().l2()) {
                consumer.accept((C10340xw0) next.i().Q0().f54321f.get(0));
            }
        }
        return false;
    }

    public final Iterable c() {
        return new Iterable() {
            @Override
            public final Iterator iterator() {
                return C7215fB.this.t();
            }
        };
    }

    public final void a(InterfaceC6715cB interfaceC6715cB) {
        W5 w52;
        if (!f47893k && this.f47897d.isEmpty()) {
            throw new AssertionError();
        }
        Z5 u10 = u();
        W5 w53 = (W5) u10.f46159b.next();
        u10.f46160c = w53;
        W5 w54 = null;
        while (true) {
            if (u10.f46159b.hasNext()) {
                w52 = (W5) u10.f46159b.next();
                u10.f46160c = w52;
            } else {
                w52 = null;
            }
            interfaceC6715cB.a(w53, w54, w52);
            if (w52 == null) {
                return;
            }
            w54 = w53;
            w53 = w52;
        }
    }

    public final void a(C4798y c4798y) {
        final C6929dW c10 = c4798y.c();
        for (AbstractC10561zE abstractC10561zE : q()) {
            C10340xw0 c10340xw0 = abstractC10561zE.f54320e;
            if (c10340xw0 != null && c10340xw0.u().s()) {
                C6949de b10 = abstractC10561zE.f54320e.u().b();
                boolean z10 = f47893k;
                if (!z10 && c10.c(b10.E())) {
                    throw new AssertionError((Object) ("Expected reference to " + b10.E().D0() + " to be rewritten at instruction " + ((Object) abstractC10561zE)));
                }
                if (!z10 && b10.F().a(new BiPredicate() {
                    @Override
                    public final boolean test(Object obj, Object obj2) {
                        return C7215fB.a(C6929dW.this, (com.android.tools.r8.graph.M2) obj, (Boolean) obj2);
                    }
                })) {
                    throw new AssertionError();
                }
            }
        }
    }

    public static boolean a(C6929dW c6929dW, com.android.tools.r8.graph.M2 m22, Boolean bool) {
        if (f47893k || !c6929dW.c(m22)) {
            return false;
        }
        throw new AssertionError();
    }

    public final boolean a(C4798y c4798y, C6113Vw0 c6113Vw0, W5 w52) {
        w52.a(c4798y, j(), c6113Vw0);
        return true;
    }

    public final void a(C6899dH c6899dH, C10340xw0 c10340xw0) {
        boolean z10 = f47893k;
        if (!z10 && c10340xw0 == null) {
            throw new AssertionError();
        }
        int t10 = c10340xw0.t();
        C10340xw0 c10340xw02 = (C10340xw0) c6899dH.a(t10, c10340xw0);
        if (z10 || this.f47903j.f50599F1.f50879h || c10340xw02 == null || c10340xw02 == c10340xw0) {
            return;
        }
        if (t10 == -1 && c10340xw0.Q()) {
            return;
        }
        throw new AssertionError((Object) ("Multiple value definitions with number " + t10 + ": " + ((Object) c10340xw0) + " and " + ((Object) c10340xw02)));
    }

    public static Collection a(Collection collection) {
        return collection.size() > 5 ? C4875Al0.a(collection) : collection;
    }

    public static Collection a(Function function, W5 w52) {
        return (Collection) function.apply(w52.u());
    }

    public final void a(Integer num, Long l10) {
        boolean z10 = f47893k;
        if (!z10 && l10.longValue() != 1) {
            throw new AssertionError();
        }
        if (!z10 && num.intValue() < 0) {
            throw new AssertionError();
        }
        if (!z10 && num.intValue() > this.f47899f.b()) {
            throw new AssertionError();
        }
    }

    public final void a(boolean z10) {
        Iterator<W5> it = this.f47897d.iterator();
        boolean z11 = true;
        while (it.hasNext()) {
            W5 next = it.next();
            if (!f47893k) {
                boolean z12 = this.f47903j.f50690i1 || j().getHolder().I1();
                Y5 it2 = next.l().iterator();
                while (it2.hasNext()) {
                    AbstractC10561zE next2 = it2.next();
                    boolean z13 = W5.f45287q;
                    if (!z13) {
                        next2.a(z12);
                    }
                    if (!z13 && next2.b() != next) {
                        throw new AssertionError();
                    }
                    if (!z13 && next2.k1() && !z11) {
                        throw new AssertionError();
                    }
                    if (!z13) {
                        next2.getClass();
                        if ((next2 instanceof C6797cj) && next2.V0().isEmpty()) {
                            throw new AssertionError();
                        }
                    }
                    if (!z13 && next2.I1() && !W5.a(next2.W(), z10)) {
                        throw new AssertionError();
                    }
                    next2.getClass();
                    if (next2 instanceof C6600bY) {
                        if (!z13 && next2 != next.f45293f.a()) {
                            throw new AssertionError();
                        }
                        for (W5 w52 : next.u()) {
                            if (!W5.f45287q && !w52.b(next) && (!w52.G() || w52.g() != next)) {
                                throw new AssertionError();
                            }
                        }
                    }
                    if (!next2.k1()) {
                        z11 = false;
                    }
                }
            }
            z11 = false;
        }
    }

    public static boolean a(C10340xw0 c10340xw0) {
        boolean z10 = f47893k;
        if (!z10 && !c10340xw0.u().w()) {
            throw new AssertionError();
        }
        if (!z10 && c10340xw0.u().u()) {
            throw new AssertionError();
        }
        if (!z10) {
            AbstractC8999pu0 u10 = c10340xw0.u();
            u10.getClass();
            if (u10 instanceof C10540z7) {
                throw new AssertionError();
            }
        }
        if (z10) {
            return true;
        }
        DV dv = c10340xw0.f53886c;
        if (!(dv instanceof YC) || ((YC) dv).f().a()) {
            return true;
        }
        throw new AssertionError();
    }

    public final void e(Predicate predicate) {
        Iterator<W5> it = this.f47897d.iterator();
        while (it.hasNext()) {
            W5 next = it.next();
            Y5 it2 = next.l().iterator();
            while (it2.hasNext()) {
                AbstractC10561zE next2 = it2.next();
                if (next2.e1() && !f47893k && !predicate.test(next2.d())) {
                    throw new AssertionError();
                }
            }
            for (C7201f60 c7201f60 : next.s()) {
                if (!f47893k && !predicate.test(c7201f60)) {
                    throw new AssertionError();
                }
            }
        }
    }

    public static boolean a(Predicate predicate, C10340xw0 c10340xw0) {
        if (c10340xw0 instanceof C8313lo0) {
            return Stream.of((Object[]) ((C8313lo0) c10340xw0).f50108p).allMatch(predicate);
        }
        return predicate.test(c10340xw0);
    }

    public final Iterable a(final Predicate predicate) {
        return new Iterable() {
            @Override
            public final Iterator iterator() {
                return C7215fB.this.c(predicate);
            }
        };
    }

    @Override
    public C10340xw0 a(AbstractC8999pu0 abstractC8999pu0, C4515j0 c4515j0) {
        return new C10340xw0(this.f47898e.a(), abstractC8999pu0, c4515j0);
    }

    public final C9126qh a(long j10, AbstractC8999pu0 abstractC8999pu0) {
        return new C9126qh(a(abstractC8999pu0, (C4515j0) null), j10);
    }

    public final C9126qh a(int i10, C4515j0 c4515j0) {
        return new C9126qh(a(AbstractC8999pu0.k(), c4515j0), i10);
    }

    public static void a(W5 w52, C7201f60 c7201f60) {
        c7201f60.f47862p = w52.y();
    }

    public final boolean a(C6382aB c6382aB, C10696a c10696a) {
        Iterator<W5> it = this.f47897d.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            ArrayList arrayList = new ArrayList(it.next().s());
            int size = arrayList.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = arrayList.get(i10);
                i10++;
                C7201f60 c7201f60 = (C7201f60) obj;
                C6286Yx0 c6286Yx0 = new C6286Yx0(2);
                c6286Yx0.b((C6286Yx0) c7201f60);
                while (c6286Yx0.b()) {
                    C7201f60 c7201f602 = (C7201f60) c6286Yx0.c();
                    if (!c7201f602.D() && !c7201f602.y()) {
                        c6286Yx0.b((Iterable) c7201f602.a0());
                    } else {
                        c7201f60.getClass();
                        z10 |= c7201f60.a(c6382aB, c10696a, C6628bi.b(), EnumC6871d70.f47287c);
                        break;
                    }
                }
                c6286Yx0.a().forEach(new Consumer() {
                    @Override
                    public final void accept(Object obj2) {
                        ((C7201f60) obj2).f0();
                    }
                });
                z10 = true;
            }
        }
        return z10;
    }

    public final void a(int i10) {
        if (!f47893k && (this.f47900g & i10) == 0) {
            throw new AssertionError();
        }
        Iterator<W5> it = this.f47897d.iterator();
        while (it.hasNext()) {
            W5 next = it.next();
            next.getClass();
            boolean z10 = W5.f45287q;
            if (!z10 && i10 == 0) {
                throw new AssertionError();
            }
            next.f45301n &= ~i10;
            if (!z10 && next.a(i10)) {
                throw new AssertionError();
            }
        }
        this.f47900g = (~i10) & this.f47900g;
    }

    public Iterable<AbstractC10561zE> a(final AbstractC10561zE abstractC10561zE) {
        final W5 b10 = abstractC10561zE.b();
        Set<W5> c10 = AbstractC5513Ll0.c();
        int y10 = y();
        a(new ArrayDeque(b10.v()), y10);
        Iterator<W5> it = this.f47897d.iterator();
        while (it.hasNext()) {
            W5 next = it.next();
            if (next.a(y10)) {
                c10.add(next);
            }
        }
        a(y10);
        if (c10.contains(b10)) {
            Iterable<AbstractC10561zE> iterable = null;
            for (W5 w52 : c10) {
                if (iterable != null) {
                    iterable = AbstractC6114Vx.b(iterable, w52.l());
                } else {
                    iterable = w52.l();
                }
            }
            return iterable;
        }
        Iterable<AbstractC10561zE> iterable2 = new Iterable() {
            @Override
            public final Iterator iterator() {
                return C7215fB.a(W5.this, abstractC10561zE);
            }
        };
        Iterator it2 = c10.iterator();
        while (it2.hasNext()) {
            iterable2 = AbstractC6114Vx.b(iterable2, ((W5) it2.next()).l());
        }
        return iterable2;
    }

    public final void a(C10696a c10696a, Consumer consumer) {
        final int y10 = y();
        a(AbstractC6200Xj.a(k()), y10);
        Z5 u10 = u();
        while (u10.hasNext()) {
            W5 next = u10.next();
            if (!next.a(y10)) {
                next.a(c10696a, consumer, new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        return C7215fB.a(y10, (W5) obj);
                    }
                });
                u10.remove();
            }
        }
        a(y10);
    }

    public static Collection b(Function function, W5 w52) {
        return (Collection) function.apply(w52.v());
    }

    public static boolean b(C10340xw0 c10340xw0) {
        if (f47893k || c10340xw0.u().x() || c10340xw0.u().d().f46573b != C8854p10.a()) {
            return true;
        }
        throw new AssertionError();
    }

    public static boolean a(int i10, W5 w52) {
        return !w52.a(i10);
    }

    public static boolean b(AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.getClass();
        return !(abstractC10561zE instanceof C4);
    }

    public final void a(ArrayDeque arrayDeque, int i10) {
        if (!f47893k) {
            if ((this.f47900g & i10) != 0) {
                Iterator<W5> it = this.f47897d.iterator();
                while (it.hasNext()) {
                    if (!it.next().a(i10)) {
                    }
                }
            }
            throw new AssertionError();
        }
        while (!arrayDeque.isEmpty()) {
            W5 w52 = (W5) arrayDeque.poll();
            if (!w52.a(i10)) {
                w52.c(i10);
                for (W5 w53 : w52.v()) {
                    if (!w53.a(i10)) {
                        arrayDeque.add(w53);
                    }
                }
            }
        }
    }

    public final Iterable b(final Predicate predicate) {
        return new Iterable() {
            @Override
            public final Iterator iterator() {
                return C7215fB.this.d(predicate);
            }
        };
    }

    public final Iterator b() {
        return new C6549bB(this);
    }

    public final void a(W5 w52, int i10) {
        if (!f47893k && (this.f47900g & i10) == 0) {
            throw new AssertionError();
        }
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.add(w52);
        while (!arrayDeque.isEmpty()) {
            W5 w53 = (W5) arrayDeque.poll();
            if (!w53.a(i10)) {
                w53.c(i10);
                for (W5 w54 : w53.u()) {
                    if (!w54.a(i10)) {
                        arrayDeque.add(w54);
                    }
                }
            }
        }
    }

    public static boolean a(W5 w52) {
        Y5 it = w52.l().iterator();
        int i10 = 0;
        while (it.hasNext()) {
            if (it.next().o()) {
                i10++;
            }
        }
        return i10 <= 1;
    }

    public static Iterator a(W5 w52, AbstractC10561zE abstractC10561zE) {
        CE ce2 = w52.f45293f;
        ce2.getClass();
        return new Y5(ce2.f39166b, abstractC10561zE);
    }
}
