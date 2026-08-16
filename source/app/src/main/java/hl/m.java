package hl;

import Ii.Q;
import org.bouncycastle.util.p;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public class m {
    public static void a(short[] sArr, short[] sArr2, short[] sArr3) {
        for (int i10 = 0; i10 < 1024; i10++) {
            sArr3[i10] = o.a((short) (sArr[i10] + sArr2[i10]));
        }
    }

    public static void b(short[] sArr, byte[] bArr) {
        for (int i10 = 0; i10 < 256; i10++) {
            int i11 = i10 * 7;
            int i12 = bArr[i11] & 255;
            byte b10 = bArr[i11 + 1];
            int i13 = bArr[i11 + 2] & 255;
            byte b11 = bArr[i11 + 3];
            int i14 = bArr[i11 + 4] & 255;
            byte b12 = bArr[i11 + 5];
            int i15 = bArr[i11 + 6] & 255;
            int i16 = i10 * 4;
            sArr[i16] = (short) (i12 | ((b10 & Opcodes.OPC_lstore_0) << 8));
            sArr[i16 + 1] = (short) (((b10 & 255) >>> 6) | (i13 << 2) | ((b11 & 15) << 10));
            sArr[i16 + 2] = (short) (((b11 & 255) >>> 4) | (i14 << 4) | ((b12 & 3) << 12));
            sArr[i16 + 3] = (short) ((i15 << 6) | ((b12 & 255) >>> 2));
        }
    }

    public static void c(short[] sArr) {
        j.a(sArr);
        j.b(sArr, n.f91134b);
        j.c(sArr, n.f91136d);
    }

    public static void d(short[] sArr, byte[] bArr, byte b10) {
        byte[] bArr2 = new byte[8];
        bArr2[0] = b10;
        byte[] bArr3 = new byte[4096];
        C13528a.a(bArr, bArr2, bArr3, 0, 4096);
        for (int i10 = 0; i10 < 1024; i10++) {
            int a10 = p.a(bArr3, i10 * 4);
            int i11 = 0;
            for (int i12 = 0; i12 < 8; i12++) {
                i11 += (a10 >> i12) & 16843009;
            }
            sArr[i10] = (short) (((((i11 >>> 24) + i11) & 255) + 12289) - (((i11 >>> 16) + (i11 >>> 8)) & 255));
        }
    }

    public static short e(short s10) {
        short a10 = o.a(s10);
        int i10 = a10 - 12289;
        return (short) (((a10 ^ i10) & (i10 >> 31)) ^ i10);
    }

    public static void f(short[] sArr, short[] sArr2, short[] sArr3) {
        for (int i10 = 0; i10 < 1024; i10++) {
            sArr3[i10] = o.b((sArr[i10] & 65535) * (65535 & o.b((sArr2[i10] & 65535) * 3186)));
        }
    }

    public static void g(byte[] bArr, short[] sArr) {
        for (int i10 = 0; i10 < 256; i10++) {
            int i11 = i10 * 4;
            short e10 = e(sArr[i11]);
            short e11 = e(sArr[i11 + 1]);
            short e12 = e(sArr[i11 + 2]);
            short e13 = e(sArr[i11 + 3]);
            int i12 = i10 * 7;
            bArr[i12] = (byte) e10;
            bArr[i12 + 1] = (byte) ((e10 >> 8) | (e11 << 6));
            bArr[i12 + 2] = (byte) (e11 >> 2);
            bArr[i12 + 3] = (byte) ((e11 >> 10) | (e12 << 4));
            bArr[i12 + 4] = (byte) (e12 >> 4);
            bArr[i12 + 5] = (byte) ((e12 >> 12) | (e13 << 2));
            bArr[i12 + 6] = (byte) (e13 >> 6);
        }
    }

    public static void h(short[] sArr) {
        j.c(sArr, n.f91135c);
        j.b(sArr, n.f91133a);
    }

    public static void i(short[] sArr, byte[] bArr) {
        Q q10 = new Q(128);
        q10.update(bArr, 0, bArr.length);
        int i10 = 0;
        while (true) {
            byte[] bArr2 = new byte[256];
            q10.h(bArr2, 0, 256);
            for (int i11 = 0; i11 < 256; i11 += 2) {
                int i12 = (bArr2[i11] & 255) | ((bArr2[i11 + 1] & 255) << 8);
                if (i12 < 61445) {
                    int i13 = i10 + 1;
                    sArr[i10] = (short) i12;
                    if (i13 == 1024) {
                        return;
                    } else {
                        i10 = i13;
                    }
                }
            }
        }
    }
}
