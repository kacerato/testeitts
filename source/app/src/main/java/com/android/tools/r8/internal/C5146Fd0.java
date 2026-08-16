package com.android.tools.r8.internal;

import java.util.Map;

public final class C5146Fd0 implements Map.Entry {

    public int f40263b;

    public final C5378Jd0 f40264c;

    public C5146Fd0(C5378Jd0 c5378Jd0, int i10) {
        this.f40264c = c5378Jd0;
        this.f40263b = i10;
    }

    @Override
    public final boolean equals(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return this.f40264c.f41436b[this.f40263b] == entry.getKey() && this.f40264c.f41437c[this.f40263b] == entry.getValue();
    }

    @Override
    public final Object getKey() {
        return this.f40264c.f41436b[this.f40263b];
    }

    @Override
    public final Object getValue() {
        return this.f40264c.f41437c[this.f40263b];
    }

    @Override
    public final int hashCode() {
        int identityHashCode = System.identityHashCode(this.f40264c.f41436b[this.f40263b]);
        Object obj = this.f40264c.f41437c[this.f40263b];
        return identityHashCode ^ (obj == null ? 0 : System.identityHashCode(obj));
    }

    @Override
    public final Object setValue(Object obj) {
        Object[] objArr = this.f40264c.f41437c;
        int i10 = this.f40263b;
        Object obj2 = objArr[i10];
        objArr[i10] = obj;
        return obj2;
    }

    public final String toString() {
        return this.f40264c.f41436b[this.f40263b] + "=>" + this.f40264c.f41437c[this.f40263b];
    }
}
