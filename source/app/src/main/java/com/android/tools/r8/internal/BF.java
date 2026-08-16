package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.Map;

public final class BF extends AbstractC7519h1 {

    public final CF f38862b;

    public BF(CF cf2) {
        this.f38862b = cf2;
    }

    @Override
    public final boolean contains(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (entry.getKey() != null && (entry.getKey() instanceof Integer)) {
            int intValue = ((Integer) entry.getKey()).intValue();
            if (this.f38862b.a(intValue)) {
                if (this.f38862b.get(intValue) == null) {
                    if (entry.getValue() == null) {
                        return true;
                    }
                } else if (this.f38862b.get(intValue).equals(entry.getValue())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override
    public final A30 iterator() {
        return new AF(this);
    }

    @Override
    public final boolean remove(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (entry.getKey() != null && (entry.getKey() instanceof Integer)) {
            int intValue = ((Integer) entry.getKey()).intValue();
            Object value = entry.getValue();
            int d10 = this.f38862b.d(intValue);
            if (d10 != -1 && (value != null ? value.equals(this.f38862b.f39173c[d10]) : this.f38862b.f39173c[d10] == null)) {
                CF cf2 = this.f38862b;
                int i10 = (cf2.f39174d - d10) - 1;
                int[] iArr = cf2.f39172b;
                int i11 = d10 + 1;
                System.arraycopy(iArr, i11, iArr, d10, i10);
                Object[] objArr = this.f38862b.f39173c;
                System.arraycopy(objArr, i11, objArr, d10, i10);
                CF cf3 = this.f38862b;
                int i12 = cf3.f39174d - 1;
                cf3.f39174d = i12;
                cf3.f39173c[i12] = null;
                return true;
            }
        }
        return false;
    }

    @Override
    public final int size() {
        return this.f38862b.f39174d;
    }

    @Override
    public final Iterator iterator() {
        return new AF(this);
    }
}
