package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.Map;

public final class LE extends AbstractC7519h1 {

    public final ME f41924b;

    public LE(ME me2) {
        this.f41924b = me2;
    }

    @Override
    public final boolean contains(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (entry.getKey() != null && (entry.getKey() instanceof Integer) && entry.getValue() != null && (entry.getValue() instanceof Integer)) {
            int intValue = ((Integer) entry.getKey()).intValue();
            if (this.f41924b.a(intValue) && this.f41924b.get(intValue) == ((Integer) entry.getValue()).intValue()) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final A30 iterator() {
        return new KE(this);
    }

    @Override
    public final boolean remove(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (entry.getKey() == null || !(entry.getKey() instanceof Integer) || entry.getValue() == null || !(entry.getValue() instanceof Integer)) {
            return false;
        }
        int intValue = ((Integer) entry.getKey()).intValue();
        int intValue2 = ((Integer) entry.getValue()).intValue();
        int e10 = this.f41924b.e(intValue);
        if (e10 == -1) {
            return false;
        }
        ME me2 = this.f41924b;
        if (intValue2 != me2.f42242d[e10]) {
            return false;
        }
        int i10 = (me2.f42243e - e10) - 1;
        int[] iArr = me2.f42241c;
        int i11 = e10 + 1;
        System.arraycopy(iArr, i11, iArr, e10, i10);
        int[] iArr2 = this.f41924b.f42242d;
        System.arraycopy(iArr2, i11, iArr2, e10, i10);
        this.f41924b.f42243e--;
        return true;
    }

    @Override
    public final int size() {
        return this.f41924b.f42243e;
    }

    @Override
    public final Iterator iterator() {
        return new KE(this);
    }
}
