package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import java.util.function.Supplier;

public final class C5709Ox implements InterfaceC5825Qx {

    public final com.android.tools.r8.graph.H5 f43079a;

    public final VJ f43080b;

    public final C4798y f43081c;

    public final com.android.tools.r8.graph.H5 f43082d;

    public C5709Ox(com.android.tools.r8.graph.H5 h52, VJ vj2, C4798y c4798y, com.android.tools.r8.graph.H5 h53) {
        this.f43079a = h52;
        this.f43080b = vj2;
        this.f43081c = c4798y;
        this.f43082d = h53;
    }

    @Override
    public final AbstractC5361Iw0 a(C6431aX c6431aX, Supplier supplier) {
        if (!c6431aX.f46550a.a(this.f43079a.getReference())) {
            return C10671zv0.f54579b;
        }
        F1 a10 = this.f43080b.b(c6431aX.f46551b).a(this.f43081c, this.f43082d, M1.f42128a);
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
