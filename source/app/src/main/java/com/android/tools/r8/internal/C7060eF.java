package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.Map;

public final class C7060eF extends AbstractC7519h1 {

    public final C7561hF f47649b;

    public C7060eF(C7561hF c7561hF) {
        this.f47649b = c7561hF;
    }

    @Override
    public final void clear() {
        this.f47649b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        C7561hF c7561hF;
        int i10;
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (entry.getKey() != null && (entry.getKey() instanceof Integer) && entry.getValue() != null && (entry.getValue() instanceof Integer)) {
            int intValue = ((Integer) entry.getKey()).intValue();
            int intValue2 = ((Integer) entry.getValue()).intValue();
            if (intValue == 0) {
                C7561hF c7561hF2 = this.f47649b;
                return c7561hF2.f48511f && c7561hF2.f48509d[c7561hF2.f48512g] == intValue2;
            }
            int[] iArr = this.f47649b.f48508c;
            int a10 = AbstractC7878jA.a(intValue);
            C7561hF c7561hF3 = this.f47649b;
            int i11 = a10 & c7561hF3.f48510e;
            int i12 = iArr[i11];
            if (i12 == 0) {
                return false;
            }
            if (intValue == i12) {
                return c7561hF3.f48509d[i11] == intValue2;
            }
            do {
                c7561hF = this.f47649b;
                i11 = (i11 + 1) & c7561hF.f48510e;
                i10 = iArr[i11];
                if (i10 == 0) {
                    return false;
                }
            } while (intValue != i10);
            if (c7561hF.f48509d[i11] == intValue2) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final A30 iterator() {
        return new C6394aF(this.f47649b);
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
        if (intValue == 0) {
            C7561hF c7561hF = this.f47649b;
            if (c7561hF.f48511f) {
                int[] iArr = c7561hF.f48509d;
                int i10 = c7561hF.f48512g;
                if (iArr[i10] == intValue2) {
                    c7561hF.f48511f = false;
                    int i11 = c7561hF.f48514i - 1;
                    c7561hF.f48514i = i11;
                    if (i11 < c7561hF.f48513h / 4 && i10 > 16) {
                        c7561hF.e(i10 / 2);
                    }
                    return true;
                }
            }
            return false;
        }
        int[] iArr2 = this.f47649b.f48508c;
        int a10 = AbstractC7878jA.a(intValue);
        C7561hF c7561hF2 = this.f47649b;
        int i12 = a10 & c7561hF2.f48510e;
        int i13 = iArr2[i12];
        if (i13 == 0) {
            return false;
        }
        if (i13 == intValue) {
            if (c7561hF2.f48509d[i12] != intValue2) {
                return false;
            }
            c7561hF2.f(i12);
            return true;
        }
        while (true) {
            C7561hF c7561hF3 = this.f47649b;
            i12 = (i12 + 1) & c7561hF3.f48510e;
            int i14 = iArr2[i12];
            if (i14 == 0) {
                return false;
            }
            if (i14 == intValue && c7561hF3.f48509d[i12] == intValue2) {
                c7561hF3.f(i12);
                return true;
            }
        }
    }

    @Override
    public final int size() {
        return this.f47649b.f48514i;
    }

    @Override
    public final Iterator iterator() {
        return new C6394aF(this.f47649b);
    }
}
