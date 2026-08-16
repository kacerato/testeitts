package org.eclipse.jdt.internal.compiler.codegen;

import org.apache.commons.math3.geometry.VectorFormat;

public class IntegerCache {
    int elementSize;
    public int[] keyTable;
    int threshold;
    public int[] valueTable;

    public IntegerCache() {
        this(13);
    }

    private void rehash() {
        IntegerCache integerCache = new IntegerCache(this.keyTable.length * 2);
        int length = this.keyTable.length;
        while (true) {
            length--;
            if (length < 0) {
                this.keyTable = integerCache.keyTable;
                this.valueTable = integerCache.valueTable;
                this.threshold = integerCache.threshold;
                return;
            } else {
                int i10 = this.keyTable[length];
                int i11 = this.valueTable[length];
                if (i10 != 0 || (i10 == 0 && i11 != 0)) {
                    integerCache.put(i10, i11);
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

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0016, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean containsKey(int i10) {
        int hash = hash(i10);
        int length = this.keyTable.length;
        while (true) {
            int i11 = this.keyTable[hash];
            if (i11 != 0 || (i11 == 0 && this.valueTable[hash] != 0)) {
                if (i11 == i10) {
                    return true;
                }
                hash++;
                if (hash == length) {
                    hash = 0;
                }
            }
        }
    }

    public int hash(int i10) {
        return (i10 & Integer.MAX_VALUE) % this.keyTable.length;
    }

    public int put(int i10, int i11) {
        int[] iArr;
        int hash = hash(i10);
        int length = this.keyTable.length;
        while (true) {
            iArr = this.keyTable;
            int i12 = iArr[hash];
            if (i12 != 0 || (i12 == 0 && this.valueTable[hash] != 0)) {
                if (i12 == i10) {
                    this.valueTable[hash] = i11;
                    return i11;
                }
                hash++;
                if (hash == length) {
                    hash = 0;
                }
            }
        }
        iArr[hash] = i10;
        this.valueTable[hash] = i11;
        int i13 = this.elementSize + 1;
        this.elementSize = i13;
        if (i13 > this.threshold) {
            rehash();
        }
        return i11;
    }

    public int putIfAbsent(int i10, int i11) {
        int[] iArr;
        int hash = hash(i10);
        int length = this.keyTable.length;
        while (true) {
            iArr = this.keyTable;
            int i12 = iArr[hash];
            if (i12 != 0 || (i12 == 0 && this.valueTable[hash] != 0)) {
                if (i12 == i10) {
                    return this.valueTable[hash];
                }
                hash++;
                if (hash == length) {
                    hash = 0;
                }
            }
        }
        iArr[hash] = i10;
        this.valueTable[hash] = i11;
        int i13 = this.elementSize + 1;
        this.elementSize = i13;
        if (i13 > this.threshold) {
            rehash();
        }
        return -i11;
    }

    public int size() {
        return this.elementSize;
    }

    public String toString() {
        int size = size();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("{");
        for (int i10 = 0; i10 < size; i10++) {
            int i11 = this.keyTable[i10];
            if (i11 != 0 || (i11 == 0 && this.valueTable[i10] != 0)) {
                stringBuffer.append(i11);
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

    public IntegerCache(int i10) {
        this.elementSize = 0;
        this.threshold = (int) (i10 * 0.66d);
        this.keyTable = new int[i10];
        this.valueTable = new int[i10];
    }
}
