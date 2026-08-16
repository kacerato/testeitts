package com.google.protobuf;

import com.google.protobuf.D0;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

public final class C12705q0 extends AbstractC12665d<Float> implements D0.f, RandomAccess, InterfaceC12726x1 {

    public static final C12705q0 f69431f;

    public float[] f69432d;

    public int f69433e;

    static {
        C12705q0 c12705q0 = new C12705q0(new float[0], 0);
        f69431f = c12705q0;
        c12705q0.r9();
    }

    public C12705q0() {
        this(new float[10], 0);
    }

    public static C12705q0 g() {
        return f69431f;
    }

    private void j(int index) {
        if (index < 0 || index >= this.f69433e) {
            throw new IndexOutOfBoundsException(l(index));
        }
    }

    private String l(int index) {
        return "Index:" + index + ", Size:" + this.f69433e;
    }

    @Override
    public boolean addAll(Collection<? extends Float> collection) {
        a();
        D0.d(collection);
        if (!(collection instanceof C12705q0)) {
            return super.addAll(collection);
        }
        C12705q0 c12705q0 = (C12705q0) collection;
        int i10 = c12705q0.f69433e;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f69433e;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        float[] fArr = this.f69432d;
        if (i12 > fArr.length) {
            this.f69432d = Arrays.copyOf(fArr, i12);
        }
        System.arraycopy(c12705q0.f69432d, 0, this.f69432d, this.f69433e, c12705q0.f69433e);
        this.f69433e = i12;
        this.modCount++;
        return true;
    }

    @Override
    public void add(int index, Float element) {
        d(index, element.floatValue());
    }

    @Override
    public boolean add(Float element) {
        k9(element.floatValue());
        return true;
    }

    @Override
    public boolean contains(Object element) {
        return indexOf(element) != -1;
    }

    public final void d(int index, float element) {
        int i10;
        a();
        if (index < 0 || index > (i10 = this.f69433e)) {
            throw new IndexOutOfBoundsException(l(index));
        }
        float[] fArr = this.f69432d;
        if (i10 < fArr.length) {
            System.arraycopy(fArr, index, fArr, index + 1, i10 - index);
        } else {
            float[] fArr2 = new float[((i10 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, index);
            System.arraycopy(this.f69432d, index, fArr2, index + 1, this.f69433e - index);
            this.f69432d = fArr2;
        }
        this.f69432d[index] = element;
        this.f69433e++;
        this.modCount++;
    }

    @Override
    public boolean equals(Object o10) {
        if (this == o10) {
            return true;
        }
        if (!(o10 instanceof C12705q0)) {
            return super.equals(o10);
        }
        C12705q0 c12705q0 = (C12705q0) o10;
        if (this.f69433e != c12705q0.f69433e) {
            return false;
        }
        float[] fArr = c12705q0.f69432d;
        for (int i10 = 0; i10 < this.f69433e; i10++) {
            if (Float.floatToIntBits(this.f69432d[i10]) != Float.floatToIntBits(fArr[i10])) {
                return false;
            }
        }
        return true;
    }

    @Override
    public float getFloat(int index) {
        j(index);
        return this.f69432d[index];
    }

    @Override
    public int hashCode() {
        int i10 = 1;
        for (int i11 = 0; i11 < this.f69433e; i11++) {
            i10 = (i10 * 31) + Float.floatToIntBits(this.f69432d[i11]);
        }
        return i10;
    }

    @Override
    public int indexOf(Object element) {
        if (!(element instanceof Float)) {
            return -1;
        }
        float floatValue = ((Float) element).floatValue();
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            if (this.f69432d[i10] == floatValue) {
                return i10;
            }
        }
        return -1;
    }

    @Override
    public Float get(int index) {
        return Float.valueOf(getFloat(index));
    }

    @Override
    public void k9(float element) {
        a();
        int i10 = this.f69433e;
        float[] fArr = this.f69432d;
        if (i10 == fArr.length) {
            float[] fArr2 = new float[((i10 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i10);
            this.f69432d = fArr2;
        }
        float[] fArr3 = this.f69432d;
        int i11 = this.f69433e;
        this.f69433e = i11 + 1;
        fArr3[i11] = element;
    }

    @Override
    public Float remove(int index) {
        a();
        j(index);
        float[] fArr = this.f69432d;
        float f10 = fArr[index];
        if (index < this.f69433e - 1) {
            System.arraycopy(fArr, index + 1, fArr, index, (r2 - index) - 1);
        }
        this.f69433e--;
        this.modCount++;
        return Float.valueOf(f10);
    }

    @Override
    public Float set(int index, Float element) {
        return Float.valueOf(setFloat(index, element.floatValue()));
    }

    @Override
    public void removeRange(int fromIndex, int toIndex) {
        a();
        if (toIndex < fromIndex) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        float[] fArr = this.f69432d;
        System.arraycopy(fArr, toIndex, fArr, fromIndex, this.f69433e - toIndex);
        this.f69433e -= toIndex - fromIndex;
        this.modCount++;
    }

    @Override
    public float setFloat(int index, float element) {
        a();
        j(index);
        float[] fArr = this.f69432d;
        float f10 = fArr[index];
        fArr[index] = element;
        return f10;
    }

    @Override
    public int size() {
        return this.f69433e;
    }

    public C12705q0(float[] other, int size) {
        this.f69432d = other;
        this.f69433e = size;
    }

    @Override
    public D0.k<Float> q2(int capacity) {
        if (capacity >= this.f69433e) {
            return new C12705q0(Arrays.copyOf(this.f69432d, capacity), this.f69433e);
        }
        throw new IllegalArgumentException();
    }
}
