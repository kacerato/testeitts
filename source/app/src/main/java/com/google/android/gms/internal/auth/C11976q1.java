package com.google.android.gms.internal.auth;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

public final class C11976q1 extends W0 implements RandomAccess, F1, InterfaceC11957l2 {

    public static final C11976q1 f61819e = new C11976q1(new double[0], 0, false);

    public double[] f61820c;

    public int f61821d;

    public C11976q1() {
        this(new double[10], 0, true);
    }

    private final String j(int i10) {
        return "Index:" + i10 + ", Size:" + this.f61821d;
    }

    private final void k(int i10) {
        if (i10 < 0 || i10 >= this.f61821d) {
            throw new IndexOutOfBoundsException(j(i10));
        }
    }

    @Override
    public final F1 L0(int i10) {
        if (i10 >= this.f61821d) {
            return new C11976q1(Arrays.copyOf(this.f61820c, i10), this.f61821d, true);
        }
        throw new IllegalArgumentException();
    }

    @Override
    public final void add(int i10, Object obj) {
        int i11;
        double doubleValue = ((Double) obj).doubleValue();
        a();
        if (i10 >= 0 && i10 <= (i11 = this.f61821d)) {
            double[] dArr = this.f61820c;
            if (i11 < dArr.length) {
                System.arraycopy(dArr, i10, dArr, i10 + 1, i11 - i10);
            } else {
                double[] dArr2 = new double[((i11 * 3) / 2) + 1];
                System.arraycopy(dArr, 0, dArr2, 0, i10);
                System.arraycopy(this.f61820c, i10, dArr2, i10 + 1, this.f61821d - i10);
                this.f61820c = dArr2;
            }
            this.f61820c[i10] = doubleValue;
            this.f61821d++;
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
        if (!(collection instanceof C11976q1)) {
            return super.addAll(collection);
        }
        C11976q1 c11976q1 = (C11976q1) collection;
        int i10 = c11976q1.f61821d;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f61821d;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        double[] dArr = this.f61820c;
        if (i12 > dArr.length) {
            this.f61820c = Arrays.copyOf(dArr, i12);
        }
        System.arraycopy(c11976q1.f61820c, 0, this.f61820c, this.f61821d, c11976q1.f61821d);
        this.f61821d = i12;
        this.modCount++;
        return true;
    }

    public final void b(double d10) {
        a();
        int i10 = this.f61821d;
        double[] dArr = this.f61820c;
        if (i10 == dArr.length) {
            double[] dArr2 = new double[((i10 * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i10);
            this.f61820c = dArr2;
        }
        double[] dArr3 = this.f61820c;
        int i11 = this.f61821d;
        this.f61821d = i11 + 1;
        dArr3[i11] = d10;
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
        if (!(obj instanceof C11976q1)) {
            return super.equals(obj);
        }
        C11976q1 c11976q1 = (C11976q1) obj;
        if (this.f61821d != c11976q1.f61821d) {
            return false;
        }
        double[] dArr = c11976q1.f61820c;
        for (int i10 = 0; i10 < this.f61821d; i10++) {
            if (Double.doubleToLongBits(this.f61820c[i10]) != Double.doubleToLongBits(dArr[i10])) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final Object get(int i10) {
        k(i10);
        return Double.valueOf(this.f61820c[i10]);
    }

    @Override
    public final int hashCode() {
        int i10 = 1;
        for (int i11 = 0; i11 < this.f61821d; i11++) {
            long doubleToLongBits = Double.doubleToLongBits(this.f61820c[i11]);
            byte[] bArr = H1.f61617d;
            i10 = (i10 * 31) + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
        }
        return i10;
    }

    @Override
    public final int indexOf(Object obj) {
        if (!(obj instanceof Double)) {
            return -1;
        }
        double doubleValue = ((Double) obj).doubleValue();
        int i10 = this.f61821d;
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.f61820c[i11] == doubleValue) {
                return i11;
            }
        }
        return -1;
    }

    @Override
    public final Object remove(int i10) {
        a();
        k(i10);
        double[] dArr = this.f61820c;
        double d10 = dArr[i10];
        if (i10 < this.f61821d - 1) {
            System.arraycopy(dArr, i10 + 1, dArr, i10, (r3 - i10) - 1);
        }
        this.f61821d--;
        this.modCount++;
        return Double.valueOf(d10);
    }

    @Override
    public final void removeRange(int i10, int i11) {
        a();
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        double[] dArr = this.f61820c;
        System.arraycopy(dArr, i11, dArr, i10, this.f61821d - i11);
        this.f61821d -= i11 - i10;
        this.modCount++;
    }

    @Override
    public final Object set(int i10, Object obj) {
        double doubleValue = ((Double) obj).doubleValue();
        a();
        k(i10);
        double[] dArr = this.f61820c;
        double d10 = dArr[i10];
        dArr[i10] = doubleValue;
        return Double.valueOf(d10);
    }

    @Override
    public final int size() {
        return this.f61821d;
    }

    public C11976q1(double[] dArr, int i10, boolean z10) {
        super(z10);
        this.f61820c = dArr;
        this.f61821d = i10;
    }

    @Override
    public final boolean add(Object obj) {
        b(((Double) obj).doubleValue());
        return true;
    }
}
