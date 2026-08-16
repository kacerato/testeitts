package com.android.tools.r8.internal;

import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.SortedSet;

public final class C7523h20 extends AbstractC7686i1 {

    public final C8022k20 f48416b;

    public C7523h20(C8022k20 c8022k20) {
        this.f48416b = c8022k20;
    }

    @Override
    public final void clear() {
        this.f48416b.clear();
    }

    @Override
    public final Comparator comparator() {
        return null;
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
                C8022k20 c8022k20 = this.f48416b;
                return c8022k20.f49459f && c8022k20.f49457d[c8022k20.f49463j] == intValue;
            }
            Object[] objArr = this.f48416b.f49456c;
            int a10 = AbstractC7878jA.a(key.hashCode()) & this.f48416b.f49458e;
            Object obj3 = objArr[a10];
            if (obj3 == null) {
                return false;
            }
            if (key.equals(obj3)) {
                return this.f48416b.f49457d[a10] == intValue;
            }
            do {
                a10 = (a10 + 1) & this.f48416b.f49458e;
                obj2 = objArr[a10];
                if (obj2 == null) {
                    return false;
                }
            } while (!key.equals(obj2));
            if (this.f48416b.f49457d[a10] == intValue) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final Object first() {
        C8022k20 c8022k20 = this.f48416b;
        if (c8022k20.f49465l != 0) {
            return new C7356g20(c8022k20, c8022k20.f49460g);
        }
        throw new NoSuchElementException();
    }

    @Override
    public final SortedSet headSet(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final InterfaceC9861v30 iterator() {
        return new C6856d20(this.f48416b);
    }

    @Override
    public final Object last() {
        C8022k20 c8022k20 = this.f48416b;
        if (c8022k20.f49465l != 0) {
            return new C7356g20(c8022k20, c8022k20.f49461h);
        }
        throw new NoSuchElementException();
    }

    @Override
    public final boolean remove(Object obj) {
        int i10;
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
            C8022k20 c8022k20 = this.f48416b;
            if (c8022k20.f49459f) {
                int[] iArr = c8022k20.f49457d;
                int i11 = c8022k20.f49463j;
                if (iArr[i11] == intValue) {
                    c8022k20.f49459f = false;
                    c8022k20.f49456c[i11] = null;
                    c8022k20.f49465l--;
                    c8022k20.e(i11);
                    if (c8022k20.f49465l < c8022k20.f49464k / 4 && (i10 = c8022k20.f49463j) > 16) {
                        c8022k20.f(i10 / 2);
                    }
                    return true;
                }
            }
            return false;
        }
        Object[] objArr = this.f48416b.f49456c;
        int a10 = AbstractC7878jA.a(key.hashCode()) & this.f48416b.f49458e;
        Object obj2 = objArr[a10];
        if (obj2 == null) {
            return false;
        }
        if (obj2.equals(key)) {
            C8022k20 c8022k202 = this.f48416b;
            if (c8022k202.f49457d[a10] != intValue) {
                return false;
            }
            c8022k202.g(a10);
            return true;
        }
        while (true) {
            a10 = (a10 + 1) & this.f48416b.f49458e;
            Object obj3 = objArr[a10];
            if (obj3 == null) {
                return false;
            }
            if (obj3.equals(key)) {
                C8022k20 c8022k203 = this.f48416b;
                if (c8022k203.f49457d[a10] == intValue) {
                    c8022k203.g(a10);
                    return true;
                }
            }
        }
    }

    @Override
    public final int size() {
        return this.f48416b.f49465l;
    }

    @Override
    public final SortedSet subSet(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final SortedSet tailSet(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final A30 iterator() {
        return new C6856d20(this.f48416b);
    }

    @Override
    public final Iterator iterator() {
        return new C6856d20(this.f48416b);
    }
}
