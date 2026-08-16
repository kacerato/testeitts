package com.android.tools.r8.internal;

import java.util.Map;

public final class C10526z20 implements Map.Entry {

    public int f54265b;

    public final D20 f54266c;

    public C10526z20(D20 d20, int i10) {
        this.f54266c = d20;
        this.f54265b = i10;
    }

    @Override
    public final boolean equals(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Object obj2 = this.f54266c.f39414b[this.f54265b];
        if (obj2 != null ? obj2.equals(entry.getKey()) : entry.getKey() == null) {
            if (this.f54266c.f39415c[this.f54265b] == ((Long) entry.getValue()).longValue()) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final Object getKey() {
        return this.f54266c.f39414b[this.f54265b];
    }

    @Override
    public final Object getValue() {
        return Long.valueOf(this.f54266c.f39415c[this.f54265b]);
    }

    @Override
    public final int hashCode() {
        Object obj = this.f54266c.f39414b[this.f54265b];
        int hashCode = obj == null ? 0 : obj.hashCode();
        long j10 = this.f54266c.f39415c[this.f54265b];
        return hashCode ^ ((int) (j10 ^ (j10 >>> 32)));
    }

    @Override
    public final Object setValue(Object obj) {
        long longValue = ((Long) obj).longValue();
        long[] jArr = this.f54266c.f39415c;
        int i10 = this.f54265b;
        long j10 = jArr[i10];
        jArr[i10] = longValue;
        return Long.valueOf(j10);
    }

    public final String toString() {
        return this.f54266c.f39414b[this.f54265b] + "=>" + this.f54266c.f39415c[this.f54265b];
    }
}
