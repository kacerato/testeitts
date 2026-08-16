package com.android.tools.r8.internal;

public final class C7988jr0 {

    public final C7616he f49370a;

    public int f49371b;

    public String f49372c;

    public int f49373d;

    public C7656hr0[] f49374e = new C7656hr0[256];

    public int f49375f = 1;

    public final C8874p8 f49376g = new C8874p8();

    public int f49377h;

    public C8874p8 f49378i;

    public int f49379j;

    public C7656hr0[] f49380k;

    public int f49381l;

    public C7822ir0[] f49382m;

    public C7822ir0[] f49383n;

    public C7988jr0(C7616he c7616he) {
        this.f49370a = c7616he;
    }

    public final C7656hr0 a(int i10, int i11) {
        int i12 = (i10 + i11) & Integer.MAX_VALUE;
        C7656hr0[] c7656hr0Arr = this.f49374e;
        for (C7656hr0 c7656hr0 = c7656hr0Arr[i12 % c7656hr0Arr.length]; c7656hr0 != null; c7656hr0 = c7656hr0.f48730i) {
            if (c7656hr0.f48723b == i10 && c7656hr0.f48729h == i12 && c7656hr0.f48727f == i11) {
                return c7656hr0;
            }
        }
        this.f49376g.b(i10).c(i11);
        int i13 = this.f49375f;
        this.f49375f = i13 + 1;
        return b(new C7656hr0(i13, i10, i11, i12));
    }

    public final C7656hr0 b(C7656hr0 c7656hr0) {
        int i10 = this.f49373d;
        C7656hr0[] c7656hr0Arr = this.f49374e;
        if (i10 > (c7656hr0Arr.length * 3) / 4) {
            int length = c7656hr0Arr.length;
            int i11 = (length * 2) + 1;
            C7656hr0[] c7656hr0Arr2 = new C7656hr0[i11];
            for (int i12 = length - 1; i12 >= 0; i12--) {
                C7656hr0 c7656hr02 = this.f49374e[i12];
                while (c7656hr02 != null) {
                    int i13 = c7656hr02.f48729h % i11;
                    C7656hr0 c7656hr03 = c7656hr02.f48730i;
                    c7656hr02.f48730i = c7656hr0Arr2[i13];
                    c7656hr0Arr2[i13] = c7656hr02;
                    c7656hr02 = c7656hr03;
                }
            }
            this.f49374e = c7656hr0Arr2;
        }
        this.f49373d++;
        int i14 = c7656hr0.f48729h;
        C7656hr0[] c7656hr0Arr3 = this.f49374e;
        int length2 = i14 % c7656hr0Arr3.length;
        c7656hr0.f48730i = c7656hr0Arr3[length2];
        c7656hr0Arr3[length2] = c7656hr0;
        return c7656hr0;
    }

    public final C7656hr0 a(int i10, long j10) {
        int i11 = (int) j10;
        int i12 = (int) (j10 >>> 32);
        int i13 = (i10 + i11 + i12) & Integer.MAX_VALUE;
        C7656hr0[] c7656hr0Arr = this.f49374e;
        for (C7656hr0 c7656hr0 = c7656hr0Arr[i13 % c7656hr0Arr.length]; c7656hr0 != null; c7656hr0 = c7656hr0.f48730i) {
            if (c7656hr0.f48723b == i10 && c7656hr0.f48729h == i13 && c7656hr0.f48727f == j10) {
                return c7656hr0;
            }
        }
        int i14 = this.f49375f;
        C8874p8 b10 = this.f49376g.b(i10);
        int i15 = b10.f51447b;
        int i16 = i15 + 8;
        if (i16 > b10.f51446a.length) {
            b10.a(8);
        }
        byte[] bArr = b10.f51446a;
        bArr[i15] = (byte) (i12 >>> 24);
        bArr[i15 + 1] = (byte) (i12 >>> 16);
        bArr[i15 + 2] = (byte) (i12 >>> 8);
        bArr[i15 + 3] = (byte) i12;
        bArr[i15 + 4] = (byte) (i11 >>> 24);
        bArr[i15 + 5] = (byte) (i11 >>> 16);
        bArr[i15 + 6] = (byte) (i11 >>> 8);
        bArr[i15 + 7] = (byte) i11;
        b10.f51447b = i16;
        this.f49375f += 2;
        return b(new C7656hr0(i14, i10, j10, i13));
    }

