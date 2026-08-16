package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.Map;

public final class C9190r20 extends AbstractC7519h1 {

    public final C9691u20 f51951b;

    public C9190r20(C9691u20 c9691u20) {
        this.f51951b = c9691u20;
    }

    @Override
    public final void clear() {
        this.f51951b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        Object obj2;
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (entry.getValue() != null && (entry.getValue() instanceof Integer)) {
            Object key = entry.getKey();
            int intValue = ((Integer) entry.getValue()).intValue();
            if (key == null) {
                C9691u20 c9691u20 = this.f51951b;
                return c9691u20.f52765f && c9691u20.f52763d[c9691u20.f52766g] == intValue;
            }
            Object[] objArr = this.f51951b.f52762c;
            int a10 = AbstractC7878jA.a(key.hashCode()) & this.f51951b.f52764e;
            Object obj3 = objArr[a10];
            if (obj3 == null) {
                return false;
            }
            if (key.equals(obj3)) {
                return this.f51951b.f52763d[a10] == intValue;
            }
            do {
                a10 = (a10 + 1) & this.f51951b.f52764e;
                obj2 = objArr[a10];
                if (obj2 == null) {
                    return false;
                }
            } while (!key.equals(obj2));
            if (this.f51951b.f52763d[a10] == intValue) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final A30 iterator() {
        return new C8523n20(this.f51951b);
    }

    @Override
    public final boolean remove(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (entry.getValue() == null || !(entry.getValue() instanceof Integer)) {
            return false;
        }
        Object key = entry.getKey();
        int intValue = ((Integer) entry.getValue()).intValue();
        if (key == null) {
            C9691u20 c9691u20 = this.f51951b;
            if (c9691u20.f52765f) {
                int[] iArr = c9691u20.f52763d;
                int i10 = c9691u20.f52766g;
                if (iArr[i10] == intValue) {
                    c9691u20.f52765f = false;
                    c9691u20.f52762c[i10] = null;
                    int i11 = c9691u20.f52768i - 1;
                    c9691u20.f52768i = i11;
                    if (i11 < c9691u20.f52767h / 4 && i10 > 16) {
                        c9691u20.e(i10 / 2);
                    }
                    return true;
                }
            }
            return false;
        }
        Object[] objArr = this.f51951b.f52762c;
        int a10 = AbstractC7878jA.a(key.hashCode()) & this.f51951b.f52764e;
        Object obj2 = objArr[a10];
        if (obj2 == null) {
            return false;
        }
        if (obj2.equals(key)) {
            C9691u20 c9691u202 = this.f51951b;
            if (c9691u202.f52763d[a10] != intValue) {
                return false;
            }
            c9691u202.f(a10);
            return true;
        }
        while (true) {
            a10 = (a10 + 1) & this.f51951b.f52764e;
            Object obj3 = objArr[a10];
            if (obj3 == null) {
                return false;
            }
            if (obj3.equals(key)) {
                C9691u20 c9691u203 = this.f51951b;
                if (c9691u203.f52763d[a10] == intValue) {
                    c9691u203.f(a10);
                    return true;
                }
            }
        }
    }

    @Override
    public final int size() {
        return this.f51951b.f52768i;
    }

    @Override
    public final Iterator iterator() {
        return new C8523n20(this.f51951b);
    }
}
