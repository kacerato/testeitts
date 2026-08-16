package com.android.tools.r8.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C10070wI;
import com.android.tools.r8.shaking.C11245i;
import com.android.tools.r8.shaking.C11447u;
import java.util.ArrayList;
import java.util.Collections;
import java.util.function.Consumer;

public final class OJ extends NJ {

    public static final boolean f42850m = true;

    public final com.android.tools.r8.graph.D0 f42851l;

    public OJ(com.android.tools.r8.graph.D0 d02, C10340xw0 c10340xw0, ArrayList arrayList) {
        super(arrayList, c10340xw0);
        if (!f42850m && d02 == null) {
            throw new AssertionError();
        }
        this.f42851l = d02;
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        return true;
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.getClass();
        return (abstractC10561zE instanceof OJ) && this.f42851l == abstractC10561zE.b0().f42851l;
    }

    @Override
    public final OJ b0() {
        return this;
    }

    @Override
    public final boolean d1() {
        return true;
    }

    @Override
    public final int r2() {
        return 32;
    }

    @Override
    public final String toString() {
        return super.toString() + "; call site: " + this.f42851l.j0();
    }

    @Override
    public final com.android.tools.r8.graph.M2 v2() {
        return this.f42851l.f36213f.f36440e;
    }

    @Override
    public final String x2() {
        return TypedValues.Custom.NAME;
    }

    /* JADX WARN: Type inference failed for: r4v4, types: [java.util.Map, com.android.tools.r8.internal.u1] */
    @Override
    public final AbstractC8999pu0 a(C4798y c4798y) {
        AbstractC8999pu0 a10 = super.a(c4798y);
        if (c4798y.f().i()) {
            C4798y<C11245i> M10 = c4798y.M();
            C8085kR a11 = C8085kR.a(this.f42851l, M10, M10.f(), null);
            ArrayList arrayList = a11 != C8085kR.f49623j ? a11.f49629e : null;
            if (arrayList != null && !arrayList.isEmpty()) {
                boolean z10 = f42850m;
                if (!z10 && !(a10 instanceof C6949de)) {
                    throw new AssertionError();
                }
                C10070wI F10 = a10.b().F();
                com.android.tools.r8.graph.M2 m22 = c4798y.b().f38068i2;
                if (a10.b().E() == m22) {
                    if (!z10 && F10.c() == null) {
                        throw new AssertionError();
                    }
                    if (arrayList.size() == 1) {
                        if (z10 || arrayList.get(0) == F10.c()) {
                            return a10;
                        }
                        throw new AssertionError();
                    }
                }
                final C10070wI.a a12 = C10070wI.a();
                arrayList.forEach(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        C10070wI.a.this.a((com.android.tools.r8.graph.M2) obj, true);
                    }
                });
                C10070wI a13 = a12.a();
                if (!z10) {
                    C10070wI F11 = a10.b().F();
                    if (a10.b().E() == m22) {
                        if (!z10 && !a13.b(F11.c())) {
                            throw new AssertionError();
                        }
                    } else {
                        if (!z10 && !F11.f53468a.isEmpty()) {
                            throw new AssertionError();
                        }
                        if (!z10 && !a13.b(a10.b().E())) {
                            throw new AssertionError();
                        }
                    }
                }
                return C6949de.a(m22, C8854p10.h(), M10, a13);
            }
        }
        return a10;
    }

    @Override
    public final boolean b(C5458Kn c5458Kn) {
        if (c5458Kn.f41766e.f50599F1.f50898p) {
            return true;
        }
        return super.b(c5458Kn);
    }

    @Override
    public final void a(PS ps) {
        com.android.tools.r8.graph.D0 d02 = this.f42851l;
        ArrayList arrayList = this.f54321f;
        ps.getClass();
        ps.a(186, Collections.singletonList(d02), arrayList);
    }

    @Override
    public final com.android.tools.r8.graph.M2 a(C4798y c4798y, C5473Ku0 c5473Ku0) {
        return this.f42851l.f36213f.f36440e;
    }

    @Override
    public final void a(C5458Kn c5458Kn) {
        AbstractC5635Np c6155Wp;
        int y22 = y2();
        if (y22 > c5458Kn.f41776o) {
            c5458Kn.f41776o = y22;
        }
        if (b(c5458Kn)) {
            if (!f42850m) {
                c(c5458Kn);
            }
            c6155Wp = new C6212Xp(a(c5458Kn, b(0)), y22, this.f42851l);
        } else {
            int[] iArr = new int[5];
            c6155Wp = new C6155Wp(a(c5458Kn, iArr), this.f42851l, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
        }
        a(c6155Wp, c5458Kn);
    }

    @Override
    public final com.android.tools.r8.ir.optimize.O a(com.android.tools.r8.ir.optimize.X x10, com.android.tools.r8.graph.H5 h52) {
        return com.android.tools.r8.ir.optimize.O.f54786c;
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        c7543h9.a(new C7604ha(this.f42851l), this);
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        c10391yD.a(this);
        return null;
    }

    @Override
    public final void a(NT nt) {
        nt.a(this);
        if (this.f42851l.f36213f.f36440e.S0()) {
            return;
        }
        nt.a(this.f42851l.f36213f.f36440e, this);
    }

    @Override
    public final void a(C11447u c11447u) {
        c11447u.a(this.f42851l);
    }
}
