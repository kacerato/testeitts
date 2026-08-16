package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4477h;
import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.function.Predicate;

public class C8328lt0 extends AbstractC9617te<C4477h> {

    public static final boolean f50132e = true;

    public C8328lt0(C4798y<?> c4798y) {
        super(c4798y);
    }

    public static void c(C7215fB c7215fB) {
        Z5 u10 = c7215fB.u();
        if (!f50132e && !u10.hasNext()) {
            throw new AssertionError();
        }
        final W5 next = u10.next();
        while (true) {
            W5 next2 = u10.hasNext() ? u10.next() : null;
            boolean z10 = f50132e;
            if (!z10 && next.G() && R5.a(next) != next && c7215fB.k() != next && !next.u().stream().anyMatch(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return C8328lt0.a(W5.this, (W5) obj);
                }
            })) {
                throw new AssertionError();
            }
            if (!z10 && next.G() && R5.a(next) == next2) {
                throw new AssertionError();
            }
            if (next2 == null) {
                return;
            } else {
                next = next2;
            }
        }
    }

    @Override
    public final boolean a(C7215fB c7215fB, AbstractC6931dX abstractC6931dX) {
        return true;
    }

    @Override
    public final InterfaceC10118we b(C7215fB c7215fB) {
        W5 g10;
        ArrayList arrayList = new ArrayList();
        Z5 u10 = c7215fB.u();
        if (!f50132e && !u10.hasNext()) {
            throw new AssertionError();
        }
        W5 next = u10.next();
        while (true) {
            W5 next2 = u10.hasNext() ? u10.next() : null;
            if (next.G()) {
                a(c7215fB, next, next2, arrayList);
            }
            if (next.i().H1()) {
                EB V10 = next.i().V();
                W5 v22 = V10.v2();
                W5 g11 = v22.g();
                W5 u22 = V10.u2();
                W5 g12 = u22.g();
                if (g11 != null && v22 != g11) {
                    V10.b().b(v22, g11);
                    v22.m().remove(next);
                    if (!g11.u().contains(next)) {
                        g11.m().add(next);
                    }
                }
                if (next.i().H1()) {
                    EB V11 = next.i().V();
                    if (V11.v2() == g12) {
                        next.b(V11.v2(), u22);
                        boolean z10 = f50132e;
                        if (!z10 && !next.i().G1()) {
                            throw new AssertionError();
                        }
                        if (!z10 && R5.a(next) != u22) {
                            throw new AssertionError();
                        }
                    }
                }
            }
            if (next.i().l2()) {
                AbstractC6489ar0 Q02 = next.i().Q0();
                W5 u23 = Q02.u2();
                HashSet hashSet = new HashSet();
                for (int i10 = 0; i10 < Q02.f46639l.length; i10++) {
                    W5 b10 = Q02.b(i10);
                    if (b10 != u23 && (g10 = b10.g()) != null && b10 != g10 && !hashSet.contains(b10)) {
                        Q02.b().b(b10, g10);
                        b10.m().remove(next);
                        if (!g10.u().contains(next)) {
                            g10.m().add(next);
                        }
                        hashSet.add(b10);
                    }
                }
            }
            if (next2 == null) {
                c7215fB.b((Collection<W5>) arrayList);
                while (!arrayList.isEmpty()) {
                    arrayList = new ArrayList();
                    Z5 u11 = c7215fB.u();
                    W5 next3 = u11.next();
                    while (true) {
                        W5 next4 = u11.hasNext() ? u11.next() : null;
                        if (next3.G()) {
                            a(c7215fB, next3, next4, arrayList);
                        }
                        if (next4 == null) {
                            break;
                        }
                        next3 = next4;
                    }
                    c7215fB.b((Collection<W5>) arrayList);
                }
                boolean z11 = f50132e;
                if (!z11) {
                    c(c7215fB);
                }
                if (!z11) {
                    c7215fB.b(false);
                }
                return InterfaceC10118we.f53549c;
            }
            next = next2;
        }
    }

    @Override
    public final String a() {
        return "TrivialGotosCollapser";
    }

    public static boolean a(W5 w52, W5 w53) {
        return w53.i().u2() == w52;
    }

    public static void a(C7215fB c7215fB, W5 w52, W5 w53, ArrayList arrayList) {
        if (R5.a(w52) == w52) {
            return;
        }
        W5 g10 = w52.g();
        if (g10 == null) {
            g10 = R5.a(w52);
        }
        if (g10 != w53) {
            if (c7215fB.k() == w52) {
                return;
            }
            Iterator<W5> it = w52.u().iterator();
            while (it.hasNext()) {
                if (it.next().i().u2() == w52) {
                    return;
                }
            }
        }
        arrayList.add(w52);
        b(w52, g10);
    }

    public static void b(W5 w52, W5 w53) {
        if (!f50132e && !w52.G()) {
            throw new AssertionError();
        }
        Iterator<W5> it = w52.u().iterator();
        while (it.hasNext()) {
            it.next().b(w52, w53);
        }
        Iterator<W5> it2 = w52.v().iterator();
        while (it2.hasNext()) {
            it2.next().m().remove(w52);
        }
        for (W5 w54 : w52.u()) {
            if (!w53.u().contains(w54)) {
                w53.m().add(w54);
            }
        }
    }
}
