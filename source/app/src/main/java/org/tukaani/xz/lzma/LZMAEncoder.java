package org.tukaani.xz.lzma;

import java.io.IOException;
import java.lang.reflect.Array;
import org.tukaani.xz.ArrayCache;
import org.tukaani.xz.lz.LZEncoder;
import org.tukaani.xz.lz.Matches;
import org.tukaani.xz.lzma.LZMACoder;
import org.tukaani.xz.rangecoder.RangeEncoder;

public abstract class LZMAEncoder extends LZMACoder {
    static final boolean $assertionsDisabled = false;
    private static final int ALIGN_PRICE_UPDATE_INTERVAL = 16;
    private static final int DIST_PRICE_UPDATE_INTERVAL = 128;
    private static final int LZMA2_COMPRESSED_LIMIT = 65510;
    private static final int LZMA2_UNCOMPRESSED_LIMIT = 2096879;
    public static final int MODE_FAST = 1;
    public static final int MODE_NORMAL = 2;
    private int alignPriceCount;
    private final int[] alignPrices;
    int back;
    private int distPriceCount;
    private final int[][] distSlotPrices;
    private final int distSlotPricesSize;
    private final int[][] fullDistPrices;
    final LiteralEncoder literalEncoder;
    final LZEncoder lz;
    final LengthEncoder matchLenEncoder;
    final int niceLen;

    private final RangeEncoder f103367rc;
    int readAhead;
    final LengthEncoder repLenEncoder;
    private int uncompressedSize;

    public class LengthEncoder extends LZMACoder.LengthCoder {
        private static final int PRICE_UPDATE_INTERVAL = 32;
        private final int[] counters;
        private final int[][] prices;

        public LengthEncoder(int i10, int i11) {
            super();
            int i12 = 1 << i10;
            this.counters = new int[i12];
            this.prices = (int[][]) Array.newInstance(Integer.TYPE, i12, Math.max(i11 - 1, 16));
        }

        public void encode(int i10, int i11) throws IOException {
            int i12 = i10 - 2;
            if (i12 < 8) {
                LZMAEncoder.this.f103367rc.encodeBit(this.choice, 0, 0);
                LZMAEncoder.this.f103367rc.encodeBitTree(this.low[i11], i12);
            } else {
                LZMAEncoder.this.f103367rc.encodeBit(this.choice, 0, 1);
                int i13 = i10 - 10;
                if (i13 < 8) {
                    LZMAEncoder.this.f103367rc.encodeBit(this.choice, 1, 0);
                    LZMAEncoder.this.f103367rc.encodeBitTree(this.mid[i11], i13);
                } else {
                    LZMAEncoder.this.f103367rc.encodeBit(this.choice, 1, 1);
                    LZMAEncoder.this.f103367rc.encodeBitTree(this.high, i10 - 18);
                }
            }
            int[] iArr = this.counters;
            iArr[i11] = iArr[i11] - 1;
        }

        public int getPrice(int i10, int i11) {
            return this.prices[i11][i10 - 2];
        }

        @Override
        public void reset() {
            super.reset();
            int i10 = 0;
            while (true) {
                int[] iArr = this.counters;
                if (i10 >= iArr.length) {
                    return;
                }
                iArr[i10] = 0;
                i10++;
            }
        }

        public void updatePrices() {
            int i10 = 0;
            while (true) {
                int[] iArr = this.counters;
                if (i10 >= iArr.length) {
                    return;
                }
                if (iArr[i10] <= 0) {
                    iArr[i10] = 32;
                    updatePrices(i10);
                }
                i10++;
            }
        }

        private void updatePrices(int i10) {
            int bitPrice = RangeEncoder.getBitPrice(this.choice[0], 0);
            int i11 = 0;
            while (i11 < 8) {
                this.prices[i10][i11] = RangeEncoder.getBitTreePrice(this.low[i10], i11) + bitPrice;
                i11++;
            }
            int bitPrice2 = RangeEncoder.getBitPrice(this.choice[0], 1);
            int bitPrice3 = RangeEncoder.getBitPrice(this.choice[1], 0);
            while (i11 < 16) {
                this.prices[i10][i11] = bitPrice2 + bitPrice3 + RangeEncoder.getBitTreePrice(this.mid[i10], i11 - 8);
                i11++;
            }
            int bitPrice4 = RangeEncoder.getBitPrice(this.choice[1], 1);
            while (true) {
                int[] iArr = this.prices[i10];
                if (i11 >= iArr.length) {
                    return;
                }
                iArr[i11] = bitPrice2 + bitPrice4 + RangeEncoder.getBitTreePrice(this.high, i11 - 16);
                i11++;
            }
        }
    }

