package com.android.tools.r8.internal;

import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.SortedSet;

public final class C8192l30 extends AbstractC7686i1 {

    public final C8693o30 f49875b;

    public C8192l30(C8693o30 c8693o30) {
        this.f49875b = c8693o30;
    }

    @Override
    public final void clear() {
        this.f49875b.clear();
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
        Object key = entry.getKey();
        Object value = entry.getValue();
        if (key == null) {
            C8693o30 c8693o30 = this.f49875b;
            return c8693o30.f51150e && c8693o30.f51148c[c8693o30.f51154i] == value;
        }
        Object[] objArr = this.f49875b.f51147b;
        int a10 = AbstractC7878jA.a(key.hashCode()) & this.f49875b.f51149d;
        Object obj3 = objArr[a10];
        if (obj3 == null) {
            return false;
        }
        if (key.equals(obj3)) {
            return this.f49875b.f51148c[a10] == value;
        }
        do {
            a10 = (a10 + 1) & this.f49875b.f51149d;
            obj2 = objArr[a10];
            if (obj2 == null) {
                return false;
            }
        } while (!key.equals(obj2));
        return this.f49875b.f51148c[a10] == value;
    }

    @Override
    public final Object first() {
        C8693o30 c8693o30 = this.f49875b;
        if (c8693o30.f51156k != 0) {
            return new C8025k30(c8693o30, c8693o30.f51151f);
        }
        throw new NoSuchElementException();
    }

    @Override
    public final SortedSet headSet(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final InterfaceC9861v30 iterator() {
        return new C7526h30(this.f49875b);
    }

    @Override
    public final Object last() {
        C8693o30 c8693o30 = this.f49875b;
        if (c8693o30.f51156k != 0) {
            return new C8025k30(c8693o30, c8693o30.f51152g);
        }
        throw new NoSuchElementException();
    }

    @Override
    public final boolean remove(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Object key = entry.getKey();
        Object value = entry.getValue();
        if (key == null) {
            C8693o30 c8693o30 = this.f49875b;
            if (!c8693o30.f51150e || c8693o30.f51148c[c8693o30.f51154i] != value) {
                return false;
            }
            c8693o30.e();
            return true;
        }
        Object[] objArr = this.f49875b.f51147b;
        int a10 = AbstractC7878jA.a(key.hashCode()) & this.f49875b.f51149d;
        Object obj2 = objArr[a10];
        if (obj2 == null) {
            return false;
        }
        if (obj2.equals(key)) {
            C8693o30 c8693o302 = this.f49875b;
            if (c8693o302.f51148c[a10] != value) {
                return false;
            }
            c8693o302.f(a10);
            return true;
        }
        while (true) {
            a10 = (a10 + 1) & this.f49875b.f51149d;
            Object obj3 = objArr[a10];
            if (obj3 == null) {
                return false;
            }
            if (obj3.equals(key)) {
                C8693o30 c8693o303 = this.f49875b;
                if (c8693o303.f51148c[a10] == value) {
                    c8693o303.f(a10);
                    return true;
                }
            }
        }
    }

    @Override
    public final int size() {
        return this.f49875b.f51156k;
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
        return new C7526h30(this.f49875b);
    }

    @Override
    public final Iterator iterator() {
        return new C7526h30(this.f49875b);
    }
}
