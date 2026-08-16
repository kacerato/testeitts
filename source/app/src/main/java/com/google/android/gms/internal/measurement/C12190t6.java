package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Arrays;

public final class C12190t6 {

    public static final C12190t6 f62435f = new C12190t6(0, new int[0], new Object[0], false);

    public int f62436a;

    public int[] f62437b;

    public Object[] f62438c;

    public int f62439d;

    public boolean f62440e;

    public C12190t6(int i10, int[] iArr, Object[] objArr, boolean z10) {
        this.f62439d = -1;
        this.f62436a = i10;
        this.f62437b = iArr;
        this.f62438c = objArr;
        this.f62440e = z10;
    }

    public static C12190t6 a() {
        return f62435f;
    }

    public static C12190t6 b() {
        return new C12190t6(0, new int[8], new Object[8], true);
    }

    public static C12190t6 c(C12190t6 c12190t6, C12190t6 c12190t62) {
        int i10 = c12190t6.f62436a + c12190t62.f62436a;
        int[] copyOf = Arrays.copyOf(c12190t6.f62437b, i10);
        System.arraycopy(c12190t62.f62437b, 0, copyOf, c12190t6.f62436a, c12190t62.f62436a);
        Object[] copyOf2 = Arrays.copyOf(c12190t6.f62438c, i10);
        System.arraycopy(c12190t62.f62438c, 0, copyOf2, c12190t6.f62436a, c12190t62.f62436a);
        return new C12190t6(i10, copyOf, copyOf2, true);
    }

    public final void d() {
        if (this.f62440e) {
            this.f62440e = false;
        }
    }