    public class LiteralEncoder extends LZMACoder.LiteralCoder {
        static final boolean $assertionsDisabled = false;
        private final LiteralSubencoder[] subencoders;

        public class LiteralSubencoder extends LZMACoder.LiteralCoder.LiteralSubcoder {
            private LiteralSubencoder() {
                super();
            }

            public void encode() throws IOException {
                LZMAEncoder lZMAEncoder = LZMAEncoder.this;
                int i10 = 256;
                int i11 = lZMAEncoder.lz.getByte(lZMAEncoder.readAhead) | 256;
                if (!LZMAEncoder.this.state.isLiteral()) {
                    LZMAEncoder lZMAEncoder2 = LZMAEncoder.this;
                    int i12 = lZMAEncoder2.lz.getByte(lZMAEncoder2.reps[0] + 1 + lZMAEncoder2.readAhead);
                    do {
                        i12 <<= 1;
                        LZMAEncoder.this.f103367rc.encodeBit(this.probs, (i12 & i10) + i10 + (i11 >>> 8), (i11 >>> 7) & 1);
                        i11 <<= 1;
                        i10 &= ~(i12 ^ i11);
                    } while (i11 < 65536);
                    LZMAEncoder.this.state.updateLiteral();
                }
                do {
                    LZMAEncoder.this.f103367rc.encodeBit(this.probs, i11 >>> 8, (i11 >>> 7) & 1);
                    i11 <<= 1;
                } while (i11 < 65536);
                LZMAEncoder.this.state.updateLiteral();
            }

            public int getMatchedPrice(int i10, int i11) {
                int i12 = 256;
                int i13 = i10 | 256;
                int i14 = 0;
                do {
                    i11 <<= 1;
                    i14 += RangeEncoder.getBitPrice(this.probs[(i11 & i12) + i12 + (i13 >>> 8)], (i13 >>> 7) & 1);
                    i13 <<= 1;
                    i12 &= ~(i11 ^ i13);
                } while (i13 < 65536);
                return i14;
            }

            public int getNormalPrice(int i10) {
                int i11 = i10 | 256;
                int i12 = 0;
                do {
                    i12 += RangeEncoder.getBitPrice(this.probs[i11 >>> 8], (i11 >>> 7) & 1);
                    i11 <<= 1;
                } while (i11 < 65536);
                return i12;
            }
        }

        public LiteralEncoder(int i10, int i11) {
            super(i10, i11);
            this.subencoders = new LiteralSubencoder[1 << (i10 + i11)];
            int i12 = 0;
            while (true) {
                LiteralSubencoder[] literalSubencoderArr = this.subencoders;
                if (i12 >= literalSubencoderArr.length) {
                    return;
                }
                literalSubencoderArr[i12] = new LiteralSubencoder();
                i12++;
            }
        }

        public void encode() throws IOException {
            LZMAEncoder lZMAEncoder = LZMAEncoder.this;
            this.subencoders[getSubcoderIndex(lZMAEncoder.lz.getByte(lZMAEncoder.readAhead + 1), LZMAEncoder.this.lz.getPos() - LZMAEncoder.this.readAhead)].encode();
        }

        public void encodeInit() throws IOException {
            this.subencoders[0].encode();
        }

        public int getPrice(int i10, int i11, int i12, int i13, State state) {
            int bitPrice = RangeEncoder.getBitPrice(LZMAEncoder.this.isMatch[state.get()][LZMAEncoder.this.posMask & i13], 0);
            int subcoderIndex = getSubcoderIndex(i12, i13);
            return bitPrice + (state.isLiteral() ? this.subencoders[subcoderIndex].getNormalPrice(i10) : this.subencoders[subcoderIndex].getMatchedPrice(i10, i11));
        }

        public void reset() {
            int i10 = 0;
            while (true) {
                LiteralSubencoder[] literalSubencoderArr = this.subencoders;
                if (i10 >= literalSubencoderArr.length) {
                    return;
                }
                literalSubencoderArr[i10].reset();
                i10++;
            }
        }
    }

