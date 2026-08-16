package com.android.tools.r8.internal;

import java.util.Objects;

public final class I60 {

    public final com.android.tools.r8.graph.J0 f40975a;

    public final int f40976b;

    public final int f40977c;

    public I60(com.android.tools.r8.graph.J0 j02, int i10, int i11) {
        this.f40975a = j02;
        this.f40976b = i10;
        this.f40977c = i11;
    }

    public final boolean equals(Object obj) {
        I60 i60 = (I60) obj;
        return this.f40976b == i60.f40976b && this.f40977c == i60.f40977c;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.f40976b), Integer.valueOf(this.f40977c));
    }
}
