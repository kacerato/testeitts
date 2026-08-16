package com.android.tools.r8.internal;

import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collection;

public final class DH extends AbstractC9353s1 implements TI, B70 {

    public static final DH f39484e;

    public int[] f39485c;

    public int f39486d;

    static {
        DH dh2 = new DH(new int[0], 0);
        f39484e = dh2;
        dh2.f52249b = false;
    }

    public DH() {
        this.f39485c = new int[10];
        this.f39486d = 0;
    }

    @Override
    public final void add(int i10, Object obj) {
        int i11;
        int intValue = ((Integer) obj).intValue();
        a();
        if (i10 >= 0 && i10 <= (i11 = this.f39486d)) {
            int[] iArr = this.f39485c;
            if (i11 < iArr.length) {
                System.arraycopy(iArr, i10, iArr, i10 + 1, i11 - i10);
            } else {
                int[] iArr2 = new int[((i11 * 3) / 2) + 1];
                System.arraycopy(iArr, 0, iArr2, 0, i10);
                System.arraycopy(this.f39485c, i10, iArr2, i10 + 1, this.f39486d - i10);
                this.f39485c = iArr2;
            }
            this.f39485c[i10] = intValue;
            this.f39486d++;
            this.modCount++;
            return;
        }
        StringBuilder a10 = AbstractC5413Jt0.a(i10, "Index:", ", Size:");
        a10.append(this.f39486d);
        throw new IndexOutOfBoundsException(a10.toString());
    }

    @Override
    public final boolean addAll(Collection collection) {
        a();
        Charset charset = YI.f45964a;
        collection.getClass();
        if (!(collection instanceof DH)) {
            return super.addAll(collection);
        }
        DH dh2 = (DH) collection;
        int i10 = dh2.f39486d;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f39486d;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        int[] iArr = this.f39485c;
        if (i12 > iArr.length) {
            this.f39485c = Arrays.copyOf(iArr, i12);
        }
        System.arraycopy(dh2.f39485c, 0, this.f39485c, this.f39486d, dh2.f39486d);
        this.f39486d = i12;
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
        if (!(obj instanceof DH)) {
            return super.equals(obj);
        }
        DH dh2 = (DH) obj;
        if (this.f39486d != dh2.f39486d) {
            return false;
        }
        int[] iArr = dh2.f39485c;
        for (int i10 = 0; i10 < this.f39486d; i10++) {
            if (this.f39485c[i10] != iArr[i10]) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final Object get(int i10) {
        k(i10);
        return Integer.valueOf(this.f39485c[i10]);
    }

    @Override
    public final int hashCode() {
        int i10 = 1;
        for (int i11 = 0; i11 < this.f39486d; i11++) {
            i10 = (i10 * 31) + this.f39485c[i11];
        }
        return i10;
    }

    @Override
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int intValue = ((Integer) obj).intValue();
        int i10 = this.f39486d;
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.f39485c[i11] == intValue) {
                return i11;
            }
        }
        return -1;
    }

    public final void j(int i10) {
        a();
        int i11 = this.f39486d;
        int[] iArr = this.f39485c;
        if (i11 == iArr.length) {
            int[] iArr2 = new int[((i11 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i11);
            this.f39485c = iArr2;
        }
        int[] iArr3 = this.f39485c;
        int i12 = this.f39486d;
        this.f39486d = i12 + 1;
        iArr3[i12] = i10;
    }

    public final void k(int i10) {
        if (i10 < 0 || i10 >= this.f39486d) {
            StringBuilder a10 = AbstractC5413Jt0.a(i10, "Index:", ", Size:");
            a10.append(this.f39486d);
            throw new IndexOutOfBoundsException(a10.toString());
        }
    }

    public final DH l(int i10) {
        if (i10 >= this.f39486d) {
            return new DH(Arrays.copyOf(this.f39485c, i10), this.f39486d);
        }
        throw new IllegalArgumentException();
    }

    @Override
    public final Object remove(int i10) {
        a();
        k(i10);
        int[] iArr = this.f39485c;
        int i11 = iArr[i10];
        if (i10 < this.f39486d - 1) {
            System.arraycopy(iArr, i10 + 1, iArr, i10, (r2 - i10) - 1);
        }
        this.f39486d--;
        this.modCount++;
        return Integer.valueOf(i11);
    }

    @Override
    public final void removeRange(int i10, int i11) {
        a();
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        int[] iArr = this.f39485c;
        System.arraycopy(iArr, i11, iArr, i10, this.f39486d - i11);
        this.f39486d -= i11 - i10;
        this.modCount++;
    }

    @Override
    public final Object set(int i10, Object obj) {
        int intValue = ((Integer) obj).intValue();
        a();
        k(i10);
        int[] iArr = this.f39485c;
        int i11 = iArr[i10];
        iArr[i10] = intValue;
        return Integer.valueOf(i11);
    }

    @Override
    public final int size() {
        return this.f39486d;
    }

    public DH(int[] iArr, int i10) {
        this.f39485c = iArr;
        this.f39486d = i10;
    }

    @Override
    public final boolean add(Object obj) {
        j(((Integer) obj).intValue());
        return true;
    }
}
