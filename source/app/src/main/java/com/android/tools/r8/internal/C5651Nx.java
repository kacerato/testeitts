package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import java.util.function.Supplier;

public final class C5651Nx implements InterfaceC5825Qx {

    public final com.android.tools.r8.graph.H5 f42744a;

    public C5651Nx(com.android.tools.r8.graph.H5 h52) {
        this.f42744a = h52;
    }

    @Override
    public final AbstractC5361Iw0 a(C6431aX c6431aX, Supplier supplier) {
        if (!c6431aX.f46550a.a(this.f42744a.getReference())) {
            return C10671zv0.f54579b;
        }
        F8 j10 = this.f42744a.A().j();
        j10.getClass();
        F1 a10 = j10.a(c6431aX.f46551b);
        if (a10.isUnknown()) {
            return C10671zv0.f54579b;
        }
        return AbstractC10458yg.a(c6431aX.f46550a.a(c6431aX.f46551b, c6431aX.f46552c), a10);
    }

    @Override
    public final AbstractC5361Iw0 a(C4554l1 c4554l1) {
        return C10671zv0.f54579b;
    }
}
