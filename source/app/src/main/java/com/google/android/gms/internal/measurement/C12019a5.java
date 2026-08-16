package com.google.android.gms.internal.measurement;

public final class C12019a5 {

    public final Object f62217a;

    public final int f62218b;

    public C12019a5(Object obj, int i10) {
        this.f62217a = obj;
        this.f62218b = i10;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C12019a5)) {
            return false;
        }
        C12019a5 c12019a5 = (C12019a5) obj;
        return this.f62217a == c12019a5.f62217a && this.f62218b == c12019a5.f62218b;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.f62217a) * 65535) + this.f62218b;
    }
}
