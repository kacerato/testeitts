package com.android.tools.r8.internal;

import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.SortedSet;

public final class J20 extends AbstractC7686i1 {

    public final M20 f41275b;

    public J20(M20 m20) {
        this.f41275b = m20;
    }

    @Override
    public final void clear() {
        this.f41275b.clear();
    }

    @Override
    public final Comparator comparator() {
        return null;
    }

    @Override
    public final boolean contains(Object obj) {
        M20 m20;
        Object obj2;
        Object obj3;
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Object key = entry.getKey();
        Object value = entry.getValue();
        if (this.f41275b.f42138f.a(key, null)) {
            M20 m202 = this.f41275b;
            return m202.f42137e && ((obj3 = m202.f42135c[m202.f42142j]) != null ? obj3.equals(value) : value == null);
        }
        M20 m203 = this.f41275b;
        Object[] objArr = m203.f42134b;
        int a10 = AbstractC7878jA.a(m203.f42138f.a(key));
        M20 m204 = this.f41275b;
        int i10 = a10 & m204.f42136d;
        Object obj4 = objArr[i10];
        if (obj4 == null) {
            return false;
        }
        if (m204.f42138f.a(key, obj4)) {
            Object obj5 = this.f41275b.f42135c[i10];
            return obj5 == null ? value == null : obj5.equals(value);
        }
        do {
            m20 = this.f41275b;
            i10 = (i10 + 1) & m20.f42136d;
            obj2 = objArr[i10];
            if (obj2 == null) {
                return false;
            }
        } while (!m20.f42138f.a(key, obj2));
        Object obj6 = this.f41275b.f42135c[i10];
        return obj6 == null ? value == null : obj6.equals(value);
    }

    @Override
    public final Object first() {
        M20 m20 = this.f41275b;
        if (m20.f42144l != 0) {
            return new I20(m20, m20.f42139g);
        }
        throw new NoSuchElementException();
    }

    @Override
    public final SortedSet headSet(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final InterfaceC9861v30 iterator() {
        return new F20(this.f41275b);
    }

    @Override
    public final Object last() {
        M20 m20 = this.f41275b;
        if (m20.f42144l != 0) {
            return new I20(m20, m20.f42140h);
        }
        throw new NoSuchElementException();
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0096, code lost:
    
        r7.f41275b.f(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x009b, code lost:
    
        return true;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean remove(Object obj) {
        Object obj2;
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Object key = entry.getKey();
        Object value = entry.getValue();
        if (this.f41275b.f42138f.a(key, null)) {
            M20 m20 = this.f41275b;
            if (!m20.f42137e || ((obj2 = m20.f42135c[m20.f42142j]) != null ? !obj2.equals(value) : value != null)) {
                return false;
            }
            this.f41275b.j();
            return true;
        }
        M20 m202 = this.f41275b;
        Object[] objArr = m202.f42134b;
        int a10 = AbstractC7878jA.a(m202.f42138f.a(key));
        M20 m203 = this.f41275b;
        int i10 = a10 & m203.f42136d;
        Object obj3 = objArr[i10];
        if (obj3 == null) {
            return false;
        }
        if (m203.f42138f.a(obj3, key)) {
            Object obj4 = this.f41275b.f42135c[i10];
            if (obj4 != null ? !obj4.equals(value) : value != null) {
                return false;
            }
            this.f41275b.f(i10);
            return true;
        }
        while (true) {
            M20 m204 = this.f41275b;
            i10 = (i10 + 1) & m204.f42136d;
            Object obj5 = objArr[i10];
            if (obj5 == null) {
                return false;
            }
            if (m204.f42138f.a(obj5, key)) {
                Object obj6 = this.f41275b.f42135c[i10];
                if (obj6 == null) {
                    if (value == null) {
                        break;
                    }
                } else if (obj6.equals(value)) {
                    break;
                }
            }
        }
    }

    @Override
    public final int size() {
        return this.f41275b.f42144l;
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
        return new F20(this.f41275b);
    }

    @Override
    public final Iterator iterator() {
        return new F20(this.f41275b);
    }
}
