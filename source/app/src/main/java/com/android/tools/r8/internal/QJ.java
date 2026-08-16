package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.Z4;
import com.android.tools.r8.shaking.C11245i;
import com.android.tools.r8.shaking.C11447u;
import java.lang.constant.ConstantDescs;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class QJ extends WJ {

    public static final boolean f43538p = true;

    public final boolean f43539o;

    public QJ(com.android.tools.r8.graph.A2 a22, C10340xw0 c10340xw0, List list, boolean z10) {
        super(a22, c10340xw0, list);
        this.f43539o = z10;
        if (!f43538p && a22.f38298g.toString().equals(ConstantDescs.INIT_NAME) && c10340xw0 != null) {
            throw new AssertionError();
        }
    }

    @Override
    public final boolean A2() {
        return this.f43539o;
    }

    @Override
    public final boolean O1() {
        return true;
    }

    @Override
    public final void a(C5458Kn c5458Kn) {
        AbstractC5635Np c6269Yp;
        int y22 = y2();
        if (y22 > c5458Kn.f41776o) {
            c5458Kn.f41776o = y22;
        }
        if (b(c5458Kn)) {
            if (!f43538p) {
                c(c5458Kn);
            }
            c6269Yp = new C6326Zp(a(c5458Kn, b(0)), y22, B2());
        } else {
            int[] iArr = new int[5];
            c6269Yp = new C6269Yp(a(c5458Kn, iArr), B2(), iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
        }
        a(c6269Yp, c5458Kn);
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        return abstractC10561zE.O1() && super.b(abstractC10561zE);
    }

    @Override
    public final QJ c0() {
        return this;
    }

    @Override
    public final int r2() {
        return 33;
    }

    @Override
    public final EnumC8071kK w2() {
        return EnumC8071kK.f49580d;
    }

    @Override
    public final String x2() {
        return "Direct";
    }

    @Override
    public final AbstractC8849p b(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.H0 e10;
        if (c4798y.b().a(B2()) && (e10 = e(c4798y, h52)) != null && (e10 instanceof com.android.tools.r8.graph.H5)) {
            C4516j1 d10 = e10.d();
            d10.L0();
            return d10.f37320m.a(this).f();
        }
        return AbstractC6421aS.a(c4798y, this);
    }

    @Override
    public final boolean a(C4724u1 c4724u1) {
        return B2().b(c4724u1);
    }

    @Override
    public final com.android.tools.r8.ir.optimize.O a(com.android.tools.r8.ir.optimize.X x10, com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.A2 B22 = B2();
        x10.getClass();
        if (B22.f38297f.E0()) {
            return com.android.tools.r8.ir.optimize.O.f54787d;
        }
        Z4.c<?> o10 = ((C11245i) x10.f54825a.f()).f(B22).o();
        if (o10 == null) {
            return com.android.tools.r8.ir.optimize.O.f54786c;
        }
        com.android.tools.r8.graph.H2 holder = h52.getHolder();
        C4798y c4798y = x10.f54825a;
        com.android.tools.r8.graph.H0 a10 = o10.a(holder, c4798y, (C4514j) c4798y.f());
        if (a10 == null) {
            return com.android.tools.r8.ir.optimize.O.f54786c;
        }
        return x10.a(o10.f37020b, h52, a10);
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        c7543h9.a(new C7437ga(183, B2(), this.f43539o), this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00af, code lost:
    
        if (r5.p().a(r4.b().f38068i2) != false) goto L35;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final com.android.tools.r8.ir.optimize.E a(C4798y c4798y, C7215fB c7215fB) {
        com.android.tools.r8.graph.H5 j10 = c7215fB.j();
        if (b(c4798y, j10, M1.a(c4798y, j10), C10394yE.f53980c)) {
            return com.android.tools.r8.ir.optimize.E.f54734b;
        }
        if (!B2().b(c4798y.b())) {
            return com.android.tools.r8.ir.optimize.E.f54733a;
        }
        if (C2().i() == c7215fB.m()) {
            return com.android.tools.r8.ir.optimize.E.f54734b;
        }
        if (c4798y.f().h() && C2().u().s()) {
            com.android.tools.r8.graph.E0 g10 = c4798y.g(C2().u().b().E());
            if (g10 != null) {
                C4514j l10 = c4798y.f().h() ? c4798y.f38408a.l() : null;
                l10.getClass();
                if (!g10.isInterface()) {
                    com.android.tools.r8.graph.H0 p10 = l10.e(g10, l10.b().f37859F4.f38229g).p();
                    if (p10 != null) {
                        if (!p10.p().a(l10.b().f38108n2)) {
                        }
                    }
                }
            }
            return com.android.tools.r8.ir.optimize.E.f54734b;
        }
        return new com.android.tools.r8.ir.optimize.D(C2());
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        c10391yD.a(this);
        return null;
    }

    @Override
    public final void a(PS ps) {
        com.android.tools.r8.graph.A2 B22 = B2();
        ArrayList arrayList = this.f54321f;
        boolean z10 = this.f43539o;
        ps.getClass();
        ps.a(z10 ? 206 : 205, Collections.singletonList(B22), arrayList);
    }

    @Override
    public final void a(C11447u c11447u) {
        c11447u.a((com.android.tools.r8.graph.J2) B2());
    }

    @Override
    public final boolean a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.H5 h52, C4798y c4798y, int i10, int i11) {
        if (i11 == 2 && C2().u().v()) {
            return false;
        }
        com.android.tools.r8.graph.A2 B22 = B2();
        c4798y.getClass();
        C4516j1 b10 = B22.b(c4798y.g(B22.f38297f));
        return b10 != null && AbstractC5663Oc.a(this, m22, b10, c4798y, i10);
    }
}
