package com.google.android.gms.internal.auth;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

@Deprecated
public final class L2 extends AbstractList implements RandomAccess, L1 {

    public final L1 f61638b;

    public L2(L1 l12) {
        this.f61638b = l12;
    }

    @Override
    public final L1 R1() {
        return this;
    }

    @Override
    public final List T1() {
        return this.f61638b.T1();
    }

    @Override
    public final Object get(int i10) {
        return ((K1) this.f61638b).get(i10);
    }

    @Override
    public final Iterator iterator() {
        return new K2(this);
    }

    @Override
    public final ListIterator listIterator(int i10) {
        return new J2(this, i10);
    }

    @Override
    public final int size() {
        return this.f61638b.size();
    }
}