    public LZMAEncoder(RangeEncoder rangeEncoder, LZEncoder lZEncoder, int i10, int i11, int i12, int i13, int i14) {
        super(i12);
        this.distPriceCount = 0;
        this.alignPriceCount = 0;
        Class<Integer> cls = Integer.TYPE;
        this.fullDistPrices = (int[][]) Array.newInstance(cls, 4, 128);
        this.alignPrices = new int[16];
        this.back = 0;
        this.readAhead = -1;
        this.uncompressedSize = 0;
        this.f103367rc = rangeEncoder;
        this.lz = lZEncoder;
        this.niceLen = i14;
        this.literalEncoder = new LiteralEncoder(i10, i11);
        this.matchLenEncoder = new LengthEncoder(i12, i14);
        this.repLenEncoder = new LengthEncoder(i12, i14);
        int distSlot = getDistSlot(i13 - 1) + 1;
        this.distSlotPricesSize = distSlot;
        this.distSlotPrices = (int[][]) Array.newInstance(cls, 4, distSlot);
        reset();
    }

    private boolean encodeInit() throws IOException {
        if (!this.lz.hasEnoughData(0)) {
            return false;
        }
        skip(1);
        this.f103367rc.encodeBit(this.isMatch[this.state.get()], 0, 0);
        this.literalEncoder.encodeInit();
        this.readAhead--;
        this.uncompressedSize++;
        return true;
    }

    private void encodeMatch(int i10, int i11, int i12) throws IOException {
        this.state.updateMatch();
        this.matchLenEncoder.encode(i11, i12);
        int distSlot = getDistSlot(i10);
        this.f103367rc.encodeBitTree(this.distSlots[LZMACoder.getDistState(i11)], distSlot);
        if (distSlot >= 4) {
            int i13 = distSlot >>> 1;
            int i14 = i10 - (((distSlot & 1) | 2) << (i13 - 1));
            if (distSlot < 14) {
                this.f103367rc.encodeReverseBitTree(this.distSpecial[distSlot - 4], i14);
            } else {
                this.f103367rc.encodeDirectBits(i14 >>> 4, i13 - 5);
                this.f103367rc.encodeReverseBitTree(this.distAlign, i14 & 15);
                this.alignPriceCount--;
            }
        }
        int[] iArr = this.reps;
        iArr[3] = iArr[2];
        iArr[2] = iArr[1];
        iArr[1] = iArr[0];
        iArr[0] = i10;
        this.distPriceCount--;
    }

    private void encodeRepMatch(int i10, int i11, int i12) throws IOException {
        if (i10 == 0) {
            this.f103367rc.encodeBit(this.isRep0, this.state.get(), 0);
            this.f103367rc.encodeBit(this.isRep0Long[this.state.get()], i12, i11 != 1 ? 1 : 0);
        } else {
            int i13 = this.reps[i10];
            this.f103367rc.encodeBit(this.isRep0, this.state.get(), 1);
            if (i10 == 1) {
                this.f103367rc.encodeBit(this.isRep1, this.state.get(), 0);
            } else {
                this.f103367rc.encodeBit(this.isRep1, this.state.get(), 1);
                this.f103367rc.encodeBit(this.isRep2, this.state.get(), i10 - 2);
                if (i10 == 3) {
                    int[] iArr = this.reps;
                    iArr[3] = iArr[2];
                }
                int[] iArr2 = this.reps;
                iArr2[2] = iArr2[1];
            }
            int[] iArr3 = this.reps;
            iArr3[1] = iArr3[0];
            iArr3[0] = i13;
        }
        if (i11 == 1) {
            this.state.updateShortRep();
        } else {
            this.repLenEncoder.encode(i11, i12);
            this.state.updateLongRep();
        }
    }

