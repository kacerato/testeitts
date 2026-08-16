package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.Map;

public final class C9754uR implements Iterator {

    public final C7310fn0 f52850b;

    public C9754uR(C7310fn0 c7310fn0) {
        this.f52850b = c7310fn0;
    }

    @Override
    public final boolean hasNext() {
        return this.f52850b.hasNext();
    }

    @Override
    public final Object next() {
        Map.Entry entry = (Map.Entry) this.f52850b.next();
        entry.getValue();
        return entry;
    }

    @Override
    public final void remove() {
        this.f52850b.remove();
    }
}
