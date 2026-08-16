package com.android.tools.r8.internal;

import java.util.Map;

public final class MF implements EF, Map.Entry {

    public int f42246b;

    public final QF f42247c;

    public MF(QF qf2, int i10) {
        this.f42247c = qf2;
        this.f42246b = i10;
    }

    @Override
    public final int a() {
        return this.f42247c.f43511b[this.f42246b];
    }

    @Override
    public final boolean equals(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (this.f42247c.f43511b[this.f42246b] == ((Integer) entry.getKey()).intValue()) {
            Object obj2 = this.f42247c.f43512c[this.f42246b];
            Object value = entry.getValue();
            if (obj2 == null) {
                if (value == null) {
                    return true;
                }
            } else if (obj2.equals(value)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final Object getKey() {
        return Integer.valueOf(this.f42247c.f43511b[this.f42246b]);
    }

    @Override
    public final Object getValue() {
        return this.f42247c.f43512c[this.f42246b];
    }

    @Override
    public final int hashCode() {
        QF qf2 = this.f42247c;
        int[] iArr = qf2.f43511b;
        int i10 = this.f42246b;
        int i11 = iArr[i10];
        Object obj = qf2.f43512c[i10];
        return (obj == null ? 0 : obj.hashCode()) ^ i11;
    }

    @Override
    public final Object setValue(Object obj) {
        Object[] objArr = this.f42247c.f43512c;
        int i10 = this.f42246b;
        Object obj2 = objArr[i10];
        objArr[i10] = obj;
        return obj2;
    }

    public final String toString() {
        return this.f42247c.f43511b[this.f42246b] + "=>" + this.f42247c.f43512c[this.f42246b];
    }
}
