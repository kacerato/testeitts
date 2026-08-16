package org.tukaani.xz.lzma;

import org.tukaani.xz.ArrayCache;
import org.tukaani.xz.lz.LZEncoder;
import org.tukaani.xz.lz.Matches;
import org.tukaani.xz.rangecoder.RangeEncoder;

final class LZMAEncoderNormal extends LZMAEncoder {
    static final boolean $assertionsDisabled = false;
    private static final int EXTRA_SIZE_AFTER = 4096;
    private static final int EXTRA_SIZE_BEFORE = 4096;
    private static final int OPTS = 4096;
    private Matches matches;
    private final State nextState;
    private int optCur;
    private int optEnd;
    private final Optimum[] opts;
    private final int[] repLens;

    public LZMAEncoderNormal(RangeEncoder rangeEncoder, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, ArrayCache arrayCache) {
        super(rangeEncoder, LZEncoder.getInstance(i13, Math.max(i14, 4096), 4096, i15, 273, i16, i17, arrayCache), i10, i11, i12, i13, i15);
        this.opts = new Optimum[4096];
        this.optCur = 0;
        this.optEnd = 0;
        this.repLens = new int[4];
        this.nextState = new State();
        for (int i18 = 0; i18 < 4096; i18++) {
            this.opts[i18] = new Optimum();
        }
    }

    private void calc1BytePrices(int i10, int i11, int i12, int i13) {
        boolean z10;
        int i14 = this.lz.getByte(0);
        int i15 = this.lz.getByte(this.opts[this.optCur].reps[0] + 1);
        int price = this.opts[this.optCur].price + this.literalEncoder.getPrice(i14, i15, this.lz.getByte(1), i10, this.opts[this.optCur].state);
        Optimum[] optimumArr = this.opts;
        int i16 = this.optCur;
        if (price < optimumArr[i16 + 1].price) {
            optimumArr[i16 + 1].set1(price, i16, -1);
            z10 = true;
        } else {
            z10 = false;
        }
        if (i15 == i14) {
            Optimum[] optimumArr2 = this.opts;
            int i17 = this.optCur;
            if (optimumArr2[i17 + 1].optPrev == i17 || optimumArr2[i17 + 1].backPrev != 0) {
                int shortRepPrice = getShortRepPrice(i13, optimumArr2[i17].state, i11);
                Optimum[] optimumArr3 = this.opts;
                int i18 = this.optCur;
                if (shortRepPrice <= optimumArr3[i18 + 1].price) {
                    optimumArr3[i18 + 1].set1(shortRepPrice, i18, 0);
                    z10 = true;
                }
            }
        }
        if (z10 || i15 == i14 || i12 <= 2) {
            return;
        }
        int matchLen = this.lz.getMatchLen(1, this.opts[this.optCur].reps[0], Math.min(this.niceLen, i12 - 1));
        if (matchLen >= 2) {
            this.nextState.set(this.opts[this.optCur].state);
            this.nextState.updateLiteral();
            int longRepAndLenPrice = price + getLongRepAndLenPrice(0, matchLen, this.nextState, (i10 + 1) & this.posMask);
            int i19 = this.optCur + 1 + matchLen;
            while (true) {
                int i20 = this.optEnd;
                if (i20 >= i19) {
                    break;
                }
                Optimum[] optimumArr4 = this.opts;
                int i21 = i20 + 1;
                this.optEnd = i21;
                optimumArr4[i21].reset();
            }
            Optimum optimum = this.opts[i19];
            if (longRepAndLenPrice < optimum.price) {
                optimum.set2(longRepAndLenPrice, this.optCur, 0);
            }
        }
    }

