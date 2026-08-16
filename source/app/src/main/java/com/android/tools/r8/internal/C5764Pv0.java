package com.android.tools.r8.internal;

import com.android.tools.r8.errors.UnsupportedFeatureDiagnostic;
import com.android.tools.r8.errors.UnsupportedInvokePolymorphicMethodHandleDiagnostic;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C8106kb;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.MethodPosition;
import java.util.Collection;

public final class C5764Pv0 extends AbstractC5648Nv0 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5764Pv0(C4798y c4798y) {
        super(c4798y, "invoke-polymorphic", C2.O);
        boolean z10 = C8570nJ.f50578e2;
    }

    @Override
    public final UnsupportedFeatureDiagnostic a(Origin origin, MethodPosition methodPosition) {
        return new UnsupportedInvokePolymorphicMethodHandleDiagnostic(origin, methodPosition);
    }

    @Override
    public final C6204Xl a(W9 w92) {
        final C7437ga j10 = w92.j();
        if (j10 == null || !this.f42736a.b().f38015b5.a(j10.V())) {
            return null;
        }
        return new C6204Xl(AbstractC9365s5.a(new InterfaceC6147Wl() {
            @Override
            public final Collection a(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
                return C5764Pv0.this.a(j10, b60, interfaceC8175ky, qt, d92, abstractC7103ea, h52, c5035Df, y92, c4724u1);
            }
        }));
    }

    public final Collection a(C7437ga c7437ga, B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
        a(h52);
        int i10 = AbstractC7552hC.f48487c;
        C7051eC c7051eC = new C7051eC();
        AbstractC5648Nv0.a(c7437ga.V().y0(), c7051eC);
        if (!c7437ga.O()) {
            com.android.tools.r8.graph.M2 m22 = c4724u1.f38068i2;
            if (!AbstractC5648Nv0.f42735e && m22.S0()) {
                throw new AssertionError();
            }
            c7051eC.a(new C8106kb(m22.T0() ? C8106kb.a.Pop2 : C8106kb.a.Pop));
        }
        qt.a(1);
        a(c5035Df, abstractC7103ea, c7051eC);
        AbstractC5648Nv0.b(c7051eC, c7437ga.V().z0());
        return c7051eC.a();
    }
}
