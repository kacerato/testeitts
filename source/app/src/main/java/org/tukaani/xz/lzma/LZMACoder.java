package org.tukaani.xz.lzma;

import java.lang.reflect.Array;
import org.tukaani.xz.rangecoder.RangeCoder;

abstract class LZMACoder {
    static final int ALIGN_BITS = 4;
    static final int ALIGN_MASK = 15;
    static final int ALIGN_SIZE = 16;
    static final int DIST_MODEL_END = 14;
    static final int DIST_MODEL_START = 4;
    static final int DIST_SLOTS = 64;
    static final int DIST_STATES = 4;
    static final int FULL_DISTANCES = 128;
    static final int MATCH_LEN_MAX = 273;
    static final int MATCH_LEN_MIN = 2;
    static final int POS_STATES_MAX = 16;
    static final int REPS = 4;
    final short[] distAlign;
    final short[][] distSlots;
    final short[][] distSpecial;
    final short[][] isMatch;
    final short[] isRep;
    final short[] isRep0;
    final short[][] isRep0Long;
    final short[] isRep1;
    final short[] isRep2;
    final int posMask;
    final int[] reps = new int[4];
    final State state = new State();

    public abstract class LengthCoder {
        static final int HIGH_SYMBOLS = 256;
        static final int LOW_SYMBOLS = 8;
        static final int MID_SYMBOLS = 8;
        final short[] choice = new short[2];
        final short[] high;
        final short[][] low;
        final short[][] mid;

        public LengthCoder() {
            Class<Short> cls = Short.TYPE;
            this.low = (short[][]) Array.newInstance(cls, 16, 8);
            this.mid = (short[][]) Array.newInstance(cls, 16, 8);
            this.high = new short[256];
        }

        public void reset() {
            RangeCoder.initProbs(this.choice);
            int i10 = 0;
            while (true) {
                short[][] sArr = this.low;
                if (i10 >= sArr.length) {
                    break;
                }
                RangeCoder.initProbs(sArr[i10]);
                i10++;
            }
            for (int i11 = 0; i11 < this.low.length; i11++) {
                RangeCoder.initProbs(this.mid[i11]);
            }
            RangeCoder.initProbs(this.high);
        }
    }

    public abstract class LiteralCoder {

        private final int f103365lc;
        private final int literalPosMask;

        public abstract class LiteralSubcoder {
            final short[] probs = new short[768];

            public LiteralSubcoder() {
            }

            public void reset() {
                RangeCoder.initProbs(this.probs);
            }
        }

        public LiteralCoder(int i10, int i11) {
            this.f103365lc = i10;
            this.literalPosMask = (1 << i11) - 1;
        }

        public final int getSubcoderIndex(int i10, int i11) {
            int i12 = this.f103365lc;
            return (i10 >> (8 - i12)) + ((i11 & this.literalPosMask) << i12);
        }
    }

    public LZMACoder(int i10) {
        Class<Short> cls = Short.TYPE;
        this.isMatch = (short[][]) Array.newInstance(cls, 12, 16);
        this.isRep = new short[12];
        this.isRep0 = new short[12];
        this.isRep1 = new short[12];
        this.isRep2 = new short[12];
        this.isRep0Long = (short[][]) Array.newInstance(cls, 12, 16);
        this.distSlots = (short[][]) Array.newInstance(cls, 4, 64);
        this.distSpecial = new short[][]{new short[2], new short[2], new short[4], new short[4], new short[8], new short[8], new short[16], new short[16], new short[32], new short[32]};
        this.distAlign = new short[16];
        this.posMask = (1 << i10) - 1;
    }

    public static final int getDistState(int i10) {
        if (i10 < 6) {
            return i10 - 2;
        }
        return 3;
    }

    public void reset() {
        int[] iArr = this.reps;
        int i10 = 0;
        iArr[0] = 0;
        iArr[1] = 0;
        iArr[2] = 0;
        iArr[3] = 0;
        this.state.reset();
        int i11 = 0;
        while (true) {
            short[][] sArr = this.isMatch;
            if (i11 >= sArr.length) {
                break;
            }
            RangeCoder.initProbs(sArr[i11]);
            i11++;
        }
        RangeCoder.initProbs(this.isRep);
        RangeCoder.initProbs(this.isRep0);
        RangeCoder.initProbs(this.isRep1);
        RangeCoder.initProbs(this.isRep2);
        int i12 = 0;
        while (true) {
            short[][] sArr2 = this.isRep0Long;
            if (i12 >= sArr2.length) {
                break;
            }
            RangeCoder.initProbs(sArr2[i12]);
            i12++;
        }
        int i13 = 0;
        while (true) {
            short[][] sArr3 = this.distSlots;
            if (i13 >= sArr3.length) {
                break;
            }
            RangeCoder.initProbs(sArr3[i13]);
            i13++;
        }
        while (true) {
            short[][] sArr4 = this.distSpecial;
            if (i10 >= sArr4.length) {
                RangeCoder.initProbs(this.distAlign);
                return;
            } else {
                RangeCoder.initProbs(sArr4[i10]);
                i10++;
            }
        }
    }
}
