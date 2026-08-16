package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Collection;
import java.util.ListIterator;
import java.util.RandomAccess;

public final class C7425gU extends AbstractC8349m0 implements RandomAccess, Cloneable, Serializable {

    public transient long[] f48268b;

    public int f48269c;

    public C7425gU(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException(HC.a(i10, "Initial capacity (", ") is negative"));
        }
        this.f48268b = new long[i10];
    }

    @Override
    public final void a(int i10, long j10) {
        j(i10);
        int i11 = this.f48269c;
        int i12 = i11 + 1;
        long[] jArr = this.f48268b;
        if (i12 > jArr.length) {
            long[] jArr2 = new long[(int) Math.max(Math.min(jArr.length * 2, 2147483639L), i12)];
            System.arraycopy(jArr, 0, jArr2, 0, i11);
            jArr = jArr2;
        }
        this.f48268b = jArr;
        int i13 = this.f48269c;
        if (i10 != i13) {
            System.arraycopy(jArr, i10, jArr, i10 + 1, i13 - i10);
        }
        this.f48268b[i10] = j10;
        this.f48269c++;
    }

    @Override
    public final long b(int i10, long j10) {
        if (i10 < this.f48269c) {
            long[] jArr = this.f48268b;
            long j11 = jArr[i10];
            jArr[i10] = j10;
            return j11;
        }
        StringBuilder a10 = AbstractC5413Jt0.a(i10, "Index (", ") is greater than or equal to list size (");
        a10.append(this.f48269c);
        a10.append(")");
        throw new IndexOutOfBoundsException(a10.toString());
    }

    @Override
    public final boolean c(long j10) {
        int d10 = d(j10);
        if (d10 == -1) {
            return false;
        }
        f(d10);
        return true;
    }

    @Override
    public final void clear() {
        this.f48269c = 0;
    }

    public final Object clone() {
        C7425gU c7425gU = new C7425gU(this.f48269c);
        System.arraycopy(this.f48268b, 0, c7425gU.f48268b, 0, this.f48269c);
        c7425gU.f48269c = this.f48269c;
        return c7425gU;
    }

    @Override
    public final long d(int i10) {
        if (i10 < this.f48269c) {
            return this.f48268b[i10];
        }
        StringBuilder a10 = AbstractC5413Jt0.a(i10, "Index (", ") is greater than or equal to list size (");
        a10.append(this.f48269c);
        a10.append(")");
        throw new IndexOutOfBoundsException(a10.toString());
    }

    @Override
    public final int e(long j10) {
        int i10 = this.f48269c;
        while (true) {
            int i11 = i10 - 1;
            if (i10 == 0) {
                return -1;
            }
            if (j10 == this.f48268b[i11]) {
                return i11;
            }
            i10 = i11;
        }
    }

    @Override
    public final long f(int i10) {
        int i11 = this.f48269c;
        if (i10 >= i11) {
            StringBuilder a10 = AbstractC5413Jt0.a(i10, "Index (", ") is greater than or equal to list size (");
            a10.append(this.f48269c);
            a10.append(")");
            throw new IndexOutOfBoundsException(a10.toString());
        }
        long[] jArr = this.f48268b;
        long j10 = jArr[i10];
        int i12 = i11 - 1;
        this.f48269c = i12;
        if (i10 != i12) {
            System.arraycopy(jArr, i10 + 1, jArr, i10, i12 - i10);
        }
        return j10;
    }

    @Override
    public final boolean isEmpty() {
        return this.f48269c == 0;
    }

    @Override
    public final AbstractC8516n0 l(int i10) {
        j(i10);
        return new C7258fU(this, i10);
    }

    @Override
    public final ListIterator listIterator(int i10) {
        j(i10);
        return new C7258fU(this, i10);
    }

    @Override
    public final boolean removeAll(Collection collection) {
        int i10;
        long[] jArr = this.f48268b;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            i10 = this.f48269c;
            if (i11 >= i10) {
                break;
            }
            if (!collection.contains(Long.valueOf(jArr[i11]))) {
                jArr[i12] = jArr[i11];
                i12++;
            }
            i11++;
        }
        boolean z10 = i10 != i12;
        this.f48269c = i12;
        return z10;
    }

    @Override
    public final int size() {
        return this.f48269c;
    }

    @Override
    public final int d(long j10) {
        for (int i10 = 0; i10 < this.f48269c; i10++) {
            if (j10 == this.f48268b[i10]) {
                return i10;
            }
        }
        return -1;
    }

    @Override
    public final boolean a(long j10) {
        int i10 = this.f48269c;
        int i11 = i10 + 1;
        long[] jArr = this.f48268b;
        if (i11 > jArr.length) {
            long[] jArr2 = new long[(int) Math.max(Math.min(jArr.length * 2, 2147483639L), i11)];
            System.arraycopy(jArr, 0, jArr2, 0, i10);
            jArr = jArr2;
        }
        this.f48268b = jArr;
        int i12 = this.f48269c;
        this.f48269c = i12 + 1;
        jArr[i12] = j10;
        return true;
    }

    @Override
    public final void a(int i10, int i11) {
        Y3.a(this.f48269c, i10, i11);
        long[] jArr = this.f48268b;
        System.arraycopy(jArr, i11, jArr, i10, this.f48269c - i11);
        this.f48269c -= i11 - i10;
    }
}
