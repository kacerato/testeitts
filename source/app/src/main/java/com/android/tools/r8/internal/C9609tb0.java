package com.android.tools.r8.internal;

import com.android.tools.r8.ResourceShrinkerConfiguration;
import com.android.tools.r8.metadata.R8ResourceOptimizationMetadata;

public final class C9609tb0 implements R8ResourceOptimizationMetadata {

    @InterfaceC9168qv
    @InterfaceC10474yl0("isOptimizedShrinkingEnabled")
    public final boolean f52634a;

    public C9609tb0(ResourceShrinkerConfiguration resourceShrinkerConfiguration) {
        this.f52634a = resourceShrinkerConfiguration.isOptimizedShrinking();
    }

    @Override
    public final boolean isOptimizedShrinkingEnabled() {
        return this.f52634a;
    }
}
