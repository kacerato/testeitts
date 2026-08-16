package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.internal.C10340xw0;

public final class o0 {

    public static final boolean f54910c = true;

    public final C4554l1 f54911a;

    public final C10340xw0 f54912b;

    public o0(C4554l1 c4554l1, C10340xw0 c10340xw0) {
        if (!f54910c && c10340xw0 != c10340xw0.i()) {
            throw new AssertionError();
        }
        this.f54911a = c4554l1;
        this.f54912b = c10340xw0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o0)) {
            return false;
        }
        o0 o0Var = (o0) obj;
        return o0Var.f54912b == this.f54912b && o0Var.f54911a.a(this.f54911a);
    }

    public final int hashCode() {
        return (this.f54911a.hashCode() * 7) + this.f54912b.f53885b;
    }
}
