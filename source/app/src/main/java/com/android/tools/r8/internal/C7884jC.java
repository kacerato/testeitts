package com.android.tools.r8.internal;

import java.util.Map;

public final class C7884jC extends AbstractC4895Av0 {

    public final AbstractC4895Av0 f49187b;

    public C7884jC(AbstractC4895Av0 abstractC4895Av0) {
        this.f49187b = abstractC4895Av0;
    }

    @Override
    public final boolean hasNext() {
        return this.f49187b.hasNext();
    }

    @Override
    public final Object next() {
        return ((Map.Entry) this.f49187b.next()).getKey();
    }
}
