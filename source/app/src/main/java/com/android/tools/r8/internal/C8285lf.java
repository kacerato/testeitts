package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;

public final class C8285lf extends AbstractC9617te {

    public static final boolean f50022e = true;

    public C8285lf(C4798y c4798y) {
        super(c4798y);
    }

    @Override
    public final boolean a(C7215fB c7215fB, AbstractC6931dX abstractC6931dX) {
        return true;
    }

    @Override
    public final InterfaceC10118we b(C7215fB c7215fB) {
        boolean z10;
        C6993dt c6993dt;
        boolean z11;
        boolean z12;
        boolean equals;
        int y10 = c7215fB.y();
        Iterator<W5> it = c7215fB.f47897d.iterator();
        while (true) {
            if (!it.hasNext()) {
                z10 = false;
                break;
            }
            W5 next = it.next();
            Y5 it2 = next.l().iterator();
            while (it2.hasNext()) {
                AbstractC10561zE next2 = it2.next();
                if (next2.s1() || next2.n2() || (next2 instanceof C8391mE) || next2.t1()) {
                    if (next2.q() == null && !next2.c1()) {
                        Q3 q32 = new Q3();
                        C8118kf c8118kf = new C8118kf(this.f52648c);
                        boolean z13 = true;
                        C6993dt c6993dt2 = new C6993dt(c7215fB, 1);
                        int i10 = 0;
                        boolean z14 = false;
                        while (true) {
                            W5[] w5Arr = c6993dt2.f47534a;
                            if (i10 >= w5Arr.length) {
                                z10 = z14;
                                break;
                            }
                            W5 w52 = w5Arr[i10];
                            if (!w52.a(y10)) {
                                Y5 I10 = w52.I();
                                while (I10.hasNext()) {
                                    AbstractC10561zE next3 = I10.next();
                                    if ((next3.s1() || next3.n2() || (next3 instanceof C8391mE) || next3.t1()) && next3.q() == null && !next3.c1()) {
                                        AbstractC10185x0 abstractC10185x0 = (AbstractC10185x0) q32.get(new C7333fv(c8118kf, next3));
                                        abstractC10185x0.b();
                                        if (abstractC10185x0.f53658c.size() > 0) {
                                            abstractC10185x0.b();
                                            Collection collection = abstractC10185x0.f53658c;
                                            Iterator listIterator = collection instanceof List ? ((List) collection).listIterator() : collection.iterator();
                                            while (true) {
                                                abstractC10185x0.b();
                                                if (abstractC10185x0.f53658c != collection) {
                                                    throw new ConcurrentModificationException();
                                                }
                                                if (!listIterator.hasNext()) {
                                                    break;
                                                }
                                                abstractC10185x0.b();
                                                if (abstractC10185x0.f53658c != collection) {
                                                    throw new ConcurrentModificationException();
                                                }
                                                C10340xw0 c10340xw0 = (C10340xw0) listIterator.next();
                                                if (c6993dt2.a(w52, c10340xw0.f53886c.b())) {
                                                    AbstractC10561zE abstractC10561zE = c10340xw0.f53886c;
                                                    if (next3.o()) {
                                                        if (!f50022e && !abstractC10561zE.o()) {
                                                            throw new AssertionError();
                                                        }
                                                        c6993dt = c6993dt2;
                                                        equals = next3.b().j().equals(abstractC10561zE.b().j());
                                                    } else {
                                                        if (!f50022e && abstractC10561zE.o()) {
                                                            throw new AssertionError();
                                                        }
                                                        c6993dt = c6993dt2;
                                                        equals = true;
                                                    }
                                                    if (equals) {
                                                        next3.d().f(c10340xw0);
                                                        c10340xw0.a0().forEach(new C9574tK0());
                                                        I10.i();
                                                        z11 = true;
                                                        z14 = true;
                                                        break;
                                                    }
                                                } else {
                                                    c6993dt = c6993dt2;
                                                }
                                                c6993dt2 = c6993dt;
                                            }
                                        }
                                        c6993dt = c6993dt2;
                                        z11 = false;
                                        if (!z11) {
                                            C7333fv c7333fv = new C7333fv(c8118kf, next3);
                                            C10340xw0 d10 = next3.d();
                                            Collection collection2 = (Collection) q32.f38497f.get(c7333fv);
                                            if (collection2 == null) {
                                                ArrayList arrayList = new ArrayList(q32.f43445h);
                                                if (!arrayList.add(d10)) {
                                                    throw new AssertionError((Object) "New Collection violated the Collection spec");
                                                }
                                                q32.f38498g++;
                                                q32.f38497f.put(c7333fv, arrayList);
                                            } else if (collection2.add(d10)) {
                                                z12 = true;
                                                q32.f38498g++;
                                            }
                                        }
                                        z12 = true;
                                    } else {
                                        c6993dt = c6993dt2;
                                        z12 = z13;
                                    }
                                    z13 = z12;
                                    c6993dt2 = c6993dt;
                                }
                            }
                            i10++;
                            z13 = z13;
                            c6993dt2 = c6993dt2;
                        }
                    }
                }
            }
            next.c(y10);
        }
        c7215fB.a(y10);
        if (z10) {
            c7215fB.x();
        }
        return z10 ? InterfaceC10118we.f53548b : InterfaceC10118we.f53547a;
    }

    @Override
    public final String a() {
        return "CommonSubexpressionElimination";
    }
}
