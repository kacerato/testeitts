package Sg;

import Tg.C3089c;
import Tg.f;

public final class b {

    public static final String f23248a = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11";

    public static final int f23249b = 128;

    public static final int f23250c = 64;

    public static final int f23251d = 32;

    public static final int f23252e = 16;

    public static final int f23253f = 15;

    public static final int f23254g = 8;

    public static final int f23255h = 128;

    public static final int f23256i = 127;

    public static final int f23257j = 0;

    public static final int f23258k = 1;

    public static final int f23259l = 2;

    public static final int f23260m = 8;

    public static final int f23261n = 9;

    public static final int f23262o = 10;

    public static final long f23263p = 125;

    public static final long f23264q = 123;

    public static final int f23265r = 126;

    public static final long f23266s = 65535;

    public static final int f23267t = 127;

    public static final int f23268u = 1001;

    public static final int f23269v = 1005;

    public b() {
        throw new AssertionError((Object) "No instances.");
    }

    public static String a(String str) {
        return f.m(str + f23248a).P().b();
    }

    public static String b(int i10) {
        if (i10 < 1000 || i10 >= 5000) {
            return "Code must be in range [1000,5000): " + i10;
        }
        if ((i10 < 1004 || i10 > 1006) && (i10 < 1012 || i10 > 2999)) {
            return null;
        }
        return "Code " + i10 + " is reserved and may not be used.";
    }

    public static void c(C3089c.C0708c c0708c, byte[] bArr) {
        int length = bArr.length;
        int i10 = 0;
        do {
            byte[] bArr2 = c0708c.f24992f;
            int i11 = c0708c.f24993g;
            int i12 = c0708c.f24994h;
            while (i11 < i12) {
                int i13 = i10 % length;
                bArr2[i11] = (byte) (bArr2[i11] ^ bArr[i13]);
                i11++;
                i10 = i13 + 1;
            }
        } while (c0708c.c() != -1);
    }

    public static void d(int i10) {
        String b10 = b(i10);
        if (b10 != null) {
            throw new IllegalArgumentException(b10);
        }
    }
}
