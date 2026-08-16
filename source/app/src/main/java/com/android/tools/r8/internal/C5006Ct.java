package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Predicate;

public final class C5006Ct {

    public static final boolean f39375c = true;

    public final C4798y f39376a;

    public final C7215fB f39377b;

    public C5006Ct(C4798y c4798y, C7215fB c7215fB) {
        this.f39376a = c4798y;
        this.f39377b = c7215fB;
    }

    public final boolean a() {
        C10696a c10696a = new C10696a();
        IdentityHashMap identityHashMap = new IdentityHashMap();
        Iterator<W5> it = this.f39377b.f47897d.iterator();
        while (it.hasNext()) {
            Iterator<C7201f60> it2 = it.next().s().iterator();
            while (it2.hasNext()) {
                a(it2.next(), c10696a, identityHashMap);
            }
        }
        if (identityHashMap.isEmpty()) {
            return false;
        }
        identityHashMap.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                ((W5) obj).a((Collection) obj2);
            }
        });
        c10696a.a(this.f39376a, this.f39377b, C6628bi.b());
        return true;
    }

    public final void a(C7201f60 c7201f60, C10696a c10696a, IdentityHashMap identityHashMap) {
        C4948Bt c4948Bt;
        AbstractC8999pu0 abstractC8999pu0;
        if (this.f39376a.E().f50690i1) {
            return;
        }
        C6286Yx0 c6286Yx0 = new C6286Yx0(2);
        c6286Yx0.b((C6286Yx0) c7201f60);
        boolean z10 = false;
        C10340xw0 c10340xw0 = null;
        F1 f12 = null;
        loop0: while (true) {
            if (c6286Yx0.b()) {
                for (C10340xw0 c10340xw02 : ((C7201f60) c6286Yx0.c()).c0()) {
                    if (c10340xw02.j()) {
                        c6286Yx0.b((C6286Yx0) c10340xw02.l());
                    } else if (c10340xw0 == null) {
                        if (!f39375c && f12 != null) {
                            throw new AssertionError();
                        }
                        f12 = c10340xw02.a(this.f39376a, this.f39377b.j(), M1.f42128a);
                        c10340xw0 = c10340xw02;
                    } else if (c10340xw02 == c10340xw0) {
                        continue;
                    } else if (!f12.r() || !c10340xw02.a(this.f39376a, this.f39377b.j(), M1.f42128a).equals(f12)) {
                        break loop0;
                    } else {
                        z10 = true;
                    }
                }
            } else if (c10340xw0 == null) {
                c4948Bt = new C4948Bt(c6286Yx0.a());
            } else if (z10) {
                if (f12.r() && f12.w().b(this.f39376a, this.f39377b.j())) {
                    c4948Bt = new C4948Bt(c6286Yx0.a(), f12.w());
                }
            } else {
                c4948Bt = new C4948Bt(c10340xw0, c6286Yx0.a());
            }
        }
        c4948Bt = null;
        if (c4948Bt == null) {
            return;
        }
        AbstractC5746Pm0 abstractC5746Pm0 = c4948Bt.f39032a;
        if (abstractC5746Pm0 != null || c4948Bt.f39033b != null) {
            C10340xw0 c10340xw03 = c4948Bt.f39033b;
            if (c10340xw03 == null) {
                boolean z11 = f39375c;
                if (!z11 && abstractC5746Pm0 == null) {
                    throw new AssertionError();
                }
                if (!z11 && !abstractC5746Pm0.b(this.f39376a, this.f39377b.j())) {
                    throw new AssertionError();
                }
                Y5 I10 = this.f39377b.k().I();
                I10.a(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        return C5006Ct.a((AbstractC10561zE) obj);
                    }
                });
                I10.previous();
                AbstractC8999pu0 u10 = c7201f60.u();
                if (abstractC5746Pm0.d0()) {
                    abstractC8999pu0 = abstractC5746Pm0.J().b(this.f39376a);
                } else if (abstractC5746Pm0.f0()) {
                    abstractC8999pu0 = AbstractC8999pu0.a(abstractC5746Pm0.N().f40306c.getType(), C8854p10.h(), (C4798y<?>) this.f39376a);
                } else if (u10.y() && (abstractC5746Pm0 instanceof C5283Hm0)) {
                    abstractC8999pu0 = AbstractC8999pu0.m();
                } else {
                    if (!z11 && !u10.x() && !(u10 instanceof C6301Zd0) && !u10.t()) {
                        throw new AssertionError((Object) (((Object) abstractC5746Pm0) + ": " + ((Object) u10)));
                    }
                    abstractC8999pu0 = u10;
                }
                C4798y c4798y = this.f39376a;
                C7215fB c7215fB = this.f39377b;
                AbstractC10561zE[] a10 = abstractC5746Pm0.a(c4798y, c7215fB.j(), c7215fB, new CV(null, abstractC8999pu0, c7215fB.f47896c));
                I10.a(a10);
                AbstractC10561zE abstractC10561zE = (AbstractC10561zE) X3.b(a10);
                C10340xw0 d10 = abstractC10561zE.d();
                if (abstractC8999pu0.y() && abstractC8999pu0.B().f() && u10.B().d()) {
                    boolean z12 = AbstractC10330xt.f53865a;
                    C4 a11 = C4.a(C7520h10.f48413b, this.f39377b.a(u10, (C4515j0) null), d10, abstractC10561zE, this.f39376a, this.f39377b.j());
                    B60 b60 = this.f39377b.f47896c;
                    C8570nJ E10 = this.f39376a.E();
                    if (!a11.o() && !E10.f50690i1) {
                        a11.b(B60.s());
                    } else {
                        a11.b(b60);
                    }
                    I10.add(a11);
                    c10340xw03 = a11.d();
                } else {
                    c10340xw03 = d10;
                }
            }
            for (C7201f60 c7201f602 : c4948Bt.f39034c) {
                for (C10340xw0 c10340xw04 : c7201f602.c0()) {
                    c10340xw04.f53889f.remove(c7201f602);
                    c10340xw04.f53890g = null;
                }
                a(identityHashMap, c7201f602);
            }
            Iterator it = c4948Bt.f39034c.iterator();
            while (it.hasNext()) {
                ((C7201f60) it.next()).a(c10340xw03, c10696a);
            }
            return;
        }
        Iterator it2 = c4948Bt.f39034c.iterator();
        while (it2.hasNext()) {
            a(identityHashMap, (C7201f60) it2.next());
        }
    }

    public static void a(IdentityHashMap identityHashMap, C7201f60 c7201f60) {
        ((Set) identityHashMap.computeIfAbsent(c7201f60.f47862p, TU.a(new C8887pC0()))).add(c7201f60);
    }

    public static boolean a(AbstractC10561zE abstractC10561zE) {
        return !abstractC10561zE.k1();
    }
}
