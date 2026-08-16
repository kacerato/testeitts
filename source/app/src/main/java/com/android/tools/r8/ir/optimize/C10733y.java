package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.internal.AbstractC10561zE;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C6558bE;
import com.android.tools.r8.internal.InterfaceC5945Sz;

public final class C10733y implements InterfaceC5945Sz {

    public static final boolean f54962a = true;

    @Override
    public final boolean a(Object obj, Object obj2) {
        AbstractC10561zE abstractC10561zE = (AbstractC10561zE) obj;
        AbstractC10561zE abstractC10561zE2 = (AbstractC10561zE) obj2;
        if (abstractC10561zE == abstractC10561zE2) {
            return true;
        }
        if (abstractC10561zE == null || abstractC10561zE2 == null || abstractC10561zE.getClass() != abstractC10561zE2.getClass()) {
            return false;
        }
        if (!(abstractC10561zE instanceof C6558bE) || abstractC10561zE.W0() == abstractC10561zE2.W0()) {
            return abstractC10561zE.b(abstractC10561zE2);
        }
        return false;
    }

    @Override
    public final int a(Object obj) {
        AbstractC10561zE abstractC10561zE = (AbstractC10561zE) obj;
        if (!f54962a && !abstractC10561zE.g1()) {
            throw new AssertionError();
        }
        int r22 = abstractC10561zE.r2();
        if (r22 == 12) {
            return abstractC10561zE.F().f49303l.hashCode();
        }
        if (r22 == 20) {
            return abstractC10561zE.O().f52961l.hashCode();
        }
        if (r22 == 28 || r22 == 59) {
            return abstractC10561zE.R().getField().hashCode();
        }
        if (r22 == 71) {
            return Integer.hashCode(abstractC10561zE.F0().f43306l);
        }
        if (r22 == 15) {
            return (abstractC10561zE.s2().hashCode() * 13) + Long.hashCode(abstractC10561zE.J().w2());
        }
        if (r22 == 16) {
            return abstractC10561zE.K().u2().hashCode();
        }
        throw new C5417Jv0();
    }
}
