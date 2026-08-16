package org.tukaani.xz.check;

import java.lang.reflect.Array;

public class CRC64 extends Check {
    private static final long[][] TABLE = (long[][]) Array.newInstance(Long.TYPE, 4, 256);
    private long crc = -1;

    static {
        int i10 = 0;
        while (i10 < 4) {
            for (int i11 = 0; i11 < 256; i11++) {
                long j10 = i10 == 0 ? i11 : TABLE[i10 - 1][i11];
                for (int i12 = 0; i12 < 8; i12++) {
                    long j11 = j10 & 1;
                    j10 >>>= 1;
                    if (j11 == 1) {
                        j10 ^= -3932672073523589310L;
                    }
                }
                TABLE[i10][i11] = j10;
            }
            i10++;
        }
    }

    public CRC64() {
        this.size = 8;
        this.name = "CRC64";
    }

    @Override
    public byte[] finish() {
        long j10 = ~this.crc;
        this.crc = -1L;
        byte[] bArr = new byte[8];
        for (int i10 = 0; i10 < 8; i10++) {
            bArr[i10] = (byte) (j10 >> (i10 * 8));
        }
        return bArr;
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) {
        int i12 = i11 + i10;
        int i13 = i12 - 3;
        while (i10 < i13) {
            long j10 = this.crc;
            int i14 = (int) j10;
            long[][] jArr = TABLE;
            this.crc = (((j10 >>> 32) ^ (jArr[3][(i14 & 255) ^ (bArr[i10] & 255)] ^ jArr[2][((i14 >>> 8) & 255) ^ (bArr[i10 + 1] & 255)])) ^ jArr[1][((i14 >>> 16) & 255) ^ (bArr[i10 + 2] & 255)]) ^ jArr[0][((i14 >>> 24) & 255) ^ (bArr[i10 + 3] & 255)];
            i10 += 4;
        }
        while (i10 < i12) {
            long[] jArr2 = TABLE[0];
            int i15 = i10 + 1;
            int i16 = bArr[i10] & 255;
            long j11 = this.crc;
            this.crc = (j11 >>> 8) ^ jArr2[i16 ^ (((int) j11) & 255)];
            i10 = i15;
        }
    }
}
