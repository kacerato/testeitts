package Tl;

import Ii.C2651i;
import Ii.Q;

public class a {

    public static final int f25437a = 168;

    public static final int f25438b = 136;

    public static void a(byte[] bArr, int i10, int i11, short s10, byte[] bArr2, int i12, int i13) {
        C2651i c2651i = new C2651i(128, null, new byte[]{(byte) s10, (byte) (s10 >> 8)});
        c2651i.update(bArr2, i12, i13);
        c2651i.e(bArr, i10, i11);
    }

    public static void b(byte[] bArr, int i10, int i11, short s10, byte[] bArr2, int i12, int i13) {
        C2651i c2651i = new C2651i(256, null, new byte[]{(byte) s10, (byte) (s10 >> 8)});
        c2651i.update(bArr2, i12, i13);
        c2651i.e(bArr, i10, i11);
    }

    public static void c(byte[] bArr, int i10, int i11, byte[] bArr2, int i12, int i13) {
        Q q10 = new Q(128);
        q10.update(bArr2, i12, i13);
        q10.e(bArr, i10, i11);
    }

    public static void d(byte[] bArr, int i10, int i11, byte[] bArr2, int i12, int i13) {
        Q q10 = new Q(256);
        q10.update(bArr2, i12, i13);
        q10.e(bArr, i10, i11);
    }
}
