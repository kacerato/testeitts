package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.internal.core.JavaElement;

public final class HashtableOfArrayToObject implements Cloneable {
    public int elementSize;
    public Object[][] keyTable;
    int threshold;
    public Object[] valueTable;

    public HashtableOfArrayToObject() {
        this(13);
    }

    private int hashCode(Object[] objArr) {
        return hashCode(objArr, objArr.length);
    }

    private void rehash() {
        HashtableOfArrayToObject hashtableOfArrayToObject = new HashtableOfArrayToObject(this.elementSize * 2);
        int length = this.keyTable.length;
        while (true) {
            length--;
            if (length < 0) {
                this.keyTable = hashtableOfArrayToObject.keyTable;
                this.valueTable = hashtableOfArrayToObject.valueTable;
                this.threshold = hashtableOfArrayToObject.threshold;
                return;
            } else {
                Object[] objArr = this.keyTable[length];
                if (objArr != null) {
                    hashtableOfArrayToObject.put(objArr, this.valueTable[length]);
                }
            }
        }
    }

    public Object clone() throws CloneNotSupportedException {
        HashtableOfArrayToObject hashtableOfArrayToObject = (HashtableOfArrayToObject) super.clone();
        hashtableOfArrayToObject.elementSize = this.elementSize;
        hashtableOfArrayToObject.threshold = this.threshold;
        int length = this.keyTable.length;
        Object[][] objArr = new Object[length];
        hashtableOfArrayToObject.keyTable = objArr;
        System.arraycopy(this.keyTable, 0, objArr, 0, length);
        int length2 = this.valueTable.length;
        Object[] objArr2 = new Object[length2];
        hashtableOfArrayToObject.valueTable = objArr2;
        System.arraycopy(this.valueTable, 0, objArr2, 0, length2);
        return hashtableOfArrayToObject;
    }

    public boolean containsKey(Object[] objArr) {
        int length = this.keyTable.length;
        int hashCode = hashCode(objArr) % length;
        int length2 = objArr.length;
        while (true) {
            Object[] objArr2 = this.keyTable[hashCode];
            if (objArr2 == null) {
                return false;
            }
            if (objArr2.length == length2 && Util.equalArraysOrNull(objArr2, objArr)) {
                return true;
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
    }

    public Object get(Object[] objArr) {
        int length = this.keyTable.length;
        int hashCode = hashCode(objArr) % length;
        int length2 = objArr.length;
        while (true) {
            Object[] objArr2 = this.keyTable[hashCode];
            if (objArr2 == null) {
                return null;
            }
            if (objArr2.length == length2 && Util.equalArraysOrNull(objArr2, objArr)) {
                return this.valueTable[hashCode];
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
    }

    public int getIndex(Object[] objArr) {
        int length = this.keyTable.length;
        int hashCode = hashCode(objArr) % length;
        int length2 = objArr.length;
        while (true) {
            Object[] objArr2 = this.keyTable[hashCode];
            if (objArr2 == null) {
                return -1;
            }
            if (objArr2.length == length2 && Util.equalArraysOrNull(objArr2, objArr)) {
                return hashCode;
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
    }

    public Object[] getKey(Object[] objArr, int i10) {
        int length = this.keyTable.length;
        int hashCode = hashCode(objArr, i10) % length;
        while (true) {
            Object[] objArr2 = this.keyTable[hashCode];
            if (objArr2 == null) {
                return null;
            }
            if (objArr2.length == i10 && Util.equalArrays(objArr2, objArr, i10)) {
                return objArr2;
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
    }

    public Object put(Object[] objArr, Object obj) {
        int length = this.keyTable.length;
        int hashCode = hashCode(objArr) % length;
        int length2 = objArr.length;
        while (true) {
            Object[][] objArr2 = this.keyTable;
            Object[] objArr3 = objArr2[hashCode];
            if (objArr3 == null) {
                objArr2[hashCode] = objArr;
                this.valueTable[hashCode] = obj;
                int i10 = this.elementSize + 1;
                this.elementSize = i10;
                if (i10 > this.threshold) {
                    rehash();
                }
                return obj;
            }
            if (objArr3.length == length2 && Util.equalArraysOrNull(objArr3, objArr)) {
                this.valueTable[hashCode] = obj;
                return obj;
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
    }

    public Object removeKey(Object[] objArr) {
        int length = this.keyTable.length;
        int hashCode = hashCode(objArr) % length;
        int length2 = objArr.length;
        while (true) {
            Object[] objArr2 = this.keyTable[hashCode];
            if (objArr2 == null) {
                return null;
            }
            if (objArr2.length == length2 && Util.equalArraysOrNull(objArr2, objArr)) {
                Object[] objArr3 = this.valueTable;
                Object obj = objArr3[hashCode];
                this.elementSize--;
                this.keyTable[hashCode] = null;
                objArr3[hashCode] = null;
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
        StringBuffer stringBuffer = new StringBuffer();
        int length = this.keyTable.length;
        for (int i10 = 0; i10 < length; i10++) {
            Object[] objArr = this.keyTable[i10];
            if (objArr != null) {
                stringBuffer.append(JavaElement.JEM_COMPILATIONUNIT);
                int length2 = objArr.length;
                for (int i11 = 0; i11 < length2; i11++) {
                    stringBuffer.append(objArr[i11]);
                    if (i11 != length2 - 1) {
                        stringBuffer.append(", ");
                    }
                }
                stringBuffer.append("} -> ");
                stringBuffer.append(this.valueTable[i10]);
                if (i10 != length - 1) {
                    stringBuffer.append('\n');
                }
            }
        }
        return stringBuffer.toString();
    }

    public HashtableOfArrayToObject(int i10) {
        this.elementSize = 0;
        this.threshold = i10;
        int i11 = (int) (i10 * 1.75f);
        i11 = i10 == i11 ? i11 + 1 : i11;
        this.keyTable = new Object[i11];
        this.valueTable = new Object[i11];
    }

    private int hashCode(Object[] objArr, int i10) {
        int i11 = 0;
        for (int i12 = i10 - 1; i12 >= 0; i12--) {
            i11 = Util.combineHashCodes(i11, objArr[i12].hashCode());
        }
        return Integer.MAX_VALUE & i11;
    }
}
