package com.android.tools.r8.internal;

import java.util.Map;

public final class MG implements RG, Map.Entry {

    public int f42258b;

    public final QG f42259c;

    public MG(QG qg2, int i10) {
        this.f42259c = qg2;
        this.f42258b = i10;
    }

    @Override
    public final int a() {
        return this.f42259c.f43524b[this.f42258b];
    }

    @Override
    public final boolean equals(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return this.f42259c.f43524b[this.f42258b] == ((Integer) entry.getKey()).intValue() && this.f42259c.f43525c[this.f42258b] == entry.getValue();
    }

    @Override
    public final Object getKey() {
        return Integer.valueOf(this.f42259c.f43524b[this.f42258b]);
    }

    @Override
    public final Object getValue() {
        return this.f42259c.f43525c[this.f42258b];
    }

    @Override
    public final int hashCode() {
        QG qg2 = this.f42259c;
        int[] iArr = qg2.f43524b;
        int i10 = this.f42258b;
        int i11 = iArr[i10];
        Object obj = qg2.f43525c[i10];
        return (obj == null ? 0 : System.identityHashCode(obj)) ^ i11;
    }

    @Override
    public final Object setValue(Object obj) {
        Object[] objArr = this.f42259c.f43525c;
        int i10 = this.f42258b;
        Object obj2 = objArr[i10];
        objArr[i10] = obj;
        return obj2;
    }

    public final String toString() {
        return this.f42259c.f43524b[this.f42258b] + "=>" + this.f42259c.f43525c[this.f42258b];
    }
}
