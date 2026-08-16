package com.android.tools.r8.internal;

import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collection;

public final class C4956Bx extends AbstractC9353s1 implements SI, B70 {

    public static final C4956Bx f39044e;

    public float[] f39045c;

    public int f39046d;

    static {
        C4956Bx c4956Bx = new C4956Bx(new float[0], 0);
        f39044e = c4956Bx;
        c4956Bx.f52249b = false;
    }

    public C4956Bx() {
        this.f39045c = new float[10];
        this.f39046d = 0;
    }

    @Override
    public final void add(int i10, Object obj) {
        int i11;
        float floatValue = ((Float) obj).floatValue();
        a();
        if (i10 >= 0 && i10 <= (i11 = this.f39046d)) {
            float[] fArr = this.f39045c;
            if (i11 < fArr.length) {
                System.arraycopy(fArr, i10, fArr, i10 + 1, i11 - i10);
            } else {
                float[] fArr2 = new float[((i11 * 3) / 2) + 1];
                System.arraycopy(fArr, 0, fArr2, 0, i10);
                System.arraycopy(this.f39045c, i10, fArr2, i10 + 1, this.f39046d - i10);
                this.f39045c = fArr2;
            }
            this.f39045c[i10] = floatValue;
            this.f39046d++;
            this.modCount++;
            return;
        }
        StringBuilder a10 = AbstractC5413Jt0.a(i10, "Index:", ", Size:");
        a10.append(this.f39046d);
        throw new IndexOutOfBoundsException(a10.toString());
    }

    @Override
    public final boolean addAll(Collection collection) {
        a();
        Charset charset = YI.f45964a;
        collection.getClass();
        if (!(collection instanceof C4956Bx)) {
            return super.addAll(collection);
        }
        C4956Bx c4956Bx = (C4956Bx) collection;
        int i10 = c4956Bx.f39046d;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f39046d;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        float[] fArr = this.f39045c;
        if (i12 > fArr.length) {
            this.f39045c = Arrays.copyOf(fArr, i12);
        }
        System.arraycopy(c4956Bx.f39045c, 0, this.f39045c, this.f39046d, c4956Bx.f39046d);
        this.f39046d = i12;
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
        if (!(obj instanceof C4956Bx)) {
            return super.equals(obj);
        }
        C4956Bx c4956Bx = (C4956Bx) obj;
        if (this.f39046d != c4956Bx.f39046d) {
            return false;
        }
        float[] fArr = c4956Bx.f39045c;
        for (int i10 = 0; i10 < this.f39046d; i10++) {
            if (Float.floatToIntBits(this.f39045c[i10]) != Float.floatToIntBits(fArr[i10])) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final Object get(int i10) {
        if (i10 >= 0 && i10 < this.f39046d) {
            return Float.valueOf(this.f39045c[i10]);
        }
        StringBuilder a10 = AbstractC5413Jt0.a(i10, "Index:", ", Size:");
        a10.append(this.f39046d);
        throw new IndexOutOfBoundsException(a10.toString());
    }

    @Override
    public final int hashCode() {
        int i10 = 1;
        for (int i11 = 0; i11 < this.f39046d; i11++) {
            i10 = (i10 * 31) + Float.floatToIntBits(this.f39045c[i11]);
        }
        return i10;
    }

    @Override
    public final int indexOf(Object obj) {
        if (!(obj instanceof Float)) {
            return -1;
        }
        float floatValue = ((Float) obj).floatValue();
        int i10 = this.f39046d;
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.f39045c[i11] == floatValue) {
                return i11;
            }
        }
        return -1;
    }

    public final C4956Bx j(int i10) {
        if (i10 >= this.f39046d) {
            return new C4956Bx(Arrays.copyOf(this.f39045c, i10), this.f39046d);
        }
        throw new IllegalArgumentException();
    }

    @Override
    public final Object remove(int i10) {
        int i11;
        a();
        if (i10 < 0 || i10 >= (i11 = this.f39046d)) {
            StringBuilder a10 = AbstractC5413Jt0.a(i10, "Index:", ", Size:");
            a10.append(this.f39046d);
            throw new IndexOutOfBoundsException(a10.toString());
        }
        float[] fArr = this.f39045c;
        float f10 = fArr[i10];
        if (i10 < i11 - 1) {
            System.arraycopy(fArr, i10 + 1, fArr, i10, (i11 - i10) - 1);
        }
        this.f39046d--;
        this.modCount++;
        return Float.valueOf(f10);
    }

    @Override
    public final void removeRange(int i10, int i11) {
        a();
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        float[] fArr = this.f39045c;
        System.arraycopy(fArr, i11, fArr, i10, this.f39046d - i11);
        this.f39046d -= i11 - i10;
        this.modCount++;
    }

    @Override
    public final Object set(int i10, Object obj) {
        float floatValue = ((Float) obj).floatValue();
        a();
        if (i10 < 0 || i10 >= this.f39046d) {
            StringBuilder a10 = AbstractC5413Jt0.a(i10, "Index:", ", Size:");
            a10.append(this.f39046d);
            throw new IndexOutOfBoundsException(a10.toString());
        }
        float[] fArr = this.f39045c;
        float f10 = fArr[i10];
        fArr[i10] = floatValue;
        return Float.valueOf(f10);
    }

    @Override
    public final int size() {
        return this.f39046d;
    }

    public C4956Bx(float[] fArr, int i10) {
        this.f39045c = fArr;
        this.f39046d = i10;
    }

    @Override
    public final boolean add(Object obj) {
        float floatValue = ((Float) obj).floatValue();
        a();
        int i10 = this.f39046d;
        float[] fArr = this.f39045c;
        if (i10 == fArr.length) {
            float[] fArr2 = new float[((i10 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i10);
            this.f39045c = fArr2;
        }
        float[] fArr3 = this.f39045c;
        int i11 = this.f39046d;
        this.f39046d = i11 + 1;
        fArr3[i11] = floatValue;
        return true;
    }
}
