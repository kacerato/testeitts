package com.android.tools.r8.internal;

import java.util.Map;

public final class C9720uC extends AbstractC4895Av0 {

    public final AbstractC4895Av0 f52820b;

    public C9720uC(C10054wC c10054wC) {
        this.f52820b = c10054wC.f53445c.entrySet().iterator();
    }

    @Override
    public final boolean hasNext() {
        return this.f52820b.hasNext();
    }

    @Override
    public final Object next() {
        return ((Map.Entry) this.f52820b.next()).getValue();
    }
}
