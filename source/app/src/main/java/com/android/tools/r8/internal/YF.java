package com.android.tools.r8.internal;

import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.SortedSet;

public final class YF extends AbstractC7686i1 {

    public final C7230fG f45958b;

    public YF(C7230fG c7230fG) {
        this.f45958b = c7230fG;
    }

    @Override
    public final void clear() {
        this.f45958b.clear();
    }

    @Override
    public final Comparator comparator() {
        return ((SF) this.f45958b.f47925i.b()).f44165b;
    }

    @Override
    public final boolean contains(Object obj) {
        UF d10;
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return entry.getKey() != null && (entry.getKey() instanceof Integer) && (d10 = this.f45958b.f47925i.d(((Integer) entry.getKey()).intValue())) != null && this.f45958b.d(d10.f42116b) && entry.equals(d10);
    }

    @Override
    public final Object first() {
        return this.f45958b.i();
    }

    @Override
    public final SortedSet headSet(Object obj) {
        return ((C7230fG) this.f45958b.c(((EF) obj).a())).b();
    }

    @Override
    public final boolean isEmpty() {
        C7230fG c7230fG = this.f45958b;
        UF uf2 = c7230fG.f47925i.f48899d;
        return !(c7230fG.i() != null);
    }

    @Override
    public final InterfaceC9861v30 iterator() {
        return new C6564bG(this.f45958b);
    }

    @Override
    public final Object last() {
        return this.f45958b.j();
    }

    @Override
    public final boolean remove(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (entry.getKey() != null && (entry.getKey() instanceof Integer)) {
            UF d10 = this.f45958b.f47925i.d(((Integer) entry.getKey()).intValue());
            if (d10 != null && this.f45958b.d(d10.f42116b)) {
                this.f45958b.remove(d10.f42116b);
            }
            if (d10 != null) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final int size() {
        C6564bG c6564bG = new C6564bG(this.f45958b);
        int i10 = 0;
        while (c6564bG.hasNext()) {
            i10++;
            c6564bG.next();
        }
        return i10;
    }

    @Override
    public final SortedSet subSet(Object obj, Object obj2) {
        return ((C7230fG) this.f45958b.a(((EF) obj).a(), ((EF) obj2).a())).b();
    }

    @Override
    public final SortedSet tailSet(Object obj) {
        return ((C7230fG) this.f45958b.b(((EF) obj).a())).b();
    }

    @Override
    public final A30 iterator() {
        return new C6564bG(this.f45958b);
    }

    @Override
    public final Iterator iterator() {
        return new C6564bG(this.f45958b);
    }
}
