package com.android.tools.r8.internal;

import java.util.Iterator;

public final class IF extends AbstractC6519b1 {

    public final QF f41042b;

    public IF(QF qf2) {
        this.f41042b = qf2;
    }

    @Override
    public final void clear() {
        this.f41042b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        return this.f41042b.containsValue(obj);
    }

    @Override
    public final A30 iterator() {
        return new PF(this.f41042b);
    }

    @Override
    public final int size() {
        return this.f41042b.f43517h;
    }

    @Override
    public final Iterator iterator() {
        return new PF(this.f41042b);
    }
}
