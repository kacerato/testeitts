package org.tukaani.xz.lz;

import org.tukaani.xz.ArrayCache;

final class BT4 extends LZEncoder {
    private int cyclicPos;
    private final int cyclicSize;
    private final int depthLimit;
    private final Hash234 hash;
    private int lzPos;
    private final Matches matches;
    private final int[] tree;

    public BT4(int i10, int i11, int i12, int i13, int i14, int i15, ArrayCache arrayCache) {
        super(i10, i11, i12, i13, i14, arrayCache);
        this.cyclicPos = -1;
        int i16 = i10 + 1;
        this.cyclicSize = i16;
        this.lzPos = i16;
        this.hash = new Hash234(i10, arrayCache);
        this.tree = arrayCache.getIntArray(i16 * 2, false);
        this.matches = new Matches(i13 - 1);
        this.depthLimit = i15 <= 0 ? (i13 / 2) + 16 : i15;
    }

    public static int getMemoryUsage(int i10) {
        return Hash234.getMemoryUsage(i10) + (i10 / 128) + 10;
    }

    private int movePos() {
        int movePos = movePos(this.niceLen, 4);
        if (movePos != 0) {
            int i10 = this.lzPos + 1;
            this.lzPos = i10;
            if (i10 == Integer.MAX_VALUE) {
                int i11 = Integer.MAX_VALUE - this.cyclicSize;
                this.hash.normalize(i11);
                LZEncoder.normalize(this.tree, this.cyclicSize * 2, i11);
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

    /* JADX WARN: Code restructure failed: missing block: B:45:0x00e6, code lost:
    
        if (r15[(r2 + r14) - r12] == r15[r2 + r14]) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00e8, code lost:
    
        r14 = r14 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00ea, code lost:
    
        if (r14 >= r1) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00ec, code lost:
    
        r2 = r17.buf;
        r8 = r17.readPos;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00f8, code lost:
    
        if (r2[(r8 + r14) - r12] == r2[r8 + r14]) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00fa, code lost:
    
        if (r14 <= r9) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00fc, code lost:
    
        r2 = r17.matches;
        r8 = r2.len;
        r9 = r2.count;
        r8[r9] = r14;
        r2.dist[r9] = r12 - 1;
        r2.count = r9 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x010e, code lost:
    
        if (r14 < r3) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x011c, code lost:
    
        r9 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x011f, code lost:
    
        r2 = r17.buf;
        r15 = r17.readPos;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0130, code lost:
    
        if ((r2[(r15 + r14) - r12] & 255) >= (r2[r15 + r14] & 255)) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0132, code lost:
    
        r2 = r17.tree;
        r2[r5] = r6;
        r4 = r4 + 1;
        r6 = r2[r4];
        r5 = r4;
        r11 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x013e, code lost:
    
        r2 = r17.tree;
        r2[r7] = r6;
        r6 = r2[r4];
        r7 = r4;
        r10 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0110, code lost:
    
        r1 = r17.tree;
        r1[r5] = r1[r4];
        r1[r7] = r1[r4 + 1];
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x011b, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x014b, code lost:
    
        r1 = r17.tree;
        r1[r7] = 0;
        r1[r5] = 0;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x008b A[ADDED_TO_REGION, LOOP:0: B:23:0x008b->B:26:0x009b, LOOP_START, PHI: r11
  0x008b: PHI (r11v8 int) = (r11v2 int), (r11v9 int) binds: [B:22:0x0089, B:26:0x009b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b2  */
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
        int i14 = 0;
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
        int i17 = this.cyclicSize;
        if (hash2Pos < i17) {
            byte[] bArr2 = this.buf;
            int i18 = this.readPos;
            if (bArr2[i18 - hash2Pos] == bArr2[i18]) {
                Matches matches = this.matches;
                i10 = 2;
                matches.len[0] = 2;
                matches.dist[0] = hash2Pos - 1;
                matches.count = 1;
                if (hash2Pos != hash3Pos && hash3Pos < i17) {
                    bArr = this.buf;
                    i13 = this.readPos;
                    if (bArr[i13 - hash3Pos] == bArr[i13]) {
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
                        byte[] bArr3 = this.buf;
                        int i20 = this.readPos;
                        if (bArr3[(i20 + i10) - hash2Pos] != bArr3[i20 + i10]) {
                            break;
                        }
                        i10++;
                    }
                    Matches matches3 = this.matches;
                    matches3.len[matches3.count - 1] = i10;
                    if (i10 >= i16) {
                        skip(i16, hash4Pos);
                        return this.matches;
                    }
                }
                int i21 = i10 >= 3 ? i10 : 3;
                i11 = this.depthLimit;
                int i22 = this.cyclicPos;
                int i23 = (i22 << 1) + 1;
                int i24 = i22 << 1;
                int i25 = 0;
                int i26 = 0;
                while (true) {
                    int i27 = this.lzPos - hash4Pos;
                    int i28 = i11 - 1;
                    if (i11 == 0 || i27 >= (i12 = this.cyclicSize)) {
                        break;
                    }
                    int i29 = this.cyclicPos;
                    int i30 = i29 - i27;
                    if (i27 <= i29) {
                        i12 = i14;
                    }
                    int i31 = (i30 + i12) << 1;
                    int min = Math.min(i25, i26);
                    byte[] bArr4 = this.buf;
                    int i32 = this.readPos;
                    i11 = i28;
                    i14 = 0;
                }
            }
        }
        i10 = 0;
        if (hash2Pos != hash3Pos) {
            bArr = this.buf;
            i13 = this.readPos;
            if (bArr[i13 - hash3Pos] == bArr[i13]) {
            }
        }
        if (this.matches.count > 0) {
        }
        if (i10 >= 3) {
        }
        i11 = this.depthLimit;
        int i222 = this.cyclicPos;
        int i232 = (i222 << 1) + 1;
        int i242 = i222 << 1;
        int i252 = 0;
        int i262 = 0;
        while (true) {
            int i272 = this.lzPos - hash4Pos;
            int i282 = i11 - 1;
            if (i11 == 0) {
                break;
            }
            break;
            i11 = i282;
            i14 = 0;
        }
    }

    @Override
    public void putArraysToCache(ArrayCache arrayCache) {
        arrayCache.putArray(this.tree);
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
            int i12 = this.niceLen;
            int movePos = movePos();
            if (movePos < i12) {
                if (movePos == 0) {
                    i10 = i11;
                } else {
                    i12 = movePos;
                }
            }
            this.hash.calcHashes(this.buf, this.readPos);
            int hash4Pos = this.hash.getHash4Pos();
            this.hash.updateTables(this.lzPos);
            skip(i12, hash4Pos);
            i10 = i11;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0034, code lost:
    
        if (r9[(r10 + r8) - r6] == r9[r10 + r8]) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0036, code lost:
    
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0038, code lost:
    
        if (r8 != r13) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0047, code lost:
    
        r9 = r12.buf;
        r10 = r12.readPos;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0053, code lost:
    
        if (r9[(r10 + r8) - r6] == r9[r10 + r8]) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x003a, code lost:
    
        r13 = r12.tree;
        r13[r1] = r13[r0];
        r13[r2] = r13[r0 + 1];
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0046, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0055, code lost:
    
        r9 = r12.buf;
        r10 = r12.readPos;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0065, code lost:
    
        if ((r9[(r10 + r8) - r6] & 255) >= (r9[r10 + r8] & 255)) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0067, code lost:
    
        r5 = r12.tree;
        r5[r1] = r14;
        r0 = r0 + 1;
        r14 = r5[r0];
        r1 = r0;
        r5 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0072, code lost:
    
        r4 = r12.tree;
        r4[r2] = r14;
        r14 = r4[r0];
        r2 = r0;
        r4 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x007c, code lost:
    
        r13 = r12.tree;
        r13[r2] = 0;
        r13[r1] = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0082, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void skip(int i10, int i11) {
        int i12;
        int i13 = this.depthLimit;
        int i14 = this.cyclicPos;
        int i15 = (i14 << 1) + 1;
        int i16 = i14 << 1;
        int i17 = 0;
        int i18 = 0;
        while (true) {
            int i19 = this.lzPos - i11;
            int i20 = i13 - 1;
            if (i13 == 0 || i19 >= (i12 = this.cyclicSize)) {
                break;
            }
            int i21 = this.cyclicPos;
            int i22 = i21 - i19;
            if (i19 <= i21) {
                i12 = 0;
            }
            int i23 = (i22 + i12) << 1;
            int min = Math.min(i17, i18);
            byte[] bArr = this.buf;
            int i24 = this.readPos;
            i13 = i20;
        }
    }
}
