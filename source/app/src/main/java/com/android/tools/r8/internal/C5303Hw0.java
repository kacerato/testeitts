package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.function.Predicate;

public final class C5303Hw0 {

    public static final boolean f40920e = true;

    public final C4798y f40921a;

    public final com.android.tools.r8.graph.H5 f40922b;

    public final C4724u1 f40923c;

    public final C8570nJ f40924d;

    public C5303Hw0(C4798y c4798y, C7215fB c7215fB) {
        this.f40921a = c4798y;
        this.f40922b = c7215fB.j();
        this.f40923c = c4798y.b();
        this.f40924d = c4798y.E();
    }

    public final boolean a(Set set) {
        C4955Bw0 c4955Bw0 = new C4955Bw0();
        Set c10 = AbstractC5513Ll0.c();
        Set c11 = AbstractC5513Ll0.c();
        C6286Yx0 c6286Yx0 = new C6286Yx0(2);
        c6286Yx0.b((Iterable) set);
        while (c6286Yx0.b()) {
            C10340xw0 c10340xw0 = (C10340xw0) c6286Yx0.c();
            C10340xw0 i10 = c10340xw0.i();
            C4897Aw0 a10 = c4955Bw0.a(i10);
            if (i10 != c10340xw0) {
                C4897Aw0 a11 = c4955Bw0.a(c10340xw0);
                a10.f38741c.add(a11);
                a11.f38742d.add(a10);
            }
            if (!i10.M()) {
                if (!f40920e && i10.i().M()) {
                    throw new AssertionError();
                }
                F1 a12 = i10.a(this.f40921a, this.f40922b, M1.f42128a);
                if (a12.e0()) {
                    continue;
                } else {
                    if (a12.f0()) {
                        C4554l1 c4554l1 = a12.N().f40306c;
                        C4460g1 b10 = c4554l1.b(this.f40921a.g(c4554l1.f38297f));
                        if (b10 != null && b10.N0()) {
                        }
                    }
                    if (!i10.j()) {
                        AbstractC10561zE abstractC10561zE = i10.f53886c;
                        if (abstractC10561zE.a2()) {
                            ArrayList arrayList = abstractC10561zE.u0().f54321f;
                            int size = arrayList.size();
                            int i11 = 0;
                            while (i11 < size) {
                                Object obj = arrayList.get(i11);
                                i11++;
                                C10340xw0 c10340xw02 = (C10340xw0) obj;
                                C4897Aw0 a13 = c4955Bw0.a(c10340xw02);
                                a13.f38741c.add(a10);
                                a10.f38742d.add(a13);
                                c6286Yx0.b((C6286Yx0) c10340xw02);
                            }
                        } else if (abstractC10561zE instanceof C8769oZ) {
                            C10340xw0 c10340xw03 = (C10340xw0) abstractC10561zE.t0().f54321f.get(0);
                            C4897Aw0 a14 = c4955Bw0.a(c10340xw03);
                            a14.f38741c.add(a10);
                            a10.f38742d.add(a14);
                            c6286Yx0.b((C6286Yx0) c10340xw03);
                        }
                        for (AbstractC10561zE abstractC10561zE2 : abstractC10561zE.b().a(abstractC10561zE)) {
                            if (abstractC10561zE2.o1()) {
                                T3 A10 = abstractC10561zE2.A();
                                if (A10.u2().i() != i10) {
                                    break;
                                }
                                C4897Aw0 a15 = c4955Bw0.a((C10340xw0) A10.f54321f.get(1));
                                a15.f38741c.add(a10);
                                a10.f38742d.add(a15);
                                c6286Yx0.b((C6286Yx0) A10.f54321f.get(1));
                                C4897Aw0 a16 = c4955Bw0.a(A10.value());
                                a16.f38741c.add(a10);
                                a10.f38742d.add(a16);
                                c6286Yx0.b((C6286Yx0) A10.value());
                                c10.add(abstractC10561zE2);
                            } else if (abstractC10561zE2.b2()) {
                                if (((C10340xw0) abstractC10561zE2.v0().f54321f.get(0)) != i10) {
                                    break;
                                }
                                c10.add(abstractC10561zE2);
                                c10.add(abstractC10561zE2);
                            } else {
                                C4798y c4798y = this.f40921a;
                                com.android.tools.r8.graph.H5 h52 = this.f40922b;
                                if (abstractC10561zE2.b(c4798y, h52, M1.a(c4798y, h52), C10394yE.f53978a)) {
                                    break;
                                }
                                c10.add(abstractC10561zE2);
                            }
                        }
                        c11.add(i10);
                    }
                    if (!a(i10) && !a(i10, a10, c4955Bw0, c6286Yx0) && !a(i10, a10, c4955Bw0, c10, c11, c6286Yx0)) {
                        return true;
                    }
                }
            }
        }
        c4955Bw0.a();
        final Set<C4897Aw0> a17 = C4875Al0.a(c4955Bw0.f39042a.values());
        while (!a17.isEmpty()) {
            final Set c12 = AbstractC5513Ll0.c();
            for (C4897Aw0 c4897Aw0 : a17) {
                if (!c4897Aw0.a(new Predicate() {
                    @Override
                    public final boolean test(Object obj2) {
                        return C5303Hw0.a(Set.this, c12, (C4897Aw0) obj2);
                    }
                })) {
                    c12.add(c4897Aw0);
                }
            }
            if (c12.isEmpty()) {
                return true;
            }
            a17.removeAll(c12);
        }
        return a(c11, c10);
    }

