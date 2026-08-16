package com.android.tools.r8.internal;

import java.util.Map;

public final class I20 implements N20, Map.Entry {

    public int f40962b;

    public final M20 f40963c;

    public I20(M20 m20, int i10) {
        this.f40963c = m20;
        this.f40962b = i10;
    }

    @Override
    public final boolean equals(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        M20 m20 = this.f40963c;
        if (m20.f42138f.a(m20.f42134b[this.f40962b], entry.getKey())) {
            Object obj2 = this.f40963c.f42135c[this.f40962b];
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
        return this.f40963c.f42134b[this.f40962b];
    }

    @Override
    public final Object getValue() {
        return this.f40963c.f42135c[this.f40962b];
    }

    @Override
    public final int hashCode() {
        M20 m20 = this.f40963c;
        int a10 = m20.f42138f.a(m20.f42134b[this.f40962b]);
        Object obj = this.f40963c.f42135c[this.f40962b];
        return a10 ^ (obj == null ? 0 : obj.hashCode());
    }

    @Override
    public final Object setValue(Object obj) {
        Object[] objArr = this.f40963c.f42135c;
        int i10 = this.f40962b;
        Object obj2 = objArr[i10];
        objArr[i10] = obj;
        return obj2;
    }

    public final String toString() {
        return this.f40963c.f42134b[this.f40962b] + "=>" + this.f40963c.f42135c[this.f40962b];
    }
}
