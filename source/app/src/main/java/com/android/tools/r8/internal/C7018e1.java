package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

public final class C7018e1 extends AbstractC7185f1 implements Serializable {

    public static final boolean f47574e = true;

    public final AbstractC7185f1 f47575b;

    public final int f47576c;

    public int f47577d;

    public C7018e1(AbstractC7185f1 abstractC7185f1, int i10, int i11) {
        this.f47575b = abstractC7185f1;
        this.f47576c = i10;
        this.f47577d = i11;
    }

    public final void a() {
        boolean z10 = f47574e;
        if (!z10 && this.f47576c > this.f47575b.size()) {
            throw new AssertionError();
        }
        if (!z10 && this.f47577d > this.f47575b.size()) {
            throw new AssertionError();
        }
        if (!z10 && this.f47577d < this.f47576c) {
            throw new AssertionError();
        }
    }

    @Override
    public final boolean add(Object obj) {
        this.f47575b.add(this.f47577d, obj);
        this.f47577d++;
        if (!f47574e) {
            a();
        }
        return true;
    }

    @Override
    public final boolean addAll(int i10, Collection collection) {
        j(i10);
        this.f47577d = collection.size() + this.f47577d;
        return this.f47575b.addAll(this.f47576c + i10, collection);
    }

    @Override
    public final int compareTo(Object obj) {
        return compareTo((List) obj);
    }

    @Override
    public final C7018e1 subList(int i10, int i11) {
        j(i10);
        j(i11);
        if (i10 <= i11) {
            return new C7018e1(this, i10, i11);
        }
        throw new IllegalArgumentException("Start index (" + i10 + ") is greater than end index (" + i11 + ")");
    }

    @Override
    public final Object get(int i10) {
        k(i10);
        return this.f47575b.get(this.f47576c + i10);
    }

    @Override
    public final A30 iterator() {
        j(0);
        return new C6852d1(this, 0);
    }

    @Override
    public final G30 l(int i10) {
        j(i10);
        return new C6852d1(this, i10);
    }

    @Override
    public final ListIterator listIterator() {
        j(0);
        return new C6852d1(this, 0);
    }

    @Override
    public final Object remove(int i10) {
        k(i10);
        this.f47577d--;
        return this.f47575b.remove(this.f47576c + i10);
    }

    @Override
    public final Object set(int i10, Object obj) {
        k(i10);
        return this.f47575b.set(this.f47576c + i10, obj);
    }

    @Override
    public final int size() {
        return this.f47577d - this.f47576c;
    }

    @Override
    public final Iterator iterator() {
        j(0);
        return new C6852d1(this, 0);
    }

    @Override
    public final ListIterator listIterator(int i10) {
        j(i10);
        return new C6852d1(this, i10);
    }

    @Override
    public final void a(int i10, int i11) {
        j(i10);
        j(i11);
        AbstractC7185f1 abstractC7185f1 = this.f47575b;
        int i12 = this.f47576c;
        abstractC7185f1.a(i12 + i10, i12 + i11);
        this.f47577d -= i11 - i10;
        if (f47574e) {
            return;
        }
        a();
    }

    @Override
    public final void add(int i10, Object obj) {
        j(i10);
        this.f47575b.add(this.f47576c + i10, obj);
        this.f47577d++;
        if (f47574e) {
            return;
        }
        a();
    }
}
