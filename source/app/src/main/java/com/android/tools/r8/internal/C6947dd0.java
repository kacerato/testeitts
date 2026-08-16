package com.android.tools.r8.internal;

import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.SortedSet;

public final class C6947dd0 extends AbstractC7686i1 implements InterfaceC9281rd0 {

    public final C7447gd0 f47437b;

    public C6947dd0(C7447gd0 c7447gd0) {
        this.f47437b = c7447gd0;
    }

    @Override
    public final void clear() {
        this.f47437b.clear();
    }

    @Override
    public final Comparator comparator() {
        return null;
    }

    @Override
    public final boolean contains(Object obj) {
        C7447gd0 c7447gd0;
        Object obj2;
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (entry.getValue() != null && (entry.getValue() instanceof Integer)) {
            Object key = entry.getKey();
            int intValue = ((Integer) entry.getValue()).intValue();
            if (key == null) {
                C7447gd0 c7447gd02 = this.f47437b;
                return c7447gd02.f48311f && c7447gd02.f48309d[c7447gd02.f48315j] == intValue;
            }
            Object[] objArr = this.f47437b.f48308c;
            int a10 = AbstractC7878jA.a(System.identityHashCode(key));
            C7447gd0 c7447gd03 = this.f47437b;
            int i10 = a10 & c7447gd03.f48310e;
            Object obj3 = objArr[i10];
            if (obj3 == null) {
                return false;
            }
            if (key == obj3) {
                return c7447gd03.f48309d[i10] == intValue;
            }
            do {
                c7447gd0 = this.f47437b;
                i10 = (i10 + 1) & c7447gd0.f48310e;
                obj2 = objArr[i10];
                if (obj2 == null) {
                    return false;
                }
            } while (key != obj2);
            if (c7447gd0.f48309d[i10] == intValue) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final Object first() {
        C7447gd0 c7447gd0 = this.f47437b;
        if (c7447gd0.f48317l != 0) {
            return new C6780cd0(c7447gd0, c7447gd0.f48312g);
        }
        throw new NoSuchElementException();
    }

    @Override
    public final SortedSet headSet(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final InterfaceC9861v30 iterator() {
        return new C6298Zc0(this.f47437b);
    }

    @Override
    public final Object last() {
        C7447gd0 c7447gd0 = this.f47437b;
        if (c7447gd0.f48317l != 0) {
            return new C6780cd0(c7447gd0, c7447gd0.f48313h);
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
            C7447gd0 c7447gd0 = this.f47437b;
            if (c7447gd0.f48311f) {
                int[] iArr = c7447gd0.f48309d;
                int i11 = c7447gd0.f48315j;
                if (iArr[i11] == intValue) {
                    c7447gd0.f48311f = false;
                    c7447gd0.f48308c[i11] = null;
                    c7447gd0.f48317l--;
                    c7447gd0.e(i11);
                    if (c7447gd0.f48317l < c7447gd0.f48316k / 4 && (i10 = c7447gd0.f48315j) > 16) {
                        c7447gd0.f(i10 / 2);
                    }
                    return true;
                }
            }
            return false;
        }
        Object[] objArr = this.f47437b.f48308c;
        int a10 = AbstractC7878jA.a(System.identityHashCode(key));
        C7447gd0 c7447gd02 = this.f47437b;
        int i12 = a10 & c7447gd02.f48310e;
        Object obj2 = objArr[i12];
        if (obj2 == null) {
            return false;
        }
        if (obj2 == key) {
            if (c7447gd02.f48309d[i12] != intValue) {
                return false;
            }
            c7447gd02.g(i12);
            return true;
        }
        while (true) {
            C7447gd0 c7447gd03 = this.f47437b;
            i12 = (i12 + 1) & c7447gd03.f48310e;
            Object obj3 = objArr[i12];
            if (obj3 == null) {
                return false;
            }
            if (obj3 == key && c7447gd03.f48309d[i12] == intValue) {
                c7447gd03.g(i12);
                return true;
            }
        }
    }

    @Override
    public final int size() {
        return this.f47437b.f48317l;
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
        return new C6298Zc0(this.f47437b);
    }

    @Override
    public final Iterator iterator() {
        return new C6298Zc0(this.f47437b);
    }
}
