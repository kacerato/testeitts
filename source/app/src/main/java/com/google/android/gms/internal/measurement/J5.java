package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

public final class J5 extends E4 implements RandomAccess, InterfaceC12234y5, InterfaceC12047d6 {

    public static final long[] f61963e;

    public static final J5 f61964f;

    public long[] f61965c;

    public int f61966d;

    static {
        long[] jArr = new long[0];
        f61963e = jArr;
        f61964f = new J5(jArr, 0, false);
    }

    public J5() {
        this(f61963e, 0, true);
    }

    public static J5 b() {
        return f61964f;
    }

    private static int k(int i10) {
        return Math.max(((i10 * 3) / 2) + 1, 10);
    }

    private final void l(int i10) {
        if (i10 < 0 || i10 >= this.f61966d) {
            throw new IndexOutOfBoundsException(m(i10));
        }
    }

    private final String m(int i10) {
        return G4.a(this.f61966d, i10, (byte) 13, "Index:", ", Size:");
    }

    @Override
    public final InterfaceC12234y5 K0(int i10) {
        if (i10 >= this.f61966d) {
            return new J5(i10 == 0 ? f61963e : Arrays.copyOf(this.f61965c, i10), this.f61966d, true);
        }
        throw new IllegalArgumentException();
    }

    @Override
    public final void add(int i10, Object obj) {
        int i11;
        long longValue = ((Long) obj).longValue();
        a();
        if (i10 >= 0 && i10 <= (i11 = this.f61966d)) {
            int i12 = i10 + 1;
            long[] jArr = this.f61965c;
            int length = jArr.length;
            if (i11 < length) {
                System.arraycopy(jArr, i10, jArr, i12, i11 - i10);
            } else {
                long[] jArr2 = new long[k(length)];
                System.arraycopy(this.f61965c, 0, jArr2, 0, i10);
                System.arraycopy(this.f61965c, i10, jArr2, i12, this.f61966d - i10);
                this.f61965c = jArr2;
            }
            this.f61965c[i10] = longValue;
            this.f61966d++;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(m(i10));
    }

    @Override
    public final boolean addAll(Collection collection) {
        a();
        byte[] bArr = A5.f61886b;
        collection.getClass();
        if (!(collection instanceof J5)) {
            return super.addAll(collection);
        }
        J5 j52 = (J5) collection;
        int i10 = j52.f61966d;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f61966d;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        long[] jArr = this.f61965c;
        if (i12 > jArr.length) {
            this.f61965c = Arrays.copyOf(jArr, i12);
        }
        System.arraycopy(j52.f61965c, 0, this.f61965c, this.f61966d, j52.f61966d);
        this.f61966d = i12;
        this.modCount++;
        return true;
    }

    public final void c(long j10) {
        a();
        int i10 = this.f61966d;
        int length = this.f61965c.length;
        if (i10 == length) {
            long[] jArr = new long[k(length)];
            System.arraycopy(this.f61965c, 0, jArr, 0, this.f61966d);
            this.f61965c = jArr;
        }
        long[] jArr2 = this.f61965c;
        int i11 = this.f61966d;
        this.f61966d = i11 + 1;
        jArr2[i11] = j10;
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
        if (!(obj instanceof J5)) {
            return super.equals(obj);
        }
        J5 j52 = (J5) obj;
        if (this.f61966d != j52.f61966d) {
            return false;
        }
        long[] jArr = j52.f61965c;
        for (int i10 = 0; i10 < this.f61966d; i10++) {
            if (this.f61965c[i10] != jArr[i10]) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final Object get(int i10) {
        l(i10);
        return Long.valueOf(this.f61965c[i10]);
    }

    @Override
    public final int hashCode() {
        int i10 = 1;
        for (int i11 = 0; i11 < this.f61966d; i11++) {
            long j10 = this.f61965c[i11];
            byte[] bArr = A5.f61886b;
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
        int i10 = this.f61966d;
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.f61965c[i11] == longValue) {
                return i11;
            }
        }
        return -1;
    }

    public final void j(int i10) {
        int length = this.f61965c.length;
        if (i10 <= length) {
            return;
        }
        if (length == 0) {
            this.f61965c = new long[Math.max(i10, 10)];
            return;
        }
        while (length < i10) {
            length = k(length);
        }
        this.f61965c = Arrays.copyOf(this.f61965c, length);
    }

    @Override
    public final long q4(int i10) {
        l(i10);
        return this.f61965c[i10];
    }

    @Override
    public final Object remove(int i10) {
        a();
        l(i10);
        long[] jArr = this.f61965c;
        long j10 = jArr[i10];
        if (i10 < this.f61966d - 1) {
            System.arraycopy(jArr, i10 + 1, jArr, i10, (r3 - i10) - 1);
        }
        this.f61966d--;
        this.modCount++;
        return Long.valueOf(j10);
    }

    @Override
    public final void removeRange(int i10, int i11) {
        a();
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        long[] jArr = this.f61965c;
        System.arraycopy(jArr, i11, jArr, i10, this.f61966d - i11);
        this.f61966d -= i11 - i10;
        this.modCount++;
    }

    @Override
    public final Object set(int i10, Object obj) {
        long longValue = ((Long) obj).longValue();
        a();
        l(i10);
        long[] jArr = this.f61965c;
        long j10 = jArr[i10];
        jArr[i10] = longValue;
        return Long.valueOf(j10);
    }

    @Override
    public final int size() {
        return this.f61966d;
    }

    public J5(long[] jArr, int i10, boolean z10) {
        super(z10);
        this.f61965c = jArr;
        this.f61966d = i10;
    }

    @Override
    public final boolean add(Object obj) {
        c(((Long) obj).longValue());
        return true;
    }
}
