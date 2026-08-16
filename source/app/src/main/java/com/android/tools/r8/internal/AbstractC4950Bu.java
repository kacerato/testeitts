package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import java.util.Iterator;
import java.util.Set;

public abstract class AbstractC4950Bu {
    /* JADX WARN: Removed duplicated region for block: B:28:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00d8 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static AbstractC4892Au a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C7215fB c7215fB, AbstractC6931dX abstractC6931dX) {
        C10340xw0 d10;
        Iterator it;
        NB nb2;
        if (!c4798y.E().f50603H) {
            return C8000jv0.f49417a;
        }
        if (!h52.getAccessFlags().n() || h52.C().isEmpty()) {
            return C8000jv0.f49417a;
        }
        AbstractC4892Au o10 = h52.A().o();
        C4724u1 b10 = c4798y.b();
        AE H10 = c7215fB.k().H();
        for (int i10 = 0; i10 < h52.C().size(); i10++) {
            C8024k3 v10 = H10.next().v();
            com.android.tools.r8.graph.M2 b11 = h52.b(i10);
            if (c4798y.w()) {
                if (b11 == b10.f37884J1) {
                    o10.getClass();
                    if (o10 instanceof C9945vc) {
                        if (o10.a().f53153a != i10) {
                            continue;
                        }
                        d10 = v10.d();
                        if (d10.y() && !d10.B()) {
                            C9132qj c9132qj = C9132qj.f51861a;
                            Set c10 = AbstractC5513Ll0.c();
                            C10340xw0.a(c9132qj, d10, c10);
                            it = c10.iterator();
                            boolean z10 = false;
                            while (true) {
                                if (!it.hasNext()) {
                                    AbstractC10561zE abstractC10561zE = (AbstractC10561zE) it.next();
                                    int r22 = abstractC10561zE.r2();
                                    if (r22 != 9) {
                                        if (r22 != 25) {
                                            if (r22 != 56) {
                                                break;
                                            }
                                        } else {
                                            EB V10 = abstractC10561zE.V();
                                            if (V10.x2() && ((nb2 = V10.f39789l) == NB.f42527b || nb2 == NB.f42532g)) {
                                                z10 = true;
                                            }
                                        }
                                    } else if (!abstractC10561zE.d().y() && !abstractC10561zE.d().B()) {
                                    }
                                } else if (!abstractC6931dX.f() || z10) {
                                    return new C9945vc(i10);
                                }
                            }
                        }
                    } else {
                        continue;
                    }
                } else {
                    continue;
                }
            } else {
                if (b11 != b10.f38068i2) {
                    continue;
                }
                d10 = v10.d();
                if (d10.y()) {
                    continue;
                } else {
                    C9132qj c9132qj2 = C9132qj.f51861a;
                    Set c102 = AbstractC5513Ll0.c();
                    C10340xw0.a(c9132qj2, d10, c102);
                    it = c102.iterator();
                    boolean z102 = false;
                    while (true) {
                        if (!it.hasNext()) {
                        }
                    }
                }
            }
        }
        return C8000jv0.f49417a;
    }
}
