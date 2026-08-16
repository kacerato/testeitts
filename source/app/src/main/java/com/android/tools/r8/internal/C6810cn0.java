package com.android.tools.r8.internal;

import java.util.Map;

public final class C6810cn0 implements Map.Entry, Comparable {

    public final Comparable f47168b;

    public Object f47169c;

    public final C6036Um0 f47170d;

    public C6810cn0(C6036Um0 c6036Um0, Map.Entry entry) {
        Comparable comparable = (Comparable) entry.getKey();
        Object value = entry.getValue();
        this.f47170d = c6036Um0;
        this.f47168b = comparable;
        this.f47169c = value;
    }

    @Override
    public final int compareTo(Object obj) {
        return this.f47168b.compareTo(((C6810cn0) obj).f47168b);
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
        Comparable comparable = this.f47168b;
        Object key = entry.getKey();
        if (comparable == null ? key == null : comparable.equals(key)) {
            Object obj2 = this.f47169c;
            Object value = entry.getValue();
            if (obj2 == null ? value == null : obj2.equals(value)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final Object getKey() {
        return this.f47168b;
    }

    @Override
    public final Object getValue() {
        return this.f47169c;
    }

    @Override
    public final int hashCode() {
        Comparable comparable = this.f47168b;
        int hashCode = comparable == null ? 0 : comparable.hashCode();
        Object obj = this.f47169c;
        return hashCode ^ (obj != null ? obj.hashCode() : 0);
    }

    @Override
    public final Object setValue(Object obj) {
        this.f47170d.e();
        Object obj2 = this.f47169c;
        this.f47169c = obj;
        return obj2;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f47168b);
        String valueOf2 = String.valueOf(this.f47169c);
        StringBuilder sb2 = new StringBuilder(valueOf2.length() + valueOf.length() + 1);
        sb2.append(valueOf);
        sb2.append("=");
        sb2.append(valueOf2);
        return sb2.toString();
    }

    public C6810cn0(C6036Um0 c6036Um0, Comparable comparable, Object obj) {
        this.f47170d = c6036Um0;
        this.f47168b = comparable;
        this.f47169c = obj;
    }
}
