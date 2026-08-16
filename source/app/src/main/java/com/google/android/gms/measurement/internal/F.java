package com.google.android.gms.measurement.internal;

import java.util.Iterator;
import java.util.Objects;

public final class F implements Iterator {

    public final Iterator f62629b;

    public final G f62630c;

    public F(G g10) {
        Objects.requireNonNull(g10);
        this.f62630c = g10;
        this.f62629b = g10.u0().keySet().iterator();
    }

    @Override
    public final String next() {
        return (String) this.f62629b.next();
    }

    @Override
    public final boolean hasNext() {
        return this.f62629b.hasNext();
    }

    @Override
    public final void remove() {
        throw new UnsupportedOperationException("Remove not supported");
    }
}
