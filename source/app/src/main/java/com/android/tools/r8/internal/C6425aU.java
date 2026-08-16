package com.android.tools.r8.internal;

import java.util.Map;

public final class C6425aU implements Map.Entry {

    public int f46545b;

    public final C7091eU f46546c;

    public C6425aU(C7091eU c7091eU, int i10) {
        this.f46546c = c7091eU;
        this.f46545b = i10;
    }

    @Override
    public final boolean equals(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return this.f46546c.f47691b[this.f46545b] == ((Long) entry.getKey()).longValue() && this.f46546c.f47692c[this.f46545b] == entry.getValue();
    }

    @Override
    public final Object getKey() {
        return Long.valueOf(this.f46546c.f47691b[this.f46545b]);
    }

    @Override
    public final Object getValue() {
        return this.f46546c.f47692c[this.f46545b];
    }

    @Override
    public final int hashCode() {
        C7091eU c7091eU = this.f46546c;
        long[] jArr = c7091eU.f47691b;
        int i10 = this.f46545b;
        long j10 = jArr[i10];
        int i11 = (int) (j10 ^ (j10 >>> 32));
        Object obj = c7091eU.f47692c[i10];
        return (obj == null ? 0 : System.identityHashCode(obj)) ^ i11;
    }

    @Override
    public final Object setValue(Object obj) {
        Object[] objArr = this.f46546c.f47692c;
        int i10 = this.f46545b;
        Object obj2 = objArr[i10];
        objArr[i10] = obj;
        return obj2;
    }

    public final String toString() {
        return this.f46546c.f47691b[this.f46545b] + "=>" + this.f46546c.f47692c[this.f46545b];
    }
}
