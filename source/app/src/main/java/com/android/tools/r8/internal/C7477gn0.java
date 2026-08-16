package com.android.tools.r8.internal;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;

public final class C7477gn0 extends AbstractSet {

    public final C6036Um0 f48361b;

    public C7477gn0(C6036Um0 c6036Um0) {
        this.f48361b = c6036Um0;
    }

    @Override
    public final boolean add(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        if (contains(entry)) {
            return false;
        }
        this.f48361b.put((Comparable) entry.getKey(), entry.getValue());
        return true;
    }

    @Override
    public final void clear() {
        this.f48361b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        Object obj2 = this.f48361b.get(entry.getKey());
        Object value = entry.getValue();
        if (obj2 != value) {
            return obj2 != null && obj2.equals(value);
        }
        return true;
    }

    @Override
    public final Iterator iterator() {
        return new C7143en0(this.f48361b);
    }

    @Override
    public final boolean remove(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        if (!contains(entry)) {
            return false;
        }
        this.f48361b.remove(entry.getKey());
        return true;
    }

    @Override
    public final int size() {
        return this.f48361b.size();
    }
}
