package com.android.tools.r8.shaking;

import com.android.tools.r8.internal.C8704o7;

public final class O {

    public final com.android.tools.r8.graph.A2 f56848a;

    public final boolean f56849b;

    public com.android.tools.r8.graph.Z4 f56850c;

    public O(com.android.tools.r8.graph.A2 a22, boolean z10) {
        this.f56848a = a22;
        this.f56849b = z10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof O)) {
            return false;
        }
        O o10 = (O) obj;
        return this.f56848a.a(o10.f56848a) && this.f56849b == o10.f56849b;
    }

    public final int hashCode() {
        return (this.f56848a.hashCode() << 1) | C8704o7.a(this.f56849b);
    }
}
