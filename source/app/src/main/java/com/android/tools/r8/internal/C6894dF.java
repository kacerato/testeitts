package com.android.tools.r8.internal;

import java.util.Map;

public final class C6894dF implements XE, Map.Entry {

    public int f47331b;

    public final C7561hF f47332c;

    public C6894dF(C7561hF c7561hF, int i10) {
        this.f47332c = c7561hF;
        this.f47331b = i10;
    }

    @Override
    public final int a() {
        return this.f47332c.f48508c[this.f47331b];
    }

    @Override
    public final boolean equals(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return this.f47332c.f48508c[this.f47331b] == ((Integer) entry.getKey()).intValue() && this.f47332c.f48509d[this.f47331b] == ((Integer) entry.getValue()).intValue();
    }

    @Override
    public final int getIntValue() {
        return this.f47332c.f48509d[this.f47331b];
    }

    @Override
    public final Object getKey() {
        return Integer.valueOf(this.f47332c.f48508c[this.f47331b]);
    }

    @Override
    public final Object getValue() {
        return Integer.valueOf(this.f47332c.f48509d[this.f47331b]);
    }

    @Override
    public final int hashCode() {
        C7561hF c7561hF = this.f47332c;
        int[] iArr = c7561hF.f48508c;
        int i10 = this.f47331b;
        return c7561hF.f48509d[i10] ^ iArr[i10];
    }

    @Override
    public final Object setValue(Object obj) {
        int intValue = ((Integer) obj).intValue();
        int[] iArr = this.f47332c.f48509d;
        int i10 = this.f47331b;
        int i11 = iArr[i10];
        iArr[i10] = intValue;
        return Integer.valueOf(i11);
    }

    public final String toString() {
        return this.f47332c.f48508c[this.f47331b] + "=>" + this.f47332c.f48509d[this.f47331b];
    }
}
