package com.android.tools.r8.internal;

import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.SortedSet;

public final class C8564nG extends AbstractC7686i1 {

    public final C8397mG f50572b = new C8397mG(this);

    public final DG f50573c;

    public C8564nG(DG dg2) {
        this.f50573c = dg2;
    }

    @Override
    public final void clear() {
        this.f50573c.clear();
    }

    @Override
    public final Comparator comparator() {
        return this.f50572b;
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
        return entry.equals(this.f50573c.d(((Integer) entry.getKey()).intValue()));
    }

    @Override
    public final Object first() {
        return this.f50573c.f39475d;
    }

    @Override
    public final SortedSet headSet(Object obj) {
        return ((AG) this.f50573c.c(((RG) obj).a())).c();
    }

    @Override
    public final InterfaceC9861v30 iterator() {
        return new C9065qG(this.f50573c);
    }

    @Override
    public final Object last() {
        return this.f50573c.f39476e;
    }

    @Override
    public final boolean remove(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (entry.getKey() != null && (entry.getKey() instanceof Integer)) {
            C8898pG d10 = this.f50573c.d(((Integer) entry.getKey()).intValue());
            if (d10 != null) {
                this.f50573c.remove(d10.f44050b);
            }
            if (d10 != null) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final int size() {
        return this.f50573c.f39474c;
    }

    @Override
    public final SortedSet subSet(Object obj, Object obj2) {
        DG dg2 = this.f50573c;
        int a10 = ((RG) obj).a();
        int a11 = ((RG) obj2).a();
        dg2.getClass();
        return new AG(dg2, a10, false, a11, false).c();
    }

    @Override
    public final SortedSet tailSet(Object obj) {
        return ((AG) this.f50573c.b(((RG) obj).a())).c();
    }

    @Override
    public final A30 iterator() {
        return new C9065qG(this.f50573c);
    }

    @Override
    public final Iterator iterator() {
        return new C9065qG(this.f50573c);
    }
}
