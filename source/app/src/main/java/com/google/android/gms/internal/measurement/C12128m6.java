package com.google.android.gms.internal.measurement;

import java.util.Map;
import java.util.Objects;

public final class C12128m6 implements Map.Entry, Comparable {

    public final Comparable f62363b;

    public Object f62364c;

    public final C12155p6 f62365d;

    public C12128m6(C12155p6 c12155p6, Comparable comparable, Object obj) {
        Objects.requireNonNull(c12155p6);
        this.f62365d = c12155p6;
        this.f62363b = comparable;
        this.f62364c = obj;
    }

    public static final boolean c(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    public final Comparable b() {
        return this.f62363b;
    }

    @Override
    public final int compareTo(Object obj) {
        return this.f62363b.compareTo(((C12128m6) obj).f62363b);
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
        return c(this.f62363b, entry.getKey()) && c(this.f62364c, entry.getValue());
    }

    @Override
    public final Object getKey() {
        return this.f62363b;
    }

    @Override
    public final Object getValue() {
        return this.f62364c;
    }

    @Override
    public final int hashCode() {
        Comparable comparable = this.f62363b;
        int hashCode = comparable == null ? 0 : comparable.hashCode();
        Object obj = this.f62364c;
        return hashCode ^ (obj != null ? obj.hashCode() : 0);
    }

    @Override
    public final Object setValue(Object obj) {
        this.f62365d.o();
        Object obj2 = this.f62364c;
        this.f62364c = obj;
        return obj2;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f62363b);
        String valueOf2 = String.valueOf(this.f62364c);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 1 + valueOf2.length());
        sb2.append(valueOf);
        sb2.append("=");
        sb2.append(valueOf2);
        return sb2.toString();
    }
}
