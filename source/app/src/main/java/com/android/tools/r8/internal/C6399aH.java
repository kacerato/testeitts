package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.Map;

public final class C6399aH extends AbstractC7519h1 {

    public final C6899dH f46484b;

    public C6399aH(C6899dH c6899dH) {
        this.f46484b = c6899dH;
    }

    @Override
    public final void clear() {
        this.f46484b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        C6899dH c6899dH;
        int i10;
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (entry.getKey() != null && (entry.getKey() instanceof Integer)) {
            int intValue = ((Integer) entry.getKey()).intValue();
            Object value = entry.getValue();
            if (intValue == 0) {
                C6899dH c6899dH2 = this.f46484b;
                return c6899dH2.f47343e && c6899dH2.f47341c[c6899dH2.f47344f] == value;
            }
            int[] iArr = this.f46484b.f47340b;
            int a10 = AbstractC7878jA.a(intValue);
            C6899dH c6899dH3 = this.f46484b;
            int i11 = a10 & c6899dH3.f47342d;
            int i12 = iArr[i11];
            if (i12 == 0) {
                return false;
            }
            if (intValue == i12) {
                return c6899dH3.f47341c[i11] == value;
            }
            do {
                c6899dH = this.f46484b;
                i11 = (i11 + 1) & c6899dH.f47342d;
                i10 = iArr[i11];
                if (i10 == 0) {
                    return false;
                }
            } while (intValue != i10);
            if (c6899dH.f47341c[i11] == value) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final A30 iterator() {
        return new WG(this.f46484b);
    }

    @Override
    public final boolean remove(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (entry.getKey() == null || !(entry.getKey() instanceof Integer)) {
            return false;
        }
        int intValue = ((Integer) entry.getKey()).intValue();
        Object value = entry.getValue();
        if (intValue == 0) {
            C6899dH c6899dH = this.f46484b;
            if (c6899dH.f47343e) {
                Object[] objArr = c6899dH.f47341c;
                int i10 = c6899dH.f47344f;
                if (objArr[i10] == value) {
                    c6899dH.f47343e = false;
                    objArr[i10] = null;
                    int i11 = c6899dH.f47346h - 1;
                    c6899dH.f47346h = i11;
                    if (i11 < c6899dH.f47345g / 4 && i10 > 16) {
                        c6899dH.d(i10 / 2);
                    }
                    return true;
                }
            }
            return false;
        }
        int[] iArr = this.f46484b.f47340b;
        int a10 = AbstractC7878jA.a(intValue);
        C6899dH c6899dH2 = this.f46484b;
        int i12 = a10 & c6899dH2.f47342d;
        int i13 = iArr[i12];
        if (i13 == 0) {
            return false;
        }
        if (i13 == intValue) {
            if (c6899dH2.f47341c[i12] != value) {
                return false;
            }
            c6899dH2.e(i12);
            return true;
        }
        while (true) {
            C6899dH c6899dH3 = this.f46484b;
            i12 = (i12 + 1) & c6899dH3.f47342d;
            int i14 = iArr[i12];
            if (i14 == 0) {
                return false;
            }
            if (i14 == intValue && c6899dH3.f47341c[i12] == value) {
                c6899dH3.e(i12);
                return true;
            }
        }
    }

    @Override
    public final int size() {
        return this.f46484b.f47346h;
    }

    @Override
    public final Iterator iterator() {
        return new WG(this.f46484b);
    }
}