    private boolean encodeSymbol() throws IOException {
        if (!this.lz.hasEnoughData(this.readAhead + 1)) {
            return false;
        }
        int nextSymbol = getNextSymbol();
        int pos = (this.lz.getPos() - this.readAhead) & this.posMask;
        if (this.back == -1) {
            this.f103367rc.encodeBit(this.isMatch[this.state.get()], pos, 0);
            this.literalEncoder.encode();
        } else {
            this.f103367rc.encodeBit(this.isMatch[this.state.get()], pos, 1);
            if (this.back < 4) {
                this.f103367rc.encodeBit(this.isRep, this.state.get(), 1);
                encodeRepMatch(this.back, nextSymbol, pos);
            } else {
                this.f103367rc.encodeBit(this.isRep, this.state.get(), 0);
                encodeMatch(this.back - 4, nextSymbol, pos);
            }
        }
        this.readAhead -= nextSymbol;
        this.uncompressedSize += nextSymbol;
        return true;
    }

    public static int getDistSlot(int i10) {
        int i11;
        int i12;
        if (i10 <= 4 && i10 >= 0) {
            return i10;
        }
        if (((-65536) & i10) == 0) {
            i12 = i10 << 16;
            i11 = 15;
        } else {
            i11 = 31;
            i12 = i10;
        }
        if (((-16777216) & i12) == 0) {
            i12 <<= 8;
            i11 -= 8;
        }
        if (((-268435456) & i12) == 0) {
            i12 <<= 4;
            i11 -= 4;
        }
        if (((-1073741824) & i12) == 0) {
            i12 <<= 2;
            i11 -= 2;
        }
        if ((i12 & Integer.MIN_VALUE) == 0) {
            i11--;
        }
        return (i11 << 1) + ((i10 >>> (i11 - 1)) & 1);
    }

    public static LZMAEncoder getInstance(RangeEncoder rangeEncoder, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, ArrayCache arrayCache) {
        if (i13 == 1) {
            return new LZMAEncoderFast(rangeEncoder, i10, i11, i12, i14, i15, i16, i17, i18, arrayCache);
        }
        if (i13 == 2) {
            return new LZMAEncoderNormal(rangeEncoder, i10, i11, i12, i14, i15, i16, i17, i18, arrayCache);
        }
        throw new IllegalArgumentException();
    }

    public static int getMemoryUsage(int i10, int i11, int i12, int i13) {
        int memoryUsage;
        if (i10 == 1) {
            memoryUsage = LZMAEncoderFast.getMemoryUsage(i11, i12, i13);
        } else {
            if (i10 != 2) {
                throw new IllegalArgumentException();
            }
            memoryUsage = LZMAEncoderNormal.getMemoryUsage(i11, i12, i13);
        }
        return memoryUsage + 80;
    }

    private void updateAlignPrices() {
        this.alignPriceCount = 16;
        for (int i10 = 0; i10 < 16; i10++) {
            this.alignPrices[i10] = RangeEncoder.getReverseBitTreePrice(this.distAlign, i10);
        }
    }

    private void updateDistPrices() {
        this.distPriceCount = 128;
        int i10 = 0;
        while (true) {
            if (i10 >= 4) {
                break;
            }
            for (int i11 = 0; i11 < this.distSlotPricesSize; i11++) {
                this.distSlotPrices[i10][i11] = RangeEncoder.getBitTreePrice(this.distSlots[i10], i11);
            }
            for (int i12 = 14; i12 < this.distSlotPricesSize; i12++) {
                int[] iArr = this.distSlotPrices[i10];
                iArr[i12] = iArr[i12] + RangeEncoder.getDirectBitsPrice((i12 >>> 1) - 5);
            }
            for (int i13 = 0; i13 < 4; i13++) {
                this.fullDistPrices[i10][i13] = this.distSlotPrices[i10][i13];
            }
            i10++;
        }
        int i14 = 4;
        for (int i15 = 4; i15 < 14; i15++) {
            int i16 = ((i15 & 1) | 2) << ((i15 >>> 1) - 1);
            int i17 = i15 - 4;
            int length = this.distSpecial[i17].length;
            for (int i18 = 0; i18 < length; i18++) {
                int reverseBitTreePrice = RangeEncoder.getReverseBitTreePrice(this.distSpecial[i17], i14 - i16);
                for (int i19 = 0; i19 < 4; i19++) {
                    this.fullDistPrices[i19][i14] = this.distSlotPrices[i19][i15] + reverseBitTreePrice;
                }
                i14++;
            }
        }
    }

    public void encodeForLZMA1() throws IOException {
        if (this.lz.isStarted() || encodeInit()) {
            do {
            } while (encodeSymbol());
        }
    }

