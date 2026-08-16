package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Predicate;

public final class C10146wn0 extends AbstractC9617te {

    public static final boolean f53606e = true;

    public C10146wn0(C4798y c4798y) {
        super(c4798y);
    }

    public static ArrayList c(C7215fB c7215fB) {
        ArrayList arrayList = new ArrayList();
        for (W5 w52 : AT.a((Collection) c7215fB.f47897d, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean H12;
                H12 = ((W5) obj).i().H1();
                return H12;
            }
        })) {
            EB V10 = w52.i().V();
            if (a(V10)) {
                C10340xw0 y22 = V10.x2() ? (C10340xw0) V10.f54321f.get(0) : ((C10340xw0) V10.f54321f.get(0)).K() ? V10.y2() : (C10340xw0) V10.f54321f.get(0);
                if (a(V10) && y22.j() && y22.C() && !y22.B() && y22.b() == V10.b()) {
                    arrayList.add(w52);
                }
            }
        }
        return arrayList;
    }

    @Override
    public final String a() {
        return "SplitBranch";
    }

    @Override
    public final InterfaceC10118we b(C7215fB c7215fB) {
        ArrayList c10 = c(c7215fB);
        if (c10.isEmpty()) {
            return InterfaceC10118we.f53547a;
        }
        LinkedHashMap a10 = a(c10);
        if (a10.isEmpty()) {
            return InterfaceC10118we.f53547a;
        }
        a(a10);
        C10696a c10696a = new C10696a();
        c7215fB.a(c10696a, C6628bi.b());
        c7215fB.a((C6382aB) null, c10696a);
        c10696a.a(this.f52646a, c7215fB, C6628bi.b());
        c7215fB.x();
        return InterfaceC10118we.f53548b;
    }

    public static boolean a(EB eb2) {
        AbstractC8999pu0 u10 = ((C10340xw0) eb2.f54321f.get(0)).u();
        u10.getClass();
        if (!(u10 instanceof C9736uI)) {
            AbstractC8999pu0 u11 = ((C10340xw0) eb2.f54321f.get(0)).u();
            u11.getClass();
            if (!(u11 instanceof C5188Fx)) {
                return false;
            }
        }
        if (eb2.x2()) {
            return true;
        }
        if (f53606e || ((C10340xw0) eb2.f54321f.get(0)).u() == eb2.y2().u()) {
            return ((C10340xw0) eb2.f54321f.get(0)).K() || eb2.y2().K();
        }
        throw new AssertionError();
    }

    public static void a(LinkedHashMap linkedHashMap) {
        linkedHashMap.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C10146wn0.a((C4960Bz) obj, (W5) obj2);
            }
        });
    }

    public static void a(C4960Bz c4960Bz, W5 w52) {
        W5 v22 = c4960Bz.v2();
        for (C7201f60 c7201f60 : v22.s()) {
            int indexOf = v22.u().indexOf(c4960Bz.b());
            c7201f60.getClass();
            c7201f60.a(indexOf, (C10696a) null, EnumC6871d70.f47287c);
        }
        boolean z10 = C4960Bz.f39050l;
        if (!z10 && c4960Bz.b().i() != c4960Bz) {
            throw new AssertionError();
        }
        List<W5> n10 = c4960Bz.b().n();
        if (!z10 && n10.size() < 1) {
            throw new AssertionError();
        }
        n10.get(n10.size() - 1).m().remove(c4960Bz.b());
        n10.set(n10.size() - 1, w52);
        w52.m().add(c4960Bz.b());
    }

    public static LinkedHashMap a(ArrayList arrayList) {
        C10340xw0 y22;
        W5 a10;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int size = arrayList.size();
        int i10 = 0;
        loop0: while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            final W5 w52 = (W5) obj;
            final EB V10 = w52.i().V();
            if (V10.x2()) {
                y22 = (C10340xw0) V10.f54321f.get(0);
            } else {
                y22 = ((C10340xw0) V10.f54321f.get(0)).K() ? V10.y2() : (C10340xw0) V10.f54321f.get(0);
            }
            C7201f60 l10 = y22.l();
            C6286Yx0 c6286Yx0 = new C6286Yx0(2);
            c6286Yx0.b((C6286Yx0) l10);
            while (c6286Yx0.b()) {
                C7201f60 c7201f60 = (C7201f60) c6286Yx0.c();
                for (C10340xw0 c10340xw0 : c7201f60.c0()) {
                    if (c10340xw0.j() && (c10340xw0.b0().isEmpty() || c7201f60 == l10)) {
                        if (c6286Yx0.a().containsAll(c10340xw0.a0())) {
                            c6286Yx0.b((C6286Yx0) c10340xw0.l());
                        }
                    }
                }
            }
            final Set a11 = c6286Yx0.a();
            final LinkedHashSet<C7201f60> linkedHashSet = new LinkedHashSet();
            C6286Yx0 c6286Yx02 = new C6286Yx0(2);
            c6286Yx02.b((C6286Yx0) w52);
            c6286Yx02.a(new BiConsumer() {
                @Override
                public final void accept(Object obj2, Object obj3) {
                    C10146wn0.a(EB.this, w52, a11, linkedHashSet, (W5) obj2, (C6286Yx0) obj3);
                }
            });
            Iterator<E> it = linkedHashSet.iterator();
            while (it.hasNext()) {
                for (C10340xw0 c10340xw02 : ((C7201f60) it.next()).c0()) {
                    if (!c10340xw02.M() && (!c10340xw02.j() || !linkedHashSet.contains(c10340xw02.l()))) {
                        break loop0;
                    }
                }
            }
            for (C7201f60 c7201f602 : linkedHashSet) {
                W5 w53 = c7201f602.f47862p;
                for (int i11 = 0; i11 < c7201f602.c0().size(); i11++) {
                    C10340xw0 c10340xw03 = (C10340xw0) c7201f602.f47863q.get(i11);
                    if (c10340xw03.K()) {
                        W5 w54 = w53.u().get(i11);
                        boolean z10 = f53606e;
                        if (!z10 && !w54.i().G1()) {
                            throw new AssertionError();
                        }
                        if (!z10 && !c10340xw03.M()) {
                            throw new AssertionError();
                        }
                        C9126qh J10 = c10340xw03.n().J();
                        if (V10.x2()) {
                            boolean z11 = EB.f39788m;
                            if (!z11 && !V10.x2()) {
                                throw new AssertionError();
                            }
                            if (!z11 && !EB.a(J10.a(), V10.f39789l)) {
                                throw new AssertionError();
                            }
                            a10 = V10.b(Long.signum(J10.w2()));
                        } else if (((C10340xw0) V10.f54321f.get(0)).K()) {
                            a10 = V10.a(((C10340xw0) V10.f54321f.get(0)).n().J(), J10);
                        } else {
                            if (!z10 && !V10.y2().K()) {
                                throw new AssertionError();
                            }
                            a10 = V10.a(J10, V10.y2().n().J());
                        }
                        linkedHashMap.put(w54.i().U(), a10);
                    }
                }
            }
        }
        return linkedHashMap;
    }

    public static void a(EB eb2, W5 w52, Set set, Set set2, W5 w53, C6286Yx0 c6286Yx0) {
        if (w53.l().size() > 1) {
            if (eb2.x2() || w53.l().size() != 2 || !w53.f45293f.a().w1()) {
                return;
            }
            C10340xw0 d10 = w53.f45293f.a().d();
            if (d10.B() || d10.b0().size() > 1) {
                return;
            }
            if (d10.b0().size() == 1 && d10.b0().iterator().next() != eb2) {
                return;
            }
        }
        if ((w53 == w52 || w53.i().G1()) && set.containsAll(w53.s())) {
            set2.addAll(w53.s());
            c6286Yx0.b((Iterable) w53.u());
        }
    }

    @Override
    public final boolean a(C7215fB c7215fB, AbstractC6931dX abstractC6931dX) {
        return c7215fB.f47902i.a(25) && c7215fB.f47897d.size() >= 6;
    }
}