    private int calcLongRepPrices(int i10, int i11, int i12, int i13) {
        int i14;
        int min = Math.min(i12, this.niceLen);
        int i15 = 2;
        for (int i16 = 0; i16 < 4; i16++) {
            int matchLen = this.lz.getMatchLen(this.opts[this.optCur].reps[i16], min);
            if (matchLen >= 2) {
                while (true) {
                    int i17 = this.optEnd;
                    i14 = this.optCur;
                    if (i17 >= i14 + matchLen) {
                        break;
                    }
                    Optimum[] optimumArr = this.opts;
                    int i18 = i17 + 1;
                    this.optEnd = i18;
                    optimumArr[i18].reset();
                }
                int longRepPrice = getLongRepPrice(i13, i16, this.opts[i14].state, i11);
                for (int i19 = matchLen; i19 >= 2; i19--) {
                    int price = this.repLenEncoder.getPrice(i19, i11) + longRepPrice;
                    Optimum[] optimumArr2 = this.opts;
                    int i20 = this.optCur;
                    if (price < optimumArr2[i20 + i19].price) {
                        optimumArr2[i20 + i19].set1(price, i20, i16);
                    }
                }
                if (i16 == 0) {
                    i15 = matchLen + 1;
                }
                int i21 = i15;
                int matchLen2 = this.lz.getMatchLen(matchLen + 1, this.opts[this.optCur].reps[i16], Math.min(this.niceLen, (i12 - matchLen) - 1));
                if (matchLen2 >= 2) {
                    int price2 = longRepPrice + this.repLenEncoder.getPrice(matchLen, i11);
                    this.nextState.set(this.opts[this.optCur].state);
                    this.nextState.updateLongRep();
                    int i22 = i10 + matchLen;
                    int price3 = price2 + this.literalEncoder.getPrice(this.lz.getByte(matchLen, 0), this.lz.getByte(0), this.lz.getByte(matchLen, 1), i22, this.nextState);
                    this.nextState.updateLiteral();
                    int longRepAndLenPrice = price3 + getLongRepAndLenPrice(0, matchLen2, this.nextState, (i22 + 1) & this.posMask);
                    int i23 = this.optCur + matchLen + 1 + matchLen2;
                    while (true) {
                        int i24 = this.optEnd;
                        if (i24 >= i23) {
                            break;
                        }
                        Optimum[] optimumArr3 = this.opts;
                        int i25 = i24 + 1;
                        this.optEnd = i25;
                        optimumArr3[i25].reset();
                    }
                    Optimum optimum = this.opts[i23];
                    if (longRepAndLenPrice < optimum.price) {
                        optimum.set3(longRepAndLenPrice, this.optCur, i16, matchLen, 0);
                    }
                }
                i15 = i21;
            }
        }
        return i15;
    }

