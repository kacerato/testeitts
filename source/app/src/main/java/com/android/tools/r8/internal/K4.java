package com.android.tools.r8.internal;

public class K4 {

    public final String f41566a;

    public C8874p8 f41567b;

    public K4 f41568c;

    public K4(String str) {
        this.f41566a = str;
    }

    public K4 a(C6072Vd c6072Vd, int i10, int i11) {
        K4 k42 = new K4(this.f41566a);
        c6072Vd.getClass();
        byte[] bArr = new byte[i11];
        System.arraycopy(c6072Vd.f45107b, i10, bArr, 0, i11);
        k42.f41567b = new C8874p8(bArr);
        return k42;
    }

    public C8874p8 a() {
        return this.f41567b;
    }

    public static int a(C7988jr0 c7988jr0, int i10, int i11) {
        int i12;
        if ((i10 & 4096) == 0 || c7988jr0.f49371b >= 49) {
            i12 = 0;
        } else {
            c7988jr0.a("Synthetic");
            i12 = 6;
        }
        if (i11 != 0) {
            c7988jr0.a("Signature");
            i12 += 8;
        }
        if ((i10 & 131072) == 0) {
            return i12;
        }
        c7988jr0.a("Deprecated");
        return i12 + 6;
    }

    public static void a(C7988jr0 c7988jr0, int i10, int i11, C8874p8 c8874p8) {
        if ((i10 & 4096) != 0 && c7988jr0.f49371b < 49) {
            c8874p8.d(c7988jr0.a("Synthetic")).c(0);
        }
        if (i11 != 0) {
            c8874p8.d(c7988jr0.a("Signature")).c(2).d(i11);
        }
        if ((i10 & 131072) != 0) {
            c8874p8.d(c7988jr0.a("Deprecated")).c(0);
        }
    }
}
