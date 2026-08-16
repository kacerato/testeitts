package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.Spliterator;
import java.util.function.Consumer;

public final class TC extends AbstractC9386sC {

    public final UC f44416e;

    public TC(UC uc2) {
        this.f44416e = uc2;
    }

    @Override
    public final void forEach(Consumer consumer) {
        a().forEach(consumer);
    }

    @Override
    public final AbstractC4895Av0 iterator() {
        return a().iterator();
    }

    @Override
    public final AbstractC7552hC j() {
        return new SC(this);
    }

    @Override
    public final AbstractC8552nC k() {
        return this.f44416e;
    }

    @Override
    public final Spliterator spliterator() {
        return a().spliterator();
    }

    @Override
    public final Iterator iterator() {
        return a().iterator();
    }
}
