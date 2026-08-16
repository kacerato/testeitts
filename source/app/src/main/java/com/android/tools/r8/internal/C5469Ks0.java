package com.android.tools.r8.internal;

import com.android.tools.r8.diagnostic.DefinitionContext;
import com.android.tools.r8.references.FieldReference;
import com.android.tools.r8.tracereferences.TraceReferencesConsumer;

public final class C5469Ks0 extends AbstractC5584Ms0 implements TraceReferencesConsumer.TracedField {
    public C5469Ks0(FieldReference fieldReference, DefinitionContext definitionContext, TraceReferencesConsumer.FieldAccessFlags fieldAccessFlags) {
        super(fieldReference, definitionContext, fieldAccessFlags, fieldAccessFlags == null);
    }

    public final String toString() {
        return ((FieldReference) this.f42437a).toString();
    }

    public C5469Ks0(com.android.tools.r8.graph.F0 f02, DefinitionContext definitionContext) {
        super(f02.getReference().v0(), definitionContext, new C5995Tv(f02.getAccessFlags()), false);
    }
}
