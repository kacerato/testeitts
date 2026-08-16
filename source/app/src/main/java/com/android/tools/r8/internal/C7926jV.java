package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.Map;

public final class C7926jV extends AbstractC4895Av0 {

    public final Iterator f49255b;

    public C7926jV(Iterator it) {
        this.f49255b = it;
    }

    @Override
    public final boolean hasNext() {
        return this.f49255b.hasNext();
    }

    @Override
    public final Object next() {
        Map.Entry entry = (Map.Entry) this.f49255b.next();
        entry.getClass();
        return new C7761iV(entry);
    }
}
