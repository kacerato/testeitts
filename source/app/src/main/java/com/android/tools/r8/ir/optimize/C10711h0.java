package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.AbstractC10561zE;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.B60;
import com.android.tools.r8.internal.C10340xw0;
import com.android.tools.r8.internal.C4960Bz;
import com.android.tools.r8.internal.C6382aB;
import com.android.tools.r8.internal.C6628bi;
import com.android.tools.r8.internal.C6732cH;
import com.android.tools.r8.internal.C6899dH;
import com.android.tools.r8.internal.C7215fB;
import com.android.tools.r8.internal.C7297fj;
import com.android.tools.r8.internal.C7333fv;
import com.android.tools.r8.internal.C7838ix;
import com.android.tools.r8.internal.C8421mS;
import com.android.tools.r8.internal.C9126qh;
import com.android.tools.r8.internal.CE;
import com.android.tools.r8.internal.EnumC6871d70;
import com.android.tools.r8.internal.InterfaceC5381Je0;
import com.android.tools.r8.internal.InterfaceC7166ev;
import com.android.tools.r8.internal.N8;
import com.android.tools.r8.internal.VG;
import com.android.tools.r8.internal.W5;
import com.android.tools.r8.internal.Y5;
import com.android.tools.r8.internal.Z5;
import com.android.tools.r8.ir.optimize.C10711h0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.function.Function;
import java.util.function.Predicate;

public class C10711h0 {

    public static final boolean f54877a = true;

    public static void a(C4798y<?> c4798y, C7215fB c7215fB, C8421mS c8421mS) {
        a(c7215fB, c8421mS);
        Iterator<W5> it = c7215fB.f47897d.iterator();
        while (it.hasNext()) {
            W5 next = it.next();
            HashMap hashMap = new HashMap();
            C10703d0 c10703d0 = new C10703d0(c8421mS);
            Y5 I10 = next.I();
            while (I10.hasNext()) {
                AbstractC10561zE next2 = I10.next();
                if (c10703d0.a(next2)) {
                    I10.s();
                } else if (next2.d() != null && next2.d().T()) {
                    C10340xw0 d10 = next2.d();
                    int i10 = next2.f54322g;
                    if (d10.M() && next2.w1()) {
                        C9126qh J10 = next2.J();
                        C10340xw0 d11 = J10.d();
                        d11.getClass();
                        if (d11 instanceof C7838ix ? false : J10.d().f53891h.a(J10.f54322g).k()) {
                            I10.s();
                        } else {
                            int b10 = c8421mS.b(d10, i10);
                            C9126qh c9126qh = (C9126qh) hashMap.get(Integer.valueOf(b10));
                            if (c9126qh != null && c9126qh.b(next2)) {
                                I10.s();
                            } else {
                                hashMap.put(Integer.valueOf(b10), next2.J());
                                if (next2.s2().b()) {
                                    hashMap.remove(Integer.valueOf(b10 + 1));
                                }
                                int i11 = b10 - 1;
                                C9126qh c9126qh2 = (C9126qh) hashMap.get(Integer.valueOf(i11));
                                if (c9126qh2 != null && c9126qh2.s2().b()) {
                                    hashMap.remove(Integer.valueOf(i11));
                                }
                            }
                        }
                    } else {
                        int b11 = c8421mS.b(d10, i10);
                        for (int i12 = 0; i12 < d10.f53896m.C(); i12++) {
                            hashMap.remove(Integer.valueOf(b11 + i12));
                        }
                        int i13 = b11 - 1;
                        C9126qh c9126qh3 = (C9126qh) hashMap.get(Integer.valueOf(i13));
                        if (c9126qh3 != null && c9126qh3.s2().b()) {
                            hashMap.remove(Integer.valueOf(i13));
                        }
                    }
                }
            }
        }
        Z z10 = new Z(c7215fB, c8421mS);
        Set c10 = AbstractC5513Ll0.c();
        Iterator<W5> it2 = c7215fB.f47897d.iterator();
        while (it2.hasNext()) {
            a(it2.next(), c8421mS, c10, z10);
        }
        c7215fB.f47897d.removeAll(c10);
        a(c7215fB, c8421mS, 0);
        if (f54877a) {
            return;
        }
        c7215fB.b(false);
    }

