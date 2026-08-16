package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

public final class C12091i5 extends E4 implements RandomAccess, InterfaceC12216w5, InterfaceC12047d6 {

    public static final float[] f62327e;

    public float[] f62328c;

    public int f62329d;

    static {
        float[] fArr = new float[0];
        f62327e = fArr;
        new C12091i5(fArr, 0, false);
    }

    public C12091i5() {
        this(f62327e, 0, true);
    }

    private static int m(int i10) {
        return Math.max(((i10 * 3) / 2) + 1, 10);
    }

    private final void n(int i10) {
        if (i10 < 0 || i10 >= this.f62329d) {
            throw new IndexOutOfBoundsException(o(i10));
        }
    }

    private final String o(int i10) {
        return G4.a(this.f62329d, i10, (byte) 13, "Index:", ", Size:");
    }

    @Override
    public final InterfaceC12216w5 K0(int i10) {
        if (i10 >= this.f62329d) {
            return new C12091i5(i10 == 0 ? f62327e : Arrays.copyOf(this.f62328c, i10), this.f62329d, true);
        }
        throw new IllegalArgumentException();
    }

    @Override
    public final void add(int i10, Object obj) {
        int i11;
        float floatValue = ((Float) obj).floatValue();
        a();
        if (i10 >= 0 && i10 <= (i11 = this.f62329d)) {
            int i12 = i10 + 1;
            float[] fArr = this.f62328c;
            int length = fArr.length;
            if (i11 < length) {
                System.arraycopy(fArr, i10, fArr, i12, i11 - i10);
            } else {
                float[] fArr2 = new float[m(length)];
                System.arraycopy(this.f62328c, 0, fArr2, 0, i10);
                System.arraycopy(this.f62328c, i10, fArr2, i12, this.f62329d - i10);
                this.f62328c = fArr2;
            }
            this.f62328c[i10] = floatValue;
            this.f62329d++;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(o(i10));
    }

    @Override
    public final boolean addAll(Collection collection) {
        a();
        byte[] bArr = A5.f61886b;
        collection.getClass();
        if (!(collection instanceof C12091i5)) {
            return super.addAll(collection);
        }
        C12091i5 c12091i5 = (C12091i5) collection;
        int i10 = c12091i5.f62329d;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f62329d;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        float[] fArr = this.f62328c;
        if (i12 > fArr.length) {
            this.f62328c = Arrays.copyOf(fArr, i12);
        }
        System.arraycopy(c12091i5.f62328c, 0, this.f62328c, this.f62329d, c12091i5.f62329d);
        this.f62329d = i12;
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
        if (!(obj instanceof C12091i5)) {
            return super.equals(obj);
        }
        C12091i5 c12091i5 = (C12091i5) obj;
        if (this.f62329d != c12091i5.f62329d) {
            return false;
        }
        float[] fArr = c12091i5.f62328c;
        for (int i10 = 0; i10 < this.f62329d; i10++) {
            if (Float.floatToIntBits(this.f62328c[i10]) != Float.floatToIntBits(fArr[i10])) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final Object get(int i10) {
        n(i10);
        return Float.valueOf(this.f62328c[i10]);
    }

    @Override
    public final int hashCode() {
        int i10 = 1;
        for (int i11 = 0; i11 < this.f62329d; i11++) {
            i10 = (i10 * 31) + Float.floatToIntBits(this.f62328c[i11]);
        }
        return i10;
    }

    @Override
    public final int indexOf(Object obj) {
        if (!(obj instanceof Float)) {
            return -1;
        }
        float floatValue = ((Float) obj).floatValue();
        int i10 = this.f62329d;
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.f62328c[i11] == floatValue) {
                return i11;
            }
        }
        return -1;
    }

    public final float j(int i10) {
        n(i10);
        return this.f62328c[i10];
    }

    public final void k(float f10) {
        a();
        int i10 = this.f62329d;
        int length = this.f62328c.length;
        if (i10 == length) {
            float[] fArr = new float[m(length)];
            System.arraycopy(this.f62328c, 0, fArr, 0, this.f62329d);
            this.f62328c = fArr;
        }
        float[] fArr2 = this.f62328c;
        int i11 = this.f62329d;
        this.f62329d = i11 + 1;
        fArr2[i11] = f10;
    }

    public final void l(int i10) {
        int length = this.f62328c.length;
        if (i10 <= length) {
            return;
        }
        if (length == 0) {
            this.f62328c = new float[Math.max(i10, 10)];
            return;
        }
        while (length < i10) {
            length = m(length);
        }
        this.f62328c = Arrays.copyOf(this.f62328c, length);
    }

    @Override
    public final Object remove(int i10) {
        a();
        n(i10);
        float[] fArr = this.f62328c;
        float f10 = fArr[i10];
        if (i10 < this.f62329d - 1) {
            System.arraycopy(fArr, i10 + 1, fArr, i10, (r2 - i10) - 1);
        }
        this.f62329d--;
        this.modCount++;
        return Float.valueOf(f10);
    }

    @Override
    public final void removeRange(int i10, int i11) {
        a();
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        float[] fArr = this.f62328c;
        System.arraycopy(fArr, i11, fArr, i10, this.f62329d - i11);
        this.f62329d -= i11 - i10;
        this.modCount++;
    }

    @Override
    public final Object set(int i10, Object obj) {
        float floatValue = ((Float) obj).floatValue();
        a();
        n(i10);
        float[] fArr = this.f62328c;
        float f10 = fArr[i10];
        fArr[i10] = floatValue;
        return Float.valueOf(f10);
    }

    @Override
    public final int size() {
        return this.f62329d;
    }

    public C12091i5(float[] fArr, int i10, boolean z10) {
        super(z10);
        this.f62328c = fArr;
        this.f62329d = i10;
    }

    @Override
    public final boolean add(Object obj) {
        k(((Float) obj).floatValue());
        return true;
    }
}
