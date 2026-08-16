package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;

public abstract class E4 extends AbstractList implements InterfaceC12243z5 {

    public boolean f61908b;

    public E4(boolean z10) {
        this.f61908b = z10;
    }

    @Override
    public final boolean N1() {
        return this.f61908b;
    }

    @Override
    public final void O1() {
        if (this.f61908b) {
            this.f61908b = false;
        }
    }

    public final void a() {
        if (!this.f61908b) {
            throw new UnsupportedOperationException();
        }
    }

    @Override
    public void add(int i10, Object obj) {
        a();
        super.add(i10, obj);
    }

    @Override
    public final boolean addAll(int i10, Collection collection) {
        a();
        return super.addAll(i10, collection);
    }

    @Override
    public final void clear() {
        a();
        super.clear();
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        if (!(obj instanceof RandomAccess)) {
            return super.equals(obj);
        }
        List list = (List) obj;
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

    @Override
    public Object remove(int i10) {
        a();
        return super.remove(i10);
    }

    @Override
    public final boolean removeAll(Collection collection) {
        a();
        return super.removeAll(collection);
    }

    @Override
    public final boolean retainAll(Collection collection) {
        a();
        return super.retainAll(collection);
    }

    @Override
    public Object set(int i10, Object obj) {
        a();
        return super.set(i10, obj);
    }

    @Override
    public boolean add(Object obj) {
        a();
        return super.add(obj);
    }

    @Override
    public boolean addAll(Collection collection) {
        a();
        return super.addAll(collection);
    }

    @Override
    public final boolean remove(Object obj) {
        a();
        int indexOf = indexOf(obj);
        if (indexOf == -1) {
            return false;
        }
        remove(indexOf);
        return true;
    }
}
