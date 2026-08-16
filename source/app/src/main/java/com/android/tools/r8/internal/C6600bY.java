package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.Collections;

public final class C6600bY extends AbstractC10561zE {

    public static final boolean f46784m = true;

    public final com.android.tools.r8.graph.M2 f46785k;

    public final C8570nJ f46786l;

    public C6600bY(C10340xw0 c10340xw0, com.android.tools.r8.graph.M2 m22, C8570nJ c8570nJ) {
        super(c10340xw0);
        this.f46785k = m22;
        this.f46786l = c8570nJ;
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        return null;
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.getClass();
        if (!(abstractC10561zE instanceof C6600bY)) {
            return false;
        }
        C8570nJ c8570nJ = this.f46786l;
        c8570nJ.getClass();
        return !c8570nJ.a(C2.Q) || abstractC10561zE.q0().f46785k == this.f46785k;
    }

    @Override
    public final boolean d1() {
        return true;
    }

    @Override
    public final int p2() {
        if (f46784m) {
            return 0;
        }
        throw new AssertionError((Object) "MoveException has no register arguments.");
    }

    @Override
    public final C6600bY q0() {
        return this;
    }

    @Override
    public final int q2() {
        return 255;
    }

    @Override
    public final int r2() {
        return 44;
    }

    @Override
    public final void a(C7543h9 c7543h9) {
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        return false;
    }

    @Override
    public final void a(C5458Kn c5458Kn) {
        c5458Kn.a(this, new C5348Iq(c5458Kn.f41765d.b(this.f54320e, this.f54322g)));
    }

    @Override
    public final com.android.tools.r8.ir.optimize.E a(C4798y c4798y, C7215fB c7215fB) {
        if (!c4798y.E().f50690i1 && !c7215fB.j().getHolder().I1() && c7215fB.f47895b.b()) {
            return com.android.tools.r8.ir.optimize.E.f54733a;
        }
        return com.android.tools.r8.ir.optimize.E.f54734b;
    }

    @Override
    public final void a(NT nt) {
        nt.b(this);
    }

    @Override
    public final com.android.tools.r8.graph.M2 a(C4798y c4798y, C5473Ku0 c5473Ku0) {
        return this.f46785k;
    }

    @Override
    public final AbstractC8999pu0 a(C4798y c4798y) {
        return AbstractC8999pu0.a(this.f46785k, C8854p10.b(), (C4798y<?>) c4798y);
    }

    @Override
    public final void a(PS ps) {
        com.android.tools.r8.graph.M2 m22 = this.f46785k;
        ps.getClass();
        ps.a(212, Collections.singletonList(m22), Collections.EMPTY_LIST);
    }

    @Override
    public final com.android.tools.r8.ir.optimize.O a(com.android.tools.r8.ir.optimize.X x10, com.android.tools.r8.graph.H5 h52) {
        return com.android.tools.r8.ir.optimize.O.f54787d;
    }
}
