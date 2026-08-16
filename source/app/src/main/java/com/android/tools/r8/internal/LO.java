package com.android.tools.r8.internal;

import java.util.Collections;
import java.util.List;
import java.util.Objects;
import org.apache.commons.math3.geometry.VectorFormat;

public final class LO extends FO {

    public static final boolean f41951d = true;

    public final UM f41952b;

    public final OO f41953c;

    public LO(UM um2, OO oo) {
        boolean z10 = f41951d;
        if (!z10 && um2 == null) {
            throw new AssertionError();
        }
        if (!z10 && oo == null) {
            throw new AssertionError();
        }
        this.f41952b = um2;
        this.f41953c = oo;
    }

    @Override
    public final LO b() {
        return this;
    }

    @Override
    public final List d() {
        return Collections.singletonList(this.f41952b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LO)) {
            return false;
        }
        LO lo = (LO) obj;
        return this.f41952b.equals(lo.f41952b) && this.f41953c.equals(lo.f41953c);
    }

    public final int hashCode() {
        return Objects.hash(this.f41952b, this.f41953c);
    }

    public final String toString() {
        return "KeepMemberItemPattern{ class=" + ((Object) this.f41952b) + ", members=" + ((Object) this.f41953c) + VectorFormat.DEFAULT_SUFFIX;
    }
}
