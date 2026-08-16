package com.google.android.gms.internal.auth;

import java.io.IOException;

public final class Z0 {
    public static int a(byte[] bArr, int i10, Y0 y02) throws zzfb {
        int h10 = h(bArr, i10, y02);
        int i11 = y02.f61684a;
        if (i11 < 0) {
            throw zzfb.zzc();
        }
        if (i11 > bArr.length - h10) {
            throw zzfb.zzf();
        }
        if (i11 == 0) {
            y02.f61686c = AbstractC11956l1.f61792c;
            return h10;
        }
        y02.f61686c = AbstractC11956l1.v(bArr, h10, i11);
        return h10 + i11;
    }

    public static int b(byte[] bArr, int i10) {
        int i11 = bArr[i10] & 255;
        int i12 = bArr[i10 + 1] & 255;
        int i13 = bArr[i10 + 2] & 255;
        return ((bArr[i10 + 3] & 255) << 24) | (i12 << 8) | i11 | (i13 << 16);
    }

    public static int c(InterfaceC11973p2 interfaceC11973p2, byte[] bArr, int i10, int i11, int i12, Y0 y02) throws IOException {
        Object Q12 = interfaceC11973p2.Q1();
        int l10 = l(Q12, interfaceC11973p2, bArr, i10, i11, i12, y02);
        interfaceC11973p2.a(Q12);
        y02.f61686c = Q12;
        return l10;
    }

    public static int d(InterfaceC11973p2 interfaceC11973p2, byte[] bArr, int i10, int i11, Y0 y02) throws IOException {
        Object Q12 = interfaceC11973p2.Q1();
        int m10 = m(Q12, interfaceC11973p2, bArr, i10, i11, y02);
        interfaceC11973p2.a(Q12);
        y02.f61686c = Q12;
        return m10;
    }

    public static int e(InterfaceC11973p2 interfaceC11973p2, int i10, byte[] bArr, int i11, int i12, F1 f12, Y0 y02) throws IOException {
        int d10 = d(interfaceC11973p2, bArr, i11, i12, y02);
        f12.add(y02.f61686c);
        while (d10 < i12) {
            int h10 = h(bArr, d10, y02);
            if (i10 != y02.f61684a) {
                break;
            }
            d10 = d(interfaceC11973p2, bArr, h10, i12, y02);
            f12.add(y02.f61686c);
        }
        return d10;
    }

    public static int f(byte[] bArr, int i10, F1 f12, Y0 y02) throws IOException {
        C1 c12 = (C1) f12;
        int h10 = h(bArr, i10, y02);
        int i11 = y02.f61684a + h10;
        while (h10 < i11) {
            h10 = h(bArr, h10, y02);
            c12.j(y02.f61684a);
        }
        if (h10 == i11) {
            return h10;
        }
        throw zzfb.zzf();
    }

    public static int g(int i10, byte[] bArr, int i11, int i12, H2 h22, Y0 y02) throws zzfb {
        if ((i10 >>> 3) == 0) {
            throw zzfb.zza();
        }
        int i13 = i10 & 7;
        if (i13 == 0) {
            int k10 = k(bArr, i11, y02);
            h22.h(i10, Long.valueOf(y02.f61685b));
            return k10;
        }
        if (i13 == 1) {
            h22.h(i10, Long.valueOf(n(bArr, i11)));
            return i11 + 8;
        }
        if (i13 == 2) {
            int h10 = h(bArr, i11, y02);
            int i14 = y02.f61684a;
            if (i14 < 0) {
                throw zzfb.zzc();
            }
            if (i14 > bArr.length - h10) {
                throw zzfb.zzf();
            }
            if (i14 == 0) {
                h22.h(i10, AbstractC11956l1.f61792c);
            } else {
                h22.h(i10, AbstractC11956l1.v(bArr, h10, i14));
            }
            return h10 + i14;
        }
        if (i13 != 3) {
            if (i13 != 5) {
                throw zzfb.zza();
            }
            h22.h(i10, Integer.valueOf(b(bArr, i11)));
            return i11 + 4;
        }
        int i15 = (i10 & (-8)) | 4;
        H2 d10 = H2.d();
        int i16 = 0;
        while (true) {
            if (i11 >= i12) {
                break;
            }
            int h11 = h(bArr, i11, y02);
            int i17 = y02.f61684a;
            i16 = i17;
            if (i17 == i15) {
                i11 = h11;
                break;
            }
            int g10 = g(i16, bArr, h11, i12, d10, y02);
            i16 = i17;
            i11 = g10;
        }
        if (i11 > i12 || i16 != i15) {
            throw zzfb.zzd();
        }
        h22.h(i10, d10);
        return i11;
    }

