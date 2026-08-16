package com.android.tools.r8.internal;

import com.android.tools.r8.diagnostic.DefinitionContext;
import com.android.tools.r8.tracereferences.TraceReferencesConsumer;

public abstract class AbstractC5584Ms0 implements TraceReferencesConsumer.TracedReference {

    public static final boolean f42436e = true;

    public final Object f42437a;

    public final DefinitionContext f42438b;

    public final TraceReferencesConsumer.AccessFlags f42439c;

    public final boolean f42440d;

    public AbstractC5584Ms0(Object obj, DefinitionContext definitionContext, TraceReferencesConsumer.AccessFlags accessFlags, boolean z10) {
        if (!f42436e && accessFlags == null && !z10) {
            throw new AssertionError();
        }
        this.f42437a = obj;
        this.f42438b = definitionContext;
        this.f42439c = accessFlags;
        this.f42440d = z10;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof AbstractC5584Ms0) {
            return this.f42437a.equals(((AbstractC5584Ms0) obj).f42437a);
        }
        return false;
    }

    @Override
    public final Object getAccessFlags() {
        return this.f42439c;
    }

    @Override
    public final Object getReference() {
        return this.f42437a;
    }

    @Override
    public final DefinitionContext getReferencedFromContext() {
        return this.f42438b;
    }

    public final int hashCode() {
        return this.f42437a.hashCode();
    }

    @Override
    public final boolean isMissingDefinition() {
        return this.f42440d;
    }
}
