package com.google.android.gms.internal.measurement;

import java.util.List;

public final class a8 extends AbstractC12103k {

    public final M7 f62225d;

    public a8(M7 m72) {
        super("internal.logger");
        this.f62225d = m72;
        this.f62338c.put("log", new Z7(this, false, true));
        this.f62338c.put("silent", new K6(this, "silent"));
        ((AbstractC12103k) this.f62338c.get("silent")).f("log", new Z7(this, true, true));
        this.f62338c.put("unmonitored", new C12120l7(this, "unmonitored"));
        ((AbstractC12103k) this.f62338c.get("unmonitored")).f("log", new Z7(this, false, false));
    }

    @Override
    public final InterfaceC12157q i(C12079h2 c12079h2, List list) {
        return InterfaceC12157q.f62394o4;
    }

    public final M7 k() {
        return this.f62225d;
    }
}
