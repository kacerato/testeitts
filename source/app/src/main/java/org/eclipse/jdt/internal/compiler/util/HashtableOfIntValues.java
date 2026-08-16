package org.eclipse.jdt.internal.compiler.util;

import org.eclipse.jdt.core.compiler.CharOperation;

public final class HashtableOfIntValues implements Cloneable {
    public static final int NO_VALUE = Integer.MIN_VALUE;
    public int elementSize;
    public char[][] keyTable;
    int threshold;
    public int[] valueTable;

    public HashtableOfIntValues() {
        this(13);
    }

    private void rehash() {
        HashtableOfIntValues hashtableOfIntValues = new HashtableOfIntValues(this.elementSize * 2);
        int length = this.keyTable.length;
        while (true) {
            length--;
            if (length < 0) {
                this.keyTable = hashtableOfIntValues.keyTable;
                this.valueTable = hashtableOfIntValues.valueTable;
                this.threshold = hashtableOfIntValues.threshold;
                return;
            } else {
                char[] cArr = this.keyTable[length];
                if (cArr != null) {
                    hashtableOfIntValues.put(cArr, this.valueTable[length]);
                }
            }
        }
    }

    public Object clone() throws CloneNotSupportedException {
        HashtableOfIntValues hashtableOfIntValues = (HashtableOfIntValues) super.clone();
        hashtableOfIntValues.elementSize = this.elementSize;
        hashtableOfIntValues.threshold = this.threshold;
        int length = this.keyTable.length;
        char[][] cArr = new char[length];
        hashtableOfIntValues.keyTable = cArr;
        System.arraycopy(this.keyTable, 0, cArr, 0, length);
        int length2 = this.valueTable.length;
        int[] iArr = new int[length2];
        hashtableOfIntValues.valueTable = iArr;
        System.arraycopy(this.valueTable, 0, iArr, 0, length2);
        return hashtableOfIntValues;
    }

    public boolean containsKey(char[] cArr) {
        int length = this.keyTable.length;
        int hashCode = CharOperation.hashCode(cArr) % length;
        int length2 = cArr.length;
        while (true) {
            char[] cArr2 = this.keyTable[hashCode];
            if (cArr2 == null) {
                return false;
            }
            if (cArr2.length == length2 && CharOperation.equals(cArr2, cArr)) {
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
        int length2 = cArr.length;
        while (true) {
            char[] cArr2 = this.keyTable[hashCode];
            if (cArr2 == null) {
                return Integer.MIN_VALUE;
            }
            if (cArr2.length == length2 && CharOperation.equals(cArr2, cArr)) {
                return this.valueTable[hashCode];
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
    }

    public int put(char[] cArr, int i10) {
        int length = this.keyTable.length;
        int hashCode = CharOperation.hashCode(cArr) % length;
        int length2 = cArr.length;
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
            if (cArr3.length == length2 && CharOperation.equals(cArr3, cArr)) {
                this.valueTable[hashCode] = i10;
                return i10;
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
    }

    public int removeKey(char[] cArr) {
        int length = this.keyTable.length;
        int hashCode = CharOperation.hashCode(cArr) % length;
        int length2 = cArr.length;
        while (true) {
            char[] cArr2 = this.keyTable[hashCode];
            if (cArr2 == null) {
                return Integer.MIN_VALUE;
            }
            if (cArr2.length == length2 && CharOperation.equals(cArr2, cArr)) {
                int[] iArr = this.valueTable;
                int i10 = iArr[hashCode];
                this.elementSize--;
                this.keyTable[hashCode] = null;
                iArr[hashCode] = Integer.MIN_VALUE;
                rehash();
                return i10;
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
    }

    public int size() {
        return this.elementSize;
    }

    public String toString() {
        int length = this.valueTable.length;
        String str = "";
        for (int i10 = 0; i10 < length; i10++) {
            char[] cArr = this.keyTable[i10];
            if (cArr != null) {
                str = String.valueOf(str) + new String(cArr) + " -> " + this.valueTable[i10] + "\n";
            }
        }
        return str;
    }

    public HashtableOfIntValues(int i10) {
        this.elementSize = 0;
        this.threshold = i10;
        int i11 = (int) (i10 * 1.75f);
        i11 = i10 == i11 ? i11 + 1 : i11;
        this.keyTable = new char[i11];
        this.valueTable = new int[i11];
    }
}
