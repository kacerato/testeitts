package com.android.tools.r8.internal;

import com.android.tools.r8.tracereferences.TraceReferencesConsumer;

public final class C4910Bc extends P1 implements TraceReferencesConsumer.ClassAccessFlags {
    public C4910Bc(com.android.tools.r8.graph.Q q10) {
        super(q10);
    }

    @Override
    public final boolean isAnnotation() {
        return ((com.android.tools.r8.graph.Q) this.f43102a).H();
    }

    @Override
    public final boolean isEnum() {
        return ((com.android.tools.r8.graph.Q) this.f43102a).I();
    }

    @Override
    public final boolean isInterface() {
        return ((com.android.tools.r8.graph.Q) this.f43102a).J();
    }
}
