package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

public final class VH extends KH implements TH, RandomAccess, Serializable, Cloneable {
    @Override
    public final void a(int i10, int[] iArr, int i11, int i12) {
        if (i10 != 0 || i12 != 0 || i11 < 0 || i11 > iArr.length) {
            throw new IndexOutOfBoundsException();
        }
    }

    @Override
    public final void add(int i10, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final boolean addAll(int i10, Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final void b(int i10, int i11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final int c(int i10) {
        throw new IndexOutOfBoundsException();
    }

    public final Object clone() {
        return WH.f45361a;
    }

    @Override
    public final int compareTo(Object obj) {
        List list = (List) obj;
        return (list == this || list.isEmpty()) ? 0 : -1;
    }

    @Override
    public final boolean equals(Object obj) {
        return (obj instanceof List) && ((List) obj).isEmpty();
    }

    @Override
    public final Object get(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final int hashCode() {
        return 1;
    }

    @Override
    public final int i(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final int indexOf(Object obj) {
        return -1;
    }

    @Override
    public final PH iterator() {
        return SH.f44174a;
    }

    @Override
    public final boolean j(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final int lastIndexOf(Object obj) {
        return -1;
    }

    @Override
    public final ListIterator listIterator() {
        return SH.f44174a;
    }

    @Override
    public final Object remove(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final Object set(int i10, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final List subList(int i10, int i11) {
        if (i10 == 0 && i11 == 0) {
            return this;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override
    public final String toString() {
        return okhttp3.v.f99450n;
    }

    @Override
    public final void a(int i10, int i11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final int c(int i10, int i11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final Iterator iterator() {
        return SH.f44174a;
    }

    @Override
    public final ListIterator listIterator(int i10) {
        if (i10 == 0) {
            return SH.f44174a;
        }
        throw new IndexOutOfBoundsException(String.valueOf(i10));
    }

    @Override
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final UH iterator() {
        return SH.f44174a;
    }

    @Override
    public final UH listIterator() {
        return SH.f44174a;
    }

    @Override
    public final boolean add(Integer num) {
        throw new UnsupportedOperationException();
    }
}
