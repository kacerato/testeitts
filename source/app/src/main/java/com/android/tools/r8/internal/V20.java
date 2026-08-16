package com.android.tools.r8.internal;

import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.SortedSet;

public final class V20 extends AbstractC7686i1 {

    public final C6692c30 f44945b;

    public V20(C6692c30 c6692c30) {
        this.f44945b = c6692c30;
    }

    @Override
    public final void clear() {
        this.f44945b.clear();
    }

    @Override
    public final Comparator comparator() {
        return ((P20) this.f44945b.f46952i.i()).f43107b;
    }

    @Override
    public final boolean contains(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        R20 d10 = this.f44945b.f46952i.d(entry.getKey());
        return d10 != null && this.f44945b.d(d10.f43785b) && entry.equals(d10);
    }

    @Override
    public final Object first() {
        return this.f44945b.j();
    }

    @Override
    public final SortedSet headSet(Object obj) {
        return this.f44945b.headMap(((N20) obj).getKey()).i();
    }

    @Override
    public final boolean isEmpty() {
        C6692c30 c6692c30 = this.f44945b;
        R20 r20 = c6692c30.f46952i.f47838d;
        return !(c6692c30.j() != null);
    }

    @Override
    public final InterfaceC9861v30 iterator() {
        return new Y20(this.f44945b);
    }

    @Override
    public final Object last() {
        return this.f44945b.k();
    }

    @Override
    public final boolean remove(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        R20 d10 = this.f44945b.f46952i.d(((Map.Entry) obj).getKey());
        if (d10 != null && this.f44945b.d(d10.f43785b)) {
            this.f44945b.remove(d10.f43785b);
        }
        return d10 != null;
    }

    @Override
    public final int size() {
        Y20 y20 = new Y20(this.f44945b);
        int i10 = 0;
        while (y20.hasNext()) {
            i10++;
            y20.next();
        }
        return i10;
    }

    @Override
    public final SortedSet subSet(Object obj, Object obj2) {
        return this.f44945b.subMap(((N20) obj).getKey(), ((N20) obj2).getKey()).i();
    }

    @Override
    public final SortedSet tailSet(Object obj) {
        return this.f44945b.tailMap(((N20) obj).getKey()).i();
    }

    @Override
    public final A30 iterator() {
        return new Y20(this.f44945b);
    }

    @Override
    public final Iterator iterator() {
        return new Y20(this.f44945b);
    }
}