    public final int b(String str) {
        int hashCode = (str.hashCode() + 128) & Integer.MAX_VALUE;
        C7656hr0[] c7656hr0Arr = this.f49374e;
        for (C7656hr0 c7656hr0 = c7656hr0Arr[hashCode % c7656hr0Arr.length]; c7656hr0 != null; c7656hr0 = c7656hr0.f48730i) {
            if (c7656hr0.f48723b == 128 && c7656hr0.f48729h == hashCode && c7656hr0.f48726e.equals(str)) {
                return c7656hr0.f48722a;
            }
        }
        return a(new C7656hr0(this.f49379j, 128, hashCode, str));
    }

    public final int b(int i10, String str) {
        int hashCode = (str.hashCode() + 129 + i10) & Integer.MAX_VALUE;
        C7656hr0[] c7656hr0Arr = this.f49374e;
        for (C7656hr0 c7656hr0 = c7656hr0Arr[hashCode % c7656hr0Arr.length]; c7656hr0 != null; c7656hr0 = c7656hr0.f48730i) {
            if (c7656hr0.f48723b == 129 && c7656hr0.f48729h == hashCode && c7656hr0.f48727f == i10 && c7656hr0.f48726e.equals(str)) {
                return c7656hr0.f48722a;
            }
        }
        return a(new C7656hr0(this.f49379j, 129, str, i10, hashCode));
    }

    public final C7656hr0 a(Object obj) {
        if (obj instanceof Integer) {
            return a(3, ((Integer) obj).intValue());
        }
        if (obj instanceof Byte) {
            return a(3, ((Byte) obj).intValue());
        }
        if (obj instanceof Character) {
            return a(3, (int) ((Character) obj).charValue());
        }
        if (obj instanceof Short) {
            return a(3, ((Short) obj).intValue());
        }
        if (obj instanceof Boolean) {
            return a(3, ((Boolean) obj).booleanValue() ? 1 : 0);
        }
        if (obj instanceof Float) {
            return a(4, Float.floatToRawIntBits(((Float) obj).floatValue()));
        }
        if (obj instanceof Long) {
            return a(5, ((Long) obj).longValue());
        }
        if (obj instanceof Double) {
            return a(6, Double.doubleToRawLongBits(((Double) obj).doubleValue()));
        }
        if (obj instanceof String) {
            return a(8, (String) obj);
        }
        if (obj instanceof C9663tt0) {
            C9663tt0 c9663tt0 = (C9663tt0) obj;
            int c10 = c9663tt0.c();
            if (c10 == 10) {
                return a(7, c9663tt0.f52723b.substring(c9663tt0.f52724c, c9663tt0.f52725d));
            }
            if (c10 == 11) {
                return a(16, c9663tt0.b());
            }
            return a(7, c9663tt0.b());
        }
        if (obj instanceof C5829Qz) {
            C5829Qz c5829Qz = (C5829Qz) obj;
            return a(c5829Qz.f43768a, c5829Qz.f43769b, c5829Qz.f43770c, c5829Qz.f43771d, c5829Qz.f43772e);
        }
        if (obj instanceof C10127wh) {
            C10127wh c10127wh = (C10127wh) obj;
            return a(17, a(c10127wh.f53559c, c10127wh.f53560d).f48722a, c10127wh.f53557a, c10127wh.f53558b);
        }
        throw new IllegalArgumentException("value " + obj);
    }

