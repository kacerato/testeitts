package com.android.tools.r8.internal;

public final class C6917dQ {

    public final Boolean f47402a;

    public C6917dQ(Boolean bool) {
        this.f47402a = bool;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C6917dQ) && GJ.a(this.f47402a, ((C6917dQ) obj).f47402a);
    }

    public final int hashCode() {
        Boolean bool = this.f47402a;
        if (bool == null) {
            return 0;
        }
        return bool.hashCode();
    }

    public final String toString() {
        return "KmConstantValue(value=" + ((Object) this.f47402a) + ')';
    }
}
