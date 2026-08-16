package com.android.tools.r8.graph;

import com.android.tools.r8.AbstractC4291c;
import com.android.tools.r8.graph.J0;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.AbstractC8953pf;
import com.android.tools.r8.internal.AbstractC9213rA;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.RR;
import java.nio.ShortBuffer;

public interface InterfaceC4443f3 {
    static {
        boolean z10 = AbstractC4386c3.f37092a;
    }

    J0 C();

    AbstractC4497i0 P();

    C4351a6 Q();

    int T();

    int Y();

    int a(H5 h52);

    /* JADX WARN: Multi-variable type inference failed */
    default int a(InterfaceC4443f3 interfaceC4443f3, AbstractC8953pf abstractC8953pf) {
        int l10 = l();
        int l11 = interfaceC4443f3.l();
        if (l10 != l11) {
            return AbstractC4291c.a(l10, l11);
        }
        int b10 = AbstractC4291c.b(l10);
        if (b10 == 0) {
            return C().a(interfaceC4443f3.C(), abstractC8953pf);
        }
        if (b10 == 1 || b10 == 2) {
            return 0;
        }
        if (b10 == 3) {
            if (!AbstractC4386c3.f37092a && !(((AbstractC4497i0) this) instanceof C4351a6)) {
                throw new AssertionError();
            }
            return Q().a(interfaceC4443f3.Q(), abstractC8953pf);
        }
        throw new C5417Jv0();
    }

    InterfaceC4424e3 a(H5 h52, C4724u1 c4724u1);

    InterfaceC4443f3 a(H5 h52, C4766w5 c4766w5, C4798y c4798y, boolean z10);

    void a(com.android.tools.r8.dex.X x10);

    void a(com.android.tools.r8.dex.r rVar);

    void a(C4766w5 c4766w5, H5 h52, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, RR rr, ShortBuffer shortBuffer);

    void a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.dex.M m10, H5 h52, RR rr);

    void a(AbstractC9213rA abstractC9213rA);

    int b(H5 h52);

    void c(H5 h52);

    int l();

    J0.a[] o();

    J0.b[] r();

    Z0 u();
}
