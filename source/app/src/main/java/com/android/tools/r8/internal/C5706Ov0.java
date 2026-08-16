package com.android.tools.r8.internal;

import com.android.tools.r8.errors.UnsupportedFeatureDiagnostic;
import com.android.tools.r8.errors.UnsupportedInvokeCustomDiagnostic;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.MethodPosition;
import java.util.Collection;

public final class C5706Ov0 extends AbstractC5648Nv0 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5706Ov0(C4798y c4798y) {
        super(c4798y, "invoke-dynamic", C2.O);
        boolean z10 = C8570nJ.f50578e2;
    }

    @Override
    public final UnsupportedFeatureDiagnostic a(Origin origin, MethodPosition methodPosition) {
        return new UnsupportedInvokeCustomDiagnostic(origin, methodPosition);
    }

    @Override
    public final C6204Xl a(W9 w92) {
        final C7604ha k10 = w92.k();
        if (k10 == null) {
            return null;
        }
        return new C6204Xl(AbstractC9365s5.a(new InterfaceC6147Wl() {
            @Override
            public final Collection a(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
                return C5706Ov0.this.a(k10, b60, interfaceC8175ky, qt, d92, abstractC7103ea, h52, c5035Df, y92, c4724u1);
            }
        }));
    }

    public final Collection a(C7604ha c7604ha, B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
        a(h52);
        int i10 = AbstractC7552hC.f48487c;
        C7051eC c7051eC = new C7051eC();
        com.android.tools.r8.graph.D0 V10 = c7604ha.V();
        AbstractC5648Nv0.a(V10.f36213f, c7051eC);
        qt.a(1);
        a(c5035Df, abstractC7103ea, c7051eC);
        AbstractC5648Nv0.b(c7051eC, V10.f36213f.o0());
        return c7051eC.a();
    }
}
