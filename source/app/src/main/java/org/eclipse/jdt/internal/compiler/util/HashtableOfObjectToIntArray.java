package org.eclipse.jdt.internal.compiler.util;

import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public final class HashtableOfObjectToIntArray implements Cloneable {
    public int elementSize;
    public Object[] keyTable;
    int threshold;
    public int[][] valueTable;

    public HashtableOfObjectToIntArray() {
        this(13);
    }

    private void rehash() {
        HashtableOfObjectToIntArray hashtableOfObjectToIntArray = new HashtableOfObjectToIntArray(this.elementSize * 2);
        int length = this.keyTable.length;
        while (true) {
            length--;
            if (length < 0) {
                this.keyTable = hashtableOfObjectToIntArray.keyTable;
                this.valueTable = hashtableOfObjectToIntArray.valueTable;
                this.threshold = hashtableOfObjectToIntArray.threshold;
                return;
            } else {
                Object obj = this.keyTable[length];
                if (obj != null) {
                    hashtableOfObjectToIntArray.put(obj, this.valueTable[length]);
                }
            }
        }
    }

    public Object clone() throws CloneNotSupportedException {
        HashtableOfObjectToIntArray hashtableOfObjectToIntArray = (HashtableOfObjectToIntArray) super.clone();
        hashtableOfObjectToIntArray.elementSize = this.elementSize;
        hashtableOfObjectToIntArray.threshold = this.threshold;
        int length = this.keyTable.length;
        Object[] objArr = new Object[length];
        hashtableOfObjectToIntArray.keyTable = objArr;
        System.arraycopy(this.keyTable, 0, objArr, 0, length);
        int length2 = this.valueTable.length;
        int[][] iArr = new int[length2];
        hashtableOfObjectToIntArray.valueTable = iArr;
        System.arraycopy(this.valueTable, 0, iArr, 0, length2);
        return hashtableOfObjectToIntArray;
    }

    public boolean containsKey(Object obj) {
        int length = this.keyTable.length;
        int hashCode = (obj.hashCode() & Integer.MAX_VALUE) % length;
        while (true) {
            Object obj2 = this.keyTable[hashCode];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
    }

    public int[] get(Object obj) {
        int length = this.keyTable.length;
        int hashCode = (obj.hashCode() & Integer.MAX_VALUE) % length;
        while (true) {
            Object obj2 = this.keyTable[hashCode];
            if (obj2 == null) {
                return null;
            }
            if (obj2.equals(obj)) {
                return this.valueTable[hashCode];
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
    }

    public void keysToArray(Object[] objArr) {
        int length = this.keyTable.length;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            Object obj = this.keyTable[i11];
            if (obj != null) {
                objArr[i10] = obj;
                i10++;
            }
        }
    }

    public int[] put(Object obj, int[] iArr) {
        int length = this.keyTable.length;
        int hashCode = (obj.hashCode() & Integer.MAX_VALUE) % length;
        while (true) {
            Object[] objArr = this.keyTable;
            Object obj2 = objArr[hashCode];
            if (obj2 == null) {
                objArr[hashCode] = obj;
                this.valueTable[hashCode] = iArr;
                int i10 = this.elementSize + 1;
                this.elementSize = i10;
                if (i10 > this.threshold) {
                    rehash();
                }
                return iArr;
            }
            if (obj2.equals(obj)) {
                this.valueTable[hashCode] = iArr;
                return iArr;
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
    }

    public int[] removeKey(Object obj) {
        int length = this.keyTable.length;
        int hashCode = (obj.hashCode() & Integer.MAX_VALUE) % length;
        while (true) {
            Object obj2 = this.keyTable[hashCode];
            if (obj2 == null) {
                return null;
            }
            if (obj2.equals(obj)) {
                int[] iArr = this.valueTable[hashCode];
                this.elementSize--;
                this.keyTable[hashCode] = null;
                rehash();
                return iArr;
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
        StringBuffer stringBuffer = new StringBuffer();
        int length = this.keyTable.length;
        for (int i10 = 0; i10 < length; i10++) {
            Object obj = this.keyTable[i10];
            if (obj != null) {
                stringBuffer.append(obj);
                stringBuffer.append(" -> ");
                int[] iArr = this.valueTable[i10];
                stringBuffer.append('[');
                if (iArr != null) {
                    int length2 = iArr.length;
                    for (int i11 = 0; i11 < length2; i11++) {
                        if (i11 > 0) {
                            stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
                        }
                        stringBuffer.append(iArr[i11]);
                    }
                }
                stringBuffer.append("]\n");
            }
        }
        return String.valueOf(stringBuffer);
    }

    public HashtableOfObjectToIntArray(int i10) {
        this.elementSize = 0;
        this.threshold = i10;
        int i11 = (int) (i10 * 1.75f);
        i11 = i10 == i11 ? i11 + 1 : i11;
        this.keyTable = new Object[i11];
        this.valueTable = new int[i11];
    }
}
