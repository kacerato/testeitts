package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.Set;

public final class ZT extends AbstractC7848j0 implements Cloneable, Set {

    public final C7091eU f46240b;

    public ZT(C7091eU c7091eU) {
        this.f46240b = c7091eU;
    }

    @Override
    public final InterfaceC8258lU a() {
        return new YT(this.f46240b);
    }

    @Override
    public final boolean b(long j10) {
        return this.f46240b.a(j10);
    }

    @Override
    public final boolean c(long j10) {
        C7091eU c7091eU = this.f46240b;
        int i10 = c7091eU.f47697h;
        c7091eU.c(j10);
        return this.f46240b.f47697h != i10;
    }

    @Override
    public final void clear() {
        this.f46240b.clear();
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set = (Set) obj;
        if (set.size() != size()) {
            return false;
        }
        return containsAll(set);
    }

    @Override
    public final int hashCode() {
        C7091eU c7091eU = this.f46240b;
        int i10 = c7091eU.f47697h;
        YT yt = new YT(c7091eU);
        int i11 = 0;
        while (true) {
            int i12 = i10 - 1;
            if (i10 == 0) {
                return i11;
            }
            long j10 = yt.f45990h.f47691b[yt.a()];
            i11 += (int) (j10 ^ (j10 >>> 32));
            i10 = i12;
        }
    }

    @Override
    public final Iterator iterator() {
        return new YT(this.f46240b);
    }

    @Override
    public final int size() {
        return this.f46240b.f47697h;
    }
}
