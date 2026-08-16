package com.android.tools.r8.internal;

import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.SortedSet;

public final class C7189f20 extends AbstractC7686i1 {

    public final C8022k20 f47823b;

    public C7189f20(C8022k20 c8022k20) {
        this.f47823b = c8022k20;
    }

    @Override
    public final void clear() {
        this.f47823b.clear();
    }

    @Override
    public final Comparator comparator() {
        return null;
    }

    @Override
    public final boolean contains(Object obj) {
        return this.f47823b.containsKey(obj);
    }

    @Override
    public final Object first() {
        C8022k20 c8022k20 = this.f47823b;
        if (c8022k20.f49465l != 0) {
            return c8022k20.f49456c[c8022k20.f49460g];
        }
        throw new NoSuchElementException();
    }

    @Override
    public final SortedSet headSet(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final InterfaceC9861v30 iterator() {
        return new C7022e20(this.f47823b);
    }

    @Override
    public final Object last() {
        C8022k20 c8022k20 = this.f47823b;
        if (c8022k20.f49465l != 0) {
            return c8022k20.f49456c[c8022k20.f49461h];
        }
        throw new NoSuchElementException();
    }

    @Override
    public final boolean remove(Object obj) {
        C8022k20 c8022k20 = this.f47823b;
        int i10 = c8022k20.f49465l;
        c8022k20.c(obj);
        return this.f47823b.f49465l != i10;
    }

    @Override
    public final int size() {
        return this.f47823b.f49465l;
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
        return new C7022e20(this.f47823b);
    }

    @Override
    public final Iterator iterator() {
        return new C7022e20(this.f47823b);
    }
}
