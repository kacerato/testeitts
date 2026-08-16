package com.google.common.collect;

import java.io.Serializable;
import javax.annotation.CheckForNull;

@X
@v2.b(serializable = true)
public final class C12498a2<T> extends Ordering<T> implements Serializable {

    public static final long f66420e = 0;

    public final Ordering<? super T> f66421d;

    public C12498a2(Ordering<? super T> ordering) {
        this.f66421d = ordering;
    }

    @Override
    public <S extends T> Ordering<S> B() {
        return this;
    }

    @Override
    public <S extends T> Ordering<S> C() {
        return this.f66421d.C();
    }

    @Override
    public <S extends T> Ordering<S> F() {
        return this.f66421d.F().C();
    }

    @Override
    public int compare(@CheckForNull T t10, @CheckForNull T t11) {
        if (t10 == t11) {
            return 0;
        }
        if (t10 == null) {
            return -1;
        }
        if (t11 == null) {
            return 1;
        }
        return this.f66421d.compare(t10, t11);
    }

    @Override
    public boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C12498a2) {
            return this.f66421d.equals(((C12498a2) obj).f66421d);
        }
        return false;
    }

    public int hashCode() {
        return this.f66421d.hashCode() ^ 957692532;
    }

    public String toString() {
        String valueOf = String.valueOf(this.f66421d);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 13);
        sb2.append(valueOf);
        sb2.append(".nullsFirst()");
        return sb2.toString();
    }
}
