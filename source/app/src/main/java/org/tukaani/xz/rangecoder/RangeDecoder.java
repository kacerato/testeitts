package org.tukaani.xz.rangecoder;

import java.io.IOException;

public abstract class RangeDecoder extends RangeCoder {
    int range = 0;
    int code = 0;

    public int decodeBit(short[] sArr, int i10) throws IOException {
        normalize();
        short s10 = sArr[i10];
        int i11 = this.range;
        int i12 = (i11 >>> 11) * s10;
        int i13 = this.code;
        if ((i13 ^ Integer.MIN_VALUE) < (Integer.MIN_VALUE ^ i12)) {
            this.range = i12;
            sArr[i10] = (short) (s10 + ((2048 - s10) >>> 5));
            return 0;
        }
        this.range = i11 - i12;
        this.code = i13 - i12;
        sArr[i10] = (short) (s10 - (s10 >>> 5));
        return 1;
    }

    public int decodeBitTree(short[] sArr) throws IOException {
        int i10 = 1;
        do {
            i10 = decodeBit(sArr, i10) | (i10 << 1);
        } while (i10 < sArr.length);
        return i10 - sArr.length;
    }

    public int decodeDirectBits(int i10) throws IOException {
        int i11 = 0;
        do {
            normalize();
            int i12 = this.range >>> 1;
            this.range = i12;
            int i13 = this.code;
            int i14 = (i13 - i12) >>> 31;
            this.code = i13 - (i12 & (i14 - 1));
            i11 = (i11 << 1) | (1 - i14);
            i10--;
        } while (i10 != 0);
        return i11;
    }

    public int decodeReverseBitTree(short[] sArr) throws IOException {
        int i10 = 0;
        int i11 = 1;
        int i12 = 0;
        while (true) {
            int decodeBit = decodeBit(sArr, i11);
            i11 = (i11 << 1) | decodeBit;
            int i13 = i12 + 1;
            i10 |= decodeBit << i12;
            if (i11 >= sArr.length) {
                return i10;
            }
            i12 = i13;
        }
    }

    public abstract void normalize() throws IOException;
}
