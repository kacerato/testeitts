package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.AbstractC10561zE;
import com.android.tools.r8.internal.C10340xw0;
import com.android.tools.r8.internal.C7832iv;
import com.android.tools.r8.internal.InterfaceC7999jv;
import com.android.tools.r8.internal.QJ;

public final class C11214g2 implements InterfaceC7999jv {

    public static final C11214g2 f57335a = new C11214g2();

    @Override
    public final boolean a(C4798y c4798y, C7832iv c7832iv, AbstractC10561zE abstractC10561zE, com.android.tools.r8.graph.H5 h52) {
        if (!c4798y.f().i()) {
            return false;
        }
        C4798y<C11245i> M10 = c4798y.M();
        if (!abstractC10561zE.O1()) {
            return false;
        }
        QJ c02 = abstractC10561zE.c0();
        if (!M10.b().a(c02.B2())) {
            return false;
        }
        for (int i10 = 1; i10 < c02.f54321f.size(); i10++) {
            if (c7832iv.f49113c.contains((C10340xw0) c02.f54321f.get(i10))) {
                return false;
            }
        }
        com.android.tools.r8.graph.H0 e10 = c02.e(M10, h52);
        if (e10 == null) {
            return false;
        }
        C4516j1 d10 = e10.d();
        d10.L0();
        return d10.f37320m.a(c02).g();
    }
}
