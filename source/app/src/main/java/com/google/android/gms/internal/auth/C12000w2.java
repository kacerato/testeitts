package com.google.android.gms.internal.auth;

import java.util.Map;

public final class C12000w2 implements Map.Entry, Comparable {

    public final Comparable f61862b;

    public Object f61863c;

    public final C2 f61864d;

    public C12000w2(C2 c22, Comparable comparable, Object obj) {
        this.f61864d = c22;
        this.f61862b = comparable;
        this.f61863c = obj;
    }

    public static final boolean c(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    public final Comparable b() {
        return this.f61862b;
    }

    @Override
    public final int compareTo(Object obj) {
        return this.f61862b.compareTo(((C12000w2) obj).f61862b);
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return c(this.f61862b, entry.getKey()) && c(this.f61863c, entry.getValue());
    }

    @Override
    public final Object getKey() {
        return this.f61862b;
    }

    @Override
    public final Object getValue() {
        return this.f61863c;
    }

    @Override
    public final int hashCode() {
        Comparable comparable = this.f61862b;
        int hashCode = comparable == null ? 0 : comparable.hashCode();
        Object obj = this.f61863c;
        return hashCode ^ (obj != null ? obj.hashCode() : 0);
    }

    @Override
    public final Object setValue(Object obj) {
        this.f61864d.u();
        Object obj2 = this.f61863c;
        this.f61863c = obj;
        return obj2;
    }

    public final String toString() {
        return String.valueOf(this.f61862b) + "=" + String.valueOf(this.f61863c);
    }
}
