package com.google.protobuf;

import com.google.protobuf.D0;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

public final class J extends AbstractC12665d<Double> implements D0.b, RandomAccess, InterfaceC12726x1 {

    public static final J f68767f;

    public double[] f68768d;

    public int f68769e;

    static {
        J j10 = new J(new double[0], 0);
        f68767f = j10;
        j10.r9();
    }

    public J() {
        this(new double[10], 0);
    }

    public static J g() {
        return f68767f;
    }

    private void j(int index) {
        if (index < 0 || index >= this.f68769e) {
            throw new IndexOutOfBoundsException(l(index));
        }
    }

    private String l(int index) {
        return "Index:" + index + ", Size:" + this.f68769e;
    }

    @Override
    public void G7(double element) {
        a();
        int i10 = this.f68769e;
        double[] dArr = this.f68768d;
        if (i10 == dArr.length) {
            double[] dArr2 = new double[((i10 * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i10);
            this.f68768d = dArr2;
        }
        double[] dArr3 = this.f68768d;
        int i11 = this.f68769e;
        this.f68769e = i11 + 1;
        dArr3[i11] = element;
    }

    @Override
    public boolean addAll(Collection<? extends Double> collection) {
        a();
        D0.d(collection);
        if (!(collection instanceof J)) {
            return super.addAll(collection);
        }
        J j10 = (J) collection;
        int i10 = j10.f68769e;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f68769e;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        double[] dArr = this.f68768d;
        if (i12 > dArr.length) {
            this.f68768d = Arrays.copyOf(dArr, i12);
        }
        System.arraycopy(j10.f68768d, 0, this.f68768d, this.f68769e, j10.f68769e);
        this.f68769e = i12;
        this.modCount++;
        return true;
    }

    @Override
    public void add(int index, Double element) {
        d(index, element.doubleValue());
    }

    @Override
    public boolean add(Double element) {
        G7(element.doubleValue());
        return true;
    }

    @Override
    public boolean contains(Object element) {
        return indexOf(element) != -1;
    }

    public final void d(int index, double element) {
        int i10;
        a();
        if (index < 0 || index > (i10 = this.f68769e)) {
            throw new IndexOutOfBoundsException(l(index));
        }
        double[] dArr = this.f68768d;
        if (i10 < dArr.length) {
            System.arraycopy(dArr, index, dArr, index + 1, i10 - index);
        } else {
            double[] dArr2 = new double[((i10 * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, index);
            System.arraycopy(this.f68768d, index, dArr2, index + 1, this.f68769e - index);
            this.f68768d = dArr2;
        }
        this.f68768d[index] = element;
        this.f68769e++;
        this.modCount++;
    }

    @Override
    public boolean equals(Object o10) {
        if (this == o10) {
            return true;
        }
        if (!(o10 instanceof J)) {
            return super.equals(o10);
        }
        J j10 = (J) o10;
        if (this.f68769e != j10.f68769e) {
            return false;
        }
        double[] dArr = j10.f68768d;
        for (int i10 = 0; i10 < this.f68769e; i10++) {
            if (Double.doubleToLongBits(this.f68768d[i10]) != Double.doubleToLongBits(dArr[i10])) {
                return false;
            }
        }
        return true;
    }

    @Override
    public double getDouble(int index) {
        j(index);
        return this.f68768d[index];
    }

    @Override
    public int hashCode() {
        int i10 = 1;
        for (int i11 = 0; i11 < this.f68769e; i11++) {
            i10 = (i10 * 31) + D0.s(Double.doubleToLongBits(this.f68768d[i11]));
        }
        return i10;
    }

    @Override
    public int indexOf(Object element) {
        if (!(element instanceof Double)) {
            return -1;
        }
        double doubleValue = ((Double) element).doubleValue();
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            if (this.f68768d[i10] == doubleValue) {
                return i10;
            }
        }
        return -1;
    }

    @Override
    public Double get(int index) {
        return Double.valueOf(getDouble(index));
    }

    @Override
    public Double remove(int index) {
        a();
        j(index);
        double[] dArr = this.f68768d;
        double d10 = dArr[index];
        if (index < this.f68769e - 1) {
            System.arraycopy(dArr, index + 1, dArr, index, (r3 - index) - 1);
        }
        this.f68769e--;
        this.modCount++;
        return Double.valueOf(d10);
    }

    @Override
    public Double set(int index, Double element) {
        return Double.valueOf(setDouble(index, element.doubleValue()));
    }

    @Override
    public void removeRange(int fromIndex, int toIndex) {
        a();
        if (toIndex < fromIndex) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        double[] dArr = this.f68768d;
        System.arraycopy(dArr, toIndex, dArr, fromIndex, this.f68769e - toIndex);
        this.f68769e -= toIndex - fromIndex;
        this.modCount++;
    }

    @Override
    public double setDouble(int index, double element) {
        a();
        j(index);
        double[] dArr = this.f68768d;
        double d10 = dArr[index];
        dArr[index] = element;
        return d10;
    }

    @Override
    public int size() {
        return this.f68769e;
    }

    public J(double[] other, int size) {
        this.f68768d = other;
        this.f68769e = size;
    }

    @Override
    public D0.k<Double> q2(int capacity) {
        if (capacity >= this.f68769e) {
            return new J(Arrays.copyOf(this.f68768d, capacity), this.f68769e);
        }
        throw new IllegalArgumentException();
    }
}
