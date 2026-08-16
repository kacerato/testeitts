package com.android.tools.r8.internal;

import java.util.HashMap;
import java.util.function.Supplier;

public final class C7541h80 extends AbstractC5747Pn {

    public static final C7541h80 f48451c = new C7541h80(new EO0());

    public C7541h80(Supplier supplier) {
        super(supplier);
    }

    public static C7541h80 a(int i10) {
        return new C7541h80(new HashMap(i10));
    }

    public static C7541h80 k() {
        return new C7541h80(new C6176Wz0());
    }

    public static C7541h80 l() {
        return new C7541h80(new C9546t91());
    }

    @Override
    public final C7333fv b(com.android.tools.r8.graph.G0 g02) {
        return new C7333fv(C7374g80.f48192a, (com.android.tools.r8.graph.H5) g02);
    }

    public C7541h80(HashMap hashMap) {
        super(hashMap);
    }
}