    public final C7656hr0 a(C5829Qz c5829Qz, Object... objArr) {
        C8874p8 c8874p8 = this.f49378i;
        if (c8874p8 == null) {
            c8874p8 = new C8874p8();
            this.f49378i = c8874p8;
        }
        int length = objArr.length;
        int[] iArr = new int[length];
        for (int i10 = 0; i10 < length; i10++) {
            iArr[i10] = a(objArr[i10]).f48722a;
        }
        int i11 = c8874p8.f51447b;
        c8874p8.d(a(c5829Qz.f43768a, c5829Qz.f43769b, c5829Qz.f43770c, c5829Qz.f43771d, c5829Qz.f43772e).f48722a);
        c8874p8.d(length);
        for (int i12 = 0; i12 < length; i12++) {
            c8874p8.d(iArr[i12]);
        }
        int i13 = c8874p8.f51447b - i11;
        int hashCode = c5829Qz.hashCode();
        for (Object obj : objArr) {
            hashCode ^= obj.hashCode();
        }
        int i14 = hashCode & Integer.MAX_VALUE;
        byte[] bArr = this.f49378i.f51446a;
        C7656hr0[] c7656hr0Arr = this.f49374e;
        for (C7656hr0 c7656hr0 = c7656hr0Arr[i14 % c7656hr0Arr.length]; c7656hr0 != null; c7656hr0 = c7656hr0.f48730i) {
            if (c7656hr0.f48723b == 64 && c7656hr0.f48729h == i14) {
                int i15 = (int) c7656hr0.f48727f;
                for (int i16 = 0; i16 < i13; i16++) {
                    if (bArr[i11 + i16] != bArr[i15 + i16]) {
                        break;
                    }
                }
                this.f49378i.f51447b = i11;
                return c7656hr0;
            }
        }
        int i17 = this.f49377h;
        this.f49377h = i17 + 1;
        return b(new C7656hr0(i17, 64, i11, i14));
    }

    public final int a(C7656hr0 c7656hr0) {
        if (this.f49380k == null) {
            this.f49380k = new C7656hr0[16];
        }
        int i10 = this.f49379j;
        C7656hr0[] c7656hr0Arr = this.f49380k;
        if (i10 == c7656hr0Arr.length) {
            C7656hr0[] c7656hr0Arr2 = new C7656hr0[c7656hr0Arr.length * 2];
            System.arraycopy(c7656hr0Arr, 0, c7656hr0Arr2, 0, c7656hr0Arr.length);
            this.f49380k = c7656hr0Arr2;
        }
        C7656hr0[] c7656hr0Arr3 = this.f49380k;
        int i11 = this.f49379j;
        this.f49379j = i11 + 1;
        c7656hr0Arr3[i11] = c7656hr0;
        return b(c7656hr0).f48722a;
    }

    public final int a(String str) {
        int hashCode = (str.hashCode() + 1) & Integer.MAX_VALUE;
        C7656hr0[] c7656hr0Arr = this.f49374e;
        for (C7656hr0 c7656hr0 = c7656hr0Arr[hashCode % c7656hr0Arr.length]; c7656hr0 != null; c7656hr0 = c7656hr0.f48730i) {
            if (c7656hr0.f48723b == 1 && c7656hr0.f48729h == hashCode && c7656hr0.f48726e.equals(str)) {
                return c7656hr0.f48722a;
            }
        }
        C8874p8 b10 = this.f49376g.b(1);
        int length = str.length();
        if (length <= 65535) {
            int i10 = b10.f51447b;
            int i11 = i10 + 2;
            if (i11 + length > b10.f51446a.length) {
                b10.a(length + 2);
            }
            byte[] bArr = b10.f51446a;
            bArr[i10] = (byte) (length >>> 8);
            bArr[i10 + 1] = (byte) length;
            int i12 = 0;
            while (i12 < length) {
                char charAt = str.charAt(i12);
                if (charAt >= 1 && charAt <= '\u007f') {
                    bArr[i11] = (byte) charAt;
                    i12++;
                    i11++;
                } else {
                    b10.f51447b = i11;
                    b10.a(str, i12, 65535);
                    break;
                }
            }
            b10.f51447b = i11;
            int i13 = this.f49375f;
            this.f49375f = i13 + 1;
            return b(new C7656hr0(i13, 1, hashCode, str)).f48722a;
        }
        throw new IllegalArgumentException("UTF8 string too large");
    }

    public final C7656hr0 a(int i10, String str) {
        int hashCode = (str.hashCode() + i10) & Integer.MAX_VALUE;
        C7656hr0[] c7656hr0Arr = this.f49374e;
        for (C7656hr0 c7656hr0 = c7656hr0Arr[hashCode % c7656hr0Arr.length]; c7656hr0 != null; c7656hr0 = c7656hr0.f48730i) {
            if (c7656hr0.f48723b == i10 && c7656hr0.f48729h == hashCode && c7656hr0.f48726e.equals(str)) {
                return c7656hr0;
            }
        }
        this.f49376g.c(i10, a(str));
        int i11 = this.f49375f;
        this.f49375f = i11 + 1;
        return b(new C7656hr0(i11, i10, hashCode, str));
    }

