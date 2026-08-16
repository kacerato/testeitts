package com.google.common.collect;

import java.io.Serializable;
import javax.annotation.CheckForNull;
import w2.InterfaceC15902t;

@X
@v2.b(serializable = true)
public final class C12590y<F, T> extends Ordering<F> implements Serializable {

    public static final long f66939f = 0;

    public final InterfaceC15902t<F, ? extends T> f66940d;

    public final Ordering<T> f66941e;

    public C12590y(InterfaceC15902t<F, ? extends T> interfaceC15902t, Ordering<T> ordering) {
        this.f66940d = (InterfaceC15902t) w2.H.E(interfaceC15902t);
        this.f66941e = (Ordering) w2.H.E(ordering);
    }

    @Override
    public int compare(@InterfaceC12518f2 F f10, @InterfaceC12518f2 F f11) {
        return this.f66941e.compare(this.f66940d.apply(f10), this.f66940d.apply(f11));
    }

    @Override
    public boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C12590y)) {
            return false;
        }
        C12590y c12590y = (C12590y) obj;
        return this.f66940d.equals(c12590y.f66940d) && this.f66941e.equals(c12590y.f66941e);
    }

    public int hashCode() {
        return w2.B.b(this.f66940d, this.f66941e);
    }

    public String toString() {
        String valueOf = String.valueOf(this.f66941e);
        String valueOf2 = String.valueOf(this.f66940d);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 13 + valueOf2.length());
        sb2.append(valueOf);
        sb2.append(".onResultOf(");
        sb2.append(valueOf2);
        sb2.append(")");
        return sb2.toString();
    }
}
