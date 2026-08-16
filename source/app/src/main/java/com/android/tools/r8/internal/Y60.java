package com.android.tools.r8.internal;

import java.io.Serializable;

public final class Y60 implements V60, Serializable {

    public final V60 f45931b;

    public Y60(V60 v60) {
        v60.getClass();
        this.f45931b = v60;
    }

    @Override
    public final boolean apply(Object obj) {
        return !this.f45931b.apply(obj);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj instanceof Y60) {
            return this.f45931b.equals(((Y60) obj).f45931b);
        }
        return false;
    }

    public final int hashCode() {
        return ~this.f45931b.hashCode();
    }

    public final String toString() {
        return "Predicates.not(" + ((Object) this.f45931b) + ")";
    }
}
