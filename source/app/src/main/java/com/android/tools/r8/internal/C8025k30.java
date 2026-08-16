package com.android.tools.r8.internal;

import java.util.Map;

public final class C8025k30 implements Map.Entry {

    public int f49474b;

    public final C8693o30 f49475c;

    public C8025k30(C8693o30 c8693o30, int i10) {
        this.f49475c = c8693o30;
        this.f49474b = i10;
    }

    @Override
    public final boolean equals(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Object obj2 = this.f49475c.f51147b[this.f49474b];
        if (obj2 != null ? obj2.equals(entry.getKey()) : entry.getKey() == null) {
            if (this.f49475c.f51148c[this.f49474b] == entry.getValue()) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final Object getKey() {
        return this.f49475c.f51147b[this.f49474b];
    }

    @Override
    public final Object getValue() {
        return this.f49475c.f51148c[this.f49474b];
    }

    @Override
    public final int hashCode() {
        Object obj = this.f49475c.f51147b[this.f49474b];
        int hashCode = obj == null ? 0 : obj.hashCode();
        Object obj2 = this.f49475c.f51148c[this.f49474b];
        return hashCode ^ (obj2 != null ? System.identityHashCode(obj2) : 0);
    }

    @Override
    public final Object setValue(Object obj) {
        Object[] objArr = this.f49475c.f51148c;
        int i10 = this.f49474b;
        Object obj2 = objArr[i10];
        objArr[i10] = obj;
        return obj2;
    }

    public final String toString() {
        return this.f49475c.f51147b[this.f49474b] + "=>" + this.f49475c.f51148c[this.f49474b];
    }
}
