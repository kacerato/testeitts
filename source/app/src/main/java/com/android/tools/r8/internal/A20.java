package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.Map;

public final class A20 extends AbstractC7519h1 {

    public final D20 f38509b;

    public A20(D20 d20) {
        this.f38509b = d20;
    }

    @Override
    public final void clear() {
        this.f38509b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        Object obj2;
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (entry.getValue() != null && (entry.getValue() instanceof Long)) {
            Object key = entry.getKey();
            long longValue = ((Long) entry.getValue()).longValue();
            if (key == null) {
                D20 d20 = this.f38509b;
                return d20.f39417e && d20.f39415c[d20.f39418f] == longValue;
            }
            Object[] objArr = this.f38509b.f39414b;
            int a10 = AbstractC7878jA.a(key.hashCode()) & this.f38509b.f39416d;
            Object obj3 = objArr[a10];
            if (obj3 == null) {
                return false;
            }
            if (key.equals(obj3)) {
                return this.f38509b.f39415c[a10] == longValue;
            }
            do {
                a10 = (a10 + 1) & this.f38509b.f39416d;
                obj2 = objArr[a10];
                if (obj2 == null) {
                    return false;
                }
            } while (!key.equals(obj2));
            if (this.f38509b.f39415c[a10] == longValue) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final A30 iterator() {
        return new C10025w20(this.f38509b);
    }

    @Override
    public final boolean remove(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (entry.getValue() == null || !(entry.getValue() instanceof Long)) {
            return false;
        }
        Object key = entry.getKey();
        long longValue = ((Long) entry.getValue()).longValue();
        if (key == null) {
            D20 d20 = this.f38509b;
            if (d20.f39417e) {
                long[] jArr = d20.f39415c;
                int i10 = d20.f39418f;
                if (jArr[i10] == longValue) {
                    d20.f39417e = false;
                    d20.f39414b[i10] = null;
                    int i11 = d20.f39420h - 1;
                    d20.f39420h = i11;
                    if (i11 < d20.f39419g / 4 && i10 > 16) {
                        d20.d(i10 / 2);
                    }
                    return true;
                }
            }
            return false;
        }
        Object[] objArr = this.f38509b.f39414b;
        int a10 = AbstractC7878jA.a(key.hashCode()) & this.f38509b.f39416d;
        Object obj2 = objArr[a10];
        if (obj2 == null) {
            return false;
        }
        if (obj2.equals(key)) {
            D20 d202 = this.f38509b;
            if (d202.f39415c[a10] != longValue) {
                return false;
            }
            d202.e(a10);
            return true;
        }
        while (true) {
            a10 = (a10 + 1) & this.f38509b.f39416d;
            Object obj3 = objArr[a10];
            if (obj3 == null) {
                return false;
            }
            if (obj3.equals(key)) {
                D20 d203 = this.f38509b;
                if (d203.f39415c[a10] == longValue) {
                    d203.e(a10);
                    return true;
                }
            }
        }
    }

    @Override
    public final int size() {
        return this.f38509b.f39420h;
    }

    @Override
    public final Iterator iterator() {
        return new C10025w20(this.f38509b);
    }
}