    public boolean encodeForLZMA2() {
        try {
            if (!this.lz.isStarted() && !encodeInit()) {
                return false;
            }
            while (this.uncompressedSize <= LZMA2_UNCOMPRESSED_LIMIT && this.f103367rc.getPendingSize() <= LZMA2_COMPRESSED_LIMIT) {
                if (!encodeSymbol()) {
                    return false;
                }
            }
            return true;
        } catch (IOException unused) {
            throw new Error();
        }
    }

    public void encodeLZMA1EndMarker() throws IOException {
        int pos = (this.lz.getPos() - this.readAhead) & this.posMask;
        this.f103367rc.encodeBit(this.isMatch[this.state.get()], pos, 1);
        this.f103367rc.encodeBit(this.isRep, this.state.get(), 0);
        encodeMatch(-1, 2, pos);
    }

    public int getAnyMatchPrice(State state, int i10) {
        return RangeEncoder.getBitPrice(this.isMatch[state.get()][i10], 1);
    }

    public int getAnyRepPrice(int i10, State state) {
        return i10 + RangeEncoder.getBitPrice(this.isRep[state.get()], 1);
    }

    public LZEncoder getLZEncoder() {
        return this.lz;
    }

    public int getLongRepAndLenPrice(int i10, int i11, State state, int i12) {
        return getLongRepPrice(getAnyRepPrice(getAnyMatchPrice(state, i12), state), i10, state, i12) + this.repLenEncoder.getPrice(i11, i12);
    }

    public int getLongRepPrice(int i10, int i11, State state, int i12) {
        int bitPrice;
        if (i11 == 0) {
            bitPrice = RangeEncoder.getBitPrice(this.isRep0[state.get()], 0) + RangeEncoder.getBitPrice(this.isRep0Long[state.get()][i12], 1);
        } else {
            i10 += RangeEncoder.getBitPrice(this.isRep0[state.get()], 1);
            if (i11 != 1) {
                return i10 + RangeEncoder.getBitPrice(this.isRep1[state.get()], 1) + RangeEncoder.getBitPrice(this.isRep2[state.get()], i11 - 2);
            }
            bitPrice = RangeEncoder.getBitPrice(this.isRep1[state.get()], 0);
        }
        return i10 + bitPrice;
    }

    public int getMatchAndLenPrice(int i10, int i11, int i12, int i13) {
        int price = i10 + this.matchLenEncoder.getPrice(i12, i13);
        int distState = LZMACoder.getDistState(i12);
        if (i11 < 128) {
            return price + this.fullDistPrices[distState][i11];
        }
        return price + this.distSlotPrices[distState][getDistSlot(i11)] + this.alignPrices[i11 & 15];
    }

    public Matches getMatches() {
        this.readAhead++;
        return this.lz.getMatches();
    }

    public abstract int getNextSymbol();

    public int getNormalMatchPrice(int i10, State state) {
        return i10 + RangeEncoder.getBitPrice(this.isRep[state.get()], 0);
    }

    public int getShortRepPrice(int i10, State state, int i11) {
        return i10 + RangeEncoder.getBitPrice(this.isRep0[state.get()], 0) + RangeEncoder.getBitPrice(this.isRep0Long[state.get()][i11], 0);
    }

    public int getUncompressedSize() {
        return this.uncompressedSize;
    }

    public void putArraysToCache(ArrayCache arrayCache) {
        this.lz.putArraysToCache(arrayCache);
    }

    @Override
    public void reset() {
        super.reset();
        this.literalEncoder.reset();
        this.matchLenEncoder.reset();
        this.repLenEncoder.reset();
        this.distPriceCount = 0;
        this.alignPriceCount = 0;
        this.uncompressedSize += this.readAhead + 1;
        this.readAhead = -1;
    }

    public void resetUncompressedSize() {
        this.uncompressedSize = 0;
    }

    public void skip(int i10) {
        this.readAhead += i10;
        this.lz.skip(i10);
    }

    public void updatePrices() {
        if (this.distPriceCount <= 0) {
            updateDistPrices();
        }
        if (this.alignPriceCount <= 0) {
            updateAlignPrices();
        }
        this.matchLenEncoder.updatePrices();
        this.repLenEncoder.updatePrices();
    }
}
