package com.google.android.gms.internal.auth;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

public final class S1 extends W0 implements RandomAccess, F1, InterfaceC11957l2 {

    public static final S1 f61665e = new S1(new long[0], 0, false);

    public long[] f61666c;

    public int f61667d;

    public S1() {
        this(new long[10], 0, true);
    }

    private final String j(int i10) {
        return "Index:" + i10 + ", Size:" + this.f61667d;
    }

    private final void k(int i10) {
        if (i10 < 0 || i10 >= this.f61667d) {
            throw new IndexOutOfBoundsException(j(i10));
        }
    }

    @Override
    public final F1 L0(int i10) {
        if (i10 >= this.f61667d) {
            return new S1(Arrays.copyOf(this.f61666c, i10), this.f61667d, true);
        }
        throw new IllegalArgumentException();
    }

    @Override
    public final void add(int i10, Object obj) {
        int i11;
        long longValue = ((Long) obj).longValue();
        a();
        if (i10 >= 0 && i10 <= (i11 = this.f61667d)) {
            long[] jArr = this.f61666c;
            if (i11 < jArr.length) {
                System.arraycopy(jArr, i10, jArr, i10 + 1, i11 - i10);
            } else {
                long[] jArr2 = new long[((i11 * 3) / 2) + 1];
                System.arraycopy(jArr, 0, jArr2, 0, i10);
                System.arraycopy(this.f61666c, i10, jArr2, i10 + 1, this.f61667d - i10);
                this.f61666c = jArr2;
            }
            this.f61666c[i10] = longValue;
            this.f61667d++;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(j(i10));
    }

    @Override
    public final boolean addAll(Collection collection) {
        a();
        byte[] bArr = H1.f61617d;
        collection.getClass();
        if (!(collection instanceof S1)) {
            return super.addAll(collection);
        }
        S1 s12 = (S1) collection;
        int i10 = s12.f61667d;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f61667d;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        long[] jArr = this.f61666c;
        if (i12 > jArr.length) {
            this.f61666c = Arrays.copyOf(jArr, i12);
        }
        System.arraycopy(s12.f61666c, 0, this.f61666c, this.f61667d, s12.f61667d);
        this.f61667d = i12;
        this.modCount++;
        return true;
    }

    public final void b(long j10) {
        a();
        int i10 = this.f61667d;
        long[] jArr = this.f61666c;
        if (i10 == jArr.length) {
            long[] jArr2 = new long[((i10 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i10);
            this.f61666c = jArr2;
        }
        long[] jArr3 = this.f61666c;
        int i11 = this.f61667d;
        this.f61667d = i11 + 1;
        jArr3[i11] = j10;
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
        if (!(obj instanceof S1)) {
            return super.equals(obj);
        }
        S1 s12 = (S1) obj;
        if (this.f61667d != s12.f61667d) {
            return false;
        }
        long[] jArr = s12.f61666c;
        for (int i10 = 0; i10 < this.f61667d; i10++) {
            if (this.f61666c[i10] != jArr[i10]) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final Object get(int i10) {
        k(i10);
        return Long.valueOf(this.f61666c[i10]);
    }

    @Override
    public final int hashCode() {
        int i10 = 1;
        for (int i11 = 0; i11 < this.f61667d; i11++) {
            long j10 = this.f61666c[i11];
            byte[] bArr = H1.f61617d;
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
        int i10 = this.f61667d;
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.f61666c[i11] == longValue) {
                return i11;
            }
        }
        return -1;
    }

    @Override
    public final Object remove(int i10) {
        a();
        k(i10);
        long[] jArr = this.f61666c;
        long j10 = jArr[i10];
        if (i10 < this.f61667d - 1) {
            System.arraycopy(jArr, i10 + 1, jArr, i10, (r3 - i10) - 1);
        }
        this.f61667d--;
        this.modCount++;
        return Long.valueOf(j10);
    }

    @Override
    public final void removeRange(int i10, int i11) {
        a();
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        long[] jArr = this.f61666c;
        System.arraycopy(jArr, i11, jArr, i10, this.f61667d - i11);
        this.f61667d -= i11 - i10;
        this.modCount++;
    }

    @Override
    public final Object set(int i10, Object obj) {
        long longValue = ((Long) obj).longValue();
        a();
        k(i10);
        long[] jArr = this.f61666c;
        long j10 = jArr[i10];
        jArr[i10] = longValue;
        return Long.valueOf(j10);
    }

    @Override
    public final int size() {
        return this.f61667d;
    }

    public S1(long[] jArr, int i10, boolean z10) {
        super(z10);
        this.f61666c = jArr;
        this.f61667d = i10;
    }

    @Override
    public final boolean add(Object obj) {
        b(((Long) obj).longValue());
        return true;
    }
}
