package org.eclipse.jdt.internal.compiler.codegen;

import org.apache.commons.math3.geometry.VectorFormat;

public class LongCache {
    int elementSize;
    public long[] keyTable;
    int threshold;
    public int[] valueTable;

    public LongCache() {
        this(13);
    }

    private void rehash() {
        LongCache longCache = new LongCache(this.keyTable.length * 2);
        int length = this.keyTable.length;
        while (true) {
            length--;
            if (length < 0) {
                this.keyTable = longCache.keyTable;
                this.valueTable = longCache.valueTable;
                this.threshold = longCache.threshold;
                return;
            } else {
                long j10 = this.keyTable[length];
                int i10 = this.valueTable[length];
                if (j10 != 0 || (j10 == 0 && i10 != 0)) {
                    longCache.put(j10, i10);
                }
            }
        }
    }

    public void clear() {
        int length = this.keyTable.length;
        while (true) {
            length--;
            if (length < 0) {
                this.elementSize = 0;
                return;
            } else {
                this.keyTable[length] = 0;
                this.valueTable[length] = 0;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001c, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean containsKey(long j10) {
        int hash = hash(j10);
        int length = this.keyTable.length;
        while (true) {
            long j11 = this.keyTable[hash];
            if (j11 != 0 || (j11 == 0 && this.valueTable[hash] != 0)) {
                if (j11 == j10) {
                    return true;
                }
                hash++;
                if (hash == length) {
                    hash = 0;
                }
            }
        }
    }

    public int hash(long j10) {
        return (((int) j10) & Integer.MAX_VALUE) % this.keyTable.length;
    }

    public int put(long j10, int i10) {
        long[] jArr;
        int hash = hash(j10);
        int length = this.keyTable.length;
        while (true) {
            jArr = this.keyTable;
            long j11 = jArr[hash];
            if (j11 != 0 || (j11 == 0 && this.valueTable[hash] != 0)) {
                if (j11 == j10) {
                    this.valueTable[hash] = i10;
                    return i10;
                }
                hash++;
                if (hash == length) {
                    hash = 0;
                }
            }
        }
        jArr[hash] = j10;
        this.valueTable[hash] = i10;
        int i11 = this.elementSize + 1;
        this.elementSize = i11;
        if (i11 > this.threshold) {
            rehash();
        }
        return i10;
    }

    public int putIfAbsent(long j10, int i10) {
        long[] jArr;
        int hash = hash(j10);
        int length = this.keyTable.length;
        while (true) {
            jArr = this.keyTable;
            long j11 = jArr[hash];
            if (j11 != 0 || (j11 == 0 && this.valueTable[hash] != 0)) {
                if (j11 == j10) {
                    return this.valueTable[hash];
                }
                hash++;
                if (hash == length) {
                    hash = 0;
                }
            }
        }
        jArr[hash] = j10;
        this.valueTable[hash] = i10;
        int i11 = this.elementSize + 1;
        this.elementSize = i11;
        if (i11 > this.threshold) {
            rehash();
        }
        return -i10;
    }

    public int size() {
        return this.elementSize;
    }

    public String toString() {
        int size = size();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("{");
        for (int i10 = 0; i10 < size; i10++) {
            long j10 = this.keyTable[i10];
            if (j10 != 0 || (j10 == 0 && this.valueTable[i10] != 0)) {
                stringBuffer.append(j10);
                stringBuffer.append("->");
                stringBuffer.append(this.valueTable[i10]);
            }
            if (i10 < size) {
                stringBuffer.append(", ");
            }
        }
        stringBuffer.append(VectorFormat.DEFAULT_SUFFIX);
        return stringBuffer.toString();
    }

    public LongCache(int i10) {
        this.elementSize = 0;
        this.threshold = (int) (i10 * 0.66d);
        this.keyTable = new long[i10];
        this.valueTable = new int[i10];
    }
}
