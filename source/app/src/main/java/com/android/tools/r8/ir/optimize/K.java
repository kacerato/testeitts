package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.graph.AbstractC4420e;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.H2;
import com.android.tools.r8.graph.H5;
import com.android.tools.r8.graph.Z4;
import com.android.tools.r8.internal.AbstractC5015Cx0;
import com.android.tools.r8.internal.C10340xw0;
import com.android.tools.r8.internal.C5721Pc;
import com.android.tools.r8.internal.C6949de;
import com.android.tools.r8.internal.C7215fB;
import com.android.tools.r8.internal.JD;
import com.android.tools.r8.internal.VJ;
import com.android.tools.r8.internal.W5;
import java.util.Map;

public final class K implements Y {

    public static final boolean f54768c = true;

    public final C4798y f54769a;

    public final Object f54770b;

    public K(C4798y c4798y, Map map) {
        this.f54769a = c4798y;
        this.f54770b = map;
    }

    @Override
    public final void a(C7215fB c7215fB) {
    }

    @Override
    public final C4798y b() {
        return this.f54769a;
    }

    @Override
    public final boolean a() {
        return true;
    }

    @Override
    public final boolean a(C7215fB c7215fB, Z4.c cVar, H5 h52, AbstractC5015Cx0 abstractC5015Cx0) {
        return true;
    }

    @Override
    public final boolean a(Q q10, AbstractC5015Cx0 abstractC5015Cx0) {
        return true;
    }

    @Override
    public final boolean a(Q q10, C7215fB c7215fB, C7215fB c7215fB2, VJ vj2, W5 w52, AbstractC5015Cx0 abstractC5015Cx0) {
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Map, java.lang.Object] */
    @Override
    public final H5 a(H5 h52, VJ vj2) {
        T t10 = (T) this.f54770b.get(vj2);
        if (t10 != null) {
            return t10.f54806a;
        }
        return vj2.d(this.f54769a, h52);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0075 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006e  */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.util.Map, java.lang.Object] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final S a(C7215fB c7215fB, VJ vj2, Z4.c cVar, H5 h52, H5 h53, C5721Pc c5721Pc, JD jd2, AbstractC5015Cx0 abstractC5015Cx0) {
        H2 h22;
        H2 h23;
        boolean z10;
        T t10 = (T) this.f54770b.get(vj2);
        if (t10 == null) {
            return null;
        }
        H5 h54 = t10.f54806a;
        C4798y c4798y = this.f54769a;
        if (vj2.Q1()) {
            C10340xw0 C22 = vj2.f0().C2();
            if (!C22.u().s()) {
                h22 = h52.getHolder();
            } else if (!a(vj2, C22.u().b()).b(h52.p().b(b()).b(), b())) {
                h22 = h52.getHolder();
            }
            if (h22 != null) {
                h22 = null;
            } else if (AbstractC4420e.a(h22, h53, c4798y, (C4514j) c4798y.f()).b()) {
                z10 = false;
                h23 = null;
                if (!z10) {
                    return null;
                }
                Q q10 = new Q(h54, vj2, null);
                if (h23 != null) {
                    q10.f54803f = h23;
                }
                return q10;
            }
            h23 = h22;
            z10 = true;
            if (!z10) {
            }
        }
        h22 = null;
        if (h22 != null) {
        }
        h23 = h22;
        z10 = true;
        if (!z10) {
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.Map, java.lang.Object] */
    @Override
    public final C6949de a(VJ vj2, C6949de c6949de) {
        boolean z10 = f54768c;
        if (!z10 && !vj2.Q1()) {
            throw new AssertionError();
        }
        T t10 = (T) this.f54770b.get(vj2.f0());
        if (!z10 && t10 == null) {
            throw new AssertionError();
        }
        H2 h22 = t10.f54807b;
        return h22 != null ? h22.getType().b(this.f54769a).b() : c6949de;
    }
}
