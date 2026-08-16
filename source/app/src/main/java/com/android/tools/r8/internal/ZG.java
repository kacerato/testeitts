package com.android.tools.r8.internal;

import java.util.Map;

public final class ZG implements RG, Map.Entry {

    public int f46209b;

    public final C6899dH f46210c;

    public ZG(C6899dH c6899dH, int i10) {
        this.f46210c = c6899dH;
        this.f46209b = i10;
    }

    @Override
    public final int a() {
        return this.f46210c.f47340b[this.f46209b];
    }

    @Override
    public final boolean equals(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return this.f46210c.f47340b[this.f46209b] == ((Integer) entry.getKey()).intValue() && this.f46210c.f47341c[this.f46209b] == entry.getValue();
    }

    @Override
    public final Object getKey() {
        return Integer.valueOf(this.f46210c.f47340b[this.f46209b]);
    }

    @Override
    public final Object getValue() {
        return this.f46210c.f47341c[this.f46209b];
    }

    @Override
    public final int hashCode() {
        C6899dH c6899dH = this.f46210c;
        int[] iArr = c6899dH.f47340b;
        int i10 = this.f46209b;
        int i11 = iArr[i10];
        Object obj = c6899dH.f47341c[i10];
        return (obj == null ? 0 : System.identityHashCode(obj)) ^ i11;
    }

    @Override
    public final Object setValue(Object obj) {
        Object[] objArr = this.f46210c.f47341c;
        int i10 = this.f46209b;
        Object obj2 = objArr[i10];
        objArr[i10] = obj;
        return obj2;
    }

    public final String toString() {
        return this.f46210c.f47340b[this.f46209b] + "=>" + this.f46210c.f47341c[this.f46209b];
    }
}
