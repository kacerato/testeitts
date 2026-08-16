package com.android.tools.r8.graph;

import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.C5645Nu;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class J extends G {

    public static final boolean f36455p = true;

    public C5645Nu f36456o;

    public J(C5645Nu c5645Nu, G g10) {
        super(g10.f36302e, g10.f36304g, g10.f36303f, g10.f36305h, g10.f36306i, g10.f36307j, g10.f36309l, g10.f36310m);
        this.f36308k = g10.f36308k;
        this.f36456o = c5645Nu;
    }

    @Override
    public final AbstractC5308Hz a(C4798y c4798y) {
        boolean z10 = f36455p;
        if (!z10 && this.f36456o == null) {
            throw new AssertionError();
        }
        if (!z10) {
            this.f36456o.getClass();
        }
        return this.f36456o;
    }

    @Override
    public final G a(A2 a22, boolean z10, A2 a23, boolean z11, C4724u1 c4724u1) {
        return new J(this.f36456o, super.a(a22, z10, a23, z11, c4724u1));
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public J(M2 m22, int i10, int i11, ArrayList arrayList) {
        super(m22, i10, i11, arrayList, r6, r6);
        List list = Collections.EMPTY_LIST;
        this.f36456o = null;
    }

    @Override
    public final AbstractC4497i0 a(A2 a22, boolean z10, A2 a23, boolean z11, C4724u1 c4724u1) {
        return new J(this.f36456o, super.a(a22, z10, a23, z11, c4724u1));
    }
}
