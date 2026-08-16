package com.android.tools.r8.internal;

import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.SortedSet;

public final class C7232fH extends AbstractC7686i1 {

    public final C7065eH f47926b = new C7065eH(this);

    public final C9901vH f47927c;

    public C7232fH(C9901vH c9901vH) {
        this.f47927c = c9901vH;
    }

    @Override
    public final void clear() {
        this.f47927c.clear();
    }

    @Override
    public final Comparator comparator() {
        return this.f47926b;
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
        return entry.equals(this.f47927c.d(((Integer) entry.getKey()).intValue()));
    }

    @Override
    public final Object first() {
        return this.f47927c.f53067d;
    }

    @Override
    public final SortedSet headSet(Object obj) {
        return ((C9400sH) this.f47927c.c(((RG) obj).a())).c();
    }

    @Override
    public final InterfaceC9861v30 iterator() {
        return new C7733iH(this.f47927c);
    }

    @Override
    public final Object last() {
        return this.f47927c.f53068e;
    }

    @Override
    public final boolean remove(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (entry.getKey() != null && (entry.getKey() instanceof Integer)) {
            C7566hH d10 = this.f47927c.d(((Integer) entry.getKey()).intValue());
            if (d10 != null) {
                this.f47927c.remove(d10.f44050b);
            }
            if (d10 != null) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final int size() {
        return this.f47927c.f53066c;
    }

    @Override
    public final SortedSet subSet(Object obj, Object obj2) {
        C9901vH c9901vH = this.f47927c;
        int a10 = ((RG) obj).a();
        int a11 = ((RG) obj2).a();
        c9901vH.getClass();
        return new C9400sH(c9901vH, a10, false, a11, false).c();
    }

    @Override
    public final SortedSet tailSet(Object obj) {
        return ((C9400sH) this.f47927c.b(((RG) obj).a())).c();
    }

    @Override
    public final A30 iterator() {
        return new C7733iH(this.f47927c);
    }

    @Override
    public final Iterator iterator() {
        return new C7733iH(this.f47927c);
    }
}
