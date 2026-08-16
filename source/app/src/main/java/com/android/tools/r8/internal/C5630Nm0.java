package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;

public final class C5630Nm0 extends AbstractC5167Fm0 {
    public C5630Nm0(C4554l1 c4554l1) {
        super(c4554l1);
    }

    @Override
    public final Q30 U() {
        return C6163Wt.f45565a;
    }

    @Override
    public final boolean X() {
        return false;
    }

    @Override
    public final boolean equals(Object obj) {
        return obj != null && C5630Nm0.class == obj.getClass() && this.f40306c == ((C5630Nm0) obj).f40306c;
    }

    @Override
    public final int hashCode() {
        return this.f40306c.hashCode();
    }

    @Override
    public final String toString() {
        return "SingleStatelessFieldValue(" + this.f40306c.j0() + ")";
    }
}
