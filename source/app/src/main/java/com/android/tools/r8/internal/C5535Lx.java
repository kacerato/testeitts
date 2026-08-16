package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import java.util.function.Supplier;

public final class C5535Lx implements InterfaceC5825Qx {

    public static final boolean f42107c = true;

    public final r f42108a;

    public final C5246Gx f42109b;

    public C5535Lx(r rVar, C5246Gx c5246Gx) {
        this.f42108a = rVar;
        this.f42109b = c5246Gx;
    }

    @Override
    public final AbstractC5361Iw0 a(C4554l1 c4554l1) {
        if (!f42107c) {
            this.f42108a.a(new C5765Pw(c4554l1));
        }
        return this.f42109b.a(c4554l1);
    }

    @Override
    public final AbstractC5361Iw0 a(C6431aX c6431aX, Supplier supplier) {
        if (!f42107c) {
            this.f42108a.a(c6431aX);
        }
        return this.f42109b.a(c6431aX, supplier);
    }
}
