package com.google.common.collect;

import java.util.Collection;
import java.util.Set;
import javax.annotation.CheckForNull;

@X
@v2.b
public abstract class K0<E> extends AbstractC12563r0<E> implements Set<E> {
    @Override
    public abstract Set<E> k0();

    public boolean E0(@CheckForNull Object obj) {
        return D2.g(this, obj);
    }

    public int F0() {
        return D2.k(this);
    }

    @Override
    public boolean equals(@CheckForNull Object obj) {
        return obj == this || k0().equals(obj);
    }

    @Override
    public int hashCode() {
        return k0().hashCode();
    }

    @Override
    public boolean x0(Collection<?> collection) {
        return D2.I(this, (Collection) w2.H.E(collection));
    }
}
