package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Comparator;

public final class C8452mf extends D40 implements Serializable {

    public final Comparator f50371b;

    public C8452mf(Comparator comparator) {
        comparator.getClass();
        this.f50371b = comparator;
    }

    @Override
    public final int compare(Object obj, Object obj2) {
        return this.f50371b.compare(obj, obj2);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C8452mf) {
            return this.f50371b.equals(((C8452mf) obj).f50371b);
        }
        return false;
    }

    public final int hashCode() {
        return this.f50371b.hashCode();
    }

    public final String toString() {
        return this.f50371b.toString();
    }
}
