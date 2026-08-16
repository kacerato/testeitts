package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.ListIterator;
import java.util.function.Predicate;

public abstract class ZV {

    public static final boolean f46252b = true;

    public final C4798y f46253a;

    public ZV(C4798y c4798y) {
        this.f46253a = c4798y;
    }

    public abstract EE a(C7215fB c7215fB, com.android.tools.r8.graph.H5 h52, C10696a c10696a, Z5 z52, EE ee2, VJ vj2);

    public abstract EE a(C7215fB c7215fB, C10696a c10696a, Z5 z52, EE ee2, C5576Mo0 c5576Mo0);

    public abstract EE a(C7215fB c7215fB, C10696a c10696a, Z5 z52, EE ee2, C6558bE c6558bE);

    public abstract void a(C7215fB c7215fB, EE ee2, C5634No0 c5634No0);

    public abstract void a(C7215fB c7215fB, EE ee2, C9225rE c9225rE);

    public abstract void a(C7215fB c7215fB, C10696a c10696a, Z5 z52, EE ee2, N3 n32);

    /* JADX WARN: Removed duplicated region for block: B:24:0x0070 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0071  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean a(C7215fB c7215fB, C10696a c10696a, Z5 z52, EE ee2, AbstractC10561zE abstractC10561zE, F4 f42) {
        AbstractC10561zE[] abstractC10561zEArr;
        if (f42.f40089c && !abstractC10561zE.f1()) {
            ee2.i();
            return true;
        }
        if (abstractC10561zE.e1() && abstractC10561zE.a().x()) {
            F1 f12 = f42.f40088b;
            f12.getClass();
            if (f12 instanceof C10189x10) {
                C10340xw0 d10 = abstractC10561zE.d();
                C10189x10 l10 = f42.f40088b.l();
                d10.getClass();
                d10.f53894k = new C8091kU(l10.f53667b, l10.f53668c);
            }
        }
        if (!f42.f40088b.isUnknown()) {
            F1 f13 = f42.f40088b;
            if (f13.r()) {
                AbstractC5746Pm0 w10 = f13.w();
                if (w10.b(this.f46253a, c7215fB.j())) {
                    abstractC10561zEArr = w10.a(this.f46253a, c7215fB.j(), c7215fB, abstractC10561zE);
                    if (abstractC10561zEArr != null) {
                        return false;
                    }
                    if (abstractC10561zEArr.length > 1) {
                        if (f46252b) {
                            return false;
                        }
                        throw new AssertionError();
                    }
                    boolean z10 = X3.f45604a;
                    AbstractC10561zE abstractC10561zE2 = abstractC10561zEArr[0];
                    c10696a.addAll(abstractC10561zE.d().a());
                    if (f42.f40089c) {
                        ee2.b(abstractC10561zE2);
                        return true;
                    }
                    W5 b10 = abstractC10561zE.b();
                    if (abstractC10561zE.e1()) {
                        if (!f46252b && abstractC10561zE2.d() == null) {
                            throw new AssertionError();
                        }
                        abstractC10561zE.d().f(abstractC10561zE2.d());
                    }
                    if (abstractC10561zE instanceof C6558bE) {
                        ee2.a(this.f46253a, c7215fB.j());
                    } else if (abstractC10561zE instanceof C5576Mo0) {
                        ee2.a(this.f46253a, c7215fB, abstractC10561zE.K0().getField().f38297f);
                    }
                    if (b10.z()) {
                        W5 a10 = ee2.a(c7215fB, z52);
                        a10.I().add(abstractC10561zE2);
                        z52.f46160c = (W5) z52.f46159b.previous();
                        boolean z11 = f46252b;
                        if (!z11 && ee2.hasNext()) {
                            throw new AssertionError();
                        }
                        if (z11 || AbstractC10241xK.a((ListIterator) z52) == a10) {
                            return true;
                        }
                        throw new AssertionError();
                    }
                    ee2.add(abstractC10561zE2);
                    ee2.previous();
                    if (f46252b || ee2.h() == abstractC10561zE2) {
                        return true;
                    }
                    throw new AssertionError();
                }
            }
        }
        abstractC10561zEArr = null;
        if (abstractC10561zEArr != null) {
        }
    }

    public final void a(C7215fB c7215fB, Z5 z52, C10696a c10696a, Predicate predicate) {
        com.android.tools.r8.graph.H5 j10 = c7215fB.j();
        while (z52.f46159b.hasNext()) {
            W5 w52 = (W5) z52.f46159b.next();
            z52.f46160c = w52;
            if (predicate.test(w52)) {
                EE I10 = w52.I();
                while (I10.hasNext()) {
                    AbstractC10561zE next = I10.next();
                    int r22 = next.r2();
                    if (r22 == 6) {
                        a(c7215fB, c10696a, z52, I10, next.y());
                    } else if (r22 == 28) {
                        a(c7215fB, c10696a, z52, I10, next.c());
                    } else if (r22 != 30) {
                        if (r22 != 33 && r22 != 34) {
                            if (r22 == 59) {
                                a(c7215fB, c10696a, z52, I10, next.K0());
                            } else if (r22 != 60) {
                                switch (r22) {
                                }
                            } else {
                                a(c7215fB, I10, next.L0());
                            }
                        }
                        I10 = a(c7215fB, j10, c10696a, z52, I10, next.e0());
                    } else {
                        a(c7215fB, I10, next.m());
                    }
                }
            }
        }
    }

    public final void a(C7215fB c7215fB) {
        C8382mB c8382mB = c7215fB.f47902i;
        if (c8382mB.b() || c8382mB.c()) {
            C10696a c10696a = new C10696a();
            a(c7215fB, c7215fB.u(), c10696a, EnumC6871d70.f47286b);
            c10696a.a(this.f46253a, c7215fB, C6628bi.b());
            c7215fB.x();
            if (!f46252b && !c7215fB.b(this.f46253a)) {
                throw new AssertionError();
            }
        }
    }
}
