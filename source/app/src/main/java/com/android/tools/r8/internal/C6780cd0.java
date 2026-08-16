package com.android.tools.r8.internal;

import java.util.Map;

public final class C6780cd0 implements InterfaceC7614hd0, Map.Entry {

    public int f47119b;

    public final C7447gd0 f47120c;

    public C6780cd0(C7447gd0 c7447gd0, int i10) {
        this.f47120c = c7447gd0;
        this.f47119b = i10;
    }

    @Override
    public final boolean equals(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return this.f47120c.f48308c[this.f47119b] == entry.getKey() && this.f47120c.f48309d[this.f47119b] == ((Integer) entry.getValue()).intValue();
    }

    @Override
    public final int getIntValue() {
        return this.f47120c.f48309d[this.f47119b];
    }

    @Override
    public final Object getKey() {
        return this.f47120c.f48308c[this.f47119b];
    }

    @Override
    public final Object getValue() {
        return Integer.valueOf(this.f47120c.f48309d[this.f47119b]);
    }

    @Override
    public final int hashCode() {
        return System.identityHashCode(this.f47120c.f48308c[this.f47119b]) ^ this.f47120c.f48309d[this.f47119b];
    }

    @Override
    public final Object setValue(Object obj) {
        int intValue = ((Integer) obj).intValue();
        int[] iArr = this.f47120c.f48309d;
        int i10 = this.f47119b;
        int i11 = iArr[i10];
        iArr[i10] = intValue;
        return Integer.valueOf(i11);
    }

    public final String toString() {
        return this.f47120c.f48308c[this.f47119b] + "=>" + this.f47120c.f48309d[this.f47119b];
    }
}
