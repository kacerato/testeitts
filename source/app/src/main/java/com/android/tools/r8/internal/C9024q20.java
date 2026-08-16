package com.android.tools.r8.internal;

import java.util.Map;

public final class C9024q20 implements InterfaceC8189l20, Map.Entry {

    public int f51701b;

    public final C9691u20 f51702c;

    public C9024q20(C9691u20 c9691u20, int i10) {
        this.f51702c = c9691u20;
        this.f51701b = i10;
    }

    @Override
    public final boolean equals(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Object obj2 = this.f51702c.f52762c[this.f51701b];
        if (obj2 != null ? obj2.equals(entry.getKey()) : entry.getKey() == null) {
            if (this.f51702c.f52763d[this.f51701b] == ((Integer) entry.getValue()).intValue()) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final int getIntValue() {
        return this.f51702c.f52763d[this.f51701b];
    }

    @Override
    public final Object getKey() {
        return this.f51702c.f52762c[this.f51701b];
    }

    @Override
    public final Object getValue() {
        return Integer.valueOf(this.f51702c.f52763d[this.f51701b]);
    }

    @Override
    public final int hashCode() {
        Object obj = this.f51702c.f52762c[this.f51701b];
        return (obj == null ? 0 : obj.hashCode()) ^ this.f51702c.f52763d[this.f51701b];
    }

    @Override
    public final Object setValue(Object obj) {
        int intValue = ((Integer) obj).intValue();
        int[] iArr = this.f51702c.f52763d;
        int i10 = this.f51701b;
        int i11 = iArr[i10];
        iArr[i10] = intValue;
        return Integer.valueOf(i11);
    }

    public final String toString() {
        return this.f51702c.f52762c[this.f51701b] + "=>" + this.f51702c.f52763d[this.f51701b];
    }
}
