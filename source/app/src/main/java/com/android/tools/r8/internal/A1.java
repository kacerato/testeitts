package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.ListIterator;

public final class A1 extends B1 implements Serializable {

    public static final boolean f38501e = true;

    public final B1 f38502b;

    public final int f38503c;

    public int f38504d;

    public A1(B1 b12, int i10, int i11) {
        this.f38502b = b12;
        this.f38503c = i10;
        this.f38504d = i11;
    }

    public final void a() {
        boolean z10 = f38501e;
        if (!z10 && this.f38503c > this.f38502b.size()) {
            throw new AssertionError();
        }
        if (!z10 && this.f38504d > this.f38502b.size()) {
            throw new AssertionError();
        }
        if (!z10 && this.f38504d < this.f38503c) {
            throw new AssertionError();
        }
    }

    @Override
    public final boolean add(Object obj) {
        this.f38502b.add(this.f38504d, obj);
        this.f38504d++;
        if (!f38501e) {
            a();
        }
        return true;
    }

    @Override
    public final boolean addAll(int i10, Collection collection) {
        j(i10);
        this.f38504d = collection.size() + this.f38504d;
        return this.f38502b.addAll(this.f38503c + i10, collection);
    }

    @Override
    public final A1 subList(int i10, int i11) {
        j(i10);
        j(i11);
        if (i10 <= i11) {
            return new A1(this, i10, i11);
        }
        throw new IllegalArgumentException("Start index (" + i10 + ") is greater than end index (" + i11 + ")");
    }

    @Override
    public final Object get(int i10) {
        k(i10);
        return this.f38502b.get(this.f38503c + i10);
    }

    @Override
    public final A30 iterator() {
        j(0);
        return new C10522z1(this, 0);
    }

    @Override
    public final G30 l(int i10) {
        j(i10);
        return new C10522z1(this, i10);
    }

    @Override
    public final ListIterator listIterator() {
        j(0);
        return new C10522z1(this, 0);
    }

    @Override
    public final Object remove(int i10) {
        k(i10);
        this.f38504d--;
        return this.f38502b.remove(this.f38503c + i10);
    }

    @Override
    public final Object set(int i10, Object obj) {
        k(i10);
        return this.f38502b.set(this.f38503c + i10, obj);
    }

    @Override
    public final int size() {
        return this.f38504d - this.f38503c;
    }

    @Override
    public final Iterator iterator() {
        j(0);
        return new C10522z1(this, 0);
    }

    @Override
    public final ListIterator listIterator(int i10) {
        j(i10);
        return new C10522z1(this, i10);
    }

    @Override
    public final void a(int i10, int i11) {
        j(i10);
        j(i11);
        B1 b12 = this.f38502b;
        int i12 = this.f38503c;
        b12.a(i12 + i10, i12 + i11);
        this.f38504d -= i11 - i10;
        if (f38501e) {
            return;
        }
        a();
    }

    @Override
    public final void add(int i10, Object obj) {
        j(i10);
        this.f38502b.add(this.f38503c + i10, obj);
        this.f38504d++;
        if (f38501e) {
            return;
        }
        a();
    }
}
