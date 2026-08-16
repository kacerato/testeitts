package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

public final class I4 extends E4 implements RandomAccess, InterfaceC12180s5, InterfaceC12047d6 {

    public static final boolean[] f61956e;

    public boolean[] f61957c;

    public int f61958d;

    static {
        boolean[] zArr = new boolean[0];
        f61956e = zArr;
        new I4(zArr, 0, false);
    }

    public I4() {
        this(f61956e, 0, true);
    }

    public static int l(int i10) {
        return Math.max(((i10 * 3) / 2) + 1, 10);
    }

    private final void m(int i10) {
        if (i10 < 0 || i10 >= this.f61958d) {
            throw new IndexOutOfBoundsException(n(i10));
        }
    }

    @Override
    public final InterfaceC12180s5 K0(int i10) {
        if (i10 >= this.f61958d) {
            return new I4(i10 == 0 ? f61956e : Arrays.copyOf(this.f61957c, i10), this.f61958d, true);
        }
        throw new IllegalArgumentException();
    }

    @Override
    public final void add(int i10, Object obj) {
        int i11;
        boolean booleanValue = ((Boolean) obj).booleanValue();
        a();
        if (i10 >= 0 && i10 <= (i11 = this.f61958d)) {
            int i12 = i10 + 1;
            boolean[] zArr = this.f61957c;
            int length = zArr.length;
            if (i11 < length) {
                System.arraycopy(zArr, i10, zArr, i12, i11 - i10);
            } else {
                boolean[] zArr2 = new boolean[l(length)];
                System.arraycopy(this.f61957c, 0, zArr2, 0, i10);
                System.arraycopy(this.f61957c, i10, zArr2, i12, this.f61958d - i10);
                this.f61957c = zArr2;
            }
            this.f61957c[i10] = booleanValue;
            this.f61958d++;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(n(i10));
    }

    @Override
    public final boolean addAll(Collection collection) {
        a();
        byte[] bArr = A5.f61886b;
        collection.getClass();
        if (!(collection instanceof I4)) {
            return super.addAll(collection);
        }
        I4 i42 = (I4) collection;
        int i10 = i42.f61958d;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f61958d;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        boolean[] zArr = this.f61957c;
        if (i12 > zArr.length) {
            this.f61957c = Arrays.copyOf(zArr, i12);
        }
        System.arraycopy(i42.f61957c, 0, this.f61957c, this.f61958d, i42.f61958d);
        this.f61958d = i12;
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
        if (!(obj instanceof I4)) {
            return super.equals(obj);
        }
        I4 i42 = (I4) obj;
        if (this.f61958d != i42.f61958d) {
            return false;
        }
        boolean[] zArr = i42.f61957c;
        for (int i10 = 0; i10 < this.f61958d; i10++) {
            if (this.f61957c[i10] != zArr[i10]) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final Object get(int i10) {
        m(i10);
        return Boolean.valueOf(this.f61957c[i10]);
    }

    @Override
    public final int hashCode() {
        int i10 = 1;
        for (int i11 = 0; i11 < this.f61958d; i11++) {
            i10 = (i10 * 31) + A5.b(this.f61957c[i11]);
        }
        return i10;
    }

    @Override
    public final int indexOf(Object obj) {
        if (!(obj instanceof Boolean)) {
            return -1;
        }
        boolean booleanValue = ((Boolean) obj).booleanValue();
        int i10 = this.f61958d;
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.f61957c[i11] == booleanValue) {
                return i11;
            }
        }
        return -1;
    }

    public final boolean j(int i10) {
        m(i10);
        return this.f61957c[i10];
    }

    public final void k(boolean z10) {
        a();
        int i10 = this.f61958d;
        int length = this.f61957c.length;
        if (i10 == length) {
            boolean[] zArr = new boolean[l(length)];
            System.arraycopy(this.f61957c, 0, zArr, 0, this.f61958d);
            this.f61957c = zArr;
        }
        boolean[] zArr2 = this.f61957c;
        int i11 = this.f61958d;
        this.f61958d = i11 + 1;
        zArr2[i11] = z10;
    }

    public final String n(int i10) {
        return G4.a(this.f61958d, i10, (byte) 13, "Index:", ", Size:");
    }

    @Override
    public final Object remove(int i10) {
        a();
        m(i10);
        boolean[] zArr = this.f61957c;
        boolean z10 = zArr[i10];
        if (i10 < this.f61958d - 1) {
            System.arraycopy(zArr, i10 + 1, zArr, i10, (r2 - i10) - 1);
        }
        this.f61958d--;
        this.modCount++;
        return Boolean.valueOf(z10);
    }

    @Override
    public final void removeRange(int i10, int i11) {
        a();
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        boolean[] zArr = this.f61957c;
        System.arraycopy(zArr, i11, zArr, i10, this.f61958d - i11);
        this.f61958d -= i11 - i10;
        this.modCount++;
    }

    @Override
    public final Object set(int i10, Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        a();
        m(i10);
        boolean[] zArr = this.f61957c;
        boolean z10 = zArr[i10];
        zArr[i10] = booleanValue;
        return Boolean.valueOf(z10);
    }

    @Override
    public final int size() {
        return this.f61958d;
    }

    public I4(boolean[] zArr, int i10, boolean z10) {
        super(z10);
        this.f61957c = zArr;
        this.f61958d = i10;
    }

    @Override
    public final boolean add(Object obj) {
        k(((Boolean) obj).booleanValue());
        return true;
    }
}
