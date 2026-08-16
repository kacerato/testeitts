package com.android.tools.r8.internal;

import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;

public final class RE extends AbstractC6849d0 {

    public final WE f43850b;

    public RE(WE we2) {
        this.f43850b = we2;
    }

    @Override
    public final int K() {
        WE we2 = this.f43850b;
        if (we2.f45350l != 0) {
            return we2.f45341c[we2.f45345g];
        }
        throw new NoSuchElementException();
    }

    @Override
    public final InterfaceC9069qI a(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final void clear() {
        this.f43850b.clear();
    }

    @Override
    public final Comparator comparator() {
        return null;
    }

    @Override
    public final InterfaceC9069qI d(int i10, int i11) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final InterfaceC9069qI e(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final boolean h(int i10) {
        return this.f43850b.a(i10);
    }

    @Override
    public final HH iterator() {
        return new QE(this.f43850b);
    }

    @Override
    public final int p() {
        WE we2 = this.f43850b;
        if (we2.f45350l != 0) {
            return we2.f45341c[we2.f45346h];
        }
        throw new NoSuchElementException();
    }

    @Override
    public final boolean remove(int i10) {
        WE we2 = this.f43850b;
        int i11 = we2.f45350l;
        we2.remove(i10);
        return this.f43850b.f45350l != i11;
    }

    @Override
    public final int size() {
        return this.f43850b.f45350l;
    }

    @Override
    public final PH iterator() {
        return new QE(this.f43850b);
    }

    @Override
    public final Iterator iterator() {
        return new QE(this.f43850b);
    }
}
