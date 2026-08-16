package com.android.tools.r8.internal;

import com.android.tools.r8.ClassFileConsumer;
import com.android.tools.r8.graph.C4798y;
import java.io.UTFDataFormatException;
import java.util.Collections;
import org.eclipse.jdt.internal.core.JavadocConstants;

public class C9960vh extends AbstractC8291lh {

    public static final boolean f53189m = true;

    public final com.android.tools.r8.graph.L2 f53190l;

    public C9960vh(C10340xw0 c10340xw0, com.android.tools.r8.graph.L2 l22) {
        super(c10340xw0);
        this.f53190l = l22;
    }

    @Override
    public final C9960vh K() {
        return this;
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        return null;
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        return abstractC10561zE.x1() && abstractC10561zE.K().f53190l == this.f53190l;
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
        if (f53189m) {
            return 0;
        }
        throw new AssertionError((Object) "ConstString has no register arguments.");
    }

    @Override
    public final int q2() {
        return 255;
    }

    @Override
    public final int r2() {
        return 16;
    }

    @Override
    public final String toString() {
        return super.toString() + " \"" + ((Object) this.f53190l) + JavadocConstants.ANCHOR_PREFIX_END;
    }

    public com.android.tools.r8.graph.L2 u2() {
        return this.f53190l;
    }

    public final boolean v2() {
        try {
            this.f53190l.toString();
            return false;
        } catch (RuntimeException e10) {
            if (e10.getCause() instanceof UTFDataFormatException) {
                return true;
            }
            throw e10;
        }
    }

    @Override
    public final boolean x1() {
        return true;
    }

    public static C9960vh a(C10340xw0 c10340xw0, C9960vh c9960vh) {
        if (f53189m || c10340xw0 != c9960vh.d()) {
            return new C9960vh(c10340xw0, c9960vh.u2());
        }
        throw new AssertionError();
    }

    @Override
    public final void a(C5458Kn c5458Kn) {
        c5458Kn.a(this, new C8145ko(c5458Kn.f41765d.b(this.f54320e, this.f54322g), this.f53190l));
    }

    @Override
    public final F1 a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, M1 m12) {
        if (!v2()) {
            return c4798y.f38427t.a(this.f53190l);
        }
        return C10504yv0.f54195b;
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, M1 m12, C10394yE c10394yE) {
        return v2();
    }

    @Override
    public final com.android.tools.r8.ir.optimize.E a(C4798y c4798y, C7215fB c7215fB) {
        if (!(c4798y.E().f50697l instanceof ClassFileConsumer)) {
            M1.a(c4798y, c7215fB.j());
            if (v2()) {
                return com.android.tools.r8.ir.optimize.E.f54734b;
            }
        }
        return com.android.tools.r8.ir.optimize.E.f54733a;
    }

    @Override
    public final void a(NT nt) {
        nt.b(this);
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        c7543h9.a(new A9(this.f53190l), this);
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
    public final void a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C6113Vw0 c6113Vw0) {
        boolean z10 = f53189m;
        C6949de a10 = AbstractC8999pu0.a((C4798y<?>) c4798y, C8854p10.b());
        if (!z10 && !a().equals(a10)) {
            throw new AssertionError();
        }
    }

    @Override
    public final void a(PS ps) {
        com.android.tools.r8.graph.L2 l22 = this.f53190l;
        ps.getClass();
        ps.a(18, Collections.singletonList(l22), Collections.EMPTY_LIST);
    }
}
