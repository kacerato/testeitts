package org.tukaani.xz.lz;

import org.tukaani.xz.ArrayCache;

public final class Hash234 extends CRC32Hash {
    private static final int HASH_2_MASK = 1023;
    private static final int HASH_2_SIZE = 1024;
    private static final int HASH_3_MASK = 65535;
    private static final int HASH_3_SIZE = 65536;
    private final int[] hash2Table;
    private final int[] hash3Table;
    private final int hash4Mask;
    private final int hash4Size;
    private final int[] hash4Table;
    private int hash2Value = 0;
    private int hash3Value = 0;
    private int hash4Value = 0;

    public Hash234(int i10, ArrayCache arrayCache) {
        this.hash2Table = arrayCache.getIntArray(1024, true);
        this.hash3Table = arrayCache.getIntArray(65536, true);
        int hash4Size = getHash4Size(i10);
        this.hash4Size = hash4Size;
        this.hash4Table = arrayCache.getIntArray(hash4Size, true);
        this.hash4Mask = hash4Size - 1;
    }

    public static int getHash4Size(int i10) {
        int i11 = i10 - 1;
        int i12 = i11 | (i11 >>> 1);
        int i13 = i12 | (i12 >>> 2);
        int i14 = i13 | (i13 >>> 4);
        int i15 = ((i14 | (i14 >>> 8)) >>> 1) | 65535;
        if (i15 > 16777216) {
            i15 >>>= 1;
        }
        return i15 + 1;
    }

    public static int getMemoryUsage(int i10) {
        return ((getHash4Size(i10) + 66560) / 256) + 4;
    }

    public void calcHashes(byte[] bArr, int i10) {
        int[] iArr = CRC32Hash.crcTable;
        int i11 = iArr[bArr[i10] & 255] ^ (bArr[i10 + 1] & 255);
        this.hash2Value = i11 & 1023;
        int i12 = i11 ^ ((bArr[i10 + 2] & 255) << 8);
        this.hash3Value = 65535 & i12;
        this.hash4Value = ((iArr[bArr[i10 + 3] & 255] << 5) ^ i12) & this.hash4Mask;
    }

    public int getHash2Pos() {
        return this.hash2Table[this.hash2Value];
    }

    public int getHash3Pos() {
        return this.hash3Table[this.hash3Value];
    }

    public int getHash4Pos() {
        return this.hash4Table[this.hash4Value];
    }

    public void normalize(int i10) {
        LZEncoder.normalize(this.hash2Table, 1024, i10);
        LZEncoder.normalize(this.hash3Table, 65536, i10);
        LZEncoder.normalize(this.hash4Table, this.hash4Size, i10);
    }

    public void putArraysToCache(ArrayCache arrayCache) {
        arrayCache.putArray(this.hash4Table);
        arrayCache.putArray(this.hash3Table);
        arrayCache.putArray(this.hash2Table);
    }

    public void updateTables(int i10) {
        this.hash2Table[this.hash2Value] = i10;
        this.hash3Table[this.hash3Value] = i10;
        this.hash4Table[this.hash4Value] = i10;
    }
}
