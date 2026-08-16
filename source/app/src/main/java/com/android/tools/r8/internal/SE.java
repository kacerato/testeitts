package com.android.tools.r8.internal;

import java.util.Map;

public final class SE implements XE, Map.Entry {

    public int f44159b;

    public final WE f44160c;

    public SE(WE we2, int i10) {
        this.f44160c = we2;
        this.f44159b = i10;
    }

    @Override
    public final int a() {
        return this.f44160c.f45341c[this.f44159b];
    }

    @Override
    public final boolean equals(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return this.f44160c.f45341c[this.f44159b] == ((Integer) entry.getKey()).intValue() && this.f44160c.f45342d[this.f44159b] == ((Integer) entry.getValue()).intValue();
    }

    @Override
    public final int getIntValue() {
        return this.f44160c.f45342d[this.f44159b];
    }

    @Override
    public final Object getKey() {
        return Integer.valueOf(this.f44160c.f45341c[this.f44159b]);
    }

    @Override
    public final Object getValue() {
        return Integer.valueOf(this.f44160c.f45342d[this.f44159b]);
    }

    @Override
    public final int hashCode() {
        WE we2 = this.f44160c;
        int[] iArr = we2.f45341c;
        int i10 = this.f44159b;
        return we2.f45342d[i10] ^ iArr[i10];
    }

    @Override
    public final Object setValue(Object obj) {
        int intValue = ((Integer) obj).intValue();
        int[] iArr = this.f44160c.f45342d;
        int i10 = this.f44159b;
        int i11 = iArr[i10];
        iArr[i10] = intValue;
        return Integer.valueOf(i11);
    }

    public final String toString() {
        return this.f44160c.f45341c[this.f44159b] + "=>" + this.f44160c.f45342d[this.f44159b];
    }
}
