package com.android.tools.r8.internal;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Set;

public final class C5339Il0 extends AbstractSet {

    public final int f41202b;

    public final AbstractC8552nC f41203c;

    public C5339Il0(int i10, AbstractC8552nC abstractC8552nC) {
        this.f41202b = i10;
        this.f41203c = abstractC8552nC;
    }

    @Override
    public final boolean contains(Object obj) {
        if (obj instanceof Set) {
            Set set = (Set) obj;
            if (set.size() == this.f41202b && this.f41203c.keySet().containsAll(set)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final Iterator iterator() {
        return new C5281Hl0(this);
    }

    @Override
    public final int size() {
        int size = this.f41203c.size();
        int i10 = this.f41202b;
        if (size < 0) {
            throw new IllegalArgumentException(HC.a(size, "n (", ") must be >= 0"));
        }
        if (i10 < 0) {
            throw new IllegalArgumentException(HC.a(i10, "k (", ") must be >= 0"));
        }
        int i11 = 0;
        if (!(i10 <= size)) {
            throw new IllegalArgumentException(AbstractC4885Aq0.a("k (%s) > n (%s)", Integer.valueOf(i10), Integer.valueOf(size)));
        }
        if (i10 > (size >> 1)) {
            i10 = size - i10;
        }
        int[] iArr = YH.f45961a;
        if (i10 >= 17 || size > iArr[i10]) {
            return Integer.MAX_VALUE;
        }
        if (i10 == 0) {
            return 1;
        }
        if (i10 == 1) {
            return size;
        }
        long j10 = 1;
        while (i11 < i10) {
            long j11 = j10 * (size - i11);
            i11++;
            j10 = j11 / i11;
        }
        return (int) j10;
    }

    @Override
    public final String toString() {
        return "Sets.combinations(" + ((Object) this.f41203c.keySet()) + ", " + this.f41202b + ")";
    }
}
