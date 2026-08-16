package org.tukaani.xz.rangecoder;

import java.io.IOException;

public abstract class RangeEncoder extends RangeCoder {
    static final boolean $assertionsDisabled = false;
    private static final int BIT_PRICE_SHIFT_BITS = 4;
    private static final int MOVE_REDUCING_BITS = 4;
    private static final int[] prices = new int[128];
    private byte cache;
    long cacheSize;
    private long low;
    private int range;

    static {
        for (int i10 = 8; i10 < 2048; i10 += 16) {
            int i11 = i10;
            int i12 = 0;
            for (int i13 = 0; i13 < 4; i13++) {
                i11 *= i11;
                i12 <<= 1;
                while (((-65536) & i11) != 0) {
                    i11 >>>= 1;
                    i12++;
                }
            }
            prices[i10 >> 4] = 161 - i12;
        }
    }

    public static int getBitPrice(int i10, int i11) {
        return prices[(i10 ^ ((-i11) & 2047)) >>> 4];
    }

    public static int getBitTreePrice(short[] sArr, int i10) {
        int length = i10 | sArr.length;
        int i11 = 0;
        do {
            int i12 = length & 1;
            length >>>= 1;
            i11 += getBitPrice(sArr[length], i12);
        } while (length != 1);
        return i11;
    }

    public static int getDirectBitsPrice(int i10) {
        return i10 << 4;
    }

    public static int getReverseBitTreePrice(short[] sArr, int i10) {
        int length = i10 | sArr.length;
        int i11 = 0;
        int i12 = 1;
        do {
            int i13 = length & 1;
            length >>>= 1;
            i11 += getBitPrice(sArr[i12], i13);
            i12 = (i12 << 1) | i13;
        } while (length != 1);
        return i11;
    }

    private void shiftLow() throws IOException {
        long j10 = this.low;
        int i10 = (int) (j10 >>> 32);
        if (i10 != 0 || j10 < 4278190080L) {
            byte b10 = this.cache;
            while (true) {
                writeByte(b10 + i10);
                long j11 = this.cacheSize - 1;
                this.cacheSize = j11;
                if (j11 == 0) {
                    break;
                } else {
                    b10 = 255;
                }
            }
            this.cache = (byte) (this.low >>> 24);
        }
        this.cacheSize++;
        this.low = (this.low & 16777215) << 8;
    }

    public void encodeBit(short[] sArr, int i10, int i11) throws IOException {
        short s10 = sArr[i10];
        int i12 = this.range;
        int i13 = (i12 >>> 11) * s10;
        if (i11 == 0) {
            this.range = i13;
            sArr[i10] = (short) (s10 + ((2048 - s10) >>> 5));
        } else {
            this.low += i13 & 4294967295L;
            this.range = i12 - i13;
            sArr[i10] = (short) (s10 - (s10 >>> 5));
        }
        int i14 = this.range;
        if (((-16777216) & i14) == 0) {
            this.range = i14 << 8;
            shiftLow();
        }
    }

    public void encodeBitTree(short[] sArr, int i10) throws IOException {
        int length = sArr.length;
        int i11 = 1;
        do {
            length >>>= 1;
            int i12 = i10 & length;
            encodeBit(sArr, i11, i12);
            i11 <<= 1;
            if (i12 != 0) {
                i11 |= 1;
            }
        } while (length != 1);
    }

    public void encodeDirectBits(int i10, int i11) throws IOException {
        do {
            int i12 = this.range >>> 1;
            this.range = i12;
            i11--;
            this.low += (0 - ((i10 >>> i11) & 1)) & i12;
            if (((-16777216) & i12) == 0) {
                this.range = i12 << 8;
                shiftLow();
            }
        } while (i11 != 0);
    }

    public void encodeReverseBitTree(short[] sArr, int i10) throws IOException {
        int length = i10 | sArr.length;
        int i11 = 1;
        do {
            int i12 = length & 1;
            length >>>= 1;
            encodeBit(sArr, i11, i12);
            i11 = (i11 << 1) | i12;
        } while (length != 1);
    }

    public int finish() throws IOException {
        for (int i10 = 0; i10 < 5; i10++) {
            shiftLow();
        }
        return -1;
    }

    public int getPendingSize() {
        throw new Error();
    }

    public void reset() {
        this.low = 0L;
        this.range = -1;
        this.cache = (byte) 0;
        this.cacheSize = 1L;
    }

    public abstract void writeByte(int i10) throws IOException;
}
