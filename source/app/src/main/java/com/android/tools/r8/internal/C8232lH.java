package com.android.tools.r8.internal;

import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.SortedSet;

public final class C8232lH extends AbstractC7686i1 {

    public final C9400sH f49918b;

    public C8232lH(C9400sH c9400sH) {
        this.f49918b = c9400sH;
    }

    @Override
    public final void clear() {
        this.f49918b.clear();
    }

    @Override
    public final Comparator comparator() {
        return ((C7232fH) this.f49918b.f52332i.c()).f47926b;
    }

    @Override
    public final boolean contains(Object obj) {
        C7566hH d10;
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return entry.getKey() != null && (entry.getKey() instanceof Integer) && (d10 = this.f49918b.f52332i.d(((Integer) entry.getKey()).intValue())) != null && this.f49918b.d(d10.f44050b) && entry.equals(d10);
    }

    @Override
    public final Object first() {
        return this.f49918b.i();
    }

    @Override
    public final SortedSet headSet(Object obj) {
        return ((C9400sH) this.f49918b.c(((RG) obj).a())).c();
    }

    @Override
    public final boolean isEmpty() {
        C9400sH c9400sH = this.f49918b;
        C7566hH c7566hH = c9400sH.f52332i.f53067d;
        return !(c9400sH.i() != null);
    }

    @Override
    public final InterfaceC9861v30 iterator() {
        return new C8733oH(this.f49918b);
    }

    @Override
    public final Object last() {
        return this.f49918b.j();
    }

    @Override
    public final boolean remove(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (entry.getKey() != null && (entry.getKey() instanceof Integer)) {
            C7566hH d10 = this.f49918b.f52332i.d(((Integer) entry.getKey()).intValue());
            if (d10 != null && this.f49918b.d(d10.f44050b)) {
                this.f49918b.remove(d10.f44050b);
            }
            if (d10 != null) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final int size() {
        C8733oH c8733oH = new C8733oH(this.f49918b);
        int i10 = 0;
        while (c8733oH.hasNext()) {
            i10++;
            c8733oH.next();
        }
        return i10;
    }

    @Override
    public final SortedSet subSet(Object obj, Object obj2) {
        return ((C9400sH) this.f49918b.a(((RG) obj).a(), ((RG) obj2).a())).c();
    }

    @Override
    public final SortedSet tailSet(Object obj) {
        return ((C9400sH) this.f49918b.b(((RG) obj).a())).c();
    }

    @Override
    public final A30 iterator() {
        return new C8733oH(this.f49918b);
    }

    @Override
    public final Iterator iterator() {
        return new C8733oH(this.f49918b);
    }
}
