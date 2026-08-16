package com.android.tools.r8.internal;

import java.util.Map;

public class S implements RG {

    public int f44050b;

    public Object f44051c;

    public S(int i10, Object obj) {
        this.f44050b = i10;
        this.f44051c = obj;
    }

    @Override
    public final int a() {
        return this.f44050b;
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return entry.getKey() != null && (entry.getKey() instanceof Integer) && this.f44050b == ((Integer) entry.getKey()).intValue() && this.f44051c == entry.getValue();
    }

    @Override
    public final Object getKey() {
        return Integer.valueOf(this.f44050b);
    }

    @Override
    public final Object getValue() {
        return this.f44051c;
    }

    @Override
    public int hashCode() {
        int i10 = this.f44050b;
        Object obj = this.f44051c;
        return i10 ^ (obj == null ? 0 : System.identityHashCode(obj));
    }

    @Override
    public Object setValue(Object obj) {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        return this.f44050b + "->" + this.f44051c;
    }
}
