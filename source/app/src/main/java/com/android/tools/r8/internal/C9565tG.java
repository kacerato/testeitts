package com.android.tools.r8.internal;

import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.SortedSet;

public final class C9565tG extends AbstractC7686i1 {

    public final AG f52567b;

    public C9565tG(AG ag2) {
        this.f52567b = ag2;
    }

    @Override
    public final void clear() {
        this.f52567b.clear();
    }

    @Override
    public final Comparator comparator() {
        return ((C8564nG) this.f52567b.f38585i.c()).f50572b;
    }

    @Override
    public final boolean contains(Object obj) {
        C8898pG d10;
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return entry.getKey() != null && (entry.getKey() instanceof Integer) && (d10 = this.f52567b.f38585i.d(((Integer) entry.getKey()).intValue())) != null && this.f52567b.d(d10.f44050b) && entry.equals(d10);
    }

    @Override
    public final Object first() {
        return this.f52567b.i();
    }

    @Override
    public final SortedSet headSet(Object obj) {
        return ((AG) this.f52567b.c(((RG) obj).a())).c();
    }

    @Override
    public final boolean isEmpty() {
        AG ag2 = this.f52567b;
        C8898pG c8898pG = ag2.f38585i.f39475d;
        return !(ag2.i() != null);
    }

    @Override
    public final InterfaceC9861v30 iterator() {
        return new C10066wG(this.f52567b);
    }

    @Override
    public final Object last() {
        return this.f52567b.j();
    }

    @Override
    public final boolean remove(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (entry.getKey() != null && (entry.getKey() instanceof Integer)) {
            C8898pG d10 = this.f52567b.f38585i.d(((Integer) entry.getKey()).intValue());
            if (d10 != null && this.f52567b.d(d10.f44050b)) {
                this.f52567b.remove(d10.f44050b);
            }
            if (d10 != null) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final int size() {
        C10066wG c10066wG = new C10066wG(this.f52567b);
        int i10 = 0;
        while (c10066wG.hasNext()) {
            i10++;
            c10066wG.next();
        }
        return i10;
    }

    @Override
    public final SortedSet subSet(Object obj, Object obj2) {
        return ((AG) this.f52567b.a(((RG) obj).a(), ((RG) obj2).a())).c();
    }

    @Override
    public final SortedSet tailSet(Object obj) {
        return ((AG) this.f52567b.b(((RG) obj).a())).c();
    }

    @Override
    public final A30 iterator() {
        return new C10066wG(this.f52567b);
    }

    @Override
    public final Iterator iterator() {
        return new C10066wG(this.f52567b);
    }
}
