package com.android.tools.r8.internal;

import java.util.Map;

public final class C6977dn0 implements Map.Entry, Comparable {

    public final Comparable f47516b;

    public Object f47517c;

    public final AbstractC7810in0 f47518d;

    public C6977dn0(AbstractC7810in0 abstractC7810in0, Map.Entry entry) {
        Comparable comparable = (Comparable) entry.getKey();
        Object value = entry.getValue();
        this.f47518d = abstractC7810in0;
        this.f47516b = comparable;
        this.f47517c = value;
    }

    @Override
    public final int compareTo(Object obj) {
        return this.f47516b.compareTo(((C6977dn0) obj).f47516b);
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
        Comparable comparable = this.f47516b;
        Object key = entry.getKey();
        if (comparable == null ? key == null : comparable.equals(key)) {
            Object obj2 = this.f47517c;
            Object value = entry.getValue();
            if (obj2 == null ? value == null : obj2.equals(value)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final Object getKey() {
        return this.f47516b;
    }

    @Override
    public final Object getValue() {
        return this.f47517c;
    }

    @Override
    public final int hashCode() {
        Comparable comparable = this.f47516b;
        int hashCode = comparable == null ? 0 : comparable.hashCode();
        Object obj = this.f47517c;
        return hashCode ^ (obj != null ? obj.hashCode() : 0);
    }

    @Override
    public final Object setValue(Object obj) {
        this.f47518d.e();
        Object obj2 = this.f47517c;
        this.f47517c = obj;
        return obj2;
    }

    public final String toString() {
        return ((Object) this.f47516b) + "=" + this.f47517c;
    }

    public C6977dn0(AbstractC7810in0 abstractC7810in0, Comparable comparable, Object obj) {
        this.f47518d = abstractC7810in0;
        this.f47516b = comparable;
        this.f47517c = obj;
    }
}
