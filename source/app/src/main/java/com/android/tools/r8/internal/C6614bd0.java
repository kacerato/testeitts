package com.android.tools.r8.internal;

import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.SortedSet;

public final class C6614bd0 extends C1 implements InterfaceC6244Yd0 {

    public final C7447gd0 f46807b;

    public C6614bd0(C7447gd0 c7447gd0) {
        this.f46807b = c7447gd0;
    }

    @Override
    public final void clear() {
        this.f46807b.clear();
    }

    @Override
    public final Comparator comparator() {
        return null;
    }

    @Override
    public final boolean contains(Object obj) {
        return this.f46807b.containsKey(obj);
    }

    @Override
    public final Object first() {
        C7447gd0 c7447gd0 = this.f46807b;
        if (c7447gd0.f48317l != 0) {
            return c7447gd0.f48308c[c7447gd0.f48312g];
        }
        throw new NoSuchElementException();
    }

    @Override
    public final SortedSet headSet(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final A30 iterator() {
        return new C6447ad0(this.f46807b);
    }

    @Override
    public final Object last() {
        C7447gd0 c7447gd0 = this.f46807b;
        if (c7447gd0.f48317l != 0) {
            return c7447gd0.f48308c[c7447gd0.f48313h];
        }
        throw new NoSuchElementException();
    }

    @Override
    public final boolean remove(Object obj) {
        C7447gd0 c7447gd0 = this.f46807b;
        int i10 = c7447gd0.f48317l;
        c7447gd0.c(obj);
        return this.f46807b.f48317l != i10;
    }

    @Override
    public final int size() {
        return this.f46807b.f48317l;
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
    public final Iterator iterator() {
        return new C6447ad0(this.f46807b);
    }
}
