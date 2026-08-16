package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

public final class Z extends AbstractC6349a0 implements Serializable {

    public static final boolean f46136e = true;

    public final AbstractC6349a0 f46137b;

    public final int f46138c;

    public int f46139d;

    public Z(AbstractC6349a0 abstractC6349a0, int i10, int i11) {
        this.f46137b = abstractC6349a0;
        this.f46138c = i10;
        this.f46139d = i11;
    }

    public final void a() {
        boolean z10 = f46136e;
        if (!z10 && this.f46138c > this.f46137b.size()) {
            throw new AssertionError();
        }
        if (!z10 && this.f46139d > this.f46137b.size()) {
            throw new AssertionError();
        }
        if (!z10 && this.f46139d < this.f46138c) {
            throw new AssertionError();
        }
    }

    @Override
    public final void add(int i10, Object obj) {
        b(i10, ((Integer) obj).intValue());
    }

    @Override
    public final boolean addAll(int i10, Collection collection) {
        k(i10);
        this.f46139d = collection.size() + this.f46139d;
        return this.f46137b.addAll(this.f46138c + i10, collection);
    }

    @Override
    public final void b(int i10, int i11) {
        k(i10);
        this.f46137b.b(this.f46138c + i10, i11);
        this.f46139d++;
        if (f46136e) {
            return;
        }
        a();
    }

    @Override
    public final int c(int i10) {
        l(i10);
        return this.f46137b.c(this.f46138c + i10);
    }

    @Override
    public final int compareTo(Object obj) {
        return compareTo((List) obj);
    }

    @Override
    public final TH subList(int i10, int i11) {
        k(i10);
        k(i11);
        if (i10 <= i11) {
            return new Z(this, i10, i11);
        }
        throw new IllegalArgumentException("Start index (" + i10 + ") is greater than end index (" + i11 + ")");
    }

    @Override
    public final Object get(int i10) {
        return Integer.valueOf(c(i10));
    }

    @Override
    public final int i(int i10) {
        l(i10);
        this.f46139d--;
        return this.f46137b.i(this.f46138c + i10);
    }

    @Override
    public final PH iterator() {
        k(0);
        return new Y(this, 0);
    }

    @Override
    public final boolean j(int i10) {
        int m10 = m(i10);
        if (m10 == -1) {
            return false;
        }
        this.f46139d--;
        this.f46137b.i(this.f46138c + m10);
        if (!f46136e) {
            a();
        }
        return true;
    }

    @Override
    public final ListIterator listIterator() {
        k(0);
        return new Y(this, 0);
    }

    @Override
    public final UH o(int i10) {
        k(i10);
        return new Y(this, i10);
    }

    @Override
    public final Object remove(int i10) {
        return Integer.valueOf(i(i10));
    }

    @Override
    public final Object set(int i10, Object obj) {
        return Integer.valueOf(c(i10, ((Integer) obj).intValue()));
    }

    @Override
    public final int size() {
        return this.f46139d - this.f46138c;
    }

    @Override
    public final boolean add(int i10) {
        this.f46137b.b(this.f46139d, i10);
        this.f46139d++;
        if (!f46136e) {
            a();
        }
        return true;
    }

    @Override
    public final int c(int i10, int i11) {
        l(i10);
        return this.f46137b.c(this.f46138c + i10, i11);
    }

    @Override
    public final Iterator iterator() {
        k(0);
        return new Y(this, 0);
    }

    @Override
    public final ListIterator listIterator(int i10) {
        k(i10);
        return new Y(this, i10);
    }

    @Override
    public final void a(int i10, int[] iArr, int i11, int i12) {
        k(i10);
        int i13 = i10 + i12;
        int i14 = this.f46139d;
        int i15 = this.f46138c;
        if (i13 <= i14 - i15) {
            this.f46137b.a(i15 + i10, iArr, i11, i12);
            return;
        }
        throw new IndexOutOfBoundsException("End index (" + i10 + i12 + ") is greater than list size (" + (this.f46139d - this.f46138c) + ")");
    }

    @Override
    public final void a(int i10, int i11) {
        k(i10);
        k(i11);
        AbstractC6349a0 abstractC6349a0 = this.f46137b;
        int i12 = this.f46138c;
        abstractC6349a0.a(i12 + i10, i12 + i11);
        this.f46139d -= i11 - i10;
        if (f46136e) {
            return;
        }
        a();
    }

    @Override
    public final boolean a(int i10, TH th2) {
        k(i10);
        k(i10);
        k(i10);
        PH it = th2.iterator();
        boolean hasNext = it.hasNext();
        while (it.hasNext()) {
            b(i10, it.r());
            i10++;
        }
        return hasNext;
    }
}
