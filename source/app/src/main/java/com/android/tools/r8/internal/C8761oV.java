package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.Map;
import java.util.Spliterator;
import java.util.function.Consumer;

public final class C8761oV extends AbstractC8594nV {

    public final AbstractC8928pV f51264b;

    public C8761oV(AbstractC8928pV abstractC8928pV) {
        this.f51264b = abstractC8928pV;
    }

    @Override
    public final Map a() {
        return this.f51264b;
    }

    @Override
    public final void forEach(Consumer consumer) {
        this.f51264b.a(consumer);
    }

    @Override
    public final Iterator iterator() {
        return this.f51264b.e();
    }

    @Override
    public final Spliterator spliterator() {
        return this.f51264b.i();
    }
}
