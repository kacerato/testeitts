package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4515j0;

public final class NR implements DV {

    public final VJ f42595b;

    public final R00 f42596c;

    public final com.android.tools.r8.graph.A2 f42597d;

    public final AbstractC5308Hz f42598e;

    public final QR f42599f;

    public NR(QR qr, VJ vj2, R00 r00, com.android.tools.r8.graph.A2 a22, AbstractC5308Hz abstractC5308Hz) {
        this.f42599f = qr;
        this.f42595b = vj2;
        this.f42596c = r00;
        this.f42597d = a22;
        this.f42598e = abstractC5308Hz;
    }

    @Override
    public final AbstractC8999pu0 a() {
        return this.f42596c.c(this.f42598e, this.f42597d.z0()).b(this.f42599f.f43579a);
    }

    @Override
    public final B60 getPosition() {
        return this.f42595b.getPosition();
    }

    @Override
    public final C4515j0 q() {
        return this.f42595b.q();
    }
}
