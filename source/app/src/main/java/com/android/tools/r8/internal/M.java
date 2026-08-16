package com.android.tools.r8.internal;

import java.util.Map;

public class M implements EF {

    public int f42116b;

    public Object f42117c;

    public M(int i10, Object obj) {
        this.f42116b = i10;
        this.f42117c = obj;
    }

    @Override
    public final int a() {
        return this.f42116b;
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (entry.getKey() != null && (entry.getKey() instanceof Integer) && this.f42116b == ((Integer) entry.getKey()).intValue()) {
            Object obj2 = this.f42117c;
            Object value = entry.getValue();
            if (obj2 == null) {
                if (value == null) {
                    return true;
                }
            } else if (obj2.equals(value)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final Object getKey() {
        return Integer.valueOf(this.f42116b);
    }

    @Override
    public final Object getValue() {
        return this.f42117c;
    }

    @Override
    public int hashCode() {
        int i10 = this.f42116b;
        Object obj = this.f42117c;
        return i10 ^ (obj == null ? 0 : obj.hashCode());
    }

    @Override
    public Object setValue(Object obj) {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        return this.f42116b + "->" + this.f42117c;
    }
}
