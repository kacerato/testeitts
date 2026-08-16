package org.eclipse.jdt.internal.compiler.util;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;

public final class HashtableOfType {
    public int elementSize;
    public char[][] keyTable;
    int threshold;
    public ReferenceBinding[] valueTable;

    public HashtableOfType() {
        this(3);
    }

    private void rehash() {
        int i10 = this.elementSize;
        HashtableOfType hashtableOfType = new HashtableOfType(i10 >= 100 ? i10 * 2 : 100);
        int length = this.keyTable.length;
        while (true) {
            length--;
            if (length < 0) {
                this.keyTable = hashtableOfType.keyTable;
                this.valueTable = hashtableOfType.valueTable;
                this.threshold = hashtableOfType.threshold;
                return;
            } else {
                char[] cArr = this.keyTable[length];
                if (cArr != null) {
                    hashtableOfType.put(cArr, this.valueTable[length]);
                }
            }
        }
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

    public ReferenceBinding get(char[] cArr) {
        int length = this.keyTable.length;
        int hashCode = CharOperation.hashCode(cArr) % length;
        int length2 = cArr.length;
        while (true) {
            char[] cArr2 = this.keyTable[hashCode];
            if (cArr2 == null) {
                return null;
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

    public ReferenceBinding getput(char[] cArr, ReferenceBinding referenceBinding) {
        int length = this.keyTable.length;
        int hashCode = CharOperation.hashCode(cArr) % length;
        int length2 = cArr.length;
        while (true) {
            char[][] cArr2 = this.keyTable;
            char[] cArr3 = cArr2[hashCode];
            if (cArr3 == null) {
                cArr2[hashCode] = cArr;
                this.valueTable[hashCode] = referenceBinding;
                int i10 = this.elementSize + 1;
                this.elementSize = i10;
                if (i10 <= this.threshold) {
                    return null;
                }
                rehash();
                return null;
            }
            if (cArr3.length == length2 && CharOperation.equals(cArr3, cArr)) {
                ReferenceBinding[] referenceBindingArr = this.valueTable;
                ReferenceBinding referenceBinding2 = referenceBindingArr[hashCode];
                referenceBindingArr[hashCode] = referenceBinding;
                return referenceBinding2;
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
    }

    public ReferenceBinding put(char[] cArr, ReferenceBinding referenceBinding) {
        int length = this.keyTable.length;
        int hashCode = CharOperation.hashCode(cArr) % length;
        int length2 = cArr.length;
        while (true) {
            char[][] cArr2 = this.keyTable;
            char[] cArr3 = cArr2[hashCode];
            if (cArr3 == null) {
                cArr2[hashCode] = cArr;
                this.valueTable[hashCode] = referenceBinding;
                int i10 = this.elementSize + 1;
                this.elementSize = i10;
                if (i10 > this.threshold) {
                    rehash();
                }
                return referenceBinding;
            }
            if (cArr3.length == length2 && CharOperation.equals(cArr3, cArr)) {
                this.valueTable[hashCode] = referenceBinding;
                return referenceBinding;
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
            ReferenceBinding referenceBinding = this.valueTable[i10];
            if (referenceBinding != null) {
                str = String.valueOf(str) + referenceBinding.toString() + "\n";
            }
        }
        return str;
    }

    public HashtableOfType(int i10) {
        this.elementSize = 0;
        this.threshold = i10;
        int i11 = (int) (i10 * 1.75f);
        i11 = i10 == i11 ? i11 + 1 : i11;
        this.keyTable = new char[i11];
        this.valueTable = new ReferenceBinding[i11];
    }
}
