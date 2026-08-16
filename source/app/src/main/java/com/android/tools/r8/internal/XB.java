package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Spliterator;
import java.util.Spliterators;
import java.util.function.Predicate;

public abstract class XB extends AbstractCollection implements Serializable {

    public static final Object[] f45636b = new Object[0];

    public AbstractC7552hC a() {
        int size = size();
        if (size == 0) {
            return C6190Xe0.f45779e;
        }
        if (size != 1) {
            return new C5902Se0(this, toArray(f45636b));
        }
        return new C5920Sm0(iterator().next());
    }

    @Override
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final boolean addAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    public Object[] b() {
        return null;
    }

    public int c() {
        throw new UnsupportedOperationException();
    }

    @Override
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override
    public abstract boolean contains(Object obj);

    public int d() {
        throw new UnsupportedOperationException();
    }

    public abstract boolean g();

    @Override
    public abstract AbstractC4895Av0 iterator();

    @Override
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final boolean removeAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final boolean removeIf(Predicate predicate) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final boolean retainAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override
    public Spliterator spliterator() {
        return Spliterators.spliterator(this, 1296);
    }

    @Override
    public final Object[] toArray() {
        return toArray(f45636b);
    }

    @Override
    public final Object[] toArray(Object[] objArr) {
        objArr.getClass();
        int size = size();
        if (objArr.length < size) {
            Object[] b10 = b();
            if (b10 != null) {
                return AbstractC8368m60.a(d(), c(), b10, objArr);
            }
            objArr = AbstractC8368m60.a(size, objArr);
        } else if (objArr.length > size) {
            objArr[size] = null;
        }
        a(0, objArr);
        return objArr;
    }

    public int a(int i10, Object[] objArr) {
        AbstractC4895Av0 it = iterator();
        while (it.hasNext()) {
            objArr[i10] = it.next();
            i10++;
        }
        return i10;
    }
}
