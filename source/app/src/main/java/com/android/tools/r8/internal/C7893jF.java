package com.android.tools.r8.internal;

import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.SortedSet;

public final class C7893jF extends AbstractC7686i1 {

    public final C7728iF f49198b = new C7728iF(this);

    public final C10564zF f49199c;

    public C7893jF(C10564zF c10564zF) {
        this.f49199c = c10564zF;
    }

    @Override
    public final void clear() {
        this.f49199c.clear();
    }

    @Override
    public final Comparator comparator() {
        return this.f49198b;
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
        return entry.equals(this.f49199c.d(((Integer) entry.getKey()).intValue()));
    }

    @Override
    public final Object first() {
        return this.f49199c.f54328d;
    }

    @Override
    public final SortedSet headSet(Object obj) {
        return ((C10063wF) this.f49199c.c(((EF) obj).a())).b();
    }

    @Override
    public final InterfaceC9861v30 iterator() {
        return new C8394mF(this.f49199c);
    }

    @Override
    public final Object last() {
        return this.f49199c.f54329e;
    }

    @Override
    public final boolean remove(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (entry.getKey() != null && (entry.getKey() instanceof Integer)) {
            C8227lF d10 = this.f49199c.d(((Integer) entry.getKey()).intValue());
            if (d10 != null) {
                this.f49199c.remove(d10.f42116b);
            }
            if (d10 != null) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final int size() {
        return this.f49199c.f54327c;
    }

    @Override
    public final SortedSet subSet(Object obj, Object obj2) {
        C10564zF c10564zF = this.f49199c;
        int a10 = ((EF) obj).a();
        int a11 = ((EF) obj2).a();
        c10564zF.getClass();
        return new C10063wF(c10564zF, a10, false, a11, false).b();
    }

    @Override
    public final SortedSet tailSet(Object obj) {
        return ((C10063wF) this.f49199c.b(((EF) obj).a())).b();
    }

    @Override
    public final A30 iterator() {
        return new C8394mF(this.f49199c);
    }

    @Override
    public final Iterator iterator() {
        return new C8394mF(this.f49199c);
    }
}
