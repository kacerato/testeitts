package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.B60;
import com.android.tools.r8.ir.optimize.C10734z;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;

public final class C9147qo extends AbstractC9617te {

    public static final boolean f51888f = true;

    public final C10734z f51889e;

    public C9147qo(C4798y c4798y, C10734z c10734z) {
        super(c4798y);
        this.f51889e = c10734z;
    }

    public static boolean a(W5 w52, W5 w53) {
        return w53 == w52;
    }

    public static C6993dt c(C7215fB c7215fB) {
        return new C6993dt(c7215fB, 1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:102:0x0228, code lost:
    
        continue;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final InterfaceC10118we b(C7215fB c7215fB) {
        C10340xw0 c10340xw0;
        C10340xw0 y22;
        C10340xw0 c10340xw02;
        int i10 = -1;
        if (c7215fB.f47902i.a()) {
            Iterator<W5> it = c7215fB.f47897d.iterator();
            while (it.hasNext()) {
                W5 next = it.next();
                Y5 I10 = next.I();
                Set c10 = AbstractC5513Ll0.c();
                while (I10.hasNext()) {
                    AbstractC10561zE next2 = I10.next();
                    if (a(next2)) {
                        AbstractC9702u6 C10 = next2.C();
                        if (((C10340xw0) C10.f54321f.get(0)).K()) {
                            c10340xw02 = C10.y2();
                        } else {
                            if (!C10.y2().K()) {
                                throw new C5417Jv0();
                            }
                            c10340xw02 = (C10340xw0) C10.f54321f.get(0);
                        }
                        if (!f51888f && c10340xw02 == null) {
                            throw new AssertionError();
                        }
                        c10.add(c10340xw02);
                    }
                }
                if (!c10.isEmpty()) {
                    C9115qd0 c9115qd0 = new C9115qd0();
                    c9115qd0.f53665b = i10;
                    int size = next.l().size();
                    while (I10.hasPrevious()) {
                        AbstractC10561zE previous = I10.previous();
                        size += i10;
                        Iterator it2 = AbstractC6114Vx.b(previous.f54321f, previous.V0()).iterator();
                        while (true) {
                            GK gk2 = (GK) it2;
                            if (gk2.hasNext()) {
                                C10340xw0 c10340xw03 = (C10340xw0) gk2.next();
                                if (c10.contains(c10340xw03) && !c9115qd0.containsKey(c10340xw03)) {
                                    c9115qd0.b(size, c10340xw03);
                                }
                            }
                        }
                    }
                    int i11 = size + i10;
                    if (!f51888f && i11 != i10) {
                        throw new AssertionError();
                    }
                    while (I10.hasNext()) {
                        AbstractC10561zE next3 = I10.next();
                        i11++;
                        if (a(next3)) {
                            AbstractC9702u6 C11 = next3.C();
                            if (((C10340xw0) C11.f54321f.get(0)).K()) {
                                c10340xw0 = C11.y2();
                            } else {
                                if (!C11.y2().K()) {
                                    throw new C5417Jv0();
                                }
                                c10340xw0 = (C10340xw0) C11.f54321f.get(0);
                            }
                            boolean z10 = f51888f;
                            if (!z10 && c10340xw0 == null) {
                                throw new AssertionError();
                            }
                            int b10 = c9115qd0.b(c10340xw0);
                            if (!z10 && b10 == i10) {
                                throw new AssertionError();
                            }
                            if (b10 <= i11) {
                                Set c11 = AbstractC5513Ll0.c();
                                W5 b11 = C11.b();
                                Iterator it3 = (c10340xw0.g() != null ? AbstractC6114Vx.b(c10340xw0.b0(), c10340xw0.g(), c10340xw0.a0()) : AbstractC6114Vx.b(c10340xw0.b0(), c10340xw0.a0())).iterator();
                                while (true) {
                                    GK gk3 = (GK) it3;
                                    if (!gk3.hasNext()) {
                                        break;
                                    }
                                    W5 b12 = ((FE) gk3.next()).b();
                                    if (b12 != b11 && !c11.contains(b12)) {
                                        if (b11.d(b12)) {
                                            break;
                                        }
                                        c11.add(b12);
                                    }
                                }
                            }
                            if (!f51888f && !a(next3)) {
                                throw new AssertionError();
                            }
                            AbstractC9702u6 C12 = next3.C();
                            if (((C10340xw0) C12.f54321f.get(0)).K()) {
                                y22 = (C10340xw0) C12.f54321f.get(0);
                            } else {
                                if (!C12.y2().K()) {
                                    throw new C5417Jv0();
                                }
                                y22 = C12.y2();
                            }
                            if (y22.U() > 1) {
                                C9126qh J10 = y22.f53886c.J();
                                boolean z11 = C9126qh.f51850m;
                                C9126qh a10 = C9126qh.a(c7215fB.a(J10.a(), J10.q()), J10);
                                a10.b(next3.getPosition());
                                next3.b();
                                next3.a(y22, a10.d(), (Set) null);
                                y22.f53887d.remove(next3);
                                y22.f53888e = null;
                                I10.previous();
                                I10.add(a10);
                                I10.next();
                            }
                        }
                        i10 = -1;
                    }
                }
            }
        }
        a(c7215fB, this.f51889e);
        return InterfaceC10118we.f53549c;
    }

    @Override
    public final boolean a(C7215fB c7215fB, AbstractC6931dX abstractC6931dX) {
        return true;
    }

    @Override
    public final String a() {
        return "DexConstantOptimizer";
    }

    public static boolean a(AbstractC10561zE abstractC10561zE) {
        if (!abstractC10561zE.l1() && !abstractC10561zE.W1()) {
            return false;
        }
        AbstractC9702u6 C10 = abstractC10561zE.C();
        boolean z10 = (C10.c((C10340xw0) C10.f54321f.get(0)) && C10.c(C10.y2())) ? false : true;
        if (f51888f || !z10 || ((C10340xw0) C10.f54321f.get(0)).K() || C10.y2().K()) {
            return z10;
        }
        throw new AssertionError();
    }

    public final void a(final C7215fB c7215fB, final C10734z c10734z) {
        if (this.f52648c.f50599F1.f50847U0) {
            return;
        }
        C9420sR c9420sR = new C9420sR(new Supplier() {
            @Override
            public final Object get() {
                return C9147qo.c(C7215fB.this);
            }
        });
        IdentityHashMap identityHashMap = new IdentityHashMap();
        Iterator<W5> it = c7215fB.f47897d.iterator();
        while (it.hasNext()) {
            W5 next = it.next();
            Objects.requireNonNull(c10734z);
            a(c7215fB, next, c9420sR, identityHashMap, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return C10734z.this.a((AbstractC10561zE) obj);
                }
            });
        }
        Z5 u10 = c7215fB.u();
        while (u10.f46159b.hasNext()) {
            W5 w52 = (W5) u10.f46159b.next();
            u10.f46160c = w52;
            Map map = (Map) identityHashMap.get(w52);
            if (map != null) {
                if (!f51888f && map.isEmpty()) {
                    throw new AssertionError();
                }
                if (!w52.u().isEmpty() && map.size() > 50) {
                    map.values().removeIf(new Predicate() {
                        @Override
                        public final boolean test(Object obj) {
                            return C9147qo.a(C7215fB.this, (AbstractC10561zE) obj);
                        }
                    });
                }
                boolean z10 = w52.z();
                EE I10 = w52.I();
                while (I10.hasNext()) {
                    AbstractC10561zE next2 = I10.next();
                    if (!next2.U1() && (!z10 || !next2.o())) {
                        C8570nJ c8570nJ = this.f52648c;
                        c8570nJ.getClass();
                        if (c8570nJ.a(C2.M) && (next2 instanceof C9450se)) {
                            break;
                        }
                        Iterator it2 = AbstractC6114Vx.b(next2.f54321f, next2.V0()).iterator();
                        EE ee2 = I10;
                        while (true) {
                            GK gk2 = (GK) it2;
                            if (gk2.hasNext()) {
                                AbstractC10561zE abstractC10561zE = (AbstractC10561zE) map.remove((C10340xw0) gk2.next());
                                if (abstractC10561zE != null) {
                                    ee2 = a(c7215fB, u10, ee2, abstractC10561zE, next2);
                                }
                            }
                        }
                        I10 = ee2;
                    } else {
                        break;
                    }
                }
                AbstractC10561zE n10 = I10.n();
                Iterator it3 = map.values().iterator();
                EE ee3 = I10;
                while (it3.hasNext()) {
                    ee3 = a(c7215fB, u10, ee3, (AbstractC10561zE) it3.next(), n10);
                }
            }
        }
        c7215fB.x();
    }

