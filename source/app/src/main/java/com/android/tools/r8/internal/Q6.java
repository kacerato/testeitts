package com.android.tools.r8.internal;

import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collection;

public final class Q6 extends AbstractC9353s1 implements NI, B70 {

    public static final Q6 f43449e;

    public boolean[] f43450c;

    public int f43451d;

    static {
        Q6 q62 = new Q6(new boolean[0], 0);
        f43449e = q62;
        q62.f52249b = false;
    }

    public Q6() {
        this.f43450c = new boolean[10];
        this.f43451d = 0;
    }

    @Override
    public final void add(int i10, Object obj) {
        int i11;
        boolean booleanValue = ((Boolean) obj).booleanValue();
        a();
        if (i10 >= 0 && i10 <= (i11 = this.f43451d)) {
            boolean[] zArr = this.f43450c;
            if (i11 < zArr.length) {
                System.arraycopy(zArr, i10, zArr, i10 + 1, i11 - i10);
            } else {
                boolean[] zArr2 = new boolean[((i11 * 3) / 2) + 1];
                System.arraycopy(zArr, 0, zArr2, 0, i10);
                System.arraycopy(this.f43450c, i10, zArr2, i10 + 1, this.f43451d - i10);
                this.f43450c = zArr2;
            }
            this.f43450c[i10] = booleanValue;
            this.f43451d++;
            this.modCount++;
            return;
        }
        StringBuilder a10 = AbstractC5413Jt0.a(i10, "Index:", ", Size:");
        a10.append(this.f43451d);
        throw new IndexOutOfBoundsException(a10.toString());
    }

    @Override
    public final boolean addAll(Collection collection) {
        a();
        Charset charset = YI.f45964a;
        collection.getClass();
        if (!(collection instanceof Q6)) {
            return super.addAll(collection);
        }
        Q6 q62 = (Q6) collection;
        int i10 = q62.f43451d;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f43451d;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        boolean[] zArr = this.f43450c;
        if (i12 > zArr.length) {
            this.f43450c = Arrays.copyOf(zArr, i12);
        }
        System.arraycopy(q62.f43450c, 0, this.f43450c, this.f43451d, q62.f43451d);
        this.f43451d = i12;
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
        if (!(obj instanceof Q6)) {
            return super.equals(obj);
        }
        Q6 q62 = (Q6) obj;
        if (this.f43451d != q62.f43451d) {
            return false;
        }
        boolean[] zArr = q62.f43450c;
        for (int i10 = 0; i10 < this.f43451d; i10++) {
            if (this.f43450c[i10] != zArr[i10]) {
                return false;
            }
        }
        return true;
    }

    @Override
    public final Object get(int i10) {
        if (i10 >= 0 && i10 < this.f43451d) {
            return Boolean.valueOf(this.f43450c[i10]);
        }
        StringBuilder a10 = AbstractC5413Jt0.a(i10, "Index:", ", Size:");
        a10.append(this.f43451d);
        throw new IndexOutOfBoundsException(a10.toString());
    }

    @Override
    public final int hashCode() {
        int i10 = 1;
        for (int i11 = 0; i11 < this.f43451d; i11++) {
            int i12 = i10 * 31;
            boolean z10 = this.f43450c[i11];
            Charset charset = YI.f45964a;
            i10 = i12 + (z10 ? 1231 : 1237);
        }
        return i10;
    }

    @Override
    public final int indexOf(Object obj) {
        if (!(obj instanceof Boolean)) {
            return -1;
        }
        boolean booleanValue = ((Boolean) obj).booleanValue();
        int i10 = this.f43451d;
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.f43450c[i11] == booleanValue) {
                return i11;
            }
        }
        return -1;
    }

    public final Q6 j(int i10) {
        if (i10 >= this.f43451d) {
            return new Q6(Arrays.copyOf(this.f43450c, i10), this.f43451d);
        }
        throw new IllegalArgumentException();
    }

    @Override
    public final Object remove(int i10) {
        int i11;
        a();
        if (i10 < 0 || i10 >= (i11 = this.f43451d)) {
            StringBuilder a10 = AbstractC5413Jt0.a(i10, "Index:", ", Size:");
            a10.append(this.f43451d);
            throw new IndexOutOfBoundsException(a10.toString());
        }
        boolean[] zArr = this.f43450c;
        boolean z10 = zArr[i10];
        if (i10 < i11 - 1) {
            System.arraycopy(zArr, i10 + 1, zArr, i10, (i11 - i10) - 1);
        }
        this.f43451d--;
        this.modCount++;
        return Boolean.valueOf(z10);
    }

    @Override
    public final void removeRange(int i10, int i11) {
        a();
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        boolean[] zArr = this.f43450c;
        System.arraycopy(zArr, i11, zArr, i10, this.f43451d - i11);
        this.f43451d -= i11 - i10;
        this.modCount++;
    }

    @Override
    public final Object set(int i10, Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        a();
        if (i10 < 0 || i10 >= this.f43451d) {
            StringBuilder a10 = AbstractC5413Jt0.a(i10, "Index:", ", Size:");
            a10.append(this.f43451d);
            throw new IndexOutOfBoundsException(a10.toString());
        }
        boolean[] zArr = this.f43450c;
        boolean z10 = zArr[i10];
        zArr[i10] = booleanValue;
        return Boolean.valueOf(z10);
    }

    @Override
    public final int size() {
        return this.f43451d;
    }

    public Q6(boolean[] zArr, int i10) {
        this.f43450c = zArr;
        this.f43451d = i10;
    }

    @Override
    public final boolean add(Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        a();
        int i10 = this.f43451d;
        boolean[] zArr = this.f43450c;
        if (i10 == zArr.length) {
            boolean[] zArr2 = new boolean[((i10 * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i10);
            this.f43450c = zArr2;
        }
        boolean[] zArr3 = this.f43450c;
        int i11 = this.f43451d;
        this.f43451d = i11 + 1;
        zArr3[i11] = booleanValue;
        return true;
    }
}
