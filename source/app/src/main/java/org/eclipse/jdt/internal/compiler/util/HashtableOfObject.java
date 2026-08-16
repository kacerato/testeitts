package org.eclipse.jdt.internal.compiler.util;

import org.eclipse.jdt.core.compiler.CharOperation;

public final class HashtableOfObject implements Cloneable {
    public int elementSize;
    public char[][] keyTable;
    int threshold;
    public Object[] valueTable;

    public HashtableOfObject() {
        this(13);
    }

    private void rehash() {
        HashtableOfObject hashtableOfObject = new HashtableOfObject(this.elementSize * 2);
        int length = this.keyTable.length;
        while (true) {
            length--;
            if (length < 0) {
                this.keyTable = hashtableOfObject.keyTable;
                this.valueTable = hashtableOfObject.valueTable;
                this.threshold = hashtableOfObject.threshold;
                return;
            } else {
                char[] cArr = this.keyTable[length];
                if (cArr != null) {
                    hashtableOfObject.putUnsafely(cArr, this.valueTable[length]);
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
                this.valueTable[length] = null;
            }
        }
    }

    public Object clone() throws CloneNotSupportedException {
        HashtableOfObject hashtableOfObject = (HashtableOfObject) super.clone();
        hashtableOfObject.elementSize = this.elementSize;
        hashtableOfObject.threshold = this.threshold;
        int length = this.keyTable.length;
        char[][] cArr = new char[length];
        hashtableOfObject.keyTable = cArr;
        System.arraycopy(this.keyTable, 0, cArr, 0, length);
        int length2 = this.valueTable.length;
        Object[] objArr = new Object[length2];
        hashtableOfObject.valueTable = objArr;
        System.arraycopy(this.valueTable, 0, objArr, 0, length2);
        return hashtableOfObject;
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

    public Object get(char[] cArr) {
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

    public Object put(char[] cArr, Object obj) {
        int length = this.keyTable.length;
        int hashCode = CharOperation.hashCode(cArr) % length;
        int length2 = cArr.length;
        while (true) {
            char[][] cArr2 = this.keyTable;
            char[] cArr3 = cArr2[hashCode];
            if (cArr3 == null) {
                cArr2[hashCode] = cArr;
                this.valueTable[hashCode] = obj;
                int i10 = this.elementSize + 1;
                this.elementSize = i10;
                if (i10 > this.threshold) {
                    rehash();
                }
                return obj;
            }
            if (cArr3.length == length2 && CharOperation.equals(cArr3, cArr)) {
                this.valueTable[hashCode] = obj;
                return obj;
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
    }

    public void putUnsafely(char[] cArr, Object obj) {
        char[][] cArr2;
        int length = this.keyTable.length;
        int hashCode = CharOperation.hashCode(cArr) % length;
        while (true) {
            cArr2 = this.keyTable;
            if (cArr2[hashCode] == null) {
                break;
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
        cArr2[hashCode] = cArr;
        this.valueTable[hashCode] = obj;
        int i10 = this.elementSize + 1;
        this.elementSize = i10;
        if (i10 > this.threshold) {
            rehash();
        }
    }

    public Object removeKey(char[] cArr) {
        int length = this.keyTable.length;
        int hashCode = CharOperation.hashCode(cArr) % length;
        int length2 = cArr.length;
        while (true) {
            char[] cArr2 = this.keyTable[hashCode];
            if (cArr2 == null) {
                return null;
            }
            if (cArr2.length == length2 && CharOperation.equals(cArr2, cArr)) {
                Object[] objArr = this.valueTable;
                Object obj = objArr[hashCode];
                this.elementSize--;
                this.keyTable[hashCode] = null;
                objArr[hashCode] = null;
                rehash();
                return obj;
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
            Object obj = this.valueTable[i10];
            if (obj != null) {
                str = String.valueOf(str) + new String(this.keyTable[i10]) + " -> " + obj.toString() + "\n";
            }
        }
        return str;
    }

    public HashtableOfObject(int i10) {
        this.elementSize = 0;
        this.threshold = i10;
        int i11 = (int) (i10 * 1.75f);
        i11 = i10 == i11 ? i11 + 1 : i11;
        this.keyTable = new char[i11];
        this.valueTable = new Object[i11];
    }
}
