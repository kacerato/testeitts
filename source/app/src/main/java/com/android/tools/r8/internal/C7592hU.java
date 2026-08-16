package com.android.tools.r8.internal;

import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collection;

public final class C7592hU extends AbstractC9353s1 implements WI, B70 {

    public static final C7592hU f48563e;

    public long[] f48564c;

    public int f48565d;

    static {
        C7592hU c7592hU = new C7592hU(new long[0], 0);
        f48563e = c7592hU;
        c7592hU.f52249b = false;
    }

    public C7592hU() {
        this.f48564c = new long[10];
        this.f48565d = 0;
    }

    @Override
    public final void add(int i10, Object obj) {
        int i11;
        long longValue = ((Long) obj).longValue();
        a();
        if (i10 >= 0 && i10 <= (i11 = this.f48565d)) {
            long[] jArr = this.f48564c;
            if (i11 < jArr.length) {
                System.arraycopy(jArr, i10, jArr, i10 + 1, i11 - i10);
            } else {
                long[] jArr2 = new long[((i11 * 3) / 2) + 1];
                System.arraycopy(jArr, 0, jArr2, 0, i10);
                System.arraycopy(this.f48564c, i10, jArr2, i10 + 1, this.f48565d - i10);
                this.f48564c = jArr2;
            }
            this.f48564c[i10] = longValue;
            this.f48565d++;
            this.modCount++;
            return;
        }
        StringBuilder a10 = AbstractC5413Jt0.a(i10, "Index:", ", Size:");
        a10.append(this.f48565d);
        throw new IndexOutOfBoundsException(a10.toString());
    }

    @Override
    public final boolean addAll(Collection collection) {
        a();
        Charset charset = YI.f45964a;
        collection.getClass();
        if (!(collection instanceof C7592hU)) {
            return super.addAll(collection);
        }
        C7592hU c7592hU = (C7592hU) collection;
        int i10 = c7592hU.f48565d;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f48565d;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        long[] jArr = this.f48564c;
        if (i12 > jArr.length) {
            this.f48564c = Arrays.copyOf(jArr, i12);
        }
        System.arraycopy(c7592hU.f48564c, 0, this.f48564c, this.f48565d, c7592hU.f48565d);
        this.f48565d = i12;
        this.modCount++;
        return true;
    }

    @Override
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C7592hU)) {
            return super.equals(obj);
        }
        C7592hU c7592hU = (C7592hU) obj;
        if (this.f48565d != c7592hU.f48565d) {
            return false;
        }
        long[] jArr = c7592hU.f48564c;
        for (int i10 = 0; i10 < this.f48565d; i10++) {
            if (this.f48564c[i10] != jArr[i10]) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final Object get(int i10) {
        j(i10);
        return Long.valueOf(this.f48564c[i10]);
    }

    @Override
    public final int hashCode() {
        int i10 = 1;
        for (int i11 = 0; i11 < this.f48565d; i11++) {
            long j10 = this.f48564c[i11];
            Charset charset = YI.f45964a;
            i10 = (i10 * 31) + ((int) (j10 ^ (j10 >>> 32)));
        }
        return i10;
    }

    @Override
    public final int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long longValue = ((Long) obj).longValue();
        int i10 = this.f48565d;
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.f48564c[i11] == longValue) {
                return i11;
            }
        }
        return -1;
    }

    public final void j(int i10) {
        if (i10 < 0 || i10 >= this.f48565d) {
            StringBuilder a10 = AbstractC5413Jt0.a(i10, "Index:", ", Size:");
            a10.append(this.f48565d);
            throw new IndexOutOfBoundsException(a10.toString());
        }
    }

    public final C7592hU k(int i10) {
        if (i10 >= this.f48565d) {
            return new C7592hU(Arrays.copyOf(this.f48564c, i10), this.f48565d);
        }
        throw new IllegalArgumentException();
    }

    @Override
    public final Object remove(int i10) {
        a();
        j(i10);
        long[] jArr = this.f48564c;
        long j10 = jArr[i10];
        if (i10 < this.f48565d - 1) {
            System.arraycopy(jArr, i10 + 1, jArr, i10, (r3 - i10) - 1);
        }
        this.f48565d--;
        this.modCount++;
        return Long.valueOf(j10);
    }

    @Override
    public final void removeRange(int i10, int i11) {
        a();
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        long[] jArr = this.f48564c;
        System.arraycopy(jArr, i11, jArr, i10, this.f48565d - i11);
        this.f48565d -= i11 - i10;
        this.modCount++;
    }

    @Override
    public final Object set(int i10, Object obj) {
        long longValue = ((Long) obj).longValue();
        a();
        j(i10);
        long[] jArr = this.f48564c;
        long j10 = jArr[i10];
        jArr[i10] = longValue;
        return Long.valueOf(j10);
    }

    @Override
    public final int size() {
        return this.f48565d;
    }

    public C7592hU(long[] jArr, int i10) {
        this.f48564c = jArr;
        this.f48565d = i10;
    }

    @Override
    public final boolean add(Object obj) {
        long longValue = ((Long) obj).longValue();
        a();
        int i10 = this.f48565d;
        long[] jArr = this.f48564c;
        if (i10 == jArr.length) {
            long[] jArr2 = new long[((i10 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i10);
            this.f48564c = jArr2;
        }
        long[] jArr3 = this.f48564c;
        int i11 = this.f48565d;
        this.f48565d = i11 + 1;
        jArr3[i11] = longValue;
        return true;
    }
}
