package com.android.tools.r8.internal;

import java.io.Serializable;

public final class C4989Ck0 extends D40 implements Serializable {

    public final D40 f39337b;

    public C4989Ck0(D40 d40) {
        this.f39337b = d40;
    }

    @Override
    public final D40 a() {
        return this.f39337b;
    }

    @Override
    public final int compare(Object obj, Object obj2) {
        return this.f39337b.compare(obj2, obj);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C4989Ck0) {
            return this.f39337b.equals(((C4989Ck0) obj).f39337b);
        }
        return false;
    }

    public final int hashCode() {
        return -this.f39337b.hashCode();
    }

    public final String toString() {
        return ((Object) this.f39337b) + ".reverse()";
    }
}
