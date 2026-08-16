package com.android.tools.r8.internal;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;

public final class C7644hn0 extends AbstractSet {

    public final AbstractC7810in0 f48714b;

    public C7644hn0(AbstractC7810in0 abstractC7810in0) {
        this.f48714b = abstractC7810in0;
    }

    @Override
    public final boolean add(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        if (contains(entry)) {
            return false;
        }
        this.f48714b.a((Comparable) entry.getKey(), entry.getValue());
        return true;
    }

    @Override
    public final void clear() {
        this.f48714b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        Object obj2 = this.f48714b.get(entry.getKey());
        Object value = entry.getValue();
        if (obj2 != value) {
            return obj2 != null && obj2.equals(value);
        }
        return true;
    }

    @Override
    public final Iterator iterator() {
        return new C7310fn0(this.f48714b);
    }

    @Override
    public final boolean remove(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        if (!contains(entry)) {
            return false;
        }
        this.f48714b.remove(entry.getKey());
        return true;
    }

    @Override
    public final int size() {
        return this.f48714b.size();
    }
}
