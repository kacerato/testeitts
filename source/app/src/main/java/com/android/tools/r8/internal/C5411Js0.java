package com.android.tools.r8.internal;

import com.android.tools.r8.diagnostic.DefinitionContext;
import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.tracereferences.TraceReferencesConsumer;

public final class C5411Js0 extends AbstractC5584Ms0 implements TraceReferencesConsumer.TracedClass {
    public C5411Js0(DefinitionContext definitionContext, com.android.tools.r8.graph.E0 e02) {
        super(e02.M0(), definitionContext, new C4910Bc(e02.getAccessFlags()), false);
    }

    public final String toString() {
        return ((ClassReference) this.f42437a).getTypeName();
    }

    public C5411Js0(ClassReference classReference, DefinitionContext definitionContext, TraceReferencesConsumer.ClassAccessFlags classAccessFlags) {
        super(classReference, definitionContext, classAccessFlags, classAccessFlags == null);
    }
}
