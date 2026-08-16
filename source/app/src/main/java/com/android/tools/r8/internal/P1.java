package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4458g;
import com.android.tools.r8.tracereferences.TraceReferencesConsumer;

public abstract class P1 implements TraceReferencesConsumer.AccessFlags {

    public final AbstractC4458g f43102a;

    public P1(AbstractC4458g abstractC4458g) {
        this.f43102a = abstractC4458g;
    }

    @Override
    public final boolean isPrivate() {
        return this.f43102a.h();
    }

    @Override
    public final boolean isProtected() {
        return this.f43102a.k();
    }

    @Override
    public final boolean isPublic() {
        return this.f43102a.l();
    }

    @Override
    public final boolean isStatic() {
        return this.f43102a.n();
    }
}
