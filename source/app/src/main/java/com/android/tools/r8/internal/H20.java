package com.android.tools.r8.internal;

import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.SortedSet;

public final class H20 extends AbstractC7686i1 {

    public final M20 f40666b;

    public H20(M20 m20) {
        this.f40666b = m20;
    }

    @Override
    public final void clear() {
        this.f40666b.clear();
    }

    @Override
    public final Comparator comparator() {
        return null;
    }

    @Override
    public final boolean contains(Object obj) {
        return this.f40666b.containsKey(obj);
    }

    @Override
    public final Object first() {
        M20 m20 = this.f40666b;
        if (m20.f42144l != 0) {
            return m20.f42134b[m20.f42139g];
        }
        throw new NoSuchElementException();
    }

    @Override
    public final SortedSet headSet(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final InterfaceC9861v30 iterator() {
        return new G20(this.f40666b);
    }

    @Override
    public final Object last() {
        M20 m20 = this.f40666b;
        if (m20.f42144l != 0) {
            return m20.f42134b[m20.f42140h];
        }
        throw new NoSuchElementException();
    }

    @Override
    public final boolean remove(Object obj) {
        M20 m20 = this.f40666b;
        int i10 = m20.f42144l;
        m20.remove(obj);
        return this.f40666b.f42144l != i10;
    }

    @Override
    public final int size() {
        return this.f40666b.f42144l;
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
        return new G20(this.f40666b);
    }

    @Override
    public final Iterator iterator() {
        return new G20(this.f40666b);
    }
}
