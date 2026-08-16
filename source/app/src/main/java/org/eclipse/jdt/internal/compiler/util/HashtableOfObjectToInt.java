package org.eclipse.jdt.internal.compiler.util;

public final class HashtableOfObjectToInt implements Cloneable {
    public int elementSize;
    public Object[] keyTable;
    int threshold;
    public int[] valueTable;

    public HashtableOfObjectToInt() {
        this(13);
    }

    private void rehash() {
        HashtableOfObjectToInt hashtableOfObjectToInt = new HashtableOfObjectToInt(this.elementSize * 2);
        int length = this.keyTable.length;
        while (true) {
            length--;
            if (length < 0) {
                this.keyTable = hashtableOfObjectToInt.keyTable;
                this.valueTable = hashtableOfObjectToInt.valueTable;
                this.threshold = hashtableOfObjectToInt.threshold;
                return;
            } else {
                Object obj = this.keyTable[length];
                if (obj != null) {
                    hashtableOfObjectToInt.put(obj, this.valueTable[length]);
                }
            }
        }
    }

    public Object clone() throws CloneNotSupportedException {
        HashtableOfObjectToInt hashtableOfObjectToInt = (HashtableOfObjectToInt) super.clone();
        hashtableOfObjectToInt.elementSize = this.elementSize;
        hashtableOfObjectToInt.threshold = this.threshold;
        int length = this.keyTable.length;
        Object[] objArr = new Object[length];
        hashtableOfObjectToInt.keyTable = objArr;
        System.arraycopy(this.keyTable, 0, objArr, 0, length);
        int length2 = this.valueTable.length;
        int[] iArr = new int[length2];
        hashtableOfObjectToInt.valueTable = iArr;
        System.arraycopy(this.valueTable, 0, iArr, 0, length2);
        return hashtableOfObjectToInt;
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

    public int get(Object obj) {
        int length = this.keyTable.length;
        int hashCode = (obj.hashCode() & Integer.MAX_VALUE) % length;
        while (true) {
            Object obj2 = this.keyTable[hashCode];
            if (obj2 == null) {
                return -1;
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

    public int put(Object obj, int i10) {
        int length = this.keyTable.length;
        int hashCode = (obj.hashCode() & Integer.MAX_VALUE) % length;
        while (true) {
            Object[] objArr = this.keyTable;
            Object obj2 = objArr[hashCode];
            if (obj2 == null) {
                objArr[hashCode] = obj;
                this.valueTable[hashCode] = i10;
                int i11 = this.elementSize + 1;
                this.elementSize = i11;
                if (i11 > this.threshold) {
                    rehash();
                }
                return i10;
            }
            if (obj2.equals(obj)) {
                this.valueTable[hashCode] = i10;
                return i10;
            }
            hashCode++;
            if (hashCode == length) {
                hashCode = 0;
            }
        }
    }

    public int removeKey(Object obj) {
        int length = this.keyTable.length;
        int hashCode = (obj.hashCode() & Integer.MAX_VALUE) % length;
        while (true) {
            Object obj2 = this.keyTable[hashCode];
            if (obj2 == null) {
                return -1;
            }
            if (obj2.equals(obj)) {
                int i10 = this.valueTable[hashCode];
                this.elementSize--;
                this.keyTable[hashCode] = null;
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
        int length = this.keyTable.length;
        String str = "";
        for (int i10 = 0; i10 < length; i10++) {
            Object obj = this.keyTable[i10];
            if (obj != null) {
                str = String.valueOf(str) + obj + " -> " + this.valueTable[i10] + "\n";
            }
        }
        return str;
    }

    public HashtableOfObjectToInt(int i10) {
        this.elementSize = 0;
        this.threshold = i10;
        int i11 = (int) (i10 * 1.75f);
        i11 = i10 == i11 ? i11 + 1 : i11;
        this.keyTable = new Object[i11];
        this.valueTable = new int[i11];
    }
}
