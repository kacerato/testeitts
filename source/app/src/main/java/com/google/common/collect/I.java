package com.google.common.collect;

import java.io.Serializable;
import java.util.Comparator;
import javax.annotation.CheckForNull;

@X
@v2.b(serializable = true)
public final class I<T> extends Ordering<T> implements Serializable {

    public static final long f65809e = 0;

    public final Comparator<T> f65810d;

    public I(Comparator<T> comparator) {
        this.f65810d = (Comparator) w2.H.E(comparator);
    }

    @Override
    public int compare(@InterfaceC12518f2 T t10, @InterfaceC12518f2 T t11) {
        return this.f65810d.compare(t10, t11);
    }

    @Override
    public boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof I) {
            return this.f65810d.equals(((I) obj).f65810d);
        }
        return false;
    }

    public int hashCode() {
        return this.f65810d.hashCode();
    }

    public String toString() {
        return this.f65810d.toString();
    }
}
