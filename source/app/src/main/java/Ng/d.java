package Ng;

import java.io.IOException;
import w2.C15883c;

public final class d {

    public static final int f16205b = 16384;

    public static final byte f16206c = 0;

    public static final byte f16207d = 1;

    public static final byte f16208e = 2;

    public static final byte f16209f = 3;

    public static final byte f16210g = 4;

    public static final byte f16211h = 5;

    public static final byte f16212i = 6;

    public static final byte f16213j = 7;

    public static final byte f16214k = 8;

    public static final byte f16215l = 9;

    public static final byte f16216m = 0;

    public static final byte f16217n = 1;

    public static final byte f16218o = 1;

    public static final byte f16219p = 4;

    public static final byte f16220q = 4;

    public static final byte f16221r = 8;

    public static final byte f16222s = 32;

    public static final byte f16223t = 32;

    public static final Tg.f f16204a = Tg.f.m("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");

    public static final String[] f16224u = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};

    public static final String[] f16225v = new String[64];

    public static final String[] f16226w = new String[256];

    static {
        int i10 = 0;
        int i11 = 0;
        while (true) {
            String[] strArr = f16226w;
            if (i11 >= strArr.length) {
                break;
            }
            strArr[i11] = Gg.c.s("%8s", Integer.toBinaryString(i11)).replace(C15883c.f126249O, '0');
            i11++;
        }
        String[] strArr2 = f16225v;
        strArr2[0] = "";
        strArr2[1] = "END_STREAM";
        int[] iArr = {1};
        strArr2[8] = "PADDED";
        int i12 = iArr[0];
        strArr2[i12 | 8] = strArr2[i12] + "|PADDED";
        strArr2[4] = "END_HEADERS";
        strArr2[32] = "PRIORITY";
        strArr2[36] = "END_HEADERS|PRIORITY";
        int[] iArr2 = {4, 32, 36};
        for (int i13 = 0; i13 < 3; i13++) {
            int i14 = iArr2[i13];
            int i15 = iArr[0];
            String[] strArr3 = f16225v;
            int i16 = i15 | i14;
            strArr3[i16] = strArr3[i15] + '|' + strArr3[i14];
            strArr3[i16 | 8] = strArr3[i15] + '|' + strArr3[i14] + "|PADDED";
        }
        while (true) {
            String[] strArr4 = f16225v;
            if (i10 >= strArr4.length) {
                return;
            }
            if (strArr4[i10] == null) {
                strArr4[i10] = f16226w[i10];
            }
            i10++;
        }
    }

    public static String a(byte b10, byte b11) {
        if (b11 == 0) {
            return "";
        }
        if (b10 != 2 && b10 != 3) {
            if (b10 == 4 || b10 == 6) {
                return b11 == 1 ? "ACK" : f16226w[b11];
            }
            if (b10 != 7 && b10 != 8) {
                String[] strArr = f16225v;
                String str = b11 < strArr.length ? strArr[b11] : f16226w[b11];
                return (b10 != 5 || (b11 & 4) == 0) ? (b10 != 0 || (b11 & 32) == 0) ? str : str.replace("PRIORITY", "COMPRESSED") : str.replace("HEADERS", "PUSH_PROMISE");
            }
        }
        return f16226w[b11];
    }

    public static String b(boolean z10, int i10, int i11, byte b10, byte b11) {
        String[] strArr = f16224u;
        return Gg.c.s("%s 0x%08x %5d %-13s %s", z10 ? "<<" : ">>", Integer.valueOf(i10), Integer.valueOf(i11), b10 < strArr.length ? strArr[b10] : Gg.c.s("0x%02x", Byte.valueOf(b10)), a(b10, b11));
    }

    public static IllegalArgumentException c(String str, Object... objArr) {
        throw new IllegalArgumentException(Gg.c.s(str, objArr));
    }

    public static IOException d(String str, Object... objArr) throws IOException {
        throw new IOException(Gg.c.s(str, objArr));
    }
}
