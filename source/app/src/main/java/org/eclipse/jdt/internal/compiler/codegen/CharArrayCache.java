package org.eclipse.jdt.internal.compiler.codegen;

import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.core.compiler.CharOperation;

public class CharArrayCache {
    int elementSize;
    public char[][] keyTable;
    int threshold;
    public int[] valueTable;

    public CharArrayCache() {
        this(9);
    }

    private int put(char[] cArr, int i10) {
        int length = this.keyTable.length;
        int hashCode = CharOperation.hashCode(cArr) % length;
        while (true) {
            char[][] cArr2 = this.keyTable;
            char[] cArr3 = cArr2[hashCode];
            if (cArr3 == null) {
                cArr2[hashCode] = cArr;
                this.valueTable[hashCode] = i10;
                int i11 = this.elementSize + 1;
                this.elementSize = i11;
                if (i11 > this.threshold) {
                    rehash();
                }
                return i10;
            }
            if (CharOperation.equals(cArr3, cArr)) {
                this.valueTable[hashCode] = i10;
                return i10;
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
    }

    private void rehash() {
        CharArrayCache charArrayCache = new CharArrayCache(this.keyTable.length * 2);
        int length = this.keyTable.length;
        while (true) {
            length--;
            if (length < 0) {
                this.keyTable = charArrayCache.keyTable;
                this.valueTable = charArrayCache.valueTable;
                this.threshold = charArrayCache.threshold;
                return;
            } else {
                char[] cArr = this.keyTable[length];
                if (cArr != null) {
                    charArrayCache.put(cArr, this.valueTable[length]);
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
                this.keyTable[length] = null;
                this.valueTable[length] = 0;
            }
        }
    }

    public boolean containsKey(char[] cArr) {
        int length = this.keyTable.length;
        int hashCode = CharOperation.hashCode(cArr) % length;
        while (true) {
            char[] cArr2 = this.keyTable[hashCode];
            if (cArr2 == null) {
                return false;
            }
            if (CharOperation.equals(cArr2, cArr)) {
                return true;
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
    }

    public int get(char[] cArr) {
        int length = this.keyTable.length;
        int hashCode = CharOperation.hashCode(cArr) % length;
        while (true) {
            char[] cArr2 = this.keyTable[hashCode];
            if (cArr2 == null) {
                return -1;
            }
            if (CharOperation.equals(cArr2, cArr)) {
                return this.valueTable[hashCode];
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
    }

    public int putIfAbsent(char[] cArr, int i10) {
        int length = this.keyTable.length;
        int hashCode = CharOperation.hashCode(cArr) % length;
        while (true) {
            char[][] cArr2 = this.keyTable;
            char[] cArr3 = cArr2[hashCode];
            if (cArr3 == null) {
                cArr2[hashCode] = cArr;
                this.valueTable[hashCode] = i10;
                int i11 = this.elementSize + 1;
                this.elementSize = i11;
                if (i11 > this.threshold) {
                    rehash();
                }
                return -i10;
            }
            if (CharOperation.equals(cArr3, cArr)) {
                return this.valueTable[hashCode];
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
    }

    public void remove(char[] cArr) {
        int length = this.keyTable.length;
        int hashCode = CharOperation.hashCode(cArr) % length;
        while (true) {
            char[] cArr2 = this.keyTable[hashCode];
            if (cArr2 == null) {
                return;
            }
            if (CharOperation.equals(cArr2, cArr)) {
                this.valueTable[hashCode] = 0;
                this.keyTable[hashCode] = null;
                return;
            } else {
                hashCode++;
                if (hashCode == length) {
                    hashCode = 0;
                }
            }
        }
    }

    public char[] returnKeyFor(int i10) {
        int length = this.keyTable.length;
        while (true) {
            int i11 = length - 1;
            if (length <= 0) {
                return null;
            }
            if (this.valueTable[i11] == i10) {
                return this.keyTable[i11];
            }
            length = i11;
        }
    }

    public int size() {
        return this.elementSize;
    }

    public String toString() {
        int size = size();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("{");
        for (int i10 = 0; i10 < size; i10++) {
            char[] cArr = this.keyTable[i10];
            if (cArr != null) {
                stringBuffer.append(cArr);
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

    public CharArrayCache(int i10) {
        this.elementSize = 0;
        this.threshold = (i10 * 2) / 3;
        this.keyTable = new char[i10];
        this.valueTable = new int[i10];
    }
}
