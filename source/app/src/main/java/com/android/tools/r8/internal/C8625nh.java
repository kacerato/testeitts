package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11447u;
import java.util.Collections;
import org.eclipse.jdt.internal.core.JavadocConstants;

public final class C8625nh extends AbstractC8291lh {

    public static final boolean f51029m = true;

    public final com.android.tools.r8.graph.I2 f51030l;

    public C8625nh(C10340xw0 c10340xw0, com.android.tools.r8.graph.I2 i22) {
        super(c10340xw0);
        this.f51030l = i22;
    }

    @Override
    public final C8625nh I() {
        return this;
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        return null;
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.getClass();
        return (abstractC10561zE instanceof C8625nh) && abstractC10561zE.I().f51030l == this.f51030l;
    }

    @Override
    public final boolean e2() {
        return true;
    }

    @Override
    public final boolean o() {
        return true;
    }

    @Override
    public final int p2() {
        if (f51029m) {
            return 0;
        }
        throw new AssertionError((Object) "ConstMethodType has no register arguments.");
    }

    @Override
    public final int q2() {
        return 255;
    }

    @Override
    public final int r2() {
        return 14;
    }

    @Override
    public final String toString() {
        return super.toString() + " \"" + ((Object) this.f51030l) + JavadocConstants.ANCHOR_PREFIX_END;
    }

    @Override
    public final void a(C5458Kn c5458Kn) {
        c5458Kn.a(this, new C7978jo(c5458Kn.f41765d.b(this.f54320e, this.f54322g), this.f51030l));
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        c7543h9.a(new C10045w9(this.f51030l), this);
    }

    @Override
    public final void a(PS ps) {
        com.android.tools.r8.graph.I2 i22 = this.f51030l;
        ps.getClass();
        ps.a(18, Collections.singletonList(i22), Collections.EMPTY_LIST);
    }

    @Override
    public final AbstractC8999pu0 a(C4798y c4798y) {
        return AbstractC8999pu0.a(c4798y.b().f37941R2, C8854p10.b(), (C4798y<?>) c4798y);
    }

    @Override
    public final com.android.tools.r8.graph.M2 a(C4798y c4798y, C5473Ku0 c5473Ku0) {
        return c4798y.b().f37941R2;
    }

    @Override
    public final void a(NT nt) {
        nt.b(this);
    }

    @Override
    public final void a(C11447u c11447u) {
        c11447u.a(this.f51030l);
    }

    @Override
    public final com.android.tools.r8.ir.optimize.O a(com.android.tools.r8.ir.optimize.X x10, com.android.tools.r8.graph.H5 h52) {
        return com.android.tools.r8.ir.optimize.O.f54786c;
    }
}
