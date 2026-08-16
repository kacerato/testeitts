package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;

public final class D5 implements Iterator {

    public final Iterator f61901b;

    public D5(Iterator it) {
        this.f61901b = it;
    }

    @Override
    public final boolean hasNext() {
        return this.f61901b.hasNext();
    }

    @Override
    public final Object next() {
        Map.Entry entry = (Map.Entry) this.f61901b.next();
        return entry.getValue() instanceof E5 ? new C5(entry, null) : entry;
    }

    @Override
    public final void remove() {
        this.f61901b.remove();
    }
}
