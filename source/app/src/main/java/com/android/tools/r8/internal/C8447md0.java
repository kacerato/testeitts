package com.android.tools.r8.internal;

import java.util.Map;

public final class C8447md0 implements InterfaceC7614hd0, Map.Entry {

    public int f50363b;

    public final C9115qd0 f50364c;

    public C8447md0(C9115qd0 c9115qd0, int i10) {
        this.f50364c = c9115qd0;
        this.f50363b = i10;
    }

    @Override
    public final boolean equals(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return this.f50364c.f51822c[this.f50363b] == entry.getKey() && this.f50364c.f51823d[this.f50363b] == ((Integer) entry.getValue()).intValue();
    }

    @Override
    public final int getIntValue() {
        return this.f50364c.f51823d[this.f50363b];
    }

    @Override
    public final Object getKey() {
        return this.f50364c.f51822c[this.f50363b];
    }

    @Override
    public final Object getValue() {
        return Integer.valueOf(this.f50364c.f51823d[this.f50363b]);
    }

    @Override
    public final int hashCode() {
        return System.identityHashCode(this.f50364c.f51822c[this.f50363b]) ^ this.f50364c.f51823d[this.f50363b];
    }

    @Override
    public final Object setValue(Object obj) {
        int intValue = ((Integer) obj).intValue();
        int[] iArr = this.f50364c.f51823d;
        int i10 = this.f50363b;
        int i11 = iArr[i10];
        iArr[i10] = intValue;
        return Integer.valueOf(i11);
    }

    public final String toString() {
        return this.f50364c.f51822c[this.f50363b] + "=>" + this.f50364c.f51823d[this.f50363b];
    }
}
