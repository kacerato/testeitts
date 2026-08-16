package com.android.tools.r8.internal;

import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collection;

public final class C7327ft extends AbstractC9353s1 implements OI, B70 {

    public static final C7327ft f48130e;

    public double[] f48131c;

    public int f48132d;

    static {
        C7327ft c7327ft = new C7327ft(new double[0], 0);
        f48130e = c7327ft;
        c7327ft.f52249b = false;
    }

    public C7327ft() {
        this.f48131c = new double[10];
        this.f48132d = 0;
    }

    @Override
    public final void add(int i10, Object obj) {
        int i11;
        double doubleValue = ((Double) obj).doubleValue();
        a();
        if (i10 >= 0 && i10 <= (i11 = this.f48132d)) {
            double[] dArr = this.f48131c;
            if (i11 < dArr.length) {
                System.arraycopy(dArr, i10, dArr, i10 + 1, i11 - i10);
            } else {
                double[] dArr2 = new double[((i11 * 3) / 2) + 1];
                System.arraycopy(dArr, 0, dArr2, 0, i10);
                System.arraycopy(this.f48131c, i10, dArr2, i10 + 1, this.f48132d - i10);
                this.f48131c = dArr2;
            }
            this.f48131c[i10] = doubleValue;
            this.f48132d++;
            this.modCount++;
            return;
        }
        StringBuilder a10 = AbstractC5413Jt0.a(i10, "Index:", ", Size:");
        a10.append(this.f48132d);
        throw new IndexOutOfBoundsException(a10.toString());
    }

    @Override
    public final boolean addAll(Collection collection) {
        a();
        Charset charset = YI.f45964a;
        collection.getClass();
        if (!(collection instanceof C7327ft)) {
            return super.addAll(collection);
        }
        C7327ft c7327ft = (C7327ft) collection;
        int i10 = c7327ft.f48132d;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f48132d;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        double[] dArr = this.f48131c;
        if (i12 > dArr.length) {
            this.f48131c = Arrays.copyOf(dArr, i12);
        }
        System.arraycopy(c7327ft.f48131c, 0, this.f48131c, this.f48132d, c7327ft.f48132d);
        this.f48132d = i12;
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
        if (!(obj instanceof C7327ft)) {
            return super.equals(obj);
        }
        C7327ft c7327ft = (C7327ft) obj;
        if (this.f48132d != c7327ft.f48132d) {
            return false;
        }
        double[] dArr = c7327ft.f48131c;
        for (int i10 = 0; i10 < this.f48132d; i10++) {
            if (Double.doubleToLongBits(this.f48131c[i10]) != Double.doubleToLongBits(dArr[i10])) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final Object get(int i10) {
        if (i10 >= 0 && i10 < this.f48132d) {
            return Double.valueOf(this.f48131c[i10]);
        }
        StringBuilder a10 = AbstractC5413Jt0.a(i10, "Index:", ", Size:");
        a10.append(this.f48132d);
        throw new IndexOutOfBoundsException(a10.toString());
    }

    @Override
    public final int hashCode() {
        int i10 = 1;
        for (int i11 = 0; i11 < this.f48132d; i11++) {
            long doubleToLongBits = Double.doubleToLongBits(this.f48131c[i11]);
            Charset charset = YI.f45964a;
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
        int i10 = this.f48132d;
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.f48131c[i11] == doubleValue) {
                return i11;
            }
        }
        return -1;
    }

    public final C7327ft j(int i10) {
        if (i10 >= this.f48132d) {
            return new C7327ft(Arrays.copyOf(this.f48131c, i10), this.f48132d);
        }
        throw new IllegalArgumentException();
    }

    @Override
    public final Object remove(int i10) {
        int i11;
        a();
        if (i10 < 0 || i10 >= (i11 = this.f48132d)) {
            StringBuilder a10 = AbstractC5413Jt0.a(i10, "Index:", ", Size:");
            a10.append(this.f48132d);
            throw new IndexOutOfBoundsException(a10.toString());
        }
        double[] dArr = this.f48131c;
        double d10 = dArr[i10];
        if (i10 < i11 - 1) {
            System.arraycopy(dArr, i10 + 1, dArr, i10, (i11 - i10) - 1);
        }
        this.f48132d--;
        this.modCount++;
        return Double.valueOf(d10);
    }

    @Override
    public final void removeRange(int i10, int i11) {
        a();
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        double[] dArr = this.f48131c;
        System.arraycopy(dArr, i11, dArr, i10, this.f48132d - i11);
        this.f48132d -= i11 - i10;
        this.modCount++;
    }

    @Override
    public final Object set(int i10, Object obj) {
        double doubleValue = ((Double) obj).doubleValue();
        a();
        if (i10 < 0 || i10 >= this.f48132d) {
            StringBuilder a10 = AbstractC5413Jt0.a(i10, "Index:", ", Size:");
            a10.append(this.f48132d);
            throw new IndexOutOfBoundsException(a10.toString());
        }
        double[] dArr = this.f48131c;
        double d10 = dArr[i10];
        dArr[i10] = doubleValue;
        return Double.valueOf(d10);
    }

    @Override
    public final int size() {
        return this.f48132d;
    }

    public C7327ft(double[] dArr, int i10) {
        this.f48131c = dArr;
        this.f48132d = i10;
    }

    @Override
    public final boolean add(Object obj) {
        double doubleValue = ((Double) obj).doubleValue();
        a();
        int i10 = this.f48132d;
        double[] dArr = this.f48131c;
        if (i10 == dArr.length) {
            double[] dArr2 = new double[((i10 * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i10);
            this.f48131c = dArr2;
        }
        double[] dArr3 = this.f48131c;
        int i11 = this.f48132d;
        this.f48132d = i11 + 1;
        dArr3[i11] = doubleValue;
        return true;
    }
}
