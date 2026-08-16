package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.Map;

public final class C8614nd0 extends AbstractC7519h1 {

    public final C9115qd0 f51007b;

    public C8614nd0(C9115qd0 c9115qd0) {
        this.f51007b = c9115qd0;
    }

    @Override
    public final void clear() {
        this.f51007b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        C9115qd0 c9115qd0;
        Object obj2;
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (entry.getValue() != null && (entry.getValue() instanceof Integer)) {
            Object key = entry.getKey();
            int intValue = ((Integer) entry.getValue()).intValue();
            if (key == null) {
                C9115qd0 c9115qd02 = this.f51007b;
                return c9115qd02.f51825f && c9115qd02.f51823d[c9115qd02.f51826g] == intValue;
            }
            Object[] objArr = this.f51007b.f51822c;
            int a10 = AbstractC7878jA.a(System.identityHashCode(key));
            C9115qd0 c9115qd03 = this.f51007b;
            int i10 = a10 & c9115qd03.f51824e;
            Object obj3 = objArr[i10];
            if (obj3 == null) {
                return false;
            }
            if (key == obj3) {
                return c9115qd03.f51823d[i10] == intValue;
            }
            do {
                c9115qd0 = this.f51007b;
                i10 = (i10 + 1) & c9115qd0.f51824e;
                obj2 = objArr[i10];
                if (obj2 == null) {
                    return false;
                }
            } while (key != obj2);
            if (c9115qd0.f51823d[i10] == intValue) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final A30 iterator() {
        return new C7946jd0(this.f51007b);
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
            C9115qd0 c9115qd0 = this.f51007b;
            if (c9115qd0.f51825f) {
                int[] iArr = c9115qd0.f51823d;
                int i10 = c9115qd0.f51826g;
                if (iArr[i10] == intValue) {
                    c9115qd0.f51825f = false;
                    c9115qd0.f51822c[i10] = null;
                    int i11 = c9115qd0.f51828i - 1;
                    c9115qd0.f51828i = i11;
                    if (i11 < c9115qd0.f51827h / 4 && i10 > 16) {
                        c9115qd0.e(i10 / 2);
                    }
                    return true;
                }
            }
            return false;
        }
        Object[] objArr = this.f51007b.f51822c;
        int a10 = AbstractC7878jA.a(System.identityHashCode(key));
        C9115qd0 c9115qd02 = this.f51007b;
        int i12 = a10 & c9115qd02.f51824e;
        Object obj2 = objArr[i12];
        if (obj2 == null) {
            return false;
        }
        if (obj2 == key) {
            if (c9115qd02.f51823d[i12] != intValue) {
                return false;
            }
            c9115qd02.f(i12);
            return true;
        }
        while (true) {
            C9115qd0 c9115qd03 = this.f51007b;
            i12 = (i12 + 1) & c9115qd03.f51824e;
            Object obj3 = objArr[i12];
            if (obj3 == null) {
                return false;
            }
            if (obj3 == key && c9115qd03.f51823d[i12] == intValue) {
                c9115qd03.f(i12);
                return true;
            }
        }
    }

    @Override
    public final int size() {
        return this.f51007b.f51828i;
    }

    @Override
    public final Iterator iterator() {
        return new C7946jd0(this.f51007b);
    }
}
