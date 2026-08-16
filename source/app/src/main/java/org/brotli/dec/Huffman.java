package org.brotli.dec;

final class Huffman {
    static final int HUFFMAN_MAX_TABLE_SIZE = 1080;
    private static final int MAX_LENGTH = 15;

    public static void buildHuffmanTable(int[] iArr, int i10, int i11, int[] iArr2, int i12) {
        int[] iArr3 = new int[i12];
        int[] iArr4 = new int[16];
        int[] iArr5 = new int[16];
        int i13 = 0;
        for (int i14 = 0; i14 < i12; i14++) {
            int i15 = iArr2[i14];
            iArr4[i15] = iArr4[i15] + 1;
        }
        iArr5[1] = 0;
        int i16 = 1;
        while (i16 < 15) {
            int i17 = i16 + 1;
            iArr5[i17] = iArr5[i16] + iArr4[i16];
            i16 = i17;
        }
        for (int i18 = 0; i18 < i12; i18++) {
            int i19 = iArr2[i18];
            if (i19 != 0) {
                int i20 = iArr5[i19];
                iArr5[i19] = i20 + 1;
                iArr3[i20] = i18;
            }
        }
        int i21 = 1 << i11;
        if (iArr5[15] == 1) {
            for (int i22 = 0; i22 < i21; i22++) {
                iArr[i10 + i22] = iArr3[0];
            }
            return;
        }
        int i23 = 2;
        int i24 = 2;
        int i25 = 0;
        int i26 = 1;
        while (i26 <= i11) {
            while (iArr4[i26] > 0) {
                replicateValue(iArr, i10 + i13, i24, i21, iArr3[i25] | (i26 << 16));
                i13 = getNextKey(i13, i26);
                iArr4[i26] = iArr4[i26] - 1;
                i25++;
            }
            i26++;
            i24 <<= 1;
        }
        int i27 = i21 - 1;
        int i28 = i11 + 1;
        int i29 = -1;
        int i30 = i10;
        while (i28 <= 15) {
            while (iArr4[i28] > 0) {
                int i31 = i13 & i27;
                if (i31 != i29) {
                    i30 += i21;
                    int nextTableBitSize = nextTableBitSize(iArr4, i28, i11);
                    iArr[i10 + i31] = ((nextTableBitSize + i11) << 16) | ((i30 - i10) - i31);
                    i21 = 1 << nextTableBitSize;
                    i29 = i31;
                }
                replicateValue(iArr, (i13 >> i11) + i30, i23, i21, ((i28 - i11) << 16) | iArr3[i25]);
                i13 = getNextKey(i13, i28);
                iArr4[i28] = iArr4[i28] - 1;
                i25++;
            }
            i28++;
            i23 <<= 1;
        }
    }

    private static int getNextKey(int i10, int i11) {
        int i12 = 1 << (i11 - 1);
        while ((i10 & i12) != 0) {
            i12 >>= 1;
        }
        return (i10 & (i12 - 1)) + i12;
    }

    private static int nextTableBitSize(int[] iArr, int i10, int i11) {
        int i12;
        int i13 = 1 << (i10 - i11);
        while (i10 < 15 && (i12 = i13 - iArr[i10]) > 0) {
            i10++;
            i13 = i12 << 1;
        }
        return i10 - i11;
    }

    private static void replicateValue(int[] iArr, int i10, int i11, int i12, int i13) {
        do {
            i12 -= i11;
            iArr[i10 + i12] = i13;
        } while (i12 > 0);
    }
}
