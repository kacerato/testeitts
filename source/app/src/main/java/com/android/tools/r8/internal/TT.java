package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import com.android.tools.r8.shaking.C11399r2;
import java.util.Set;

public final class TT extends AbstractC5055Do0 {

    public static final boolean f44476j = true;

    public final C4798y f44477a;

    public final com.android.tools.r8.graph.M2 f44478b;

    public final com.android.tools.r8.graph.A2 f44479c;

    public final com.android.tools.r8.graph.A2 f44480d;

    public final com.android.tools.r8.graph.A2 f44481e;

    public final com.android.tools.r8.graph.A2 f44482f;

    public final com.android.tools.r8.graph.A2 f44483g;

    public final com.android.tools.r8.graph.A2 f44484h;

    public final com.android.tools.r8.graph.A2 f44485i;

    public TT(C4798y c4798y) {
        this.f44477a = c4798y;
        C4724u1 b10 = c4798y.b();
        com.android.tools.r8.graph.M2 m22 = b10.f38070i4;
        this.f44478b = m22;
        this.f44479c = b10.a(m22, b10.a(b10.f37849E1, b10.f38052g2, b10.f37884J1), "isLoggable");
        com.android.tools.r8.graph.M2 m23 = b10.f37884J1;
        com.android.tools.r8.graph.M2 m24 = b10.f38052g2;
        this.f44480d = b10.a(m22, b10.a(m23, m24, m24), "v");
        com.android.tools.r8.graph.M2 m25 = b10.f37884J1;
        com.android.tools.r8.graph.M2 m26 = b10.f38052g2;
        this.f44481e = b10.a(m22, b10.a(m25, m26, m26), "d");
        com.android.tools.r8.graph.M2 m27 = b10.f37884J1;
        com.android.tools.r8.graph.M2 m28 = b10.f38052g2;
        this.f44482f = b10.a(m22, b10.a(m27, m28, m28), "i");
        com.android.tools.r8.graph.M2 m29 = b10.f37884J1;
        com.android.tools.r8.graph.M2 m210 = b10.f38052g2;
        this.f44483g = b10.a(m22, b10.a(m29, m210, m210), "w");
        com.android.tools.r8.graph.M2 m211 = b10.f37884J1;
        com.android.tools.r8.graph.M2 m212 = b10.f38052g2;
        this.f44484h = b10.a(m22, b10.a(m211, m212, m212), com.itsmagic.engine.Engines.Engine.Animation.a.f72598f);
        com.android.tools.r8.graph.M2 m213 = b10.f37884J1;
        com.android.tools.r8.graph.M2 m214 = b10.f38052g2;
        this.f44485i = b10.a(m22, b10.a(m213, m214, m214), "wtf");
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0030, code lost:
    
        if (r3 == r1.f44485i) goto L49;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final EE a(C7215fB c7215fB, Z5 z52, EE ee2, VJ vj2, com.android.tools.r8.graph.H0 h02, C10696a c10696a, Set set) {
        int i10;
        com.android.tools.r8.graph.A2 reference = h02.getReference();
        char c10 = (char) reference.t0().f36562f[0];
        if (c10 == 'd') {
            if (reference == this.f44481e) {
                i10 = 3;
            }
            i10 = -1;
        } else if (c10 != 'e') {
            i10 = 7;
            if (c10 != 'i') {
                if (c10 != 'v') {
                    if (c10 == 'w') {
                        if (reference == this.f44483g) {
                            i10 = 5;
                        }
                    }
                    i10 = -1;
                } else {
                    if (reference == this.f44480d) {
                        i10 = 2;
                    }
                    i10 = -1;
                }
            } else if (reference == this.f44482f) {
                i10 = 4;
            } else {
                if (reference == this.f44479c) {
                    C10340xw0 i11 = ((C10340xw0) vj2.f54321f.get(1)).i();
                    if (!i11.j() && !i11.z()) {
                        AbstractC10561zE r10 = i11.r();
                        if (r10.w1()) {
                            int u22 = r10.J().u2();
                            if (2 <= u22 && u22 <= 7) {
                                i10 = u22;
                            } else if (!f44476j) {
                                throw new AssertionError();
                            }
                        }
                    }
                }
                i10 = -1;
            }
        } else {
            if (reference == this.f44484h) {
                i10 = 6;
            }
            i10 = -1;
        }
        com.android.tools.r8.graph.H5 j10 = c7215fB.j();
        int i12 = this.f44477a.E().B().i();
        int q10 = j10.A().q();
        int i13 = C11399r2.f57762s;
        if (i12 == 0) {
            i12 = q10;
        } else if (q10 != 0) {
            i12 = Math.min(i12, q10);
        }
        if (2 <= i10 && i10 <= i12) {
            ee2.c(c7215fB);
        }
        return ee2;
    }

    @Override
    public final com.android.tools.r8.graph.M2 getType() {
        return this.f44478b;
    }
}
