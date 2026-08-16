package com.android.tools.r8.internal;

import java.util.function.Consumer;

public final class C7419gR extends AbstractC6586bR {

    public final com.android.tools.r8.graph.H5 f48261f;

    public C7419gR(boolean z10, com.android.tools.r8.graph.H5 h52) {
        super(h52.getReference(), EnumC8071kK.f49582f, z10);
        this.f48261f = h52;
    }

    @Override
    public final com.android.tools.r8.graph.H5 a(InterfaceC6342Zx interfaceC6342Zx, InterfaceC9323rr0 interfaceC9323rr0, Consumer consumer) {
        com.android.tools.r8.graph.L4 accessFlags = this.f48261f.getAccessFlags();
        accessFlags.A();
        if (!this.f48261f.getHolder().isInterface()) {
            return null;
        }
        accessFlags.w();
        return null;
    }
}
