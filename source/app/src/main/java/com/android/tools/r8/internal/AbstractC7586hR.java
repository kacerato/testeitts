package com.android.tools.r8.internal;

import java.util.function.Consumer;

public abstract class AbstractC7586hR {

    public static final boolean f48553e = true;

    public final com.android.tools.r8.graph.A2 f48554a;

    public final EnumC8071kK f48555b;

    public final boolean f48556c;

    public boolean f48557d;

    public AbstractC7586hR(com.android.tools.r8.graph.A2 a22, EnumC8071kK enumC8071kK, boolean z10) {
        if (!f48553e && a22 == null) {
            throw new AssertionError();
        }
        this.f48554a = a22;
        this.f48555b = enumC8071kK;
        this.f48556c = z10;
    }

    public com.android.tools.r8.graph.A2 a() {
        return this.f48554a;
    }

    public abstract com.android.tools.r8.graph.H5 a(InterfaceC6342Zx interfaceC6342Zx, InterfaceC9323rr0 interfaceC9323rr0, Consumer consumer);
}
