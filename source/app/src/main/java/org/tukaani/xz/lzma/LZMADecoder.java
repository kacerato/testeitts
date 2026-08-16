package org.tukaani.xz.lzma;

import java.io.IOException;
import org.tukaani.xz.lz.LZDecoder;
import org.tukaani.xz.lzma.LZMACoder;
import org.tukaani.xz.rangecoder.RangeDecoder;

public final class LZMADecoder extends LZMACoder {
    private final LiteralDecoder literalDecoder;
    private final LZDecoder lz;
    private final LengthDecoder matchLenDecoder;

    private final RangeDecoder f103366rc;
    private final LengthDecoder repLenDecoder;

    public class LengthDecoder extends LZMACoder.LengthCoder {
        private LengthDecoder() {
            super();
        }

        public int decode(int i10) throws IOException {
            return LZMADecoder.this.f103366rc.decodeBit(this.choice, 0) == 0 ? LZMADecoder.this.f103366rc.decodeBitTree(this.low[i10]) + 2 : LZMADecoder.this.f103366rc.decodeBit(this.choice, 1) == 0 ? LZMADecoder.this.f103366rc.decodeBitTree(this.mid[i10]) + 10 : LZMADecoder.this.f103366rc.decodeBitTree(this.high) + 18;
        }
    }

    public class LiteralDecoder extends LZMACoder.LiteralCoder {
        private final LiteralSubdecoder[] subdecoders;

        public class LiteralSubdecoder extends LZMACoder.LiteralCoder.LiteralSubcoder {
            private LiteralSubdecoder() {
                super();
            }

            public void decode() throws IOException {
                int i10 = 1;
                if (!LZMADecoder.this.state.isLiteral()) {
                    int i11 = LZMADecoder.this.lz.getByte(LZMADecoder.this.reps[0]);
                    int i12 = 256;
                    int i13 = 1;
                    do {
                        i11 <<= 1;
                        int i14 = i11 & i12;
                        int decodeBit = LZMADecoder.this.f103366rc.decodeBit(this.probs, i12 + i14 + i13);
                        i13 = (i13 << 1) | decodeBit;
                        i12 &= (~i14) ^ (0 - decodeBit);
                    } while (i13 < 256);
                    i10 = i13;
                    LZMADecoder.this.lz.putByte((byte) i10);
                    LZMADecoder.this.state.updateLiteral();
                }
                do {
                    i10 = LZMADecoder.this.f103366rc.decodeBit(this.probs, i10) | (i10 << 1);
                } while (i10 < 256);
                LZMADecoder.this.lz.putByte((byte) i10);
                LZMADecoder.this.state.updateLiteral();
            }
        }

        public LiteralDecoder(int i10, int i11) {
            super(i10, i11);
            this.subdecoders = new LiteralSubdecoder[1 << (i10 + i11)];
            int i12 = 0;
            while (true) {
                LiteralSubdecoder[] literalSubdecoderArr = this.subdecoders;
                if (i12 >= literalSubdecoderArr.length) {
                    return;
                }
                literalSubdecoderArr[i12] = new LiteralSubdecoder();
                i12++;
            }
        }

        public void decode() throws IOException {
            this.subdecoders[getSubcoderIndex(LZMADecoder.this.lz.getByte(0), LZMADecoder.this.lz.getPos())].decode();
        }

        public void reset() {
            int i10 = 0;
            while (true) {
                LiteralSubdecoder[] literalSubdecoderArr = this.subdecoders;
                if (i10 >= literalSubdecoderArr.length) {
                    return;
                }
                literalSubdecoderArr[i10].reset();
                i10++;
            }
        }
    }

    public LZMADecoder(LZDecoder lZDecoder, RangeDecoder rangeDecoder, int i10, int i11, int i12) {
        super(i12);
        this.matchLenDecoder = new LengthDecoder();
        this.repLenDecoder = new LengthDecoder();
        this.lz = lZDecoder;
        this.f103366rc = rangeDecoder;
        this.literalDecoder = new LiteralDecoder(i10, i11);
        reset();
    }

    private int decodeMatch(int i10) throws IOException {
        this.state.updateMatch();
        int[] iArr = this.reps;
        iArr[3] = iArr[2];
        iArr[2] = iArr[1];
        iArr[1] = iArr[0];
        int decode = this.matchLenDecoder.decode(i10);
        int decodeBitTree = this.f103366rc.decodeBitTree(this.distSlots[LZMACoder.getDistState(decode)]);
        if (decodeBitTree < 4) {
            this.reps[0] = decodeBitTree;
        } else {
            int i11 = decodeBitTree >> 1;
            int[] iArr2 = this.reps;
            int i12 = (2 | (decodeBitTree & 1)) << (i11 - 1);
            iArr2[0] = i12;
            if (decodeBitTree < 14) {
                iArr2[0] = this.f103366rc.decodeReverseBitTree(this.distSpecial[decodeBitTree - 4]) | i12;
            } else {
                iArr2[0] = (this.f103366rc.decodeDirectBits(i11 - 5) << 4) | i12;
                int[] iArr3 = this.reps;
                iArr3[0] = iArr3[0] | this.f103366rc.decodeReverseBitTree(this.distAlign);
            }
        }
        return decode;
    }

    private int decodeRepMatch(int i10) throws IOException {
        int i11;
        if (this.f103366rc.decodeBit(this.isRep0, this.state.get()) != 0) {
            if (this.f103366rc.decodeBit(this.isRep1, this.state.get()) == 0) {
                i11 = this.reps[1];
            } else {
                if (this.f103366rc.decodeBit(this.isRep2, this.state.get()) == 0) {
                    i11 = this.reps[2];
                } else {
                    int[] iArr = this.reps;
                    int i12 = iArr[3];
                    iArr[3] = iArr[2];
                    i11 = i12;
                }
                int[] iArr2 = this.reps;
                iArr2[2] = iArr2[1];
            }
            int[] iArr3 = this.reps;
            iArr3[1] = iArr3[0];
            iArr3[0] = i11;
        } else if (this.f103366rc.decodeBit(this.isRep0Long[this.state.get()], i10) == 0) {
            this.state.updateShortRep();
            return 1;
        }
        this.state.updateLongRep();
        return this.repLenDecoder.decode(i10);
    }

    public void decode() throws IOException {
        this.lz.repeatPending();
        while (this.lz.hasSpace()) {
            int pos = this.lz.getPos() & this.posMask;
            if (this.f103366rc.decodeBit(this.isMatch[this.state.get()], pos) == 0) {
                this.literalDecoder.decode();
            } else {
                this.lz.repeat(this.reps[0], this.f103366rc.decodeBit(this.isRep, this.state.get()) == 0 ? decodeMatch(pos) : decodeRepMatch(pos));
            }
        }
        this.f103366rc.normalize();
    }

    public boolean endMarkerDetected() {
        return this.reps[0] == -1;
    }

    @Override
    public void reset() {
        super.reset();
        this.literalDecoder.reset();
        this.matchLenDecoder.reset();
        this.repLenDecoder.reset();
    }
}
