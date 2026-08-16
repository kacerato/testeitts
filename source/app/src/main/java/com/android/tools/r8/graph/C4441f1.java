package com.android.tools.r8.graph;

import java.util.Arrays;

public final class C4441f1 extends AbstractC4592n1 {

    public final R2[] f37169b;

    public C4441f1(R2[] r2Arr) {
        this.f37169b = r2Arr;
    }

    @Override
    public final void a(com.android.tools.r8.dex.X x10) {
        x10.a(this);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof C4441f1) && Arrays.equals(((C4441f1) obj).f37169b, this.f37169b);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f37169b);
    }

    public final String toString() {
        return "EncodedArray " + Arrays.toString(this.f37169b);
    }
}
