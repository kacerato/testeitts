package com.android.tools.r8.internal;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

public abstract class V0 extends AbstractCollection implements LY {

    public transient Set f44932b;

    public transient Set f44933c;

    public int a(Object obj, int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final boolean add(Object obj) {
        a(obj, 1);
        return true;
    }

    @Override
    public final boolean addAll(Collection collection) {
        collection.getClass();
        if (collection instanceof LY) {
            return QY.a(this, (LY) collection);
        }
        if (collection.isEmpty()) {
            return false;
        }
        return JK.a(this, collection.iterator());
    }

    public Set b() {
        return new U0(this);
    }

    public abstract int c();

    @Override
    public boolean contains(Object obj) {
        return b(obj) > 0;
    }

    public abstract Iterator d();

    @Override
    public Set entrySet() {
        Set set = this.f44933c;
        if (set != null) {
            return set;
        }
        Set b10 = b();
        this.f44933c = b10;
        return b10;
    }

    @Override
    public final boolean equals(Object obj) {
        return QY.a(this, obj);
    }

    public abstract Iterator g();

    @Override
    public final int hashCode() {
        return entrySet().hashCode();
    }

    @Override
    public boolean isEmpty() {
        return entrySet().isEmpty();
    }

    @Override
    public final boolean remove(Object obj) {
        return b(1, obj) > 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final boolean removeAll(Collection collection) {
        if (collection instanceof LY) {
            collection = ((LY) collection).w();
        }
        return w().removeAll(collection);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final boolean retainAll(Collection collection) {
        collection.getClass();
        if (collection instanceof LY) {
            collection = ((LY) collection).w();
        }
        return w().retainAll(collection);
    }

    @Override
    public final String toString() {
        return entrySet().toString();
    }

    public Set w() {
        Set set = this.f44932b;
        if (set != null) {
            return set;
        }
        Set a10 = a();
        this.f44932b = a10;
        return a10;
    }

    public Set a() {
        return new T0(this);
    }

    public int a(Object obj) {
        AbstractC5496Le.a(0, oc.c.f98682m);
        int b10 = b(obj);
        int i10 = 0 - b10;
        if (i10 > 0) {
            a(obj, i10);
            return b10;
        }
        if (i10 < 0) {
            b(-i10, obj);
        }
        return b10;
    }

    public boolean a(int i10, Object obj) {
        AbstractC5496Le.a(i10, "oldCount");
        AbstractC5496Le.a(0, "newCount");
        if (b(obj) != i10) {
            return false;
        }
        a(obj);
        return true;
    }
}
