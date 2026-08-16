package com.android.tools.r8.internal;

import com.android.tools.r8.retrace.RetraceTypeElement;
import com.android.tools.r8.retrace.RetraceTypeResult;
import com.android.tools.r8.retrace.RetracedTypeReference;

public final class C7468gk0 implements RetraceTypeElement {

    public final C7635hk0 f48351a;

    public final RetracedTypeReference f48352b;

    public C7468gk0(C7635hk0 c7635hk0, RetracedTypeReference retracedTypeReference) {
        this.f48351a = c7635hk0;
        this.f48352b = retracedTypeReference;
    }

    @Override
    public final RetraceTypeResult getParentResult() {
        return this.f48351a;
    }

    @Override
    public final RetracedTypeReference getType() {
        return this.f48352b;
    }

    @Override
    public final boolean isCompilerSynthesized() {
        return false;
    }
}
