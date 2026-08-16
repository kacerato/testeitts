package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

public final class Y4 extends E4 implements RandomAccess, InterfaceC12189t5, InterfaceC12047d6 {

    public static final double[] f62179e;

    public double[] f62180c;

    public int f62181d;

    static {
        double[] dArr = new double[0];
        f62179e = dArr;
        new Y4(dArr, 0, false);
    }

    public Y4() {
        this(f62179e, 0, true);
    }

    public static int m(int i10) {
        return Math.max(((i10 * 3) / 2) + 1, 10);
    }

    @Override
    public final InterfaceC12189t5 K0(int i10) {
        if (i10 >= this.f62181d) {
            return new Y4(i10 == 0 ? f62179e : Arrays.copyOf(this.f62180c, i10), this.f62181d, true);
        }
        throw new IllegalArgumentException();
    }

    @Override
    public final void add(int i10, Object obj) {
        int i11;
        double doubleValue = ((Double) obj).doubleValue();
        a();
        if (i10 >= 0 && i10 <= (i11 = this.f62181d)) {
            int i12 = i10 + 1;
            double[] dArr = this.f62180c;
            int length = dArr.length;
            if (i11 < length) {
                System.arraycopy(dArr, i10, dArr, i12, i11 - i10);
            } else {
                double[] dArr2 = new double[m(length)];
                System.arraycopy(this.f62180c, 0, dArr2, 0, i10);
                System.arraycopy(this.f62180c, i10, dArr2, i12, this.f62181d - i10);
                this.f62180c = dArr2;
            }
            this.f62180c[i10] = doubleValue;
            this.f62181d++;
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
        if (!(collection instanceof Y4)) {
            return super.addAll(collection);
        }
        Y4 y42 = (Y4) collection;
        int i10 = y42.f62181d;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f62181d;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        double[] dArr = this.f62180c;
        if (i12 > dArr.length) {
            this.f62180c = Arrays.copyOf(dArr, i12);
        }
        System.arraycopy(y42.f62180c, 0, this.f62180c, this.f62181d, y42.f62181d);
        this.f62181d = i12;
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
        if (!(obj instanceof Y4)) {
            return super.equals(obj);
        }
        Y4 y42 = (Y4) obj;
        if (this.f62181d != y42.f62181d) {
            return false;
        }
        double[] dArr = y42.f62180c;
        for (int i10 = 0; i10 < this.f62181d; i10++) {
            if (Double.doubleToLongBits(this.f62180c[i10]) != Double.doubleToLongBits(dArr[i10])) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final Object get(int i10) {
        n(i10);
        return Double.valueOf(this.f62180c[i10]);
    }

    @Override
    public final int hashCode() {
        int i10 = 1;
        for (int i11 = 0; i11 < this.f62181d; i11++) {
            long doubleToLongBits = Double.doubleToLongBits(this.f62180c[i11]);
            byte[] bArr = A5.f61886b;
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
        int i10 = this.f62181d;
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.f62180c[i11] == doubleValue) {
                return i11;
            }
        }
        return -1;
    }

    public final double j(int i10) {
        n(i10);
        return this.f62180c[i10];
    }

    public final void k(double d10) {
        a();
        int i10 = this.f62181d;
        int length = this.f62180c.length;
        if (i10 == length) {
            double[] dArr = new double[m(length)];
            System.arraycopy(this.f62180c, 0, dArr, 0, this.f62181d);
            this.f62180c = dArr;
        }
        double[] dArr2 = this.f62180c;
        int i11 = this.f62181d;
        this.f62181d = i11 + 1;
        dArr2[i11] = d10;
    }

    public final void l(int i10) {
        int length = this.f62180c.length;
        if (i10 <= length) {
            return;
        }
        if (length == 0) {
            this.f62180c = new double[Math.max(i10, 10)];
            return;
        }
        while (length < i10) {
            length = m(length);
        }
        this.f62180c = Arrays.copyOf(this.f62180c, length);
    }

    public final void n(int i10) {
        if (i10 < 0 || i10 >= this.f62181d) {
            throw new IndexOutOfBoundsException(o(i10));
        }
    }

    public final String o(int i10) {
        return G4.a(this.f62181d, i10, (byte) 13, "Index:", ", Size:");
    }

    @Override
    public final Object remove(int i10) {
        a();
        n(i10);
        double[] dArr = this.f62180c;
        double d10 = dArr[i10];
        if (i10 < this.f62181d - 1) {
            System.arraycopy(dArr, i10 + 1, dArr, i10, (r3 - i10) - 1);
        }
        this.f62181d--;
        this.modCount++;
        return Double.valueOf(d10);
    }

    @Override
    public final void removeRange(int i10, int i11) {
        a();
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        double[] dArr = this.f62180c;
        System.arraycopy(dArr, i11, dArr, i10, this.f62181d - i11);
        this.f62181d -= i11 - i10;
        this.modCount++;
    }

    @Override
    public final Object set(int i10, Object obj) {
        double doubleValue = ((Double) obj).doubleValue();
        a();
        n(i10);
        double[] dArr = this.f62180c;
        double d10 = dArr[i10];
        dArr[i10] = doubleValue;
        return Double.valueOf(d10);
    }

    @Override
    public final int size() {
        return this.f62181d;
    }

    public Y4(double[] dArr, int i10, boolean z10) {
        super(z10);
        this.f62180c = dArr;
        this.f62181d = i10;
    }

    @Override
    public final boolean add(Object obj) {
        k(((Double) obj).doubleValue());
        return true;
    }
}
