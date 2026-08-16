package org.tukaani.xz.lz;

class CRC32Hash {
    private static final int CRC32_POLY = -306674912;
    static final int[] crcTable = new int[256];

    static {
        for (int i10 = 0; i10 < 256; i10++) {
            int i11 = i10;
            for (int i12 = 0; i12 < 8; i12++) {
                int i13 = i11 & 1;
                i11 >>>= 1;
                if (i13 != 0) {
                    i11 ^= CRC32_POLY;
                }
            }
            crcTable[i10] = i11;
        }
    }
}
