package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import java.util.Objects;

public final class C5572Mm0 extends AbstractC5167Fm0 {

    public static final boolean f42397f = true;

    public final Q30 f42398e;

    public C5572Mm0(C4554l1 c4554l1, Q30 q30) {
        super(c4554l1);
        if (!f42397f && q30.e()) {
            throw new AssertionError();
        }
        this.f42398e = q30;
    }

    @Override
    public final int T() {
        return this.f42398e.c();
    }

    @Override
    public final Q30 U() {
        return this.f42398e;
    }

    @Override
    public final boolean W() {
        return this.f42398e.d();
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj != null && C5572Mm0.class == obj.getClass()) {
            C5572Mm0 c5572Mm0 = (C5572Mm0) obj;
            if (this.f40306c == c5572Mm0.f40306c && this.f42398e.equals(c5572Mm0.f42398e)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final int hashCode() {
        return Objects.hash(this.f40306c, this.f42398e);
    }

    @Override
    public final String toString() {
        return "SingleStatefulFieldValue(" + this.f40306c.j0() + ")";
    }
}