    private void calcNormalMatchPrices(int i10, int i11, int i12, int i13, int i14) {
        int i15;
        Matches matches;
        int[] iArr;
        int i16;
        int i17 = i14;
        Matches matches2 = this.matches;
        if (matches2.len[matches2.count - 1] > i12) {
            matches2.count = 0;
            while (true) {
                matches = this.matches;
                iArr = matches.len;
                i16 = matches.count;
                if (iArr[i16] >= i12) {
                    break;
                } else {
                    matches.count = i16 + 1;
                }
            }
            matches.count = i16 + 1;
            iArr[i16] = i12;
        }
        Matches matches3 = this.matches;
        if (matches3.len[matches3.count - 1] < i17) {
            return;
        }
        while (true) {
            int i18 = this.optEnd;
            i15 = this.optCur;
            Matches matches4 = this.matches;
            if (i18 >= matches4.len[matches4.count - 1] + i15) {
                break;
            }
            Optimum[] optimumArr = this.opts;
            int i19 = i18 + 1;
            this.optEnd = i19;
            optimumArr[i19].reset();
        }
        int normalMatchPrice = getNormalMatchPrice(i13, this.opts[i15].state);
        int i20 = 0;
        while (i17 > this.matches.len[i20]) {
            i20++;
        }
        while (true) {
            int i21 = this.matches.dist[i20];
            int matchAndLenPrice = getMatchAndLenPrice(normalMatchPrice, i21, i17, i11);
            Optimum[] optimumArr2 = this.opts;
            int i22 = this.optCur;
            if (matchAndLenPrice < optimumArr2[i22 + i17].price) {
                optimumArr2[i22 + i17].set1(matchAndLenPrice, i22, i21 + 4);
            }
            if (i17 == this.matches.len[i20]) {
                int matchLen = this.lz.getMatchLen(i17 + 1, i21, Math.min(this.niceLen, (i12 - i17) - 1));
                if (matchLen >= 2) {
                    this.nextState.set(this.opts[this.optCur].state);
                    this.nextState.updateMatch();
                    int i23 = i10 + i17;
                    int price = matchAndLenPrice + this.literalEncoder.getPrice(this.lz.getByte(i17, 0), this.lz.getByte(0), this.lz.getByte(i17, 1), i23, this.nextState);
                    this.nextState.updateLiteral();
                    int longRepAndLenPrice = price + getLongRepAndLenPrice(0, matchLen, this.nextState, (i23 + 1) & this.posMask);
                    int i24 = this.optCur + i17 + 1 + matchLen;
                    while (true) {
                        int i25 = this.optEnd;
                        if (i25 >= i24) {
                            break;
                        }
                        Optimum[] optimumArr3 = this.opts;
                        int i26 = i25 + 1;
                        this.optEnd = i26;
                        optimumArr3[i26].reset();
                    }
                    Optimum optimum = this.opts[i24];
                    if (longRepAndLenPrice < optimum.price) {
                        optimum.set3(longRepAndLenPrice, this.optCur, i21 + 4, i17, 0);
                    }
                }
                i20++;
                if (i20 == this.matches.count) {
                    return;
                }
            }
            i17++;
        }
    }

    private int convertOpts() {
        int i10 = this.optCur;
        this.optEnd = i10;
        int i11 = this.opts[i10].optPrev;
        while (true) {
            Optimum[] optimumArr = this.opts;
            int i12 = this.optCur;
            Optimum optimum = optimumArr[i12];
            if (optimum.prev1IsLiteral) {
                Optimum optimum2 = optimumArr[i11];
                optimum2.optPrev = i12;
                optimum2.backPrev = -1;
                int i13 = i11 - 1;
                this.optCur = i11;
                if (optimum.hasPrev2) {
                    Optimum optimum3 = optimumArr[i13];
                    optimum3.optPrev = i11;
                    optimum3.backPrev = optimum.backPrev2;
                    this.optCur = i13;
                    i11 = optimum.optPrev2;
                } else {
                    i11 = i13;
                }
            }
            Optimum optimum4 = optimumArr[i11];
            int i14 = optimum4.optPrev;
            optimum4.optPrev = this.optCur;
            this.optCur = i11;
            if (i11 <= 0) {
                int i15 = optimumArr[0].optPrev;
                this.optCur = i15;
                this.back = optimumArr[i15].backPrev;
                return i15;
            }
            i11 = i14;
        }
    }