    public final boolean b(C10340xw0 c10340xw0) {
        C10340xw0 i10 = c10340xw0.i();
        return i10.d(new C9735uH0()) && !this.f40921a.r().a(i10.r().F().f49303l, this.f40924d, this.f40921a);
    }

    public static boolean a(Set set, Set set2, C4897Aw0 c4897Aw0) {
        return set.contains(c4897Aw0) && !set2.contains(c4897Aw0);
    }

    public final boolean a(C10340xw0 c10340xw0) {
        if (!c10340xw0.d(new XC0())) {
            return false;
        }
        C8405mK k02 = c10340xw0.r().k0();
        if (k02.B2() == this.f40923c.f37922O4.f36319a) {
            return b(k02.C2());
        }
        return false;
    }

    public static boolean a(C10340xw0 c10340xw0, C4897Aw0 c4897Aw0, C4955Bw0 c4955Bw0, C6286Yx0 c6286Yx0) {
        int i10 = 0;
        if (!c10340xw0.d(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((AbstractC10561zE) obj).W1();
            }
        })) {
            return false;
        }
        ArrayList arrayList = c10340xw0.r().n0().f54321f;
        int size = arrayList.size();
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            C10340xw0 c10340xw02 = (C10340xw0) obj;
            C4897Aw0 a10 = c4955Bw0.a(c10340xw02);
            a10.f38741c.add(c4897Aw0);
            c4897Aw0.f38742d.add(a10);
            c6286Yx0.b((C6286Yx0) c10340xw02);
        }
        return true;
    }

    public final boolean a(C10340xw0 c10340xw0, C4897Aw0 c4897Aw0, C4955Bw0 c4955Bw0, Set set, Set set2, C6286Yx0 c6286Yx0) {
        QJ a10;
        com.android.tools.r8.graph.H0 p10;
        int i10 = 0;
        if (!c10340xw0.d(new C7680hz0())) {
            return false;
        }
        C9603tZ w02 = c10340xw0.r().w0();
        C4798y c4798y = this.f40921a;
        com.android.tools.r8.graph.M2 u22 = w02.u2();
        com.android.tools.r8.graph.E0 holder = this.f40922b.getHolder();
        if (u22 != holder.f36245e) {
            holder = c4798y.a(u22);
        }
        if (holder == null || (a10 = AbstractC7716iB.a(this.f40923c, w02.d())) == null || (p10 = ((C11245i) this.f40921a.f()).a(a10.B2(), a10.f43539o).p()) == null) {
            return false;
        }
        if (!this.f40924d.e() && p10.getHolder() != holder) {
            return false;
        }
        AbstractC7224fE a11 = p10.A().a(a10);
        ArrayList b10 = holder.b(this.f40921a);
        if (!b10.isEmpty()) {
            if (a11.d()) {
                return false;
            }
            for (int i11 = 1; i11 < a10.f54321f.size(); i11++) {
                C10340xw0 b11 = a10.b(i11);
                C4897Aw0 a12 = c4955Bw0.a(b11);
                a12.f38741c.add(c4897Aw0);
                c4897Aw0.f38742d.add(a12);
                c6286Yx0.b((C6286Yx0) b11);
            }
            int size = b10.size();
            while (true) {
                if (i10 >= size) {
                    break;
                }
                Object obj = b10.get(i10);
                i10++;
                if (!((com.android.tools.r8.graph.F0) obj).getAccessFlags().e()) {
                    set2.add(c10340xw0);
                    break;
                }
            }
        }
        if (!a11.e()) {
            set.add(a10);
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean a(Set set, Set set2) {
        boolean z10;
        boolean z11;
        Set c10 = AbstractC5513Ll0.c();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            C10340xw0 c10340xw0 = (C10340xw0) it.next();
            if (!f40920e && c10340xw0.j()) {
                throw new AssertionError();
            }
            c10.add(c10340xw0.f53886c.b());
        }
        IdentityHashMap identityHashMap = new IdentityHashMap();
        ArrayDeque arrayDeque = new ArrayDeque(c10);
        while (!arrayDeque.isEmpty()) {
            W5 w52 = (W5) arrayDeque.removeFirst();
            final C5245Gw0 c5245Gw0 = new C5245Gw0();
            Iterator<W5> it2 = w52.u().iterator();
            while (it2.hasNext()) {
                C5245Gw0 c5245Gw02 = (C5245Gw0) identityHashMap.getOrDefault(it2.next(), C5245Gw0.f40625c);
                c5245Gw0.f40626a |= c5245Gw02.f40626a;
                c5245Gw0.f40627b.addAll(c5245Gw02.f40627b);
            }
            Y5 it3 = w52.l().iterator();
            boolean z12 = false;
            while (it3.hasNext()) {
                AbstractC10561zE next = it3.next();
                if (!set2.contains(next)) {
                    if (next.e()) {
                        C5634No0 L02 = next.L0();
                        if (c5245Gw0.f40627b.contains(L02.value())) {
                            if (c5245Gw0.f40626a) {
                                z10 = false;
                            } else {
                                c5245Gw0.f40626a = true;
                                z10 = true;
                            }
                            z12 |= z10;
                        }
                        if (c5245Gw0.f40626a && L02.getField().f38297f.a(this.f40921a, this.f40922b)) {
                            return true;
                        }
                    } else {
                        if (next.a(this.f40921a, this.f40922b)) {
                            if (next.a(new Predicate() {
                                @Override
                                public final boolean test(Object obj) {
                                    return C5245Gw0.this.a((C10340xw0) obj);
                                }
                            })) {
                                if (c5245Gw0.f40626a) {
                                    z11 = false;
                                } else {
                                    c5245Gw0.f40626a = true;
                                    z11 = true;
                                }
                                z12 |= z11;
                            }
                            if (c5245Gw0.f40626a) {
                                C4798y c4798y = this.f40921a;
                                com.android.tools.r8.graph.H5 h52 = this.f40922b;
                                if (next.b(c4798y, h52, M1.a(c4798y, h52), C10394yE.f53978a)) {
                                    return true;
                                }
                            }
                        }
                        if (next.e1() && set.contains(next.d())) {
                            z12 |= c5245Gw0.f40627b.add(next.d());
                        }
                    }
                }
            }
            identityHashMap.put(w52, c5245Gw0);
            if (z12) {
                arrayDeque.addAll(w52.v());
            }
        }
        return false;
    }
}
