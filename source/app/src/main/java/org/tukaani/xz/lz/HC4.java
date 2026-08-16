package org.tukaani.xz.lz;

import org.tukaani.xz.ArrayCache;

final class HC4 extends LZEncoder {
    static final boolean $assertionsDisabled = false;
    private final int[] chain;
    private int cyclicPos;
    private final int cyclicSize;
    private final int depthLimit;
    private final Hash234 hash;
    private int lzPos;
    private final Matches matches;

    public HC4(int i10, int i11, int i12, int i13, int i14, int i15, ArrayCache arrayCache) {
        super(i10, i11, i12, i13, i14, arrayCache);
        this.cyclicPos = -1;
        this.hash = new Hash234(i10, arrayCache);
        int i16 = i10 + 1;
        this.cyclicSize = i16;
        this.chain = arrayCache.getIntArray(i16, false);
        this.lzPos = i16;
        this.matches = new Matches(i13 - 1);
        this.depthLimit = i15 <= 0 ? (i13 / 4) + 4 : i15;
    }

    public static int getMemoryUsage(int i10) {
        return Hash234.getMemoryUsage(i10) + (i10 / 256) + 10;
    }

    private int movePos() {
        int movePos = movePos(4, 4);
        if (movePos != 0) {
            int i10 = this.lzPos + 1;
            this.lzPos = i10;
            if (i10 == Integer.MAX_VALUE) {
                int i11 = Integer.MAX_VALUE - this.cyclicSize;
                this.hash.normalize(i11);
                LZEncoder.normalize(this.chain, this.cyclicSize, i11);
                this.lzPos -= i11;
            }
            int i12 = this.cyclicPos + 1;
            this.cyclicPos = i12;
            if (i12 == this.cyclicSize) {
                this.cyclicPos = 0;
            }
        }
        return movePos;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x008f A[ADDED_TO_REGION, LOOP:0: B:23:0x008f->B:26:0x009f, LOOP_START, PHI: r10
  0x008f: PHI (r10v15 int) = (r10v2 int), (r10v16 int) binds: [B:22:0x008d, B:26:0x009f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00b1  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Matches getMatches() {
        int i10;
        int i11;
        int i12;
        byte[] bArr;
        int i13;
        byte[] bArr2;
        int i14;
        this.matches.count = 0;
        int i15 = this.matchLenMax;
        int i16 = this.niceLen;
        int movePos = movePos();
        if (movePos < i15) {
            if (movePos == 0) {
                return this.matches;
            }
            i15 = movePos;
            if (i16 > movePos) {
                i16 = i15;
            }
        }
        this.hash.calcHashes(this.buf, this.readPos);
        int hash2Pos = this.lzPos - this.hash.getHash2Pos();
        int hash3Pos = this.lzPos - this.hash.getHash3Pos();
        int hash4Pos = this.hash.getHash4Pos();
        this.hash.updateTables(this.lzPos);
        this.chain[this.cyclicPos] = hash4Pos;
        int i17 = this.cyclicSize;
        if (hash2Pos < i17) {
            byte[] bArr3 = this.buf;
            int i18 = this.readPos;
            if (bArr3[i18 - hash2Pos] == bArr3[i18]) {
                Matches matches = this.matches;
                i10 = 2;
                matches.len[0] = 2;
                matches.dist[0] = hash2Pos - 1;
                matches.count = 1;
                if (hash2Pos != hash3Pos && hash3Pos < i17) {
                    bArr2 = this.buf;
                    i14 = this.readPos;
                    if (bArr2[i14 - hash3Pos] == bArr2[i14]) {
                        Matches matches2 = this.matches;
                        int[] iArr = matches2.dist;
                        int i19 = matches2.count;
                        matches2.count = i19 + 1;
                        iArr[i19] = hash3Pos - 1;
                        hash2Pos = hash3Pos;
                        i10 = 3;
                    }
                }
                if (this.matches.count > 0) {
                    while (i10 < i15) {
                        byte[] bArr4 = this.buf;
                        int i20 = this.readPos;
                        if (bArr4[(i20 + i10) - hash2Pos] != bArr4[i20 + i10]) {
                            break;
                        }
                        i10++;
                    }
                    Matches matches3 = this.matches;
                    matches3.len[matches3.count - 1] = i10;
                    if (i10 >= i16) {
                        return matches3;
                    }
                }
                int i21 = i10 >= 3 ? i10 : 3;
                i11 = this.depthLimit;
                while (true) {
                    int i22 = this.lzPos - hash4Pos;
                    int i23 = i11 - 1;
                    if (i11 == 0 || i22 >= (i12 = this.cyclicSize)) {
                        break;
                    }
                    int[] iArr2 = this.chain;
                    int i24 = this.cyclicPos;
                    int i25 = i24 - i22;
                    if (i22 <= i24) {
                        i12 = 0;
                    }
                    int i26 = iArr2[i25 + i12];
                    byte[] bArr5 = this.buf;
                    int i27 = this.readPos;
                    if (bArr5[(i27 + i21) - i22] == bArr5[i27 + i21] && bArr5[i27 - i22] == bArr5[i27]) {
                        int i28 = 0;
                        do {
                            i28++;
                            if (i28 >= i15) {
                                break;
                            }
                            bArr = this.buf;
                            i13 = this.readPos;
                        } while (bArr[(i13 + i28) - i22] == bArr[i13 + i28]);
                        if (i28 > i21) {
                            Matches matches4 = this.matches;
                            int[] iArr3 = matches4.len;
                            int i29 = matches4.count;
                            iArr3[i29] = i28;
                            matches4.dist[i29] = i22 - 1;
                            matches4.count = i29 + 1;
                            if (i28 >= i16) {
                                return matches4;
                            }
                            i21 = i28;
                        } else {
                            continue;
                        }
                    }
                    hash4Pos = i26;
                    i11 = i23;
                }
                return this.matches;
            }
        }
        i10 = 0;
        if (hash2Pos != hash3Pos) {
            bArr2 = this.buf;
            i14 = this.readPos;
            if (bArr2[i14 - hash3Pos] == bArr2[i14]) {
            }
        }
        if (this.matches.count > 0) {
        }
        if (i10 >= 3) {
        }
        i11 = this.depthLimit;
        while (true) {
            int i222 = this.lzPos - hash4Pos;
            int i232 = i11 - 1;
            if (i11 == 0) {
                break;
            }
            break;
            hash4Pos = i26;
            i11 = i232;
        }
        return this.matches;
    }

    @Override
    public void putArraysToCache(ArrayCache arrayCache) {
        arrayCache.putArray(this.chain);
        this.hash.putArraysToCache(arrayCache);
        super.putArraysToCache(arrayCache);
    }

    @Override
    public void skip(int i10) {
        while (true) {
            int i11 = i10 - 1;
            if (i10 <= 0) {
                return;
            }
            if (movePos() != 0) {
                this.hash.calcHashes(this.buf, this.readPos);
                this.chain[this.cyclicPos] = this.hash.getHash4Pos();
                this.hash.updateTables(this.lzPos);
            }
            i10 = i11;
        }
    }
}
