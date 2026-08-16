package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

public class C10519z0 extends AbstractC10185x0 implements List {

    public final A0 f54256g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10519z0(A0 a02, Object obj, List list, C10519z0 c10519z0) {
        super(a02, obj, list, c10519z0);
        this.f54256g = a02;
    }

    @Override
    public final void add(int i10, Object obj) {
        b();
        boolean isEmpty = this.f53658c.isEmpty();
        ((List) this.f53658c).add(i10, obj);
        this.f54256g.f38498g++;
        if (isEmpty) {
            a();
        }
    }

    @Override
    public final boolean addAll(int i10, Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        b();
        int size = this.f53658c.size();
        boolean addAll = ((List) this.f53658c).addAll(i10, collection);
        if (addAll) {
            int size2 = this.f53658c.size();
            this.f54256g.f38498g += size2 - size;
            if (size == 0) {
                a();
            }
        }
        return addAll;
    }

    @Override
    public final Object get(int i10) {
        b();
        return ((List) this.f53658c).get(i10);
    }

    @Override
    public final int indexOf(Object obj) {
        b();
        return ((List) this.f53658c).indexOf(obj);
    }

    @Override
    public final int lastIndexOf(Object obj) {
        b();
        return ((List) this.f53658c).lastIndexOf(obj);
    }

    @Override
    public final ListIterator listIterator() {
        b();
        return new C10352y0(this);
    }

    @Override
    public final Object remove(int i10) {
        b();
        Object remove = ((List) this.f53658c).remove(i10);
        A0 a02 = this.f54256g;
        a02.f38498g--;
        c();
        return remove;
    }

    @Override
    public final Object set(int i10, Object obj) {
        b();
        return ((List) this.f53658c).set(i10, obj);
    }

    @Override
    public final List subList(int i10, int i11) {
        b();
        A0 a02 = this.f54256g;
        Object obj = this.f53657b;
        List subList = ((List) this.f53658c).subList(i10, i11);
        C10519z0 c10519z0 = this.f53659d;
        if (c10519z0 == null) {
            c10519z0 = this;
        }
        a02.getClass();
        return subList instanceof RandomAccess ? new C9851v0(a02, obj, subList, c10519z0) : new C10519z0(a02, obj, subList, c10519z0);
    }

    @Override
    public final ListIterator listIterator(int i10) {
        b();
        return new C10352y0(this, i10);
    }
}
