package com.google.common.collect;

import java.io.Serializable;
import javax.annotation.CheckForNull;

@X
@v2.b(serializable = true)
public final class C12502b2<T> extends Ordering<T> implements Serializable {

    public static final long f66453e = 0;

    public final Ordering<? super T> f66454d;

    public C12502b2(Ordering<? super T> ordering) {
        this.f66454d = ordering;
    }

    @Override
    public <S extends T> Ordering<S> B() {
        return this.f66454d.B();
    }

    @Override
    public <S extends T> Ordering<S> C() {
        return this;
    }

    @Override
    public <S extends T> Ordering<S> F() {
        return this.f66454d.F().B();
    }

    @Override
    public int compare(@CheckForNull T t10, @CheckForNull T t11) {
        if (t10 == t11) {
            return 0;
        }
        if (t10 == null) {
            return 1;
        }
        if (t11 == null) {
            return -1;
        }
        return this.f66454d.compare(t10, t11);
    }

    @Override
    public boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C12502b2) {
            return this.f66454d.equals(((C12502b2) obj).f66454d);
        }
        return false;
    }

    public int hashCode() {
        return this.f66454d.hashCode() ^ (-921210296);
    }

    public String toString() {
        String valueOf = String.valueOf(this.f66454d);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 12);
        sb2.append(valueOf);
        sb2.append(".nullsLast()");
        return sb2.toString();
    }
}
