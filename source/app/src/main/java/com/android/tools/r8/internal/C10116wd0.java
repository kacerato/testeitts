package com.android.tools.r8.internal;

import java.util.Map;

public final class C10116wd0 implements Map.Entry {

    public int f53543b;

    public final C4856Ad0 f53544c;

    public C10116wd0(C4856Ad0 c4856Ad0, int i10) {
        this.f53544c = c4856Ad0;
        this.f53543b = i10;
    }

    @Override
    public final boolean equals(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return this.f53544c.f38646b[this.f53543b] == entry.getKey() && this.f53544c.f38647c[this.f53543b] == ((Long) entry.getValue()).longValue();
    }

    @Override
    public final Object getKey() {
        return this.f53544c.f38646b[this.f53543b];
    }

    @Override
    public final Object getValue() {
        return Long.valueOf(this.f53544c.f38647c[this.f53543b]);
    }

    @Override
    public final int hashCode() {
        int identityHashCode = System.identityHashCode(this.f53544c.f38646b[this.f53543b]);
        long j10 = this.f53544c.f38647c[this.f53543b];
        return identityHashCode ^ ((int) (j10 ^ (j10 >>> 32)));
    }

    @Override
    public final Object setValue(Object obj) {
        long longValue = ((Long) obj).longValue();
        long[] jArr = this.f53544c.f38647c;
        int i10 = this.f53543b;
        long j10 = jArr[i10];
        jArr[i10] = longValue;
        return Long.valueOf(j10);
    }

    public final String toString() {
        return this.f53544c.f38646b[this.f53543b] + "=>" + this.f53544c.f38647c[this.f53543b];
    }
}
