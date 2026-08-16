package com.android.tools.r8.internal;

import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.SortedSet;

public final class C8895pF extends AbstractC7686i1 {

    public final C10063wF f51480b;

    public C8895pF(C10063wF c10063wF) {
        this.f51480b = c10063wF;
    }

    @Override
    public final void clear() {
        this.f51480b.clear();
    }

    @Override
    public final Comparator comparator() {
        return ((C7893jF) this.f51480b.f53460i.b()).f49198b;
    }

    @Override
    public final boolean contains(Object obj) {
        C8227lF d10;
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return entry.getKey() != null && (entry.getKey() instanceof Integer) && (d10 = this.f51480b.f53460i.d(((Integer) entry.getKey()).intValue())) != null && this.f51480b.d(d10.f42116b) && entry.equals(d10);
    }

    @Override
    public final Object first() {
        return this.f51480b.i();
    }

    @Override
    public final SortedSet headSet(Object obj) {
        return ((C10063wF) this.f51480b.c(((EF) obj).a())).b();
    }

    @Override
    public final boolean isEmpty() {
        C10063wF c10063wF = this.f51480b;
        C8227lF c8227lF = c10063wF.f53460i.f54328d;
        return !(c10063wF.i() != null);
    }

    @Override
    public final InterfaceC9861v30 iterator() {
        return new C9395sF(this.f51480b);
    }

    @Override
    public final Object last() {
        return this.f51480b.j();
    }

    @Override
    public final boolean remove(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (entry.getKey() != null && (entry.getKey() instanceof Integer)) {
            C8227lF d10 = this.f51480b.f53460i.d(((Integer) entry.getKey()).intValue());
            if (d10 != null && this.f51480b.d(d10.f42116b)) {
                this.f51480b.remove(d10.f42116b);
            }
            if (d10 != null) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final int size() {
        C9395sF c9395sF = new C9395sF(this.f51480b);
        int i10 = 0;
        while (c9395sF.hasNext()) {
            i10++;
            c9395sF.next();
        }
        return i10;
    }

    @Override
    public final SortedSet subSet(Object obj, Object obj2) {
        return ((C10063wF) this.f51480b.a(((EF) obj).a(), ((EF) obj2).a())).b();
    }

    @Override
    public final SortedSet tailSet(Object obj) {
        return ((C10063wF) this.f51480b.b(((EF) obj).a())).b();
    }

    @Override
    public final A30 iterator() {
        return new C9395sF(this.f51480b);
    }

    @Override
    public final Iterator iterator() {
        return new C9395sF(this.f51480b);
    }
}