    public static int getMemoryUsage(int i10, int i11, int i12) {
        return LZEncoder.getMemoryUsage(i10, Math.max(i11, 4096), 4096, 273, i12) + 256;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00d7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void updateOptStateAndReps() {
        int i10;
        State state;
        Optimum[] optimumArr = this.opts;
        Optimum optimum = optimumArr[this.optCur];
        int i11 = optimum.optPrev;
        if (optimum.prev1IsLiteral) {
            i11--;
            if (optimum.hasPrev2) {
                optimum.state.set(optimumArr[optimum.optPrev2].state);
                Optimum optimum2 = this.opts[this.optCur];
                int i12 = optimum2.backPrev2;
                State state2 = optimum2.state;
                if (i12 < 4) {
                    state2.updateLongRep();
                } else {
                    state2.updateMatch();
                }
            } else {
                optimum.state.set(optimumArr[i11].state);
            }
            this.opts[this.optCur].state.updateLiteral();
        } else {
            optimum.state.set(optimumArr[i11].state);
        }
        int i13 = this.optCur;
        if (i11 == i13 - 1) {
            Optimum optimum3 = this.opts[i13];
            int i14 = optimum3.backPrev;
            State state3 = optimum3.state;
            if (i14 == 0) {
                state3.updateShortRep();
            } else {
                state3.updateLiteral();
            }
            Optimum[] optimumArr2 = this.opts;
            System.arraycopy(optimumArr2[i11].reps, 0, optimumArr2[this.optCur].reps, 0, 4);
            return;
        }
        Optimum optimum4 = this.opts[i13];
        if (optimum4.prev1IsLiteral && optimum4.hasPrev2) {
            i11 = optimum4.optPrev2;
            i10 = optimum4.backPrev2;
            state = optimum4.state;
        } else {
            i10 = optimum4.backPrev;
            state = optimum4.state;
            if (i10 >= 4) {
                state.updateMatch();
                int i15 = 1;
                Optimum[] optimumArr3 = this.opts;
                int i16 = this.optCur;
                if (i10 < 4) {
                    int[] iArr = optimumArr3[i16].reps;
                    iArr[0] = i10 - 4;
                    System.arraycopy(optimumArr3[i11].reps, 0, iArr, 1, 3);
                    return;
                }
                optimumArr3[i16].reps[0] = optimumArr3[i11].reps[i10];
                while (i15 <= i10) {
                    Optimum[] optimumArr4 = this.opts;
                    optimumArr4[this.optCur].reps[i15] = optimumArr4[i11].reps[i15 - 1];
                    i15++;
                }
                while (i15 < 4) {
                    Optimum[] optimumArr5 = this.opts;
                    optimumArr5[this.optCur].reps[i15] = optimumArr5[i11].reps[i15];
                    i15++;
                }
                return;
            }
        }
        state.updateLongRep();
        int i152 = 1;
        Optimum[] optimumArr32 = this.opts;
        int i162 = this.optCur;
        if (i10 < 4) {
        }
    }

    @Override
    public int getNextSymbol() {
        int i10;
        int i11 = this.optCur;
        if (i11 < this.optEnd) {
            Optimum[] optimumArr = this.opts;
            int i12 = optimumArr[i11].optPrev;
            int i13 = i12 - i11;
            this.optCur = i12;
            this.back = optimumArr[i12].backPrev;
            return i13;
        }
        this.optCur = 0;
        this.optEnd = 0;
        this.back = -1;
        if (this.readAhead == -1) {
            this.matches = getMatches();
        }
        int min = Math.min(this.lz.getAvail(), 273);
        if (min < 2) {
            return 1;
        }
        int i14 = 0;
        for (int i15 = 0; i15 < 4; i15++) {
            this.repLens[i15] = this.lz.getMatchLen(this.reps[i15], min);
            int[] iArr = this.repLens;
            int i16 = iArr[i15];
            if (i16 < 2) {
                iArr[i15] = 0;
            } else if (i16 > iArr[i14]) {
                i14 = i15;
            }
        }
        int i17 = this.repLens[i14];
        int i18 = this.niceLen;
        if (i17 >= i18) {
            this.back = i14;
            skip(i17 - 1);
            return this.repLens[i14];
        }
        Matches matches = this.matches;
        int i19 = matches.count;
        if (i19 > 0) {
            i10 = matches.len[i19 - 1];
            int i20 = matches.dist[i19 - 1];
            if (i10 >= i18) {
                this.back = i20 + 4;
                skip(i10 - 1);
                return i10;
            }
        } else {
            i10 = 0;
        }
        int i21 = this.lz.getByte(0);
        int i22 = this.lz.getByte(this.reps[0] + 1);
        if (i10 < 2 && i21 != i22 && this.repLens[i14] < 2) {
            return 1;
        }
        int pos = this.lz.getPos();
        int i23 = pos & this.posMask;
        this.opts[1].set1(this.literalEncoder.getPrice(i21, i22, this.lz.getByte(1), pos, this.state), 0, -1);
        int anyMatchPrice = getAnyMatchPrice(this.state, i23);
        int anyRepPrice = getAnyRepPrice(anyMatchPrice, this.state);
        if (i22 == i21) {
            int shortRepPrice = getShortRepPrice(anyRepPrice, this.state, i23);
            Optimum optimum = this.opts[1];
            if (shortRepPrice < optimum.price) {
                optimum.set1(shortRepPrice, 0, 0);
            }
        }
        int max = Math.max(i10, this.repLens[i14]);
        this.optEnd = max;
        if (max < 2) {
            this.back = this.opts[1].backPrev;
            return 1;
        }
        updatePrices();
        this.opts[0].state.set(this.state);
        System.arraycopy(this.reps, 0, this.opts[0].reps, 0, 4);
        for (int i24 = this.optEnd; i24 >= 2; i24--) {
            this.opts[i24].reset();
        }
        int i25 = 0;
        for (int i26 = 4; i25 < i26; i26 = 4) {
            int i27 = this.repLens[i25];
            if (i27 >= 2) {
                int longRepPrice = getLongRepPrice(anyRepPrice, i25, this.state, i23);
                do {
                    int price = this.repLenEncoder.getPrice(i27, i23) + longRepPrice;
                    Optimum optimum2 = this.opts[i27];
                    if (price < optimum2.price) {
                        optimum2.set1(price, 0, i25);
                    }
                    i27--;
                } while (i27 >= 2);
            }
            i25++;
        }
        int max2 = Math.max(this.repLens[0] + 1, 2);
        if (max2 <= i10) {
            int normalMatchPrice = getNormalMatchPrice(anyMatchPrice, this.state);
            int i28 = 0;
            while (max2 > this.matches.len[i28]) {
                i28++;
            }
            while (true) {
                int i29 = this.matches.dist[i28];
                int matchAndLenPrice = getMatchAndLenPrice(normalMatchPrice, i29, max2, i23);
                Optimum optimum3 = this.opts[max2];
                if (matchAndLenPrice < optimum3.price) {
                    optimum3.set1(matchAndLenPrice, 0, i29 + 4);
                }
                Matches matches2 = this.matches;
                if (max2 == matches2.len[i28] && (i28 = i28 + 1) == matches2.count) {
                    break;
                }
                max2++;
            }
        }
        int min2 = Math.min(this.lz.getAvail(), 4095);
        while (true) {
            int i30 = this.optCur + 1;
            this.optCur = i30;
            if (i30 >= this.optEnd) {
                break;
            }
            Matches matches3 = getMatches();
            this.matches = matches3;
            int i31 = matches3.count;
            if (i31 > 0 && matches3.len[i31 - 1] >= this.niceLen) {
                break;
            }
            int i32 = min2 - 1;
            int i33 = pos + 1;
            int i34 = i33 & this.posMask;
            updateOptStateAndReps();
            Optimum optimum4 = this.opts[this.optCur];
            int anyMatchPrice2 = optimum4.price + getAnyMatchPrice(optimum4.state, i34);
            int anyRepPrice2 = getAnyRepPrice(anyMatchPrice2, this.opts[this.optCur].state);
            calc1BytePrices(i33, i34, i32, anyRepPrice2);
            if (i32 >= 2) {
                int calcLongRepPrices = calcLongRepPrices(i33, i34, i32, anyRepPrice2);
                if (this.matches.count > 0) {
                    calcNormalMatchPrices(i33, i34, i32, anyMatchPrice2, calcLongRepPrices);
                }
            }
            min2 = i32;
            pos = i33;
        }
        return convertOpts();
    }

    @Override
    public void reset() {
        this.optCur = 0;
        this.optEnd = 0;
        super.reset();
    }
}
