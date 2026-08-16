package com.android.tools.r8.internal;

import com.android.tools.r8.diagnostic.DefinitionContext;
import com.android.tools.r8.references.MethodReference;
import com.android.tools.r8.tracereferences.TraceReferencesConsumer;

public final class C5526Ls0 extends AbstractC5584Ms0 implements TraceReferencesConsumer.TracedMethod {
    public C5526Ls0(DefinitionContext definitionContext, com.android.tools.r8.graph.H0 h02) {
        super(h02.w(), definitionContext, new BW(h02.getAccessFlags()), false);
    }

    public final String toString() {
        return ((MethodReference) this.f42437a).toString();
    }

    public C5526Ls0(com.android.tools.r8.graph.H0 h02, DefinitionContext definitionContext, com.android.tools.r8.graph.A2 a22) {
        super(a22.v0(), definitionContext, new BW(h02.getAccessFlags()), false);
    }

    public C5526Ls0(MethodReference methodReference, DefinitionContext definitionContext, TraceReferencesConsumer.MethodAccessFlags methodAccessFlags) {
        super(methodReference, definitionContext, methodAccessFlags, methodAccessFlags == null);
    }
}
