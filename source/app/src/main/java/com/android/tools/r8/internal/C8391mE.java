package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11447u;
import java.util.Collections;
import org.apache.commons.math3.geometry.VectorFormat;

public class C8391mE extends AbstractC10561zE {

    public final com.android.tools.r8.graph.M2 f50246k;

    public C8391mE(C10340xw0 c10340xw0, C10340xw0 c10340xw02, com.android.tools.r8.graph.M2 m22) {
        super(c10340xw0, c10340xw02);
        this.f50246k = m22;
    }

    @Override
    public final C8391mE Y() {
        return this;
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        return null;
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.getClass();
        return (abstractC10561zE instanceof C8391mE) && abstractC10561zE.Y().f50246k == this.f50246k;
    }

    @Override
    public final boolean d1() {
        return true;
    }

    @Override
    public final boolean o() {
        return true;
    }

    @Override
    public final int p2() {
        return 15;
    }

    @Override
    public final int q2() {
        return 15;
    }

    @Override
    public final int r2() {
        return 29;
    }

    @Override
    public final String toString() {
        return super.toString() + VectorFormat.DEFAULT_SEPARATOR + this.f50246k.j0();
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        return false;
    }

    @Override
    public final void a(C5458Kn c5458Kn) {
        C5226Gn c5226Gn;
        int c10;
        int b10;
        C5577Mp c5577Mp = new C5577Mp(c5458Kn.f41765d.b(this.f54320e, this.f54322g), c5458Kn.f41765d.b((C10340xw0) this.f54321f.get(0), this.f54322g), this.f50246k);
        C8570nJ c8570nJ = c5458Kn.f41766e;
        c8570nJ.getClass();
        if (c8570nJ.a(C2.Q)) {
            AbstractC5168Fn abstractC5168Fn = c5458Kn.f41774m;
            if ((abstractC5168Fn instanceof C5226Gn) && (c10 = (c5226Gn = (C5226Gn) abstractC5168Fn).c(c5458Kn)) != (b10 = c5226Gn.b(c5458Kn)) && c10 == c5577Mp.f46869f && b10 == c5577Mp.f46870g) {
                c5458Kn.a(this, new C8154kr(), c5577Mp);
                return;
            }
        }
        c5458Kn.a(this, c5577Mp);
    }

    @Override
    public final com.android.tools.r8.ir.optimize.O a(com.android.tools.r8.ir.optimize.X x10, com.android.tools.r8.graph.H5 h52) {
        return com.android.tools.r8.ir.optimize.O.a(x10.f54825a, this.f50246k, h52);
    }

    @Override
    public final AbstractC8999pu0 a(C4798y c4798y) {
        return AbstractC8999pu0.k();
    }

    @Override
    public final void a(NT nt) {
        nt.a(this);
        nt.b(this);
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        c7543h9.a(new V9(this.f50246k), this);
    }

    @Override
    public final void a(C11447u c11447u) {
        c11447u.a((com.android.tools.r8.graph.J2) this.f50246k);
    }

    @Override
    public final void a(PS ps) {
        com.android.tools.r8.graph.M2 m22 = this.f50246k;
        C10340xw0 c10340xw0 = (C10340xw0) this.f54321f.get(0);
        ps.getClass();
        ps.a(193, Collections.singletonList(m22), Collections.singletonList(c10340xw0));
    }
}
