package com.android.tools.r8.internal;

public final class JF extends OF implements A30 {

    public MF f41360h;

    public final QF f41361i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JF(QF qf2) {
        super(qf2);
        this.f41361i = qf2;
    }

    @Override
    public final Object next() {
        MF mf2 = new MF(this.f41361i, a());
        this.f41360h = mf2;
        return mf2;
    }

    @Override
    public final void remove() {
        super.remove();
        this.f41360h.f42246b = -1;
    }
}
