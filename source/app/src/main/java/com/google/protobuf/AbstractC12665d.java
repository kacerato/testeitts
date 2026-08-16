package com.google.protobuf;

import com.google.protobuf.D0;
import java.util.AbstractList;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;

public abstract class AbstractC12665d<E> extends AbstractList<E> implements D0.k<E> {

    public static final int f69064c = 10;

    public boolean f69065b = true;

    public void a() {
        if (!this.f69065b) {
            throw new UnsupportedOperationException();
        }
    }

    @Override
    public boolean add(E e10) {
        a();
        return super.add(e10);
    }

    @Override
    public boolean addAll(Collection<? extends E> c10) {
        a();
        return super.addAll(c10);
    }

    @Override
    public void clear() {
        a();
        super.clear();
    }

    @Override
    public boolean equals(Object o10) {
        if (o10 == this) {
            return true;
        }
        if (!(o10 instanceof List)) {
            return false;
        }
        if (!(o10 instanceof RandomAccess)) {
            return super.equals(o10);
        }
        List list = (List) o10;
        int size = size();
        if (size != list.size()) {
            return false;
        }
        for (int i10 = 0; i10 < size; i10++) {
            if (!get(i10).equals(list.get(i10))) {
                return false;
            }
        }
        return true;
    }

    @Override
    public int hashCode() {
        int size = size();
        int i10 = 1;
        for (int i11 = 0; i11 < size; i11++) {
            i10 = (i10 * 31) + get(i11).hashCode();
        }
        return i10;
    }

    public boolean hc() {
        return this.f69065b;
    }

    @Override
    public void r9() {
        this.f69065b = false;
    }

    @Override
    public E remove(int i10) {
        a();
        return (E) super.remove(i10);
    }

    @Override
    public boolean removeAll(Collection<?> c10) {
        a();
        return super.removeAll(c10);
    }

    @Override
    public boolean retainAll(Collection<?> c10) {
        a();
        return super.retainAll(c10);
    }

    @Override
    public E set(int i10, E e10) {
        a();
        return (E) super.set(i10, e10);
    }

    @Override
    public void add(int index, E element) {
        a();
        super.add(index, element);
    }

    @Override
    public boolean addAll(int index, Collection<? extends E> c10) {
        a();
        return super.addAll(index, c10);
    }

    @Override
    public boolean remove(Object o10) {
        a();
        int indexOf = indexOf(o10);
        if (indexOf == -1) {
            return false;
        }
        remove(indexOf);
        return true;
    }
}
