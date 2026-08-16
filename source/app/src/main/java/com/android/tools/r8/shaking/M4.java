package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.internal.C7333fv;
import com.android.tools.r8.internal.C9933vX;
import java.util.HashMap;

public final class M4 {

    public static final C9933vX f56740c = C9933vX.f53136a;

    public M4 f56741a;

    public final HashMap f56742b = new HashMap();

    public M4(M4 m42) {
        this.f56741a = m42;
    }

    public final C4516j1 a(C7333fv c7333fv) {
        C4516j1 c4516j1 = (C4516j1) this.f56742b.get(c7333fv);
        if (c4516j1 != null) {
            return c4516j1;
        }
        M4 m42 = this.f56741a;
        if (m42 != null) {
            return m42.a(c7333fv);
        }
        return null;
    }

    public final int a(C4516j1 c4516j1) {
        C9933vX c9933vX = f56740c;
        com.android.tools.r8.graph.A2 reference = c4516j1.getReference();
        c9933vX.getClass();
        C7333fv c7333fv = new C7333fv(c9933vX, reference);
        C4516j1 a10 = a(c7333fv);
        if (a10 == null) {
            this.f56742b.put(c7333fv, c4516j1);
            return 2;
        }
        com.android.tools.r8.graph.L4 l42 = c4516j1.f37314g;
        com.android.tools.r8.graph.L4 l43 = a10.f37314g;
        String A02 = c4516j1.B0().A0();
        String A03 = a10.B0().A0();
        int d10 = l42.d();
        if (d10 <= l43.d() && !(d10 == l43.d() && l42.g() && !A02.equals(A03))) {
            return 1;
        }
        this.f56742b.put(c7333fv, c4516j1);
        return 3;
    }
}
