package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4650q2;
import com.android.tools.r8.graph.C4724u1;
import java.util.ArrayList;
import java.util.function.Predicate;

public final class C5752Pp0 implements InterfaceC5810Qp0 {

    public static final boolean f43385b = true;

    public final C4724u1 f43386a;

    public C5752Pp0(C4724u1 c4724u1) {
        this.f43386a = c4724u1;
    }

    public final boolean a(Predicate predicate, AbstractC10561zE abstractC10561zE) {
        if (abstractC10561zE.c2()) {
            com.android.tools.r8.graph.M2 u22 = abstractC10561zE.w0().u2();
            C4724u1 c4724u1 = this.f43386a;
            return u22 == c4724u1.f37857F2 || u22 == c4724u1.f37864G2;
        }
        if (!abstractC10561zE.P1()) {
            return false;
        }
        com.android.tools.r8.graph.A2 B22 = abstractC10561zE.e0().B2();
        C4650q2 c4650q2 = this.f43386a.f38174v4;
        if (!c4650q2.f37667s.contains(B22) && !c4650q2.f37669u.contains(B22) && B22 != c4650q2.f37666r && B22 != c4650q2.f37661m) {
            C4650q2 c4650q22 = this.f43386a.f38182w4;
            if (!c4650q22.f37667s.contains(B22) && !c4650q22.f37669u.contains(B22) && B22 != c4650q22.f37666r && B22 != c4650q22.f37661m) {
                C4724u1 c4724u12 = this.f43386a;
                return (B22 == c4724u12.f37859F4.f38230h || B22 == c4724u12.f37852E4.f37359k) && predicate.test(abstractC10561zE.W0());
            }
        }
        return true;
    }

    public final boolean b(AbstractC10561zE abstractC10561zE) {
        if (!abstractC10561zE.P1()) {
            return false;
        }
        com.android.tools.r8.graph.A2 B22 = abstractC10561zE.e0().B2();
        return this.f43386a.f38174v4.f37667s.contains(B22) || this.f43386a.f38182w4.f37667s.contains(B22);
    }

    public final boolean b(WJ wj2) {
        if (!wj2.a(this.f43386a)) {
            return false;
        }
        com.android.tools.r8.graph.A2 B22 = wj2.e0().B2();
        com.android.tools.r8.graph.M2 s02 = B22.s0();
        C4724u1 c4724u1 = this.f43386a;
        if (s02 == c4724u1.f37857F2) {
            return c4724u1.f38174v4.a(B22, wj2.f54321f);
        }
        if (f43385b || B22.s0() == this.f43386a.f37864G2) {
            return this.f43386a.f38182w4.a(B22, wj2.f54321f);
        }
        throw new AssertionError();
    }

    public final boolean a(C10340xw0 c10340xw0) {
        if (!c10340xw0.u().s()) {
            return false;
        }
        com.android.tools.r8.graph.M2 E10 = c10340xw0.u().b().E();
        C4724u1 c4724u1 = this.f43386a;
        return E10 == c4724u1.f37857F2 || E10 == c4724u1.f37864G2;
    }

    public final boolean a(AbstractC10561zE abstractC10561zE, C10340xw0 c10340xw0) {
        if (!abstractC10561zE.P1() || abstractC10561zE.f54321f.isEmpty() || abstractC10561zE.W0() != c10340xw0) {
            return false;
        }
        com.android.tools.r8.graph.A2 B22 = abstractC10561zE.e0().B2();
        C4724u1 c4724u1 = this.f43386a;
        return c4724u1.f38174v4.f37666r == B22 || c4724u1.f38182w4.f37666r == B22 || c4724u1.f37859F4.f38230h == B22 || c4724u1.f37852E4.f37359k == B22;
    }

    public final String a(AbstractC10561zE abstractC10561zE) {
        if (!abstractC10561zE.Q1()) {
            return null;
        }
        if (b(abstractC10561zE)) {
            WJ f02 = abstractC10561zE.f0();
            f02.Q1();
            com.android.tools.r8.graph.A2 B22 = f02.e0().B2();
            C4724u1 c4724u1 = this.f43386a;
            C4650q2 c4650q2 = c4724u1.f38174v4;
            if (c4650q2.f37652d != B22 && c4650q2.f37654f != B22) {
                C4650q2 c4650q22 = c4724u1.f38182w4;
                if (c4650q22.f37652d != B22 && c4650q22.f37654f != B22) {
                    C8405mK k02 = abstractC10561zE.k0();
                    com.android.tools.r8.graph.A2 B23 = k02.B2();
                    com.android.tools.r8.graph.M2 k10 = (this.f43386a.f38174v4.f37667s.contains(B23) || this.f43386a.f38182w4.f37667s.contains(B23)) ? B23.k(0) : null;
                    C10340xw0 i10 = k02.z2().i();
                    if (k10 != null) {
                        return AbstractC9317rp0.a(this.f43386a, k02.B2(), i10, k10);
                    }
                    return null;
                }
            }
        }
        if (abstractC10561zE.O1()) {
            com.android.tools.r8.graph.A2 B24 = abstractC10561zE.e0().B2();
            if (this.f43386a.f38174v4.f37669u.contains(B24) || this.f43386a.f38182w4.f37669u.contains(B24)) {
                QJ c02 = abstractC10561zE.c0();
                if (!f43385b) {
                    if (!c02.B2().b(this.f43386a)) {
                        throw new AssertionError();
                    }
                }
                ArrayList arrayList = c02.f54321f;
                if (arrayList.size() == 1) {
                    return "";
                }
                if (arrayList.size() == 2 && !c02.b(1).u().x()) {
                    C10340xw0 i11 = c02.b(1).i();
                    com.android.tools.r8.graph.M2 k11 = c02.B2().k(0);
                    if (k11 != null) {
                        return AbstractC9317rp0.a(this.f43386a, c02.B2(), i11, k11);
                    }
                }
                return null;
            }
        }
        return null;
    }

    public final boolean a(WJ wj2) {
        boolean a10;
        wj2.P1();
        com.android.tools.r8.graph.A2 B22 = wj2.e0().B2();
        C4724u1 c4724u1 = this.f43386a;
        C4650q2 c4650q2 = c4724u1.f38174v4;
        if (B22 != c4650q2.f37659k && B22 != c4650q2.f37653e && B22 != c4650q2.f37654f) {
            C4650q2 c4650q22 = c4724u1.f38182w4;
            if (B22 != c4650q22.f37659k && B22 != c4650q22.f37653e && B22 != c4650q22.f37654f) {
                if (B22.b(c4724u1)) {
                    a10 = b(wj2);
                } else {
                    C4724u1 c4724u12 = this.f43386a;
                    C4650q2 c4650q23 = c4724u12.f38174v4;
                    if (B22 != c4650q23.f37651c && B22 != c4650q23.f37652d) {
                        C4650q2 c4650q24 = c4724u12.f38182w4;
                        if (B22 != c4650q24.f37651c && B22 != c4650q24.f37652d) {
                            return false;
                        }
                    }
                    a10 = wj2.k0().z2().O();
                }
                return !a10;
            }
        }
        AbstractC8999pu0 u10 = ((C10340xw0) wj2.f54321f.get(1)).u();
        C4724u1 c4724u13 = this.f43386a;
        u10.getClass();
        a10 = u10.a(c4724u13.f38052g2);
        return !a10;
    }
}
