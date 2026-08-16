package com.android.tools.r8.internal;

import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.SortedSet;

public final class P20 extends AbstractC7686i1 {

    public final O20 f43107b = new O20(this);

    public final C7192f30 f43108c;

    public P20(C7192f30 c7192f30) {
        this.f43108c = c7192f30;
    }

    @Override
    public final void clear() {
        this.f43108c.clear();
    }

    @Override
    public final Comparator comparator() {
        return this.f43107b;
    }

    @Override
    public final boolean contains(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return entry.equals(this.f43108c.d(entry.getKey()));
    }

    @Override
    public final Object first() {
        return this.f43108c.f47838d;
    }

    @Override
    public final SortedSet headSet(Object obj) {
        return this.f43108c.headMap(((N20) obj).getKey()).i();
    }

    @Override
    public final InterfaceC9861v30 iterator() {
        return new S20(this.f43108c);
    }

    @Override
    public final Object last() {
        return this.f43108c.f47839e;
    }

    @Override
    public final boolean remove(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        R20 d10 = this.f43108c.d(((Map.Entry) obj).getKey());
        if (d10 != null) {
            this.f43108c.remove(d10.f43785b);
        }
        return d10 != null;
    }

    @Override
    public final int size() {
        return this.f43108c.f47837c;
    }

    @Override
    public final SortedSet subSet(Object obj, Object obj2) {
        C7192f30 c7192f30 = this.f43108c;
        Object key = ((N20) obj).getKey();
        Object key2 = ((N20) obj2).getKey();
        c7192f30.getClass();
        return new C6692c30(c7192f30, key, false, key2, false).i();
    }

    @Override
    public final SortedSet tailSet(Object obj) {
        return this.f43108c.tailMap(((N20) obj).getKey()).i();
    }

    @Override
    public final A30 iterator() {
        return new S20(this.f43108c);
    }

    @Override
    public final Iterator iterator() {
        return new S20(this.f43108c);
    }
}
