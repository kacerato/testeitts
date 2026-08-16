package org.tukaani.xz.lzma;

import org.tukaani.xz.ArrayCache;
import org.tukaani.xz.lz.LZEncoder;
import org.tukaani.xz.lz.Matches;
import org.tukaani.xz.rangecoder.RangeEncoder;

final class LZMAEncoderFast extends LZMAEncoder {
    private static final int EXTRA_SIZE_AFTER = 272;
    private static final int EXTRA_SIZE_BEFORE = 1;
    private Matches matches;

    public LZMAEncoderFast(RangeEncoder rangeEncoder, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, ArrayCache arrayCache) {
        super(rangeEncoder, LZEncoder.getInstance(i13, Math.max(i14, 1), 272, i15, 273, i16, i17, arrayCache), i10, i11, i12, i13, i15);
        this.matches = null;
    }

    private boolean changePair(int i10, int i11) {
        return i10 < (i11 >>> 7);
    }

    public static int getMemoryUsage(int i10, int i11, int i12) {
        return LZEncoder.getMemoryUsage(i10, Math.max(i11, 1), 272, 273, i12);
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x0097, code lost:
    
        if (r4 < 128) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0099, code lost:
    
        r9 = 1;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int getNextSymbol() {
        int i10;
        int i11;
        int i12;
        int i13;
        if (this.readAhead == -1) {
            this.matches = getMatches();
        }
        this.back = -1;
        int min = Math.min(this.lz.getAvail(), 273);
        if (min < 2) {
            return 1;
        }
        int i14 = 0;
        int i15 = 0;
        for (int i16 = 0; i16 < 4; i16++) {
            int matchLen = this.lz.getMatchLen(this.reps[i16], min);
            if (matchLen >= 2) {
                if (matchLen >= this.niceLen) {
                    this.back = i16;
                    skip(matchLen - 1);
                    return matchLen;
                }
                if (matchLen > i14) {
                    i15 = i16;
                    i14 = matchLen;
                }
            }
        }
        Matches matches = this.matches;
        int i17 = matches.count;
        if (i17 > 0) {
            i11 = matches.len[i17 - 1];
            i10 = matches.dist[i17 - 1];
            if (i11 >= this.niceLen) {
                this.back = i10 + 4;
                i12 = i11 - 1;
                skip(i12);
                return i11;
            }
            while (true) {
                Matches matches2 = this.matches;
                int i18 = matches2.count;
                if (i18 <= 1 || i11 != matches2.len[i18 - 2] + 1 || !changePair(matches2.dist[i18 - 2], i10)) {
                    break;
                }
                Matches matches3 = this.matches;
                int i19 = matches3.count;
                matches3.count = i19 - 1;
                i11 = matches3.len[i19 - 2];
                i10 = matches3.dist[i19 - 2];
            }
        } else {
            i10 = 0;
            i11 = 0;
        }
        if (i14 >= 2 && (i14 + 1 >= i11 || ((i14 + 2 >= i11 && i10 >= 512) || (i14 + 3 >= i11 && i10 >= 32768)))) {
            this.back = i15;
            skip(i14 - 1);
            return i14;
        }
        if (i11 < 2 || min <= 2) {
            return 1;
        }
        Matches matches4 = getMatches();
        this.matches = matches4;
        int i20 = matches4.count;
        if (i20 > 0) {
            int i21 = matches4.len[i20 - 1];
            int i22 = matches4.dist[i20 - 1];
            if ((i21 >= i11 && i22 < i10) || ((i21 == (i13 = i11 + 1) && !changePair(i10, i22)) || i21 > i13 || (i21 + 1 >= i11 && i11 >= 3 && changePair(i22, i10)))) {
                return 1;
            }
        }
        int max = Math.max(i11 - 1, 2);
        for (int i23 = 0; i23 < 4; i23++) {
            if (this.lz.getMatchLen(this.reps[i23], max) == max) {
                return 1;
            }
        }
        this.back = i10 + 4;
        i12 = i11 - 2;
        skip(i12);
        return i11;
    }
}
