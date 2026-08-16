package com.android.tools.r8.internal;

import java.io.Serializable;

public final class C5219Gj0 implements Serializable {

    public final Throwable f40567b;

    public C5219Gj0(Throwable th2) {
        this.f40567b = th2;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C5219Gj0) && GJ.a(this.f40567b, ((C5219Gj0) obj).f40567b);
    }

    public final int hashCode() {
        return this.f40567b.hashCode();
    }

    public final String toString() {
        return "Failure(" + ((Object) this.f40567b) + ')';
    }
}
