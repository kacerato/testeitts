package com.android.tools.r8.internal;

import java.util.Comparator;
import java.util.SortedSet;

public abstract class Z0 extends AbstractC7686i1 {

    public final AbstractC6352a1 f46140b;

    public Z0(AbstractC6352a1 abstractC6352a1) {
        this.f46140b = abstractC6352a1;
    }

    @Override
    public final void clear() {
        this.f46140b.clear();
    }

    @Override
    public final Comparator comparator() {
        this.f46140b.comparator();
        return null;
    }

    @Override
    public final boolean contains(Object obj) {
        return this.f46140b.containsKey(obj);
    }

    @Override
    public final Object first() {
        return this.f46140b.firstKey();
    }

    @Override
    public final SortedSet headSet(Object obj) {
        return this.f46140b.headMap(obj).o();
    }

    @Override
    public final Object last() {
        return this.f46140b.lastKey();
    }

    @Override
    public final int size() {
        return this.f46140b.size();
    }

    @Override
    public final SortedSet subSet(Object obj, Object obj2) {
        return this.f46140b.subMap(obj, obj2).o();
    }

    @Override
    public final SortedSet tailSet(Object obj) {
        return this.f46140b.tailMap(obj).o();
    }
}
