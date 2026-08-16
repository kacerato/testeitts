package com.android.tools.r8.internal;

import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;

public final class LG extends AbstractC6849d0 {

    public final QG f41931b;

    public LG(QG qg2) {
        this.f41931b = qg2;
    }

    @Override
    public final int K() {
        QG qg2 = this.f41931b;
        if (qg2.f43533k != 0) {
            return qg2.f43524b[qg2.f43528f];
        }
        throw new NoSuchElementException();
    }

    @Override
    public final InterfaceC9069qI a(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final void clear() {
        this.f41931b.clear();
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
        return this.f41931b.a(i10);
    }

    @Override
    public final HH iterator() {
        return new KG(this.f41931b);
    }

    @Override
    public final int p() {
        QG qg2 = this.f41931b;
        if (qg2.f43533k != 0) {
            return qg2.f43524b[qg2.f43529g];
        }
        throw new NoSuchElementException();
    }

    @Override
    public final boolean remove(int i10) {
        QG qg2 = this.f41931b;
        int i11 = qg2.f43533k;
        qg2.remove(i10);
        return this.f41931b.f43533k != i11;
    }

    @Override
    public final int size() {
        return this.f41931b.f43533k;
    }

    @Override
    public final PH iterator() {
        return new KG(this.f41931b);
    }

    @Override
    public final Iterator iterator() {
        return new KG(this.f41931b);
    }
}
