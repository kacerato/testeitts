package com.android.tools.r8.internal;

import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.SortedSet;

public final class SF extends AbstractC7686i1 {

    public final RF f44165b = new RF(this);

    public final C7731iG f44166c;

    public SF(C7731iG c7731iG) {
        this.f44166c = c7731iG;
    }

    @Override
    public final void clear() {
        this.f44166c.clear();
    }

    @Override
    public final Comparator comparator() {
        return this.f44165b;
    }

    @Override
    public final boolean contains(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (entry.getKey() == null || !(entry.getKey() instanceof Integer)) {
            return false;
        }
        return entry.equals(this.f44166c.d(((Integer) entry.getKey()).intValue()));
    }

    @Override
    public final Object first() {
        return this.f44166c.f48899d;
    }

    @Override
    public final SortedSet headSet(Object obj) {
        return ((C7230fG) this.f44166c.c(((EF) obj).a())).b();
    }

    @Override
    public final InterfaceC9861v30 iterator() {
        return new VF(this.f44166c);
    }

    @Override
    public final Object last() {
        return this.f44166c.f48900e;
    }

    @Override
    public final boolean remove(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (entry.getKey() != null && (entry.getKey() instanceof Integer)) {
            UF d10 = this.f44166c.d(((Integer) entry.getKey()).intValue());
            if (d10 != null) {
                this.f44166c.remove(d10.f42116b);
            }
            if (d10 != null) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final int size() {
        return this.f44166c.f48898c;
    }

    @Override
    public final SortedSet subSet(Object obj, Object obj2) {
        C7731iG c7731iG = this.f44166c;
        int a10 = ((EF) obj).a();
        int a11 = ((EF) obj2).a();
        c7731iG.getClass();
        return new C7230fG(c7731iG, a10, false, a11, false).b();
    }

    @Override
    public final SortedSet tailSet(Object obj) {
        return ((C7230fG) this.f44166c.b(((EF) obj).a())).b();
    }

    @Override
    public final A30 iterator() {
        return new VF(this.f44166c);
    }

    @Override
    public final Iterator iterator() {
        return new VF(this.f44166c);
    }
}
