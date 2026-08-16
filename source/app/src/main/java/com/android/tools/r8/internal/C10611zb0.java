package com.android.tools.r8.internal;

import com.android.tools.r8.metadata.R8StartupOptimizationMetadata;

public final class C10611zb0 implements R8StartupOptimizationMetadata {

    @InterfaceC9168qv
    @InterfaceC10474yl0("isDexLayoutOptimizationEnabled")
    public final boolean f54409a;

    @InterfaceC9168qv
    @InterfaceC10474yl0("isProfileGuidedOptimizationEnabled")
    public final boolean f54410b;

    public C10611zb0(C8981po0 c8981po0) {
        this.f54409a = c8981po0.f51622e;
        this.f54410b = !c8981po0.f51620c;
    }

    @Override
    public final boolean isDexLayoutOptimizationEnabled() {
        return this.f54409a;
    }

    @Override
    public final boolean isProfileGuidedOptimizationEnabled() {
        return this.f54410b;
    }
}
