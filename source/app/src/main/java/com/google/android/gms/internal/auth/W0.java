package com.google.android.gms.internal.auth;

import java.util.AbstractList;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;

public abstract class W0 extends AbstractList implements F1 {

    public boolean f61675b;

    public W0(boolean z10) {
        this.f61675b = z10;
    }

    @Override
    public final void O1() {
        if (this.f61675b) {
            this.f61675b = false;
        }
    }

    @Override
    public final boolean P1() {
        return this.f61675b;
    }

    public final void a() {
        if (!this.f61675b) {
            throw new UnsupportedOperationException();
        }
    }

    @Override
    public void add(int i10, Object obj) {
        a();
        super.add(i10, obj);
    }

    @Override
    public boolean addAll(int i10, Collection collection) {
        a();
        return super.addAll(i10, collection);
    }

    @Override
    public void clear() {
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
