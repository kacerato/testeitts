package com.google.android.gms.internal.auth;

import java.util.Arrays;

public final class H2 {

    public static final H2 f61620e = new H2(0, new int[0], new Object[0], false);

    public int f61621a;

    public int[] f61622b;

    public Object[] f61623c;

    public boolean f61624d;

    public H2(int i10, int[] iArr, Object[] objArr, boolean z10) {
        this.f61621a = i10;
        this.f61622b = iArr;
        this.f61623c = objArr;
        this.f61624d = z10;
    }

    public static H2 a() {
        return f61620e;
    }

    public static H2 c(H2 h22, H2 h23) {
        int i10 = h22.f61621a + h23.f61621a;
        int[] copyOf = Arrays.copyOf(h22.f61622b, i10);
        System.arraycopy(h23.f61622b, 0, copyOf, h22.f61621a, h23.f61621a);
        Object[] copyOf2 = Arrays.copyOf(h22.f61623c, i10);
        System.arraycopy(h23.f61623c, 0, copyOf2, h22.f61621a, h23.f61621a);
        return new H2(i10, copyOf, copyOf2, true);
    }

    public static H2 d() {
        return new H2(0, new int[8], new Object[8], true);
    }

    public final H2 b(H2 h22) {
        if (h22.equals(f61620e)) {
            return this;
        }
        e();
        int i10 = this.f61621a + h22.f61621a;
        i(i10);
        System.arraycopy(h22.f61622b, 0, this.f61622b, this.f61621a, h22.f61621a);
        System.arraycopy(h22.f61623c, 0, this.f61623c, this.f61621a, h22.f61621a);
        this.f61621a = i10;
        return this;
    }

    public final void e() {
        if (!this.f61624d) {
            throw new UnsupportedOperationException();
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof H2)) {
            return false;
        }
        H2 h22 = (H2) obj;
        int i10 = this.f61621a;
        if (i10 == h22.f61621a) {
            int[] iArr = this.f61622b;
            int[] iArr2 = h22.f61622b;
            int i11 = 0;
            while (true) {
                if (i11 >= i10) {
                    Object[] objArr = this.f61623c;
                    Object[] objArr2 = h22.f61623c;
                    int i12 = this.f61621a;
                    for (int i13 = 0; i13 < i12; i13++) {
                        if (objArr[i13].equals(objArr2[i13])) {
                        }
                    }
                    return true;
                }
                if (iArr[i11] != iArr2[i11]) {
                    break;
                }
                i11++;
            }
        }
        return false;
    }

    public final void f() {
        if (this.f61624d) {
            this.f61624d = false;
        }
    }

    public final void g(StringBuilder sb2, int i10) {
        for (int i11 = 0; i11 < this.f61621a; i11++) {
            C11933f2.b(sb2, i10, String.valueOf(this.f61622b[i11] >>> 3), this.f61623c[i11]);
        }
    }

    public final void h(int i10, Object obj) {
        e();
        i(this.f61621a + 1);
        int[] iArr = this.f61622b;
        int i11 = this.f61621a;
        iArr[i11] = i10;
        this.f61623c[i11] = obj;
        this.f61621a = i11 + 1;
    }

    public final int hashCode() {
        int i10 = this.f61621a;
        int i11 = i10 + 527;
        int[] iArr = this.f61622b;
        int i12 = 17;
        int i13 = 17;
        for (int i14 = 0; i14 < i10; i14++) {
            i13 = (i13 * 31) + iArr[i14];
        }
        int i15 = (i11 * 31) + i13;
        Object[] objArr = this.f61623c;
        int i16 = this.f61621a;
        for (int i17 = 0; i17 < i16; i17++) {
            i12 = (i12 * 31) + objArr[i17].hashCode();
        }
        return (i15 * 31) + i12;
    }

    public final void i(int i10) {
        int[] iArr = this.f61622b;
        if (i10 > iArr.length) {
            int i11 = this.f61621a;
            int i12 = i11 + (i11 / 2);
            if (i12 >= i10) {
                i10 = i12;
            }
            if (i10 < 8) {
                i10 = 8;
            }
            this.f61622b = Arrays.copyOf(iArr, i10);
            this.f61623c = Arrays.copyOf(this.f61623c, i10);
        }
    }

    public H2() {
        this(0, new int[8], new Object[8], true);
    }
}
