package cl;

import sk.C15316b;

public final class C4218a {
    public static long a(byte[] bArr, int i10) {
        return ((bArr[i10 + 2] & 255) << 16) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8);
    }

    public static long b(byte[] bArr, int i10) {
        return ((bArr[i10 + 3] & 255) << 24) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16);
    }

    public static void c(m mVar, byte[] bArr, int i10) {
        if (i10 != 3) {
            for (int i11 = 0; i11 < 32; i11++) {
                long b10 = b(bArr, i11 * 4);
                long j10 = (b10 & C15316b.f109660a) + ((b10 >> 1) & C15316b.f109660a);
                for (int i12 = 0; i12 < 8; i12++) {
                    int i13 = i12 * 4;
                    mVar.q((i11 * 8) + i12, (short) (((short) ((j10 >> i13) & 3)) - ((short) (3 & (j10 >> (i13 + i10))))));
                }
            }
            return;
        }
        for (int i14 = 0; i14 < 64; i14++) {
            long a10 = a(bArr, i14 * 3);
            long j11 = (a10 & 2396745) + ((a10 >> 1) & 2396745) + ((a10 >> 2) & 2396745);
            for (int i15 = 0; i15 < 4; i15++) {
                int i16 = i15 * 6;
                mVar.q((i14 * 4) + i15, (short) (((short) ((j11 >> i16) & 7)) - ((short) (7 & (j11 >> (i16 + 3))))));
            }
        }
    }
}