    public static int h(byte[] bArr, int i10, Y0 y02) {
        int i11 = i10 + 1;
        byte b10 = bArr[i10];
        if (b10 < 0) {
            return i(b10, bArr, i11, y02);
        }
        y02.f61684a = b10;
        return i11;
    }

    public static int i(int i10, byte[] bArr, int i11, Y0 y02) {
        byte b10 = bArr[i11];
        int i12 = i11 + 1;
        int i13 = i10 & 127;
        if (b10 >= 0) {
            y02.f61684a = i13 | (b10 << 7);
            return i12;
        }
        int i14 = i13 | ((b10 & Byte.MAX_VALUE) << 7);
        int i15 = i11 + 2;
        byte b11 = bArr[i12];
        if (b11 >= 0) {
            y02.f61684a = i14 | (b11 << 14);
            return i15;
        }
        int i16 = i14 | ((b11 & Byte.MAX_VALUE) << 14);
        int i17 = i11 + 3;
        byte b12 = bArr[i15];
        if (b12 >= 0) {
            y02.f61684a = i16 | (b12 << 21);
            return i17;
        }
        int i18 = i16 | ((b12 & Byte.MAX_VALUE) << 21);
        int i19 = i11 + 4;
        byte b13 = bArr[i17];
        if (b13 >= 0) {
            y02.f61684a = i18 | (b13 << 28);
            return i19;
        }
        int i20 = i18 | ((b13 & Byte.MAX_VALUE) << 28);
        while (true) {
            int i21 = i19 + 1;
            if (bArr[i19] >= 0) {
                y02.f61684a = i20;
                return i21;
            }
            i19 = i21;
        }
    }

    public static int j(int i10, byte[] bArr, int i11, int i12, F1 f12, Y0 y02) {
        C1 c12 = (C1) f12;
        int h10 = h(bArr, i11, y02);
        c12.j(y02.f61684a);
        while (h10 < i12) {
            int h11 = h(bArr, h10, y02);
            if (i10 != y02.f61684a) {
                break;
            }
            h10 = h(bArr, h11, y02);
            c12.j(y02.f61684a);
        }
        return h10;
    }

    public static int k(byte[] bArr, int i10, Y0 y02) {
        long j10 = bArr[i10];
        int i11 = i10 + 1;
        if (j10 >= 0) {
            y02.f61685b = j10;
            return i11;
        }
        int i12 = i10 + 2;
        byte b10 = bArr[i11];
        long j11 = (j10 & 127) | ((b10 & Byte.MAX_VALUE) << 7);
        int i13 = 7;
        while (b10 < 0) {
            int i14 = i12 + 1;
            i13 += 7;
            j11 |= (r10 & Byte.MAX_VALUE) << i13;
            b10 = bArr[i12];
            i12 = i14;
        }
        y02.f61685b = j11;
        return i12;
    }

    public static int l(Object obj, InterfaceC11973p2 interfaceC11973p2, byte[] bArr, int i10, int i11, int i12, Y0 y02) throws IOException {
        int p10 = ((C11941h2) interfaceC11973p2).p(obj, bArr, i10, i11, i12, y02);
        y02.f61686c = obj;
        return p10;
    }

    public static int m(Object obj, InterfaceC11973p2 interfaceC11973p2, byte[] bArr, int i10, int i11, Y0 y02) throws IOException {
        int i12 = i10 + 1;
        int i13 = bArr[i10];
        if (i13 < 0) {
            i12 = i(i13, bArr, i12, y02);
            i13 = y02.f61684a;
        }
        int i14 = i12;
        if (i13 < 0 || i13 > i11 - i14) {
            throw zzfb.zzf();
        }
        int i15 = i13 + i14;
        interfaceC11973p2.d(obj, bArr, i14, i15, y02);
        y02.f61686c = obj;
        return i15;
    }

    public static long n(byte[] bArr, int i10) {
        return (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16) | ((bArr[i10 + 3] & 255) << 24) | ((bArr[i10 + 4] & 255) << 32) | ((bArr[i10 + 5] & 255) << 40) | ((bArr[i10 + 6] & 255) << 48) | ((bArr[i10 + 7] & 255) << 56);
    }
}
