package com.android.tools.r8.internal;

import java.util.Map;

public final class C7356g20 implements InterfaceC8189l20, Map.Entry {

    public int f48170b;

    public final C8022k20 f48171c;

    public C7356g20(C8022k20 c8022k20, int i10) {
        this.f48171c = c8022k20;
        this.f48170b = i10;
    }

    @Override
    public final boolean equals(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Object obj2 = this.f48171c.f49456c[this.f48170b];
        if (obj2 != null ? obj2.equals(entry.getKey()) : entry.getKey() == null) {
            if (this.f48171c.f49457d[this.f48170b] == ((Integer) entry.getValue()).intValue()) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final int getIntValue() {
        return this.f48171c.f49457d[this.f48170b];
    }

    @Override
    public final Object getKey() {
        return this.f48171c.f49456c[this.f48170b];
    }

    @Override
    public final Object getValue() {
        return Integer.valueOf(this.f48171c.f49457d[this.f48170b]);
    }

    @Override
    public final int hashCode() {
        Object obj = this.f48171c.f49456c[this.f48170b];
        return (obj == null ? 0 : obj.hashCode()) ^ this.f48171c.f49457d[this.f48170b];
    }

    @Override
    public final Object setValue(Object obj) {
        int intValue = ((Integer) obj).intValue();
        int[] iArr = this.f48171c.f49457d;
        int i10 = this.f48170b;
        int i11 = iArr[i10];
        iArr[i10] = intValue;
        return Integer.valueOf(i11);
    }

    public final String toString() {
        return this.f48171c.f49456c[this.f48170b] + "=>" + this.f48171c.f49457d[this.f48170b];
    }
}