    public static List b(C7333fv c7333fv) {
        return new ArrayList();
    }

    public static void a(final W5 w52, final C8421mS c8421mS, Set set, Z z10) {
        if (set.contains(w52) || !a(w52)) {
            return;
        }
        List p10 = w52.p();
        while (true) {
            int i10 = 0;
            W5 w53 = (W5) p10.get(0);
            Iterator it = p10.iterator();
            while (it.hasNext()) {
                if (((W5) it.next()).f45293f.isEmpty()) {
                    if (!f54877a && !set.containsAll(p10)) {
                        throw new AssertionError();
                    }
                    return;
                }
            }
            final AbstractC10561zE a10 = w53.f45293f.a();
            for (int i11 = 1; i11 < p10.size(); i11++) {
                if (!z10.b(a10, ((W5) p10.get(i11)).f45293f.a())) {
                    return;
                }
            }
            if (a10.o()) {
                if (w52.z()) {
                    return;
                }
                Iterator it2 = p10.iterator();
                while (it2.hasNext()) {
                    if (((W5) it2.next()).z()) {
                        return;
                    }
                }
            }
            if (a10.d() != null && a10.d().T()) {
                final int b10 = c8421mS.b(a10.d(), a10.f54322g);
                if (!w52.i().f54321f.stream().allMatch(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        return C10711h0.a(InterfaceC5381Je0.this, w52, a10, b10, (C10340xw0) obj);
                    }
                })) {
                    return;
                }
            }
            B60 position = a10.getPosition();
            B60 position2 = w52.i().getPosition();
            position.getClass();
            if (!InterfaceC7166ev.a(position, position2) && (!w52.i().getPosition().o() || w52.i().V0().isEmpty())) {
                return;
            }
            Iterator it3 = p10.iterator();
            while (it3.hasNext()) {
                AbstractC10561zE a11 = ((W5) it3.next()).f45293f.a();
                a11.f54317b.l().b(a11);
            }
            if (a10.U1()) {
                AbstractC10561zE b11 = w52.f45293f.b();
                b11.f54317b.l().b(b11);
                w52.l().a(a10, null);
                ArrayList arrayList = new ArrayList(p10);
                w52.f();
                Iterator it4 = w53.p().iterator();
                while (it4.hasNext()) {
                    w52.g((W5) it4.next());
                }
                int size = arrayList.size();
                while (i10 < size) {
                    Object obj = arrayList.get(i10);
                    i10++;
                    ((W5) obj).f();
                }
                set.addAll(arrayList);
                if (!a(w52)) {
                    return;
                }
            } else {
                w52.l().a(a10, w52.f45293f.b());
                if (a10 instanceof C7297fj) {
                    C7297fj M10 = a10.M();
                    Iterator it5 = p10.iterator();
                    while (it5.hasNext()) {
                        M10.a(((W5) it5.next()).f45288a);
                    }
                }
            }
        }
    }

    public static boolean a(InterfaceC5381Je0 interfaceC5381Je0, W5 w52, AbstractC10561zE abstractC10561zE, int i10, C10340xw0 c10340xw0) {
        int b10 = interfaceC5381Je0.b(c10340xw0, w52.i().f54322g);
        for (int i11 = 0; i11 < abstractC10561zE.d().f53896m.C(); i11++) {
            for (int i12 = 0; i12 < c10340xw0.f53896m.C(); i12++) {
                if (i10 + i11 == b10 + i12) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean a(W5 w52) {
        List p10 = w52.p();
        if (p10.size() <= 1) {
            return false;
        }
        Iterator it = p10.iterator();
        while (it.hasNext()) {
            if (((W5) it.next()).u().size() != 1) {
                return false;
            }
        }
        W5 w53 = (W5) p10.get(0);
        for (int i10 = 1; i10 < p10.size(); i10++) {
            if (!Objects.equals(w53.f45288a, ((W5) p10.get(i10)).f45288a)) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:153:0x02ee, code lost:
    
        throw new java.lang.AssertionError();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void a(C7215fB c7215fB, InterfaceC5381Je0 interfaceC5381Je0, int i10) {
        int i11;
        W5 w52;
        int i12;
        C6899dH c6899dH;
        AbstractC10561zE Y02;
        B60 t10;
        C6899dH c6899dH2;
        C6899dH c6899dH3;
        Iterator it;
        int i13;
        List list;
        C7215fB c7215fB2 = c7215fB;
        InterfaceC5381Je0 interfaceC5381Je02 = interfaceC5381Je0;
        Collection collection = c7215fB2.f47897d;
        List<W5> f10 = c7215fB.f();
        Set c10 = AbstractC5513Ll0.c();
        int i14 = 1;
        if (f10.size() > 1) {
            if (!c7215fB.j().E().S0() && !c7215fB2.f47895b.a()) {
                C6899dH c6899dH4 = new C6899dH(16);
                for (W5 w53 : f10) {
                    int i15 = w53.i().G0().w2().f53891h.a(w53.i().f54322g).f40221k;
                    if (!f54877a && i15 == Integer.MIN_VALUE) {
                        throw new AssertionError();
                    }
                    if (c6899dH4.a(i15)) {
                        list = (List) c6899dH4.get(i15);
                    } else {
                        ArrayList arrayList = new ArrayList();
                        c6899dH4.a(i15, arrayList);
                        list = arrayList;
                    }
                    list.add(w53);
                }
                C6732cH c6732cH = new C6732cH(((VG) c6899dH4.values()).f45009b);
                while (c6732cH.hasNext()) {
                    List list2 = (List) c6732cH.f47013h.f47341c[c6732cH.a()];
                    W5 w54 = new W5(c7215fB2.f47902i);
                    w54.m().addAll(list2);
                    c10.add(w54);
                }
            } else {
                W5 w55 = new W5(c7215fB2.f47902i);
                w55.m().addAll(f10);
                c10.add(w55);
            }
            collection = new ArrayList(c10.size() + c7215fB2.f47897d.size());
            collection.addAll(c7215fB2.f47897d);
            collection.addAll(c10);
        }
        loop2: while (true) {
            IdentityHashMap identityHashMap = new IdentityHashMap();
            Iterator it2 = collection.iterator();
            while (it2.hasNext()) {
                W5 w56 = (W5) it2.next();
                Z z10 = new Z(c7215fB2, interfaceC5381Je02);
                HashMap hashMap = new HashMap();
                Iterator<W5> it3 = w56.u().iterator();
                while (true) {
                    i11 = 2;
                    if (!it3.hasNext()) {
                        break;
                    }
                    W5 next = it3.next();
                    if (next.i().G1() && next.v().size() == i14 && next.l().size() > i14) {
                        ((List) hashMap.computeIfAbsent(new C7333fv(z10, next.f45293f.b().b1()), new Function() {
                            @Override
                            public final Object apply(Object obj) {
                                return C10711h0.a((C7333fv) obj);
                            }
                        })).add(next);
                    } else if (next.i().g2() && next.v().isEmpty() && next.l().size() > 2) {
                        ((List) hashMap.computeIfAbsent(new C7333fv(z10, next.i()), new Function() {
                            @Override
                            public final Object apply(Object obj) {
                                return C10711h0.b((C7333fv) obj);
                            }
                        })).add(next);
                    }
                }
                for (List<W5> list3 : hashMap.values()) {
                    if (list3.size() >= i11) {
                        W5 w57 = list3.get(0);
                        int size = w57.l().size();
                        int i16 = i14;
                        while (i16 < list3.size()) {
                            W5 w58 = list3.get(i16);
                            boolean z11 = f54877a;
                            if (!z11 && !w58.i().G1() && !w58.i().g2()) {
                                throw new AssertionError();
                            }
                            if (!z11 && !w57.i().G1() && !w57.i().g2()) {
                                throw new AssertionError();
                            }
                            C6899dH c6899dH5 = w57.f45288a;
                            if (c6899dH5 == null) {
                                c6899dH2 = null;
                            } else {
                                c6899dH2 = new C6899dH(c6899dH5.size());
                                c6899dH2.putAll(c6899dH5);
                                Y5 it4 = w57.l().iterator();
                                while (it4.hasNext()) {
                                    AbstractC10561zE next2 = it4.next();
                                    next2.getClass();
                                    if (next2 instanceof C7297fj) {
                                        next2.M().a(c6899dH2);
                                    }
                                }
                            }
                            C6899dH c6899dH6 = w58.f45288a;
                            if (c6899dH6 == null) {
                                it = it2;
                                c6899dH3 = null;
                            } else {
                                c6899dH3 = new C6899dH(c6899dH6.size());
                                c6899dH3.putAll(c6899dH6);
                                Y5 it5 = w58.l().iterator();
                                while (it5.hasNext()) {
                                    AbstractC10561zE next3 = it5.next();
                                    next3.getClass();
                                    Iterator it6 = it2;
                                    if (next3 instanceof C7297fj) {
                                        next3.M().a(c6899dH3);
                                    }
                                    it2 = it6;
                                }
                                it = it2;
                            }
                            if (Objects.equals(c6899dH2, c6899dH3)) {
                                AbstractC10561zE b10 = w57.f45293f.b();
                                AbstractC10561zE b11 = w58.f45293f.b();
                                i13 = 0;
                                while (b10 != null && b11 != null && b10.a(b11, interfaceC5381Je02, c7215fB2.f47895b)) {
                                    b10 = b10.b1();
                                    b11 = b11.b1();
                                    i13++;
                                }
                            } else {
                                i13 = 0;
                            }
                            size = Math.min(size, i13);
                            i16++;
                            it2 = it;
                        }
                        Iterator it7 = it2;
                        i14 = 1;
                        int size2 = i10 - ((list3.size() - 1) * size);
                        if (size <= 1) {
                            c7215fB2 = c7215fB;
                            interfaceC5381Je02 = interfaceC5381Je0;
                        } else if (size2 < 0) {
                            if (c10.contains(w56)) {
                                i12 = 0;
                                w52 = null;
                            } else {
                                w52 = w56;
                                i12 = 0;
                            }
                            W5 w59 = list3.get(i12);
                            if (f54877a || ((w52 != null && w59.i().G1()) || (w52 == null && w59.i().g2()))) {
                                W5 w510 = new W5(c7215fB2.f47902i);
                                w510.d(c7215fB2.f47899f.a());
                                C6899dH c6899dH7 = w59.f45288a;
                                if (c6899dH7 != null) {
                                    c6899dH = new C6899dH(c6899dH7.size());
                                    c6899dH.putAll(c6899dH7);
                                    int size3 = w59.l().size() - size;
                                    AbstractC10561zE a10 = w59.f45293f.a();
                                    for (int i17 = 0; i17 < size3; i17++) {
                                        a10.getClass();
                                        if (a10 instanceof C7297fj) {
                                            a10.M().a(c6899dH);
                                        }
                                        a10 = a10.Y0();
                                    }
                                } else {
                                    c6899dH = null;
                                }
                                interfaceC5381Je02.a(w510, size, list3);
                                AbstractC10561zE b12 = w59.f45293f.b();
                                boolean z12 = false;
                                for (int i18 = 0; i18 < size; i18++) {
                                    z12 = z12 || b12.o();
                                    b12 = b12.b1();
                                }
                                CE l10 = w510.l();
                                if (b12 == null) {
                                    Y02 = w59.f45293f.a();
                                } else {
                                    Y02 = b12.Y0();
                                }
                                l10.d(Y02);
                                if (z12 && w59.z()) {
                                    w510.f45292e = w59.f45292e;
                                    w59.f45292e = N8.f42507e;
                                }
                                for (W5 w511 : list3) {
                                    CE l11 = w511.l();
                                    if (w511 == w59) {
                                        t10 = w510.t();
                                    } else {
                                        t10 = w511.t();
                                        for (int i19 = 0; i19 < size; i19++) {
                                            l11.b(l11.b());
                                        }
                                    }
                                    AbstractC10561zE abstractC10561zE = l11.f39168d;
                                    while (true) {
                                        if (abstractC10561zE == null) {
                                            break;
                                        }
                                        if (!abstractC10561zE.getPosition().o()) {
                                            t10 = abstractC10561zE.getPosition();
                                            break;
                                        }
                                        abstractC10561zE = abstractC10561zE.b1();
                                    }
                                    B60 b60 = t10;
                                    C4960Bz c4960Bz = new C4960Bz();
                                    c4960Bz.b(b60);
                                    l11.a(c4960Bz, null);
                                    w510.m().add(w511);
                                    if (w52 != null) {
                                        w511.b(w52, w510);
                                        w52.m().remove(w511);
                                    } else {
                                        w511.n().add(w510);
                                    }
                                    if (z12) {
                                        w511.f45292e = N8.f42507e;
                                    }
                                }
                                w510.a((C6382aB) null);
                                if (c6899dH != null) {
                                    w510.f45288a = c6899dH;
                                }
                                if (w52 != null) {
                                    w510.g(w52);
                                }
                                identityHashMap.put(list3.get(0), w510);
                                i14 = 1;
                                i11 = 2;
                                c7215fB2 = c7215fB;
                                interfaceC5381Je02 = interfaceC5381Je0;
                                it2 = it7;
                            }
                        }
                        it2 = it7;
                        i11 = 2;
                    }
                }
                c7215fB2 = c7215fB;
                interfaceC5381Je02 = interfaceC5381Je0;
            }
            Z5 u10 = c7215fB.u();
            while (u10.hasNext()) {
                W5 next4 = u10.next();
                if (identityHashMap.containsKey(next4)) {
                    u10.add((W5) identityHashMap.get(next4));
                }
            }
            collection = identityHashMap.values();
            if (collection.isEmpty()) {
                return;
            }
            i14 = 1;
            c7215fB2 = c7215fB;
            interfaceC5381Je02 = interfaceC5381Je0;
        }
    }

    public static List a(C7333fv c7333fv) {
        return new ArrayList();
    }

    public static void a(C7215fB c7215fB, InterfaceC5381Je0 interfaceC5381Je0) {
        boolean z10;
        C10727s c10727s = new C10727s(c7215fB, interfaceC5381Je0);
        do {
            Iterator<W5> it = c7215fB.f47897d.iterator();
            z10 = false;
            while (it.hasNext()) {
                W5 next = it.next();
                HashMap hashMap = new HashMap();
                for (int i10 = 0; i10 < next.u().size(); i10++) {
                    W5 w52 = next.u().get(i10);
                    if (w52.l().size() != 1) {
                        C7333fv c7333fv = new C7333fv(c10727s, w52);
                        if (hashMap.containsKey(c7333fv)) {
                            W5 w53 = next.u().get(((Integer) hashMap.get(c7333fv)).intValue());
                            if (!f54877a && interfaceC5381Je0.e().f50690i1 && !Objects.equals(w52.t(), w53.t())) {
                                throw new AssertionError();
                            }
                            interfaceC5381Je0.b(w53, w52);
                            w52.f45292e = N8.f42507e;
                            CE l10 = w52.l();
                            l10.f39167c = null;
                            l10.f39168d = null;
                            l10.f39169e = 0;
                            c10727s.f54929c[w52.q()] = -1;
                            for (W5 w54 : w52.v()) {
                                w54.getClass();
                                w54.a(w52, (C10696a) null, C6628bi.b(), EnumC6871d70.f47287c);
                            }
                            w52.n().clear();
                            w52.n().add(w53);
                            if (!f54877a && w53.u().contains(w52)) {
                                throw new AssertionError();
                            }
                            w53.m().add(w52);
                            C4960Bz c4960Bz = new C4960Bz();
                            c4960Bz.b(w53.t());
                            w52.l().a(c4960Bz, null);
                            z10 = true;
                        } else {
                            hashMap.put(c7333fv, Integer.valueOf(i10));
                        }
                    }
                }
            }
        } while (z10);
    }
}
