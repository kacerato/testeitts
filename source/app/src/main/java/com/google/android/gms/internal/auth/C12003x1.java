package com.google.android.gms.internal.auth;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

public final class C12003x1 extends W0 implements RandomAccess, F1, InterfaceC11957l2 {

    public static final C12003x1 f61867e = new C12003x1(new float[0], 0, false);

    public float[] f61868c;

    public int f61869d;

    public C12003x1() {
        this(new float[10], 0, true);
    }

    private final String j(int i10) {
        return "Index:" + i10 + ", Size:" + this.f61869d;
    }

    private final void k(int i10) {
        if (i10 < 0 || i10 >= this.f61869d) {
            throw new IndexOutOfBoundsException(j(i10));
        }
    }

    @Override
    public final F1 L0(int i10) {
        if (i10 >= this.f61869d) {
            return new C12003x1(Arrays.copyOf(this.f61868c, i10), this.f61869d, true);
        }
        throw new IllegalArgumentException();
    }

    @Override
    public final void add(int i10, Object obj) {
        int i11;
        float floatValue = ((Float) obj).floatValue();
        a();
        if (i10 >= 0 && i10 <= (i11 = this.f61869d)) {
            float[] fArr = this.f61868c;
            if (i11 < fArr.length) {
                System.arraycopy(fArr, i10, fArr, i10 + 1, i11 - i10);
            } else {
                float[] fArr2 = new float[((i11 * 3) / 2) + 1];
                System.arraycopy(fArr, 0, fArr2, 0, i10);
                System.arraycopy(this.f61868c, i10, fArr2, i10 + 1, this.f61869d - i10);
                this.f61868c = fArr2;
            }
            this.f61868c[i10] = floatValue;
            this.f61869d++;
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
        if (!(collection instanceof C12003x1)) {
            return super.addAll(collection);
        }
        C12003x1 c12003x1 = (C12003x1) collection;
        int i10 = c12003x1.f61869d;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f61869d;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        float[] fArr = this.f61868c;
        if (i12 > fArr.length) {
            this.f61868c = Arrays.copyOf(fArr, i12);
        }
        System.arraycopy(c12003x1.f61868c, 0, this.f61868c, this.f61869d, c12003x1.f61869d);
        this.f61869d = i12;
        this.modCount++;
        return true;
    }

    public final void b(float f10) {
        a();
        int i10 = this.f61869d;
        float[] fArr = this.f61868c;
        if (i10 == fArr.length) {
            float[] fArr2 = new float[((i10 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i10);
            this.f61868c = fArr2;
        }
        float[] fArr3 = this.f61868c;
        int i11 = this.f61869d;
        this.f61869d = i11 + 1;
        fArr3[i11] = f10;
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
        if (!(obj instanceof C12003x1)) {
            return super.equals(obj);
        }
        C12003x1 c12003x1 = (C12003x1) obj;
        if (this.f61869d != c12003x1.f61869d) {
            return false;
        }
        float[] fArr = c12003x1.f61868c;
        for (int i10 = 0; i10 < this.f61869d; i10++) {
            if (Float.floatToIntBits(this.f61868c[i10]) != Float.floatToIntBits(fArr[i10])) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final Object get(int i10) {
        k(i10);
        return Float.valueOf(this.f61868c[i10]);
    }

    @Override
    public final int hashCode() {
        int i10 = 1;
        for (int i11 = 0; i11 < this.f61869d; i11++) {
            i10 = (i10 * 31) + Float.floatToIntBits(this.f61868c[i11]);
        }
        return i10;
    }

    @Override
    public final int indexOf(Object obj) {
        if (!(obj instanceof Float)) {
            return -1;
        }
        float floatValue = ((Float) obj).floatValue();
        int i10 = this.f61869d;
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.f61868c[i11] == floatValue) {
                return i11;
            }
        }
        return -1;
    }

    @Override
    public final Object remove(int i10) {
        a();
        k(i10);
        float[] fArr = this.f61868c;
        float f10 = fArr[i10];
        if (i10 < this.f61869d - 1) {
            System.arraycopy(fArr, i10 + 1, fArr, i10, (r2 - i10) - 1);
        }
        this.f61869d--;
        this.modCount++;
        return Float.valueOf(f10);
    }

    @Override
    public final void removeRange(int i10, int i11) {
        a();
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        float[] fArr = this.f61868c;
        System.arraycopy(fArr, i11, fArr, i10, this.f61869d - i11);
        this.f61869d -= i11 - i10;
        this.modCount++;
    }

    @Override
    public final Object set(int i10, Object obj) {
        float floatValue = ((Float) obj).floatValue();
        a();
        k(i10);
        float[] fArr = this.f61868c;
        float f10 = fArr[i10];
        fArr[i10] = floatValue;
        return Float.valueOf(f10);
    }

    @Override
    public final int size() {
        return this.f61869d;
    }

    public C12003x1(float[] fArr, int i10, boolean z10) {
        super(z10);
        this.f61868c = fArr;
        this.f61869d = i10;
    }

    @Override
    public final boolean add(Object obj) {
        b(((Float) obj).floatValue());
        return true;
    }
}
