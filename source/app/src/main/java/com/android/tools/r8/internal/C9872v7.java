package com.android.tools.r8.internal;

public final class C9872v7 extends AbstractC9867v50 {

    public static final C9872v7 f53015b = new C9872v7();

    @Override
    public final AbstractC9700u50 a(int i10) {
        return C9705u7.f52783a;
    }

    @Override
    public final AbstractC9867v50 e() {
        return this;
    }

    @Override
    public final boolean equals(Object obj) {
        return obj == f53015b;
    }

    public final int hashCode() {
        return System.identityHashCode(this);
    }

    @Override
    public final AbstractC9867v50 a(int i10, AbstractC9700u50 abstractC9700u50) {
        QF qf2 = new QF(16);
        qf2.a(i10, abstractC9700u50);
        if (qf2.isEmpty()) {
            return f53015b;
        }
        return new O00(qf2);
    }
}
