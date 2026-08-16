package com.android.tools.r8.internal;

import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.SortedSet;

public final class C7858j30 extends AbstractC7686i1 {

    public final C8693o30 f49144b;

    public C7858j30(C8693o30 c8693o30) {
        this.f49144b = c8693o30;
    }

    @Override
    public final void clear() {
        this.f49144b.clear();
    }

    @Override
    public final Comparator comparator() {
        return null;
    }

    @Override
    public final boolean contains(Object obj) {
        return this.f49144b.containsKey(obj);
    }

    @Override
    public final Object first() {
        C8693o30 c8693o30 = this.f49144b;
        if (c8693o30.f51156k != 0) {
            return c8693o30.f51147b[c8693o30.f51151f];
        }
        throw new NoSuchElementException();
    }

    @Override
    public final SortedSet headSet(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final InterfaceC9861v30 iterator() {
        return new C7693i30(this.f49144b);
    }

    @Override
    public final Object last() {
        C8693o30 c8693o30 = this.f49144b;
        if (c8693o30.f51156k != 0) {
            return c8693o30.f51147b[c8693o30.f51152g];
        }
        throw new NoSuchElementException();
    }

    @Override
    public final boolean remove(Object obj) {
        C8693o30 c8693o30 = this.f49144b;
        int i10 = c8693o30.f51156k;
        c8693o30.remove(obj);
        return this.f49144b.f51156k != i10;
    }

    @Override
    public final int size() {
        return this.f49144b.f51156k;
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
        return new C7693i30(this.f49144b);
    }

    @Override
    public final Iterator iterator() {
        return new C7693i30(this.f49144b);
    }
}
