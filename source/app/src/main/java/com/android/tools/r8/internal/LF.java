package com.android.tools.r8.internal;

import java.util.Iterator;

public final class LF extends AbstractC6682c0 {

    public final QF f41926b;

    public LF(QF qf2) {
        this.f41926b = qf2;
    }

    @Override
    public final void clear() {
        this.f41926b.clear();
    }

    @Override
    public final boolean h(int i10) {
        return this.f41926b.a(i10);
    }

    @Override
    public final PH iterator() {
        return new KF(this.f41926b);
    }

    @Override
    public final boolean remove(int i10) {
        QF qf2 = this.f41926b;
        int i11 = qf2.f43517h;
        qf2.remove(i10);
        return this.f41926b.f43517h != i11;
    }

    @Override
    public final int size() {
        return this.f41926b.f43517h;
    }

    @Override
    public final Iterator iterator() {
        return new KF(this.f41926b);
    }
}