    public final int a(String str, String str2) {
        int hashCode = ((str2.hashCode() * str.hashCode()) + 12) & Integer.MAX_VALUE;
        C7656hr0[] c7656hr0Arr = this.f49374e;
        for (C7656hr0 c7656hr0 = c7656hr0Arr[hashCode % c7656hr0Arr.length]; c7656hr0 != null; c7656hr0 = c7656hr0.f48730i) {
            if (c7656hr0.f48723b == 12 && c7656hr0.f48729h == hashCode && c7656hr0.f48725d.equals(str) && c7656hr0.f48726e.equals(str2)) {
                return c7656hr0.f48722a;
            }
        }
        this.f49376g.a(12, a(str), a(str2));
        int i10 = this.f49375f;
        this.f49375f = i10 + 1;
        return b(new C7656hr0(i10, hashCode, str, str2)).f48722a;
    }

    public final C7656hr0 a(int i10, int i11, String str, String str2) {
        int hashCode = (((i11 + 1) * str2.hashCode() * str.hashCode()) + i10) & Integer.MAX_VALUE;
        C7656hr0[] c7656hr0Arr = this.f49374e;
        for (C7656hr0 c7656hr0 = c7656hr0Arr[hashCode % c7656hr0Arr.length]; c7656hr0 != null; c7656hr0 = c7656hr0.f48730i) {
            if (c7656hr0.f48723b == i10 && c7656hr0.f48729h == hashCode && c7656hr0.f48727f == i11 && c7656hr0.f48725d.equals(str) && c7656hr0.f48726e.equals(str2)) {
                return c7656hr0;
            }
        }
        this.f49376g.a(i10, i11, a(str, str2));
        int i12 = this.f49375f;
        this.f49375f = i12 + 1;
        return b(new C7656hr0(i12, i10, null, str, str2, i11, hashCode));
    }

    public final C7656hr0 a(int i10, String str, String str2, String str3) {
        int hashCode = ((str3.hashCode() * str2.hashCode() * str.hashCode()) + i10) & Integer.MAX_VALUE;
        C7656hr0[] c7656hr0Arr = this.f49374e;
        for (C7656hr0 c7656hr0 = c7656hr0Arr[hashCode % c7656hr0Arr.length]; c7656hr0 != null; c7656hr0 = c7656hr0.f48730i) {
            if (c7656hr0.f48723b == i10 && c7656hr0.f48729h == hashCode && c7656hr0.f48724c.equals(str) && c7656hr0.f48725d.equals(str2) && c7656hr0.f48726e.equals(str3)) {
                return c7656hr0;
            }
        }
        this.f49376g.a(i10, a(7, str).f48722a, a(str2, str3));
        int i11 = this.f49375f;
        this.f49375f = i11 + 1;
        return b(new C7656hr0(i11, i10, str, str2, str3, 0L, hashCode));
    }

    public final C7656hr0 a(int i10, String str, String str2, String str3, boolean z10) {
        int i11 = (i10 <= 4 || !z10) ? i10 : i10 << 8;
        int hashCode = Integer.MAX_VALUE & ((str3.hashCode() * str2.hashCode() * str.hashCode() * i11) + 15);
        C7656hr0[] c7656hr0Arr = this.f49374e;
        for (C7656hr0 c7656hr0 = c7656hr0Arr[hashCode % c7656hr0Arr.length]; c7656hr0 != null; c7656hr0 = c7656hr0.f48730i) {
            if (c7656hr0.f48723b == 15 && c7656hr0.f48729h == hashCode && c7656hr0.f48727f == i11 && c7656hr0.f48724c.equals(str) && c7656hr0.f48725d.equals(str2) && c7656hr0.f48726e.equals(str3)) {
                return c7656hr0;
            }
        }
        if (i10 <= 4) {
            this.f49376g.b(i10, a(9, str, str2, str3).f48722a);
        } else {
            this.f49376g.b(i10, a(z10 ? 11 : 10, str, str2, str3).f48722a);
        }
        int i12 = this.f49375f;
        this.f49375f = i12 + 1;
        return b(new C7656hr0(i12, 15, str, str2, str3, i11, hashCode));
    }
}