    public final void e() {
        if (!this.f62440e) {
            throw new UnsupportedOperationException();
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof C12190t6)) {
            return false;
        }
        C12190t6 c12190t6 = (C12190t6) obj;
        int i10 = this.f62436a;
        if (i10 == c12190t6.f62436a) {
            int[] iArr = this.f62437b;
            int[] iArr2 = c12190t6.f62437b;
            int i11 = 0;
            while (true) {
                if (i11 >= i10) {
                    Object[] objArr = this.f62438c;
                    Object[] objArr2 = c12190t6.f62438c;
                    int i12 = this.f62436a;
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

    public final void f(E6 e62) throws IOException {
        for (int i10 = 0; i10 < this.f62436a; i10++) {
            e62.y(this.f62437b[i10] >>> 3, this.f62438c[i10]);
        }
    }

    public final void g(E6 e62) throws IOException {
        if (this.f62436a != 0) {
            for (int i10 = 0; i10 < this.f62436a; i10++) {
                int i11 = this.f62437b[i10];
                Object obj = this.f62438c[i10];
                int i12 = i11 & 7;
                int i13 = i11 >>> 3;
                if (i12 == 0) {
                    e62.b(i13, ((Long) obj).longValue());
                } else if (i12 == 1) {
                    e62.j(i13, ((Long) obj).longValue());
                } else if (i12 == 2) {
                    e62.k(i13, (S4) obj);
                } else if (i12 == 3) {
                    e62.E(i13);
                    ((C12190t6) obj).g(e62);
                    e62.F(i13);
                } else {
                    if (i12 != 5) {
                        throw new RuntimeException(new zzmp("Protocol message tag had invalid wire type."));
                    }
                    e62.l(i13, ((Integer) obj).intValue());
                }
            }
        }
    }

    public final int h() {
        int i10 = this.f62439d;
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        for (int i12 = 0; i12 < this.f62436a; i12++) {
            int i13 = this.f62437b[i12] >>> 3;
            S4 s42 = (S4) this.f62438c[i12];
            int G10 = W4.G(8);
            int G11 = W4.G(16) + W4.G(i13);
            int G12 = W4.G(24);
            int l10 = s42.l();
            i11 += G10 + G10 + G11 + G12 + W4.G(l10) + l10;
        }
        this.f62439d = i11;
        return i11;
    }

    public final int hashCode() {
        int i10 = this.f62436a;
        int i11 = i10 + 527;
        int[] iArr = this.f62437b;
        int i12 = 17;
        int i13 = 17;
        for (int i14 = 0; i14 < i10; i14++) {
            i13 = (i13 * 31) + iArr[i14];
        }
        int i15 = ((i11 * 31) + i13) * 31;
        Object[] objArr = this.f62438c;
        int i16 = this.f62436a;
        for (int i17 = 0; i17 < i16; i17++) {
            i12 = (i12 * 31) + objArr[i17].hashCode();
        }
        return i15 + i12;
    }

    public final int i() {
        int G10;
        int a10;
        int i10;
        int i11 = this.f62439d;
        if (i11 != -1) {
            return i11;
        }
        int i12 = 0;
        for (int i13 = 0; i13 < this.f62436a; i13++) {
            int i14 = this.f62437b[i13];
            int i15 = i14 >>> 3;
            int i16 = i14 & 7;
            if (i16 != 0) {
                if (i16 == 1) {
                    ((Long) this.f62438c[i13]).longValue();
                    i10 = W4.G(i15 << 3) + 8;
                } else if (i16 == 2) {
                    int i17 = i15 << 3;
                    S4 s42 = (S4) this.f62438c[i13];
                    int G11 = W4.G(i17);
                    int l10 = s42.l();
                    i10 = G11 + W4.G(l10) + l10;
                } else if (i16 == 3) {
                    int G12 = W4.G(i15 << 3);
                    G10 = G12 + G12;
                    a10 = ((C12190t6) this.f62438c[i13]).i();
                } else {
                    if (i16 != 5) {
                        throw new IllegalStateException(new zzmp("Protocol message tag had invalid wire type."));
                    }
                    ((Integer) this.f62438c[i13]).intValue();
                    i10 = W4.G(i15 << 3) + 4;
                }
                i12 += i10;
            } else {
                int i18 = i15 << 3;
                long longValue = ((Long) this.f62438c[i13]).longValue();
                G10 = W4.G(i18);
                a10 = W4.a(longValue);
            }
            i10 = G10 + a10;
            i12 += i10;
        }
        this.f62439d = i12;
        return i12;
    }

    public final void j(StringBuilder sb2, int i10) {
        for (int i11 = 0; i11 < this.f62436a; i11++) {
            Y5.b(sb2, i10, String.valueOf(this.f62437b[i11] >>> 3), this.f62438c[i11]);
        }
    }

    public final void k(int i10, Object obj) {
        e();
        m(this.f62436a + 1);
        int[] iArr = this.f62437b;
        int i11 = this.f62436a;
        iArr[i11] = i10;
        this.f62438c[i11] = obj;
        this.f62436a = i11 + 1;
    }

    public final C12190t6 l(C12190t6 c12190t6) {
        if (c12190t6.equals(f62435f)) {
            return this;
        }
        e();
        int i10 = this.f62436a + c12190t6.f62436a;
        m(i10);
        System.arraycopy(c12190t6.f62437b, 0, this.f62437b, this.f62436a, c12190t6.f62436a);
        System.arraycopy(c12190t6.f62438c, 0, this.f62438c, this.f62436a, c12190t6.f62436a);
        this.f62436a = i10;
        return this;
    }

    public final void m(int i10) {
        int[] iArr = this.f62437b;
        if (i10 > iArr.length) {
            int i11 = this.f62436a;
            int i12 = i11 + (i11 / 2);
            if (i12 >= i10) {
                i10 = i12;
            }
            if (i10 < 8) {
                i10 = 8;
            }
            this.f62437b = Arrays.copyOf(iArr, i10);
            this.f62438c = Arrays.copyOf(this.f62438c, i10);
        }
    }

    public C12190t6() {
        this(0, new int[8], new Object[8], true);
    }
}
