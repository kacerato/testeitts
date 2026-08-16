package com.android.tools.r8.diagnostic.internal;

import com.android.tools.r8.diagnostic.MissingMethodInfo;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.references.MethodReference;

public final class q extends j implements MissingMethodInfo {

    public final MethodReference f36014b;

    public q(MethodReference methodReference, AbstractC7552hC abstractC7552hC) {
        super(abstractC7552hC);
        this.f36014b = methodReference;
    }

    @Override
    public final MethodReference getMethodReference() {
        return this.f36014b;
    }
}
