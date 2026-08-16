package com.android.tools.r8.internal;

public final class KF extends OF implements PH {

    public final QF f41625h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KF(QF qf2) {
        super(qf2);
        this.f41625h = qf2;
    }

    @Override
    public final Object next() {
        return Integer.valueOf(this.f41625h.f43511b[a()]);
    }

    @Override
    public final int r() {
        return this.f41625h.f43511b[a()];
    }
}
