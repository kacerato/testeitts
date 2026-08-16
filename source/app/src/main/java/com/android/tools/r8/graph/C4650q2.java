package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC8999pu0;
import com.android.tools.r8.internal.C10340xw0;
import com.android.tools.r8.internal.QC;
import java.util.List;

public final class C4650q2 {

    public static final boolean f37648w = true;

    public final A2 f37649a;

    public final A2 f37650b;

    public final A2 f37651c;

    public final A2 f37652d;

    public final A2 f37653e;

    public final A2 f37654f;

    public final A2 f37655g;

    public final A2 f37656h;

    public final A2 f37657i;

    public final A2 f37658j;

    public final A2 f37659k;

    public final A2 f37660l;

    public final A2 f37661m;

    public final A2 f37662n;

    public final A2 f37663o;

    public final A2 f37664p;

    public final A2 f37665q;

    public final A2 f37666r;

    public final QC f37667s;

    public final QC f37668t;

    public final QC f37669u;

    public final C4724u1 f37670v;

    public C4650q2(C4724u1 c4724u1, M2 m22) {
        this.f37670v = c4724u1;
        L2 b10 = c4724u1.b("append");
        A2 a10 = c4724u1.a(m22, c4724u1.a(m22, c4724u1.f37849E1), b10);
        this.f37649a = a10;
        A2 a11 = c4724u1.a(m22, c4724u1.a(m22, c4724u1.f37863G1), b10);
        this.f37650b = a11;
        A2 a12 = c4724u1.a(m22, c4724u1.a(m22, c4724u1.f37926P1), b10);
        this.f37651c = a12;
        M2 m23 = c4724u1.f37926P1;
        M2 m24 = c4724u1.f37884J1;
        A2 a13 = c4724u1.a(m22, c4724u1.a(m22, m23, m24, m24), b10);
        this.f37652d = a13;
        A2 a14 = c4724u1.a(m22, c4724u1.a(m22, c4724u1.f38036e2), b10);
        this.f37653e = a14;
        M2 m25 = c4724u1.f38036e2;
        M2 m26 = c4724u1.f37884J1;
        A2 a15 = c4724u1.a(m22, c4724u1.a(m22, m25, m26, m26), b10);
        this.f37654f = a15;
        A2 a16 = c4724u1.a(m22, c4724u1.a(m22, c4724u1.f37884J1), b10);
        this.f37655g = a16;
        A2 a17 = c4724u1.a(m22, c4724u1.a(m22, c4724u1.f37870H1), b10);
        this.f37656h = a17;
        A2 a18 = c4724u1.a(m22, c4724u1.a(m22, c4724u1.f37877I1), b10);
        this.f37657i = a18;
        A2 a19 = c4724u1.a(m22, c4724u1.a(m22, c4724u1.f37891K1), b10);
        this.f37658j = a19;
        A2 a20 = c4724u1.a(m22, c4724u1.a(m22, c4724u1.f38068i2), b10);
        this.f37659k = a20;
        A2 a21 = c4724u1.a(m22, c4724u1.a(m22, c4724u1.f38052g2), b10);
        this.f37660l = a21;
        A2 a22 = c4724u1.a(m22, c4724u1.a(m22, c4724u1.f37864G2), b10);
        this.f37661m = c4724u1.a(m22, c4724u1.a(c4724u1.f37884J1, new M2[0]), c4724u1.b("capacity"));
        A2 a23 = c4724u1.a(m22, c4724u1.a(c4724u1.f37905M1, c4724u1.f38036e2), c4724u1.f38067i1);
        this.f37662n = a23;
        A2 a24 = c4724u1.a(m22, c4724u1.a(c4724u1.f37905M1, new M2[0]), c4724u1.f38067i1);
        this.f37663o = a24;
        A2 a25 = c4724u1.a(m22, c4724u1.a(c4724u1.f37905M1, c4724u1.f37884J1), c4724u1.f38067i1);
        this.f37664p = a25;
        A2 a26 = c4724u1.a(m22, c4724u1.a(c4724u1.f37905M1, c4724u1.f38052g2), c4724u1.f38067i1);
        this.f37665q = a26;
        this.f37666r = c4724u1.a(m22, c4724u1.a(c4724u1.f38052g2, new M2[0]), c4724u1.f38098m0);
        this.f37667s = QC.a(a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
        this.f37668t = QC.a(a10, a11, a16, a17, a18, a19, new A2[0]);
        this.f37669u = QC.a(4, 4, a23, a24, a25, a26);
    }

    public final boolean a(A2 a22, List list) {
        if (a22 == this.f37663o) {
            return true;
        }
        if (a22 == this.f37662n) {
            AbstractC8999pu0 u10 = ((C10340xw0) list.get(1)).u();
            return u10.s() && u10.b().E() == this.f37670v.f38052g2;
        }
        if (a22 == this.f37664p) {
            C10340xw0 c10340xw0 = (C10340xw0) list.get(1);
            return c10340xw0.G() && c10340xw0.v().b() >= 0;
        }
        if (a22 == this.f37665q) {
            return !((C10340xw0) list.get(1)).u().v();
        }
        if (f37648w) {
            return false;
        }
        throw new AssertionError((Object) ("Unexpected invoke targeting `" + a22.j0() + "`"));
    }
}
