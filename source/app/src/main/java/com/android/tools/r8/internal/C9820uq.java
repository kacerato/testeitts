package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11447u;
import java.util.Collections;
import org.eclipse.jdt.internal.core.JavadocConstants;

public final class C9820uq extends AbstractC8291lh {

    public static final boolean f52960n = true;

    public final com.android.tools.r8.graph.J2 f52961l;

    public final ZY f52962m;

    public C9820uq(C10340xw0 c10340xw0, com.android.tools.r8.graph.J2 j22, ZY zy) {
        super(c10340xw0);
        this.f52961l = j22;
        this.f52962m = zy;
    }

    @Override
    public final C9820uq O() {
        return this;
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        return null;
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.getClass();
        return (abstractC10561zE instanceof C9820uq) && abstractC10561zE.O().f52961l == this.f52961l && abstractC10561zE.O().f52962m.equals(this.f52962m);
    }

    @Override
    public final boolean e2() {
        return true;
    }

    @Override
    public final boolean g1() {
        return true;
    }

    @Override
    public final boolean o() {
        return true;
    }

    @Override
    public final int p2() {
        if (f52960n) {
            return 0;
        }
        throw new AssertionError((Object) "DexItemBasedConstString has no register arguments.");
    }

    @Override
    public final int q2() {
        return 255;
    }

    @Override
    public final int r2() {
        return 20;
    }

    @Override
    public final String toString() {
        return super.toString() + " \"" + this.f52961l.j0() + JavadocConstants.ANCHOR_PREFIX_END;
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, M1 m12, C10394yE c10394yE) {
        return false;
    }

    public static C9820uq a(C10340xw0 c10340xw0, C9820uq c9820uq) {
        if (f52960n || c10340xw0 != c9820uq.d()) {
            return new C9820uq(c10340xw0, c9820uq.f52961l, c9820uq.f52962m);
        }
        throw new AssertionError();
    }

    @Override
    public final com.android.tools.r8.ir.optimize.O a(com.android.tools.r8.ir.optimize.X x10, com.android.tools.r8.graph.H5 h52) {
        return com.android.tools.r8.ir.optimize.O.f54787d;
    }

    @Override
    public final void a(C5458Kn c5458Kn) {
        c5458Kn.a(this, new C9987vq(c5458Kn.f41765d.b(d(), this.f54322g), this.f52961l, this.f52962m));
    }

    @Override
    public final void a(PS ps) {
        com.android.tools.r8.graph.J2 j22 = this.f52961l;
        ZY zy = this.f52962m;
        ps.getClass();
        ps.a(216, AbstractC7552hC.a(j22, new MS(zy)), Collections.EMPTY_LIST);
    }

    @Override
    public final com.android.tools.r8.ir.optimize.E a(C4798y c4798y, C7215fB c7215fB) {
        return com.android.tools.r8.ir.optimize.E.f54733a;
    }

    @Override
    public final void a(NT nt) {
        nt.b(this);
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        c7543h9.a(new E9(this.f52961l, this.f52962m), this);
    }

    @Override
    public final com.android.tools.r8.graph.M2 a(C4798y c4798y, C5473Ku0 c5473Ku0) {
        return c4798y.b().f38052g2;
    }

    @Override
    public final AbstractC8999pu0 a(C4798y c4798y) {
        return AbstractC8999pu0.a((C4798y<?>) c4798y, C8854p10.b());
    }

    @Override
    public final void a(C11447u c11447u) {
        if (this.f52962m.e()) {
            if (!f52960n) {
                com.android.tools.r8.graph.J2 j22 = this.f52961l;
                j22.getClass();
                if (!(j22 instanceof com.android.tools.r8.graph.M2)) {
                    throw new AssertionError();
                }
            }
            this.f52961l.o0();
        }
    }

    @Override
    public final F1 a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, M1 m12) {
        G1 g12 = c4798y.f38427t;
        com.android.tools.r8.graph.J2 j22 = this.f52961l;
        ZY zy = this.f52962m;
        g12.getClass();
        return new C5051Dm0(j22, zy);
    }
}