    public static boolean a(C7215fB c7215fB, AbstractC10561zE abstractC10561zE) {
        if (abstractC10561zE.d().B() || !abstractC10561zE.w1()) {
            return false;
        }
        C9126qh J10 = abstractC10561zE.J();
        C10340xw0 d10 = abstractC10561zE.d();
        for (AbstractC10561zE abstractC10561zE2 : d10.b0()) {
            boolean z10 = C9126qh.f51850m;
            C9126qh a10 = C9126qh.a(c7215fB.a(J10.a(), J10.q()), J10);
            a10.b(abstractC10561zE2.getPosition());
            abstractC10561zE2.b().l().a(a10, abstractC10561zE2);
            abstractC10561zE2.a(d10, a10.d(), (Set) null);
        }
        d10.d();
        return true;
    }

    public final EE a(C7215fB c7215fB, Z5 z52, EE ee2, AbstractC10561zE abstractC10561zE, AbstractC10561zE abstractC10561zE2) {
        B60 position;
        AbstractC10561zE previous = ee2.previous();
        boolean z10 = f51888f;
        if (!z10 && previous != abstractC10561zE2) {
            throw new AssertionError();
        }
        if (abstractC10561zE.o() && abstractC10561zE2.getPosition().o()) {
            position = B60.c.f38822h;
        } else {
            position = abstractC10561zE2.getPosition();
        }
        abstractC10561zE.b(position);
        if (abstractC10561zE.o() && abstractC10561zE2.b().z()) {
            final W5 a10 = ee2.a(c7215fB, z52, this.f52646a.E());
            W5 w52 = (W5) AbstractC10241xK.a(z52, new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return C9147qo.a(W5.this, (W5) obj);
                }
            });
            if (!z10 && w52 != a10) {
                throw new AssertionError();
            }
            z52.f46160c = (W5) z52.f46159b.next();
            if (!z10 && ee2.hasNext()) {
                throw new AssertionError();
            }
            ee2.previous();
            ee2.add(abstractC10561zE);
            ee2 = a10.I();
        } else {
            ee2.add(abstractC10561zE);
        }
        AbstractC10561zE next = ee2.next();
        if (z10 || next == abstractC10561zE2) {
            return ee2;
        }
        throw new AssertionError();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(C7215fB c7215fB, W5 w52, C9420sR c9420sR, IdentityHashMap identityHashMap, Predicate predicate) {
        final W5 w53;
        AbstractC10561zE a10;
        Y5 I10 = w52.I();
        boolean z10 = false;
        while (I10.hasNext()) {
            AbstractC10561zE next = I10.next();
            C8570nJ c8570nJ = this.f52648c;
            c8570nJ.getClass();
            if (c8570nJ.a(C2.M)) {
                next.getClass();
                if (next instanceof C9450se) {
                    z10 = true;
                }
            }
            if (next.f1() && !next.d().z()) {
                if (predicate.test(next)) {
                    if (next.d().C() && !next.d().B()) {
                        AbstractC10561zE Z10 = next.d().Z();
                        AbstractC10561zE next2 = I10.next();
                        if (Z10 == next2) {
                            I10.previous();
                        } else {
                            if (next2.e1() && next2.d().C() && !next2.d().B() && I10.hasNext()) {
                                AbstractC10561zE h10 = I10.h();
                                AbstractC10561zE Z11 = next2.d().Z();
                                if (Z10 == h10 && Z11 == h10) {
                                    I10.previous();
                                }
                            }
                            I10.previous();
                            I10.previous();
                            I10.next();
                        }
                    }
                    LinkedHashSet linkedHashSet = new LinkedHashSet();
                    Iterator<AbstractC10561zE> it = next.d().b0().iterator();
                    while (it.hasNext()) {
                        linkedHashSet.add(it.next().b());
                    }
                    for (C7201f60 c7201f60 : next.d().a0()) {
                        Iterator<C10340xw0> it2 = c7201f60.c0().iterator();
                        int i10 = 0;
                        while (it2.hasNext()) {
                            if (it2.next() == next.d()) {
                                linkedHashSet.add(c7201f60.f47862p.u().get(i10));
                            }
                            i10++;
                        }
                    }
                    C6993dt c6993dt = (C6993dt) c9420sR.a(c9420sR.f52359b);
                    if (!C6993dt.f47533f) {
                        if (c6993dt.f47538e) {
                            throw new AssertionError();
                        }
                    } else {
                        c6993dt.getClass();
                    }
                    if (linkedHashSet.size() == 0) {
                        w53 = null;
                    } else {
                        Iterator<E> it3 = linkedHashSet.iterator();
                        W5 w54 = (W5) it3.next();
                        while (it3.hasNext()) {
                            W5 w55 = (W5) it3.next();
                            c6993dt.getClass();
                            while (w54 != w55) {
                                while (w54.q() > w55.q()) {
                                    w54 = c6993dt.f47535b[w54.q()];
                                }
                                while (w55.q() > w54.q()) {
                                    w55 = c6993dt.f47535b[w55.q()];
                                }
                            }
                        }
                        w53 = w54;
                    }
                    if ((!next.o() || (!w52.z() && !w53.z() && !c7215fB.f47902i.a(42))) && (!z10 || !AbstractC9907vK.b(next.f54321f, new V60() {
                        @Override
                        public final boolean apply(Object obj) {
                            return C9147qo.a(W5.this, (C10340xw0) obj);
                        }
                    }))) {
                        int r22 = next.r2();
                        if (r22 == 12) {
                            C7957jh F10 = next.F();
                            boolean z11 = C7957jh.f49302n;
                            a10 = C7957jh.a(c7215fB.a(F10.a(), F10.q()), F10);
                        } else if (r22 == 20) {
                            C9820uq O10 = next.O();
                            boolean z12 = C9820uq.f52960n;
                            a10 = C9820uq.a(c7215fB.a(O10.a(), O10.q()), O10);
                        } else if (r22 == 28) {
                            a10 = C6558bE.a(c7215fB, next.c());
                        } else if (r22 == 59) {
                            a10 = C5576Mo0.a(c7215fB, next.K0());
                        } else if (r22 == 71) {
                            C5731Pf0 F02 = next.F0();
                            boolean z13 = C5731Pf0.f43305m;
                            a10 = new C5731Pf0(c7215fB.a(AbstractC8999pu0.k(), F02.q()), F02.f43306l);
                        } else if (r22 == 15) {
                            C9126qh J10 = next.J();
                            boolean z14 = C9126qh.f51850m;
                            a10 = C9126qh.a(c7215fB.a(J10.a(), J10.q()), J10);
                        } else if (r22 == 16) {
                            C9960vh K10 = next.K();
                            boolean z15 = C9960vh.f53189m;
                            a10 = C9960vh.a(c7215fB.a(K10.a(), K10.q()), K10);
                        } else {
                            throw new C5417Jv0();
                        }
                        next.d().f(a10.d());
                        ((LinkedHashMap) identityHashMap.computeIfAbsent(w53, new Function() {
                            @Override
                            public final Object apply(Object obj) {
                                return C9147qo.a((W5) obj);
                            }
                        })).put(a10.d(), a10);
                        if (!f51888f && (I10.previous() != next || I10.next() != next)) {
                            throw new AssertionError();
                        }
                        I10.i();
                    }
                }
            }
        }
    }

    public static boolean a(W5 w52, C10340xw0 c10340xw0) {
        return c10340xw0.b() == w52;
    }

    public static LinkedHashMap a(W5 w52) {
        return new LinkedHashMap();
    }
}
