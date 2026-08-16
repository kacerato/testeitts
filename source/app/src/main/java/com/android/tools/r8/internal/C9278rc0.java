package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;

public final class C9278rc0 extends AbstractC10561zE {

    public static final boolean f52075l = true;

    public final C4554l1[] f52076k;

    public C9278rc0(C4554l1[] c4554l1Arr, C10340xw0 c10340xw0, ArrayList arrayList) {
        super(arrayList, c10340xw0);
        if (!f52075l && c4554l1Arr.length != arrayList.size()) {
            throw new AssertionError();
        }
        this.f52076k = c4554l1Arr;
    }

    @Override
    public final C9278rc0 D0() {
        return this;
    }

    @Override
    public final Object a(C10391yD c10391yD) {
        return null;
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.getClass();
        if (abstractC10561zE instanceof C9278rc0) {
            return Arrays.equals(abstractC10561zE.D0().f52076k, this.f52076k);
        }
        return false;
    }

    @Override
    public final boolean d1() {
        return true;
    }

    @Override
    public final int p2() {
        return 65535;
    }

    @Override
    public final int q2() {
        return 65535;
    }

    @Override
    public final int r2() {
        return 70;
    }

    @Override
    public final boolean a(C4798y c4798y, com.android.tools.r8.graph.H5 h52) {
        return false;
    }

    @Override
    public final void a(PS ps) {
        C4554l1[] c4554l1Arr = this.f52076k;
        ArrayList arrayList = this.f54321f;
        ps.getClass();
        ps.a(223, Collections.singletonList(new NS(c4554l1Arr)), arrayList);
    }

    @Override
    public final AbstractC8999pu0 a(C4798y c4798y) {
        return AbstractC8999pu0.a(c4798y.b().f38092l2, C8854p10.b(), (C4798y<?>) c4798y);
    }

    @Override
    public final void a(C7543h9 c7543h9) {
        c7543h9.a(new C6120Wa(this.f52076k), this);
    }

    @Override
    public final void a(NT nt) {
        nt.a(this);
        nt.b(this);
    }

    @Override
    public final void a(C5458Kn c5458Kn) {
        int[] iArr = new int[this.f54321f.size()];
        for (int i10 = 0; i10 < this.f54321f.size(); i10++) {
            iArr[i10] = c5458Kn.f41765d.b((C10340xw0) this.f54321f.get(i10), this.f54322g);
        }
        c5458Kn.a(this, new C4886Ar(c5458Kn.f41765d.b(d(), this.f54322g), iArr, this.f52076k));
    }

    @Override
    public final com.android.tools.r8.ir.optimize.O a(com.android.tools.r8.ir.optimize.X x10, com.android.tools.r8.graph.H5 h52) {
        return com.android.tools.r8.ir.optimize.O.f54787d;
    }
}
