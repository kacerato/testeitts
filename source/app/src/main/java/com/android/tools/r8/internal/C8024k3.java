package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Set;

public class C8024k3 extends AbstractC10561zE {

    public static final boolean f49471m = true;

    public final int f49472k;

    public final boolean f49473l;

    public C8024k3(C10340xw0 c10340xw0, int i10, boolean z10) {
        super(c10340xw0);
        this.f49472k = i10;
        this.f49473l = z10;
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        return null;
    }

    public final int b(boolean z10) {
        if (!f49471m && z10) {
            AE H10 = b().H();
            int i10 = 0;
            while (H10.hasNext()) {
                AbstractC10561zE next = H10.next();
                boolean z11 = f49471m;
                if (!z11 && !next.k1()) {
                    throw new AssertionError();
                }
                if (next != this) {
                    i10++;
                } else if (!z11 && i10 != this.f49472k) {
                    throw new AssertionError();
                }
            }
            throw new AssertionError();
        }
        return this.f49472k;
    }

    @Override
    public final boolean d1() {
        return true;
    }

    @Override
    public final boolean k1() {
        return true;
    }

    @Override
    public final int p2() {
        if (f49471m) {
            return 0;
        }
        throw new AssertionError((Object) "Argument has no register arguments.");
    }

    @Override
    public final int q2() {
        return 65535;
    }

    @Override
    public final int r2() {
        return 5;
    }

    @Override
    public final C8024k3 v() {
        return this;
    }

    @Override
    public final void a(NT nt) {
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        return false;
    }

    @Override
    public final F1 a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, M1 m12) {
        if (this.f54320e.z()) {
            int i10 = F1.f40064a;
            return C10504yv0.f54195b;
        }
        int i11 = F1.f40064a;
        return C10504yv0.f54195b;
    }

    @Override
    public final com.android.tools.r8.ir.optimize.O a(com.android.tools.r8.ir.optimize.X x10, com.android.tools.r8.graph.H5 h52) {
        return com.android.tools.r8.ir.optimize.O.f54787d;
    }

    @Override
    public final com.android.tools.r8.ir.optimize.E a(C4798y c4798y, C7215fB c7215fB) {
        return com.android.tools.r8.ir.optimize.E.f54734b;
    }

    @Override
    public final com.android.tools.r8.graph.M2 a(C4798y c4798y, C5473Ku0 c5473Ku0) {
        throw new C5417Jv0();
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        return abstractC10561zE.k1();
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        c7543h9.getClass();
    }

    @Override
    public final AbstractC8999pu0 a(C4798y c4798y) {
        return this.f54320e.u();
    }

    @Override
    public final boolean a(Set set) {
        return this.f49473l;
    }

    @Override
    public final void a(PS ps) {
        ps.a(this.f49472k);
    }

    @Override
    public final void a(C5458Kn c5458Kn) {
        c5458Kn.f41775n = d().f53896m.C() + c5458Kn.f41775n;
        c5458Kn.a(this, new C4878An(this));
    }
}
